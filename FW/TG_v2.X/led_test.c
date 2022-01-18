#include "mcc.h"

void main(void)
{
    SYSTEM_Initialize();
    PPS_UnLock();
    RA1PPS=0x00; //RA1->GPIO;
    PPS_Lock();
    BLED_SetDigitalOutput();
    UBT_N_SetDigitalInput();

    while(1)
    {
        CLRWDT();
        BLED_Toggle();
        __delay_ms(100);
    }
}