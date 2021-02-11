#include "libcomp.h"
#include "AppMain.h"

private uint8_t DoNext=0;
private tick_timer_t Tick;

public void APP_Main_Initialize(void) // <editor-fold defaultstate="collapsed" desc="Application Initialize">
{
    DoNext=0;
    ButtonApi_Init();
    Tick_Timer_Reset(Tick);
    Indicator_SetState(0, 10, 990, IND_LOOP_FOREVER);
} // </editor-fold>

public void APP_Main_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Application Main Task">
{
    switch(DoNext)
    {
        case 0:
            if(Sw1_Is_Pressed())
            {
                DoNext=1;
                ICSP_LedActive();
                ICSP_MCLR_SetLow();
                ICSP_MCLR_SetDigitalOutput();
            }
            break;

        case 1:
            if(Tick_Timer_Is_Over_Ms(Tick, 500))
            {
                DoNext=0;
                ICSP_MCLR_SetHigh();
                ICSP_MCLR_SetDigitalInput();
                ICSP_LedRelease();
            }
            break;

        default:
            DoNext=0;
            break;
    }

    if(Sw2_Is_Pressed())
        while(1);
} // </editor-fold>