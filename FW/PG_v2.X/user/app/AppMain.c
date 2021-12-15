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
    MediaWriteProtect=0;
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
                MediaWriteProtect=1;
                ICSP_Init(1);
                ICSP_MCLR_SetLow();
                ICSP_MCLR_SetDigitalOutput();
                RLED_EXT_SetHigh();
                GLED_EXT_SetHigh();
                Tick_Timer_Reset(Tick);
                ICSP_VDDTG_EN_SetLow();
                DoNext=9;
            }
            else if(Sw3_Is_Pressed()) // Erase target MCU
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
            MediaWriteProtect=1;
            ICSP_Init(0);
            ICSP_MCLR_SetLow();
            ICSP_MCLR_SetDigitalOutput();
            RLED_EXT_SetHigh();
            GLED_EXT_SetHigh();
            Tick_Timer_Reset(Tick);
            ICSP_VDDTG_EN_SetLow();
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
            ICSP_MCLR_SetDigitalInput();

            if(ICSP_MCLR_GetValue()==0)
            {
                if(Tick_Timer_Is_Over_Ms(Tick, 100))
                {
                    ICSP_VDDTG_EN_SetHigh();
                    DoNext=10;
                }
            }
            else
                Tick_Timer_Reset(Tick);

            ICSP_MCLR_SetDigitalOutput();
            break;

        case 10:
        default:
            if(Tick_Timer_Is_Over_Ms(Tick, 400))
            {
                ICSP_Deinit();
                MediaWriteProtect=0;
                DoNext=0;
            }
            break;
    }

    if(Sw2_Is_Pressed()||(BOOT_N_GetValue()==0))
    {
        MediaWriteProtect=0;
        ICSP_MCLR_SetLow();
        ICSP_MCLR_SetDigitalOutput();
        ICSP_VDDTG_EN_SetLow();
        SRAM_Emulate_Deinit();
        SYS_SoftReset();
    }
} // </editor-fold>