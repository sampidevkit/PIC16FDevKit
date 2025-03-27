#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc.h"
#include "mcc_generated_files/usb/usb_cdc/usb_cdc_virtual_serial_port.h"
#include "project.h"

int main(void)
{
    int i=0;
    // USB status variables
    uint8_t cdcData;
    volatile RETURN_CODE_t status=SUCCESS;
    volatile CDC_RETURN_CODE_t cdcStatus=CDC_SUCCESS;

    SYSTEM_Initialize();
    USB_Start();

    while(1)
    {
        ClrWdt();
        status=USBDevice_Handle();
        // If USB error detected
        if(SUCCESS!=status)
        {
            if(++i==0)
                LED_BUSY_Toggle();
        }
        else
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
                        cdcStatus=USB_CDCWrite(cdcData);
                    }
                }

                // Running CDC Virtual Serial Port handler
                status=USB_CDCVirtualSerialPortHandler();
            }
        }
    }
}