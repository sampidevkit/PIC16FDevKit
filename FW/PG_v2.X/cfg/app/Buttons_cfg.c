#include "Buttons_Cfg.h"
#include "libcomp.h"

bool ProgButton_GetState(void) // <editor-fold defaultstate="collapsed" desc="Get state of PG button">
{
    return PG_BT_N_GetValue();
} // </editor-fold>

bool ICSP_Uninitialized_Check(void) // <editor-fold defaultstate="collapsed" desc="ICSP uninitialized Check">
{
    return ICSP_Is_Initialized();
} // </editor-fold>