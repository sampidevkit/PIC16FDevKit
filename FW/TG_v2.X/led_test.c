#include "mcc.h"

void main(void)
{
    SYSTEM_Initialize();
    
    while(1)
    {
        CLRWDT();
        BLED_Toggle();
        __delay_ms(100);
    }
}