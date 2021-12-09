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
            if(Sw1_Is_Pressed()) // Reset target MCU
            {
                MediaReady=0;
                ICSP_Init(1);
                DoNext=9;
                RLED_EXT_SetHigh();
                GLED_EXT_SetHigh();
                Tick_Timer_Reset(Tick);
                ICSP_MCLR_SetLow();
                ICSP_MCLR_SetDigitalOutput();
                break;
            }

            if(Sw3_Is_Pressed()) // Erase target MCU
            {
                DoNext++;
                Tick_Timer_Reset(Tick);
            }
            else if(DoNext>0)
            {
                if(Tick_Timer_Is_Over_Ms(Tick, 500))
                    DoNext=0;
            }
            break;

        case 4: // Erase target MCU
            MediaReady=0;
            ICSP_Init(0);
            RLED_EXT_SetHigh();
            GLED_EXT_SetHigh();
            Tick_Timer_Reset(Tick);
            ICSP_MCLR_SetLow();
            ICSP_MCLR_SetDigitalOutput();
            DoNext=5;
            break;

        case 5:
        case 6:
        case 7:
        case 8:
            if(Tick_Timer_Is_Over_Ms(Tick, 250))
            {
                DoNext++;
                RLED_EXT_Toggle();
                GLED_EXT_Toggle();
            }
            break;

        case 9:
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
        MediaReady=0;
        SRAM_Emulate_Deinit();
        SYS_SoftReset();
    }
} // </editor-fold>