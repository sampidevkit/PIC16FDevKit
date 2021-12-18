#include "Icsp_Cfg.h"
#include "libcomp.h"

void Change_Mode_To_ICSP(void) // <editor-fold defaultstate="collapsed" desc="Change I2C to ICSP">
{
    // clear the master interrupt flag
    IFS2bits.I2C1SIF=0;
    // enable the master interrupt
    IEC2bits.I2C1SIE=0;
    // OFF I2C module
    I2C1CONbits.ON=0;
    SRAM_Emulate_Deinit();
    KIT_USB_Device_CDC_Uart_Disable();
} // </editor-fold>

void Change_Mode_To_Running(void) // <editor-fold defaultstate="collapsed" desc="Change ICSP to I2C">
{
    SRAM_Emulate_Init();
    I2C1_Initialize();
    KIT_USB_Device_CDC_Uart_Enable();
} // </editor-fold>