#include "libcomp.h"
#include "AppMain.h"

private uint8_t DoNext=0;
private tick_timer_t Tick;

public void APP_Main_Initialize(void) // <editor-fold defaultstate="collapsed" desc="Application Initialize">
{
    DoNext=0;
    ButtonApi_Init();
    Tick_Timer_Reset(Tick);
    StatusLED_SetState(SLED_IDLE);
    MediaReady=1;
} // </editor-fold>

public void APP_Main_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Application Main Task">
{
    switch(DoNext)
    {
        case 0:
        case 1:
        case 2:
        case 3:
            if(Sw1_Is_Pressed())
            {
                MediaReady=0;
                ICSP_Init(1);
                DoNext=5;
                Tick_Timer_Reset(Tick);
                ICSP_MCLR_SetLow();
                ICSP_MCLR_SetDigitalOutput();
            }
            else if(Sw3_Is_Pressed())
            {
                DoNext++;
                Tick_Timer_Reset(Tick);
            }
            else if(DoNext>0)
            {
                if(Tick_Timer_Is_Over_Ms(Tick, 1000))
                    DoNext=0;
            }
            break;

        case 4:
            MediaReady=0;
            ICSP_Init(0);
            Tick_Timer_Reset(Tick);
            ICSP_MCLR_SetLow();
            ICSP_MCLR_SetDigitalOutput();
            DoNext=5;
            break;

        case 5:
            if(Tick_Timer_Is_Over_Ms(Tick, 500))
            {
                ICSP_Deinit();
                DoNext=0;
                ICSP_MCLR_SetHigh();
                ICSP_MCLR_SetDigitalInput();
                MediaReady=1;
            }
            break;

        default:
            DoNext=0;
            break;
    }

    if(Sw2_Is_Pressed())
    {
        RLED_EXT_SetLow();
        GLED_EXT_SetLow();
        MediaReady=0;
        SoftwareReset();
    }
    
    SRAM_Emulate_Tasks();
} // </editor-fold>