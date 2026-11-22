#include "vcp.h"
#include "system/system.h"
#include "usb/usb_cdc/usb_cdc.h"
#include "usb/usb_cdc/usb_cdc_virtual_serial_port.h"

static bool vcp_is_opened=false;

int i=0;
// USB status variables
uint8_t cdcData;
volatile RETURN_CODE_t status=SUCCESS;
volatile CDC_RETURN_CODE_t cdcStatus=CDC_SUCCESS;

public new_simple_task_t(VCP_Tasks)
{
#if(0)
    if(SUCCESS==USBDevice_Handle())
    {
        vcp_is_opened=USB_CDCDataTerminalReady();

        if(true==vcp_is_opened)
        {
            USB_CDCVirtualSerialPortHandler();
        }
    }
    else
    {
        vcp_is_opened=false;
    }
#else
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
#endif
    Task_Done();
}

void VCP_Init(void)
{
    vcp_is_opened=false;
    USBDevice_Initialize();
    USB_Start();
    TaskManager_Create_NewSimpleTask(VCP_Tasks);
}

void VCP_Deinit(void)
{
    vcp_is_opened=false;
    TaskManager_End_Task(VCP_Tasks);
    USB_Stop();
}

bool VCP_IsOpenned(void)
{
    return vcp_is_opened;
}

bool VCP_IsRxReady(void)
{
    if(!vcp_is_opened)
    {
        return false;
    }

    return 1;// USB_CDCRxReady();
}

uint8_t VCP_RxByte(void)
{
    if(!vcp_is_opened)
    {
        return 0;
    }

    return 1; //USB_CDCRead();
}

bool VCP_IsTxReady(void)
{
    if(!vcp_is_opened)
    {
        return false;
    }

    return !USB_CDCTxBusy();
}

void VCP_TxByte(uint8_t data)
{
    if(vcp_is_opened)
    {
        USB_CDCWrite(data);
    }
}
