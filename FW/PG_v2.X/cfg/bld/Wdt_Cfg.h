#ifndef WDT_CFG_H
#define WDT_CFG_H

#define ClrWdt()                WATCHDOG_TimerClear()
#define WDT_Task_UserCb()
#define WDT_STT_LED_Toggle()    PG_STTLED_Toggle()
#define WDT_STT_LED_SetHigh()   PG_STTLED_SetHigh()
#define WDT_STT_LED_SetLow()    PG_STTLED_SetLow()

#endif