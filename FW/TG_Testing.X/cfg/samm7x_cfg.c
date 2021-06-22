#include "libcomp.h"
#include "samm7x_cfg.h"

static tick_timer_t Tick={1, 0, 0};

void __SAMM7X_I2C_ClearTimer(void)
{
    Tick_Timer_Reset(Tick);
}

bool __SAMM7X_I2C_Timeout(void)
{
    return Tick_Timer_Is_Over_Ms(Tick, 500);
}