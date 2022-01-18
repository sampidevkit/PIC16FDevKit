#include "mcc.h"

void main(void)
{
    bool Phase=0;
    int16_t Duty=0;

    SYSTEM_Initialize();
    PWM7CONbits.EN=1;
    CLC3CONbits.EN=1;

    while(1)
    {
        CLRWDT();

        if(Phase==0)
        {
            if(Duty<1024)
            {
                PWM7_LoadDutyValue((uint16_t)Duty);
                Duty+=7;
            }
            else
            {
                Duty=1023;
                Phase=1;
            }
        }
        else
        {
            if(Duty>(-1))
            {
                PWM7_LoadDutyValue((uint16_t)Duty);
                Duty-=7;
            }
            else
            {
                Duty=0;
                Phase=0;
            }
        }

        __delay_ms(10);
    }
}
