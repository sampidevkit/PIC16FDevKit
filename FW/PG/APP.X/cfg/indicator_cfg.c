#include "misc/indicator.h"

ind_cxt_t *Indicator_Hal_Init(void)
{
    static ind_cxt_t IndCfg0;
    
    return &IndCfg0;
}
