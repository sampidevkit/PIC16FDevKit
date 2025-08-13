#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.h"
#include "system/system_tick.h"
#include "system/task_manager.h"
#include "system/soft_wdt.h"
#include "misc/button.h"
#include "misc/indicator.h"

static bt_cxt_t ModeBtCxt;

static void SYS_Wait(void)
{
    TaskManager();
}

static void EarlyWdtCallback(void)
{
    
}

int main(void)
{
    int i=0;
    // USB status variables
    uint8_t cdcData;
    volatile RETURN_CODE_t status=SUCCESS;
    volatile CDC_RETURN_CODE_t cdcStatus=CDC_SUCCESS;

    SYSTEM_Initialize();
    Tick_Timer_Init(SYS_Wait);
    TaskManager_Init();
    Indicator_Init();
    softWDT_Init(8, EarlyWdtCallback);
    BUTTON_Init(&ModeBtCxt, NULL, NULL, NULL);
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