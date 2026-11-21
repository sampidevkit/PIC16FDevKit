#include "bootloader.h"
#include "flash_access.h"
#include "hex_decode.h"
#include "self_program.h"


#ifdef BLD_USE_EXTMEM
#include "ext_memory_program.h"
#else
#define ExtMem_Init(x) (0)
#define ExtMem_Deinit()
#define ExtMem_ReadHex() 0xFF
#define ExtMem_WriteHex(x) RESULT_DONE
#define ExtMem_CheckNewHex() 0
#define ExtMem_SetState(x)
#endif

#ifdef BLD_USE_DEBUG // Enable debug
#include "Common/debug.h"
#else
#undef __dbs
#undef __dbss
#undef __dbi
#undef __dbh
#undef __dbh2
#undef __dbsi
#undef __dbsh

#define __dbs(str)
#define __dbs(str1, str2)
#define __dbi(x)
#define __dbh(x)
#define __dbh2(x)
#define __dbsi(str, x)
#define __dbsh(str, x)
#endif

#ifndef BLD_BUFFER_SIZE
#define BLD_BUFFER_SIZE                                                        \
  48 // Size of buffer used to store Hex line downloaded from PC
#endif

#ifndef HARDWARE_RFU_SECTION
#define HARDWARE_RFU_SECTION 0
#endif

#ifndef __SYNC_KEY__
#define __SYNC_KEY__ "12345678"
#warning "Default bootloader sync key is 12345678"
#endif

#ifndef __FWID__
#define __FWID__ "SAMM-BLD"
#warning "Default firmware ID is SAMM-BLD"
#endif

typedef enum {
  BLD_RUN_APP = 0,
  BLD_INIT,         // 1
  BLD_SYNC,         // 2
  BLD_EXTMEM_READ,  // 3
  BLD_EXTMEM_WRITE, // 4
  BLD_UART_READ,    // 5
  BLD_UART_WRITE,   // 6
  BLD_HEX_DECODE,   // 7
  BLD_RSLT_SUCCESS, // 8
  BLD_RSLT_ERROR,   // 9
  BLD_SYS_REBOOT    // 10
} bld_task_t;

typedef union {
  uint32_t Value;

  struct {
    uint8_t Major;
    uint8_t Rfu;
    uint8_t Patch;
    uint8_t Minor;
  };
} app_ver_t;

static const uint8_t BldInfo[] = {"\n\n" __PROJECT_NAME__ "\n"
                                  "HwID: " __HARDWARE_ID__ "\n"
                                  "MCU: " __MCU_NAME__ "\n"
                                  "Rel: " __DATE__ "-" __TIME__ "\n" __WEBSITE__
                                  "\n"};

static bool extmem_ready;
static bld_task_t DoNext, ToDo;
static uint8_t BufferLen, reTryCount;
static uint8_t Buffer[BLD_BUFFER_SIZE] = "\x0";

