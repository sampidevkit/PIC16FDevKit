#ifndef WDT_CFG_H
#define WDT_CFG_H

#define ClrWdt()                WATCHDOG_TimerClear()
#define WDT_STT_LED_Toggle()    //PG_LED1_SYS_Toggle()
#define WDT_STT_LED_SetHigh()   //PG_LED1_SYS_SetHigh()
#define WDT_STT_LED_SetLow()    //PG_LED1_SYS_SetLow()

#endif