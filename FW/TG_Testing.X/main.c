#include "mcc_generated_files/mcc.h"

bool Button_is_pressed(void)
{
    static bool prv=1;

    if(prv!=UBT_GetValue())
    {
        prv=UBT_GetValue();

        if(prv==0)
            return 1;
    }

    return 0;
}

void Temperature_Test(void)
{
    int16_t tmp=(int16_t)ADCC_GetSingleConversion(TEMP);
    
    tmp/=5;
    tmp-=50;
    printf("\nTemp=%d", tmp);
}

void main(void)
{
    SYSTEM_Initialize();
    VDDSS_nEN_SetLow();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    printf("\n\nRunning\n");

    while(1)
    {
        while(EUSART_is_rx_ready())
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }

        if(Button_is_pressed())
        {
            BLED_Toggle();
            Temperature_Test();
        }
    }
}