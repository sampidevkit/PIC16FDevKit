#ifndef TICKTIMER_CFG_H
#define TICKTIMER_CFG_H

#define TICK_PER_SEC                        12000000 // Clock source of core timer
#define TICK_PER_MS                         12000
#define TICK_PER_US                         12
#define USE_SOFT_TMR                        1
//#define USE_SYS_SLEEP                       1
#define Tick_Timer_Read()                   _CP0_GET_COUNT()     
#define Tick_Timer_Set_SwTmr_Isr(Tmr_Isr)   //TMR0_SetInterruptHandler(TMR0_Cb)
#define Tick_Timer_ActionWhileDelay(time)   ClrWdt() //SYSTEM_Sleep(time)

#endif