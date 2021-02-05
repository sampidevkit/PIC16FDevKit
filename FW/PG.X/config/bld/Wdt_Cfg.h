#ifndef WDT_CFG_H
#define WDT_CFG_H

#define ClrWdt()                WATCHDOG_TimerClear()
#define WDT_STT_LED_Toggle()    WHITE_Toggle()
#define WDT_STT_LED_SetHigh()   WHITE_SetValue(1)
#define WDT_STT_LED_SetLow()    WHITE_SetValue(0)

#endif