#ifndef TICKTIMER_CFG_H
#define TICKTIMER_CFG_H

#define TICK_PER_SEC        12000000 // Clock source of core timer
#define TICK_PER_MS         12000
#define TICK_PER_US         12
#define Tick_Timer_Read()   _CP0_GET_COUNT()
#define USE_SOFT_TMR        1

#endif