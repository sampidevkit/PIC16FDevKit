#ifndef WDT_CFG_H
#define WDT_CFG_H

#define ClrWdt()                WATCHDOG_TimerClear()
#define WDT_STT_LED_Toggle()    PG_STT_Toggle()
#define WDT_STT_LED_SetHigh()   PG_STT_SetHigh()
#define WDT_STT_LED_SetLow()    PG_STT_SetLow()

#endif