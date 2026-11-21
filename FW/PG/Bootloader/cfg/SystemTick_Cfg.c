#include "Drivers/timer/SystemTick.h"
#include "hardware.h"

inline tick_t SystemTimer_Get(void)
{
    return (tick_t)RTC_ReadCounter();
}

void SystemTimer_Clear(void)
{
    //RTC_WriteCounter(0);
}

void SystemTimer_SetCallbackFunc(void (*pfnc)(void))
{
    
}
