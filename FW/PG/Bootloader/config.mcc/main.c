#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.h"
#include "project.h"

#include <avr/pgmspace.h>

#define HARDWARE_VERSION_HWORD 0x0000 // Version
#define HARDWARE_VERSION_LWORD 0x0000 // Revison
#define FIRMWARE_VERSION_HWORD 0x0000 // Bootloader firmware version

private void Display_SystemInfo(void) // <editor-fold defaultstate="collapsed" desc="Display system info">
{
    uint32_t Ver;

    __dbs("\r\r\r\rBOOTLOADER" \
    "\r\nMCU: AVR64DU28");

#ifndef DISABLE_CLIB_WARNING
    __dbs("\r\nDEV MODE");
#endif

    Ver=FLASH_ReadWord(HWVER_ADDR);
    Ver<<=16;
    Ver|=FLASH_ReadWord(HWVER_ADDR+2);

    if(Ver==0xFFFFFFFF)
    {
        Ver=HARDWARE_VERSION_HWORD;
        Ver<<=16;
        Ver|=HARDWARE_VERSION_LWORD;

        FLASH_Write(HWVER_ADDR, HARDWARE_VERSION_HWORD);
        while(FLASH_IsBusy());
        FLASH_Write(HWVER_ADDR+2, HARDWARE_VERSION_LWORD);
        while(FLASH_IsBusy());
    }

    __dbs("\r\nHwVer: ");
    __dbh8(Ver);

    Ver=FLASH_ReadWord(FWVER_ADDR);

    if(Ver==0xFFFF)
    {
        Ver=FIRMWARE_VERSION_HWORD;
        FLASH_Write(FWVER_ADDR, Ver);
        while(FLASH_IsBusy());
    }

    //Ver<<=16;
    //Ver|=FLASH_ReadWord(FWVER_ADDR+2);

    __dbs("\r\nBootVer: ");
    __dbh4(Ver);
    __dbs("\r\nRel: " __DATE__ "-" __TIME__);
    __dbsu("\r\nClock: ", CLOCK_Get());
    __dbs(" Hz\r\nReset: ");
    __dbh2(RSTCTRL_RSTFR);
    __dbs(" ");

    if(bit_test(RSTCTRL_RSTFR, 5))
        __dbs("UPDI ");

    if(bit_test(RSTCTRL_RSTFR, 4))
        __dbs("SW ");

    if(bit_test(RSTCTRL_RSTFR, 3))
        __dbs("WDT ");

    if(bit_test(RSTCTRL_RSTFR, 2))
        __dbs("MCLR ");

    if(bit_test(RSTCTRL_RSTFR, 1))
        __dbs("BOR ");

    if(bit_test(RSTCTRL_RSTFR, 0))
        __dbs("POD");
} // </editor-fold>

static void SubInit(void)
{
    CLOCK_SetHighSpeed();
    RTC_Initialize();
    CPUINT_Initialize();
    VREF_Initialize();
    SystemTick_Init();
    BLD_Init();
    debug_init();
    Display_SystemInfo();
    //Display_InterMemMap();
}

int bld(void)
{
    uint16_t opcode=0;
    bool Inited=0;

    CLOCK_Initialize();
    PIN_MANAGER_Initialize();
    NVM_Initialize();
    WDT_Initialize();
    debug_deinit();

    if((RSTCTRL.RSTFR&RSTCTRL_UPDIRF_bm)>0)
    {
        memset(NoInitMem(), 0x00, 16);
        RSTCTRL_clear_reset_cause();
    }

    if(BLD_TRIG_GetValue()) // Kiem tra cam bien Hall
    {
        if(NoInitMem()->BootCnt>=MAX_IRCFG_ATTACH_RETRY) // Gioi han so lan khoi dong lai khi cam bien Hall duoc kich hoat
            goto __BOOT_DEINIT__;

        if(BLD_BootFlag()) // Kiem tra co bootloader trong vung nho EEPROM
        {
            SubInit();
            Inited=1;

            while(1)
            {
                ClrWdt();

                if(BLD_Tasks()!=PROC_BUSY)
                {
                    BLD_Deinit();
                    break;
                }
            }
        }

        NoInitMem()->BootCnt++;
    }
    else
        NoInitMem()->BootCnt=0;

    opcode=FLASH_ReadWord(AppCodeMem()->BEGIN_ADDR);

    if(0xFFFF!=opcode)
    {
        if(EEPROM_Read(ACTIVE_ADDR)==DEVICE_DEACTIVATED)
        {
            if(BLD_TRIG_GetValue()==0) // No IRCFG detected
            {
                goto __BOOT_SLEEP__; // Do not go to application in this case
            }
        }

        if(Inited==0)
        {
            Inited=1;
            SubInit();
        }

        //        __dbs("\r\nGo to App\r\n");
        //        __dbs("\r\nGo to App @ ");
        //        __dbh(AppCodeMem()->BEGIN_ADDR>>1, 4);
        //        __dbc(':');
        //        __dbh(opcode, 4);
        //        __dbsu("\r\nBootCnt: ", NoInitMem()->BootCnt);
        //        __dbsu("\r\nAppCnt: ", NoInitMem()->AppCnt);
        //        __dbsu("\r\nLastCnt: ", NoInitMem()->LastLog);
        //        __dbsu("\r\nRtccTs: ", NoInitMem()->RtccTs);

        ccp_write_io((void*) &(CPUINT.CTRLA), (CPUINT.CTRLA|CPUINT_IVSEL_bm));
        ccp_write_io((void *) &NVMCTRL.CTRLB, 0x01); // Enable Boot Section Lock
        pgm_jmp_far(AppCodeMem()->BEGIN_ADDR>>1); // Jump to application, located immediately after boot section
    }

__BOOT_SLEEP__:
    if(Inited==1)
    {
        __dbsu("\r\nBLD sleep: ", NoInitMem()->BootCnt);

        if(NoInitMem()->BootCnt>=MAX_IRCFG_ATTACH_RETRY)
        {
            __dbs("\r\nRe-plug IRCFG");
        }

        VREF_Deinitialize();
    }

__BOOT_DEINIT__:
    debug_deinit();
    PIN_MANAGER_Deinitialize();
    SLPCTRL_Initialize();
    POWER_PdownMode();

    return 0;
}


int main(void)
{
    int i=0;
    // USB status variables
    uint8_t cdcData;
    volatile RETURN_CODE_t status=SUCCESS;
    volatile CDC_RETURN_CODE_t cdcStatus=CDC_SUCCESS;

    SYSTEM_Initialize();
    USB_Start();
    LED_BUSY_SetHigh();

    while(1)
    {
        ClrWdt();
        status=USBDevice_Handle();
        // If USB error detected
        if(SUCCESS==status)
        {
            // Tests if DTE is set and USB ready for transfer
            if(true==USB_CDCDataTerminalReady())
            {
                // Checks that CDC TX buffer is not full or pipe is busy
                if(false==USB_CDCTxBusy())
                {
                    // Retrieves CDC data if available and writes it back over CDC
                    cdcStatus=USB_CDCRead(&cdcData);

                    if(CDC_SUCCESS==cdcStatus)
                    {
                        i=0;
                        LED_BUSY_SetLow();
                        cdcStatus=USB_CDCWrite(cdcData);
                    }
                }

                // Running CDC Virtual Serial Port handler
                status=USB_CDCVirtualSerialPortHandler();

                if(i<2000)
                    i++;
                else
                    LED_BUSY_SetHigh();
            }
            else
            {
                if(++i>=10000)
                {
                    i=0;
                    LED_BUSY_Toggle();
                }
            }
        }
    }
}