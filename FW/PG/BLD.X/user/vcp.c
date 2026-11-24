#include "vcp.h"
#include "hardware.h"

static bool vcp_is_opened=false;

int i=0;
// USB status variables
uint8_t cdcData;
volatile RETURN_CODE_t status=SUCCESS;

void VCP_Tasks(void)
{
    if(SUCCESS==USBDevice_Handle())
    {
        if(true==USB_CDCDataTerminalReady())
        {
            vcp_is_opened=true;
            USB_CDCVirtualSerialPortHandler();
        }
        else
        {
            vcp_is_opened=false;
        }
    }
    else
    {
        vcp_is_opened=false;
    }
}

void VCP_Init(void)
{
    vcp_is_opened=false;
    USBDevice_Initialize();
    USB_Start();
    USB_CDCVirtualSerialPortInitialize();
}

void VCP_Deinit(void)
{
    vcp_is_opened=false;
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

    uint8_t data;

    USB_CDCRead(&data);

    return data;
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
