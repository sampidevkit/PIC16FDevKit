#include "system/system_tick.h"
#include "timer/rtc.h"

const tick_para_t *Tick_Timer_Hal_Init(void)
{
    static const tick_para_t TickPara={
        .TICK_PER_MS=1,
        .TICK_PER_SEC=1000
    };
    
    return &TickPara;
}

tick_t Tick_Timer_Get_TickVal(void)
{
    return RTC_ReadCounter();
}