void BLD_Tasks(
    void) // <editor-fold defaultstate="collapsed" desc="Boot loader task">
{
  switch (DoNext) {
  case BLD_RUN_APP: // <editor-fold defaultstate="collapsed" desc="Go to
                    // application">
    if (0xFFFF != FLASH_ReadWord(APP_BEGIN_ADDR, 0xFFFF)) {
      ExtMem_Deinit();
      BLD_DOWNLOAD_LED_SetLow();
      BLD_SELFPROG_LED_SetLow();
      __dbs("\n\nRun App\n\n");
      /* Enable Boot Section Lock */
      NVMCTRL.CTRLB = NVMCTRL_BOOTRP_bm;
      /* Jump to application, located immediately after boot section */
      pgm_jmp_far(APP_BEGIN_ADDR / sizeof(uint16_t));
    }

    __dbsh("\n\nNo App @", APP_BEGIN_ADDR); // </editor-fold>

  case BLD_INIT: // <editor-fold defaultstate="collapsed" desc="Bootloader
                 // initialize">
    while (BLD_UART_IsRxReady())
      BLD_UART_Read();

    BufferLen = 0;
    DoNext = BLD_UART_READ;
    ToDo = BLD_SYNC; // </editor-fold>
    break;

  case BLD_SYNC: // <editor-fold defaultstate="collapsed" desc="Get sync key to
                 // access bootloader mode">
    if (strstr((char *)Buffer, __SYNC_KEY__) != NULL) {
      strcpy((char *)Buffer, __FWID__);
      BufferLen = 0;
      reTryCount = 0;
      DoNext = BLD_UART_WRITE;
      ToDo = BLD_UART_READ;

      if (extmem_ready == true) {
        bool dummy = ExtMem_Init(true);
      }

      __dbs("\nBegin download");
    } else {
      DoNext = BLD_INIT;
      __dbss("\nKey error: ", Buffer);
    } // </editor-fold>
    break;

  case BLD_EXTMEM_READ: // <editor-fold defaultstate="collapsed" desc="Read hex
                        // file from external memory">
    BLD_DOWNLOAD_LED_SetLow();
    Buffer[BufferLen] = ExtMem_ReadHex();

    if (Buffer[BufferLen] == '\n') {
      if (BufferLen < BLD_BUFFER_SIZE) // process data
        DoNext = BLD_HEX_DECODE;
      else // response error
      {
        ExtMem_SetState(true); // set up-to-date
        DoNext = BLD_SYS_REBOOT;
      }
    } else if (BufferLen < BLD_BUFFER_SIZE)
      BufferLen++;
    else
      DoNext = BLD_RSLT_ERROR;

    DoNext = BLD_HEX_DECODE; // </editor-fold>
    break;

  case BLD_EXTMEM_WRITE: // <editor-fold defaultstate="collapsed" desc="Write
                         // hex file">
  {
    uint8_t i;

    DoNext = BLD_RSLT_SUCCESS;

    for (i = 0; i < BufferLen; i++) {
      int8_t rslt = ExtMem_WriteHex(Buffer[i]);

      if (rslt == RESULT_ERR) {
        ToDo = BLD_UART_READ;
        DoNext = BLD_RSLT_ERROR;
        break;
      } else if (rslt == RESULT_REBOOT) {
        ToDo = BLD_SYS_REBOOT;
        break;
      }
    }
  } // </editor-fold>
  break;

  case BLD_UART_READ: // <editor-fold defaultstate="collapsed" desc="Read data
                      // from UART buffer">
    while (BLD_UART_IsRxReady()) {
      BLD_DOWNLOAD_LED_SetLow();
      Buffer[BufferLen] = BLD_UART_Read();

      if (Buffer[BufferLen] == '\n') {
        if (BufferLen < BLD_BUFFER_SIZE) // process data
        {
          Buffer[++BufferLen] = 0;

          if (ToDo == BLD_SYNC)
            DoNext = BLD_SYNC;
          else {
            if (extmem_ready == true)
              DoNext = BLD_EXTMEM_WRITE;
            else
              DoNext = BLD_HEX_DECODE;
          }
        } else // response error
          DoNext = BLD_RSLT_ERROR;
      } else if (BufferLen < BLD_BUFFER_SIZE)
        BufferLen++;
      else
        DoNext = BLD_RSLT_ERROR;
    } // </editor-fold>
    break;

  case BLD_UART_WRITE: // <editor-fold defaultstate="collapsed" desc="Write to
                       // UART">
    //__dbs("\nTX: ");

    while (Buffer[BufferLen] != 0x00) {
      //__dbc(Buffer[BufferLen]);
      while (!BLD_UART_IsTxReady())
        ;
      BLD_UART_Write(Buffer[BufferLen++]);
      while (!BLD_UART_IsTxDone())
        ;
    }

    while (BLD_UART_IsRxReady())
      BLD_UART_Read();

    BufferLen = 0;
    Buffer[0] = 0;
    BLD_DOWNLOAD_LED_SetHigh();
    DoNext = ToDo;
    //__dbsi(", DoNext=", DoNext);
    // </editor-fold>
    break;

  case BLD_HEX_DECODE: // <editor-fold defaultstate="collapsed" desc="Hex
                       // decode">
  {
    uint8_t i;
    int8_t rslt = RESULT_ERR;

    DoNext = BLD_RSLT_SUCCESS;
    //__dbss("\nParse ", Buffer);

    for (i = 0; i < BufferLen; i++) {
      //__dbc(Buffer[i]);
      rslt = hex_decode((int8_t)Buffer[i]);

      if (rslt == RESULT_DONE)
        break;
      else if (rslt == RESULT_ERR) {
        DoNext = BLD_RSLT_ERROR;
        break;
      } else if (rslt == RESULT_REBOOT) {
        ToDo = BLD_SYS_REBOOT;

        if (extmem_ready == true)
          ExtMem_SetState(EXTMEM_UP_TO_DATE);
        break;
      }
    }

    //            __dbsi("\nRslt=", rslt);
    //            __dbsi(", ToDo=", ToDo);
    //            __dbsi(", DoNext=", DoNext);
  } // </editor-fold>
  break;

  case BLD_RSLT_SUCCESS: // <editor-fold defaultstate="collapsed"
                         // desc="Success">
    Buffer[0] = 'Y';
    Buffer[1] = 0;
    BufferLen = 0;
    reTryCount = 0;
    DoNext = BLD_UART_WRITE; // </editor-fold>
    break;

  case BLD_RSLT_ERROR: // <editor-fold defaultstate="collapsed" desc="Error">
    Buffer[0] = 'N';
    Buffer[1] = 0;
    BufferLen = 0;

    if (++reTryCount >= 5)
      DoNext = BLD_SYS_REBOOT;
    else
      DoNext = BLD_UART_WRITE; // </editor-fold>
    break;

  case BLD_SYS_REBOOT:
  default: // <editor-fold defaultstate="collapsed" desc="System reboot">
    __dbs("\nEnd & Reboot\n\n");
    _delay_ms(500);
    /* Software reset after download */
    _PROTECTED_WRITE(RSTCTRL.SWRR, RSTCTRL_SWRST_bm); // </editor-fold>
    break;
  }
} // </editor-fold>

