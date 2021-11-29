#include "libcomp.h"

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