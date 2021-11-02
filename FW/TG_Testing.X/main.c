#include "libcomp.h"

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

void main(void)
{
    SYSTEM_Initialize();
    ClrWdt();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    while(1)
    {
        ClrWdt();
    }
}