void BLD_Init(
    void) // <editor-fold defaultstate="collapsed" desc="Bootloader initialize">
{
  __dbs((const char *)BldInfo);
  __dbsh("\nReset code: ", RSTCTRL_get_reset_cause());
  RSTCTRL_clear_reset_cause();
  hex_decode_init(SelfProgram);
  extmem_ready = ExtMem_Init(false);

  if (extmem_ready == true) {
    __dbs("\nExtMem ready");

    if (BLD_TRIG_GetValue() == false) {
      DoNext = BLD_INIT;
      BLD_DOWNLOAD_LED_SetHigh();
    } else if (ExtMem_CheckNewHex() == true) {
      DoNext = BLD_EXTMEM_READ;
      ToDo = BLD_EXTMEM_READ;
      BLD_DOWNLOAD_LED_SetHigh();
    } else
      DoNext = BLD_RUN_APP;
  } else {
    __dbs("\nNo ExtMem");

    if (BLD_TRIG_GetValue() == false) {
      DoNext = BLD_INIT;
      BLD_DOWNLOAD_LED_SetHigh();
    } else
      DoNext = BLD_RUN_APP;
  }

  BLD_SELFPROG_LED_SetLow();
} // </editor-fold>

void BLD_Deinit(void) // <editor-fold defaultstate="collapsed" desc="Bootloader
                      // deintialize">
{
  ToDo = BLD_SYS_REBOOT;
} // </editor-fold>