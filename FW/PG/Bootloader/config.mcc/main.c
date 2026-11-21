#include "bootloader.h"
#include "common/debug.h"
#include "internal_memory_maps.h"
#include "project.h"
#include "system/system_tick.h"
#include "system/task_manager.h"
#include "vcp.h"

private
void Display_SystemInfo(void) {
  __dbs("\r\nBOOTLOADER");
  __dbs("\r\nMCU: AVR64DU28");
  __dbs("\r\nRel: " __DATE__ "-" __TIME__);
  __dbsu("\r\nClock: ", F_CPU);
  __dbs(" Hz\r\nReset: ");
  __dbh2(RSTCTRL_RSTFR);
  __dbs(" ");

  if (bit_test(RSTCTRL_RSTFR, 5))
    __dbs("UPDI ");

  if (bit_test(RSTCTRL_RSTFR, 4))
    __dbs("SW ");

  if (bit_test(RSTCTRL_RSTFR, 3))
    __dbs("WDT ");

  if (bit_test(RSTCTRL_RSTFR, 2))
    __dbs("MCLR ");

  if (bit_test(RSTCTRL_RSTFR, 1))
    __dbs("BOR ");

  if (bit_test(RSTCTRL_RSTFR, 0))
    __dbs("POD");
}

int main(void) {
  uint16_t opcode;

  SYSTEM_Initialize();

  if (BLD_TRIG_GetValue()) {
    tick_timer_t Tick;
    uint8_t DoNext = 0;

    Tick_Timer_Reset(Tick);
    LED_BUSY_SetHigh();
    Tick_Timer_Init();
    TaskManager_Init();
    VCP_Init();

    while (TaskManager_Count() > 0) {
      ClrWdt();
      TaskManager();

      switch (DoNext) {
      case 0: {
        if (VCP_IsOpenned()) {
          DoNext = 1;
          BLD_Init();
          Tick_Timer_Reset(Tick);
          Display_SystemInfo();
          Display_InterMemMap();
        } else if (Tick_Timer_Is_Over_Ms(Tick, 30000)) {
          DoNext = 3;
        }

        break;
      }

      case 1: {
        if (BLD_Tasks() != PROC_BUSY) {
          BLD_Deinit();
          DoNext = 2;
        } else if (Tick_Timer_Is_Over_Ms(Tick, 30000)) {
          DoNext = 3;
        }

        break;
      }

      case 2: {
        DoNext = 3;
        __dbs("\r\nGo to App @ ");
        __dbh(AppCodeMem()->BEGIN_ADDR >> 1, 4);
        __dbc(':');
        __dbh(FLASH_ReadWord(AppCodeMem()->BEGIN_ADDR), 4);
        __dbsu("\r\nRtccTs: ", NoInitMem()->RtccTs);
        break;
      }

      default: {
        Task_Manager_End_AllTasks();
        break;
      }
      }
    }
  }

  opcode = FLASH_ReadWord(AppCodeMem()->BEGIN_ADDR);

  if (0xFFFF != opcode) {
    ccp_write_io((void *)&(CPUINT.CTRLA), (CPUINT.CTRLA | CPUINT_IVSEL_bm));
    ccp_write_io((void *)&NVMCTRL.CTRLB, 0x01); // Enable Boot Section Lock
    pgm_jmp_far(
        AppCodeMem()->BEGIN_ADDR >>
        1); // Jump to application, located immediately after boot section
  }

  debug_deinit();
  POWER_LowPowerModeEnter(POWER_PDOWN_MODE);

  return 0;
}
