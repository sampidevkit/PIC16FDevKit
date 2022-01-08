#include "mcc.h"
#define TICK_PER_MS 4 // LFINTOSC/4/TMR0_Prescaler/1000  

void main(void)
{
    uint16_t tickVal;
    
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    tickVal=TMR0_ReadTimer();
    
    while(1)
    {
        CLRWDT();
        
        while(EUSART_is_rx_ready())
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }
        
        if((TMR0_ReadTimer()-tickVal)>=1000*TICK_PER_MS)
        {
            tickVal=TMR0_ReadTimer();
            printf("\nHello world\n");
        }
    }
}