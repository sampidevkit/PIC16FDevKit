#include "vcp.h"
#include "system/system.h"
#include "usb/usb_cdc/usb_cdc.h"
#include "usb/usb_cdc/usb_cdc_virtual_serial_port.h"

static bool vcp_is_opened=false;

public new_simple_task_t(VCP_Tasks)
{
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

    return USB_CDCRxReady();
}

uint8_t VCP_RxByte(void)
{
    if(!vcp_is_opened)
    {
        return 0;
    }

    return USB_CDCRead();
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
