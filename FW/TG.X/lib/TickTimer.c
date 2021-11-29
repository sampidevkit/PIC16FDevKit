#include "libcomp.h"
#include "TickTimer.h"

volatile uint16_t SoftTmr=0;

public void Tick_Timer_CallBack(void) // <editor-fold defaultstate="collapsed" desc="Interrupt callback function">
{
    SoftTmr++;
} // </editor-fold>

public tick_t Tick_Timer_Get_TickVal(void) // <editor-fold defaultstate="collapsed" desc="Get tick value">
{
    tick_t CurTick;
    uint32_t CurCount;

    // prevent from overlapping of SoftTmr value
    do
    {
        CurCount=SoftTmr;
        CurTick=CurCount;
        CurTick<<=16;
        CurTick|=Tick_Timer_Read();
    }
    while(SoftTmr!=CurCount);

    return CurTick;
} // </editor-fold>

public bool Tick_Timer_Is_Over(tick_timer_t *pTick, uint32_t Time) // <editor-fold defaultstate="collapsed" desc="Check tick over microsecond">
{
    if(pTick->Timeout)
    {
        pTick->Timeout=0;
        pTick->Duration=TICK_PER_MS*Time;
        pTick->Start=Tick_Timer_Get_TickVal();
    }

    if((Tick_Timer_Get_TickVal()-pTick->Start)>=pTick->Duration)
    {
        pTick->Timeout=1;
        return 1;
    }

    return 0;
} // </editor-fold>

public void Delay(uint32_t Time) // <editor-fold defaultstate="collapsed" desc="Delay">
{
    tick_t Duration;
    tick_t Start=Tick_Timer_Get_TickVal();

    Duration=TICK_PER_MS*Time;

    while((Tick_Timer_Get_TickVal()-Start)<Duration)
        CLRWDT();
} // </editor-fold>

public void Tick_Timer_Init(void) // <editor-fold defaultstate="collapsed" desc="Tick timer initialize, call first and 1 time">
{
    SoftTmr=0;

#ifdef Tick_Timer_Set_SwTmr_Isr
    Tick_Timer_Set_SwTmr_Isr(Tick_Timer_CallBack);
#else
#warning "Please define macro Tick_Timer_Set_SwTmr_Isr(Tmr_Isr) point to timer ISR function"
#endif
} // </editor-fold>