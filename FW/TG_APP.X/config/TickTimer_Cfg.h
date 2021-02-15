#ifndef TICKTIMER_CFG_H
#define TICKTIMER_CFG_H

#define TICK_PER_SEC                        31000 // Clock source of core timer
#define TICK_PER_MS                         3
#define USE_SOFT_TMR                        1
#define Tick_Timer_Read()                   TMR0_ReadTimer()
#define Tick_Timer_Set_SwTmr_Isr(Tmr_Isr)   TMR0_SetInterruptHandler(Tmr_Isr)

#endif