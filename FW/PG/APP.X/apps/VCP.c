#include "VCP.h"
#include "system/system_tick.h"
#include "system/task_manager.h"
#include "usb_cdc.h"
#include "usb_cdc_virtual_serial_port.h"
#include "UART_Mux.h"

static bool VCP_IsReady=0;
static uint32_t VCP_LastBaud=9600;

private new_simple_task_t(VCP_Tasks) // <editor-fold defaultstate="collapsed" desc="VCP tasks">
{
    if(USBDevice_Handle()==SUCCESS) // If USB error detected
    {
        if(USB_CDCDataTerminalReady()) // Tests if DTE is set and USB ready for transfer
        {
            VCP_IsReady=1;
            USB_CDCVirtualSerialPortHandler(); // Running CDC Virtual Serial Port handler
        }
        
        if(VCP_LastBaud!=USB_CDCGetBaud())
        {
            VCP_LastBaud=USB_CDCGetBaud();
            UART_Mux_SetBaud(VCP_LastBaud);
        }
    }
    else
        VCP_IsReady=0;

    Task_Done();
} // </editor-fold>

void VCP_Init(void)
{
    VCP_IsReady=0;
    VCP_LastBaud=9600;
    USB_Start();
    TaskManager_Create_NewSimpleTask(VCP_Tasks);
}

void VCP_Deinit(void)
{
    TaskManager_End_Task(VCP_Tasks);
    VCP_IsReady=0;
    USB_Stop();
}

bool VCP_IsRxReady(void)
{
    if(!VCP_IsReady)
        return 0;

    return USB_CDCRxReady();
}

bool VCP_IsTxReady(void)
{
    if(!VCP_IsReady)
        return 0;

    return 0;
}

bool VCP_IsTxDone(void)
{
    if(!VCP_IsReady)
        return 1;

    return USB_CDCTxDone();
}

void VCP_Write(uint8_t b)
{
    USB_CDCWrite(b);
}

void VCP_Puts(uint8_t *pD, uint8_t len)
{
    uint8_t i;

    for(i=0; i<len; i++)
    {
        while(USB_CDCTxBusy())
            TaskManager();

        USB_CDCWrite(*pD++);
    }

    while(!USB_CDCTxDone())
        TaskManager();
}

uint8_t VCP_Read(void)
{
    uint8_t data;

    if(USB_CDCRead(&data)==CDC_SUCCESS)
        return data;

    return 0;
}
