#include "mcc.h"
#define TICK_PER_MS 4 // LFINTOSC/4/TMR0_Prescaler/1000  

void main(void)
{
    uint16_t tickVal;

    SYSTEM_Initialize();
    PPS_UnLock();
    RA1PPS=0x00; //RA1->GPIO;
    RD3PPS=0x00; //RD3->GPIO;
    PPS_Lock();
    BLED_SetLow();
    UBT_N_SetHigh();
    BLED_SetDigitalOutput();
    UBT_N_SetDigitalOutput();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    tickVal=TMR0_ReadTimer();

    while(1)
    {
        CLRWDT();

        while(EUSART_is_rx_ready())
        {
            UBT_N_SetLow();
            
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }

        if((TMR0_ReadTimer()-tickVal)>=1000*TICK_PER_MS)
        {
            BLED_Toggle();
            UBT_N_SetHigh();
            tickVal=TMR0_ReadTimer();
            printf("\nHello world\n");
        }
    }
}