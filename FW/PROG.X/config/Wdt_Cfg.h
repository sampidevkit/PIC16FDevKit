#ifndef WDT_CFG_H
#define WDT_CFG_H

#define ClrWdt()                WATCHDOG_TimerClear()
#define WDT_STT_LED_Toggle()    do{RLED_Toggle(); GLED_Toggle(); BLED_Toggle();}while(0)
#define WDT_STT_LED_SetHigh()   do{RLED_SetLow(); GLED_SetLow(); BLED_SetLow();}while(0)
#define WDT_STT_LED_SetLow()    do{RLED_SetHigh(); GLED_SetHigh(); BLED_SetHigh();}while(0)

#endif