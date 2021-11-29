#ifndef TICKTIMER_H
#define	TICKTIMER_H

#include "LibDef.h"
#include "TickTimer_Cfg.h"

#define tick_t  uint32_t

typedef struct {
    volatile bool Timeout;
    tick_t Start;
    tick_t Duration;
} __attribute_packed__ tick_timer_t;

public void Tick_Timer_CallBack(void);
public tick_t Tick_Timer_Get_TickVal(void);
public void Tick_Timer_Init(void);
public void Delay(uint32_t Time);
public bool Tick_Timer_Is_Over(tick_timer_t *pTick, uint32_t Time);

#define Tick_Timer_Reset(x)                 (x.Timeout=1)
#define Delay_Ms(t)                         __delay_ms(t)
#define delay_ms(t)                         __delay_ms(t)
#define Tick_GetTimeMs()                    (Tick_Timer_Get_TickVal() / TICK_PER_MS)
#define Tick_Timer_Is_Over_Ms(pTick, Time)  Tick_Timer_Is_Over(&pTick, Time)

#endif