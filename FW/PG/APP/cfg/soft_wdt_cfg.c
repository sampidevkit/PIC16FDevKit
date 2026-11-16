#include <avr/wdt.h>
#include "timer/rtc.h"
#include "system/soft_wdt.h"

void softWDT_TmrSetInterruptHandler(simple_fnc_t fnc)
{
    RTC_SetPITIsrCallback(fnc);
}

void softWDT_LedSetState(uint8_t state)
{
    
}

void softWDT_HwWdtClear(void)
{
    wdt_reset();
}