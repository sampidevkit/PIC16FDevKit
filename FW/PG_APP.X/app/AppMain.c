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
} // </editor-fold>

public void APP_Main_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Application Main Task">
{
    switch(DoNext)
    {
        case 0:
            if(Sw1_Is_Pressed())
            {
                DoNext=1;
                StatusLED_SetState(SLED_RESET);
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
                StatusLED_SetState(SLED_IDLE);
            }
            break;

        default:
            DoNext=0;
            break;
    }

    if(Sw2_Is_Pressed())
    {
        PG_STT_SetHigh();
        RLED_EXT_SetLow();
        GLED_EXT_SetLow();
        SYSKEY=0x00000000; //write invalid key to force lock
        SYSKEY=0xAA996655; //write key1 to SYSKEY
        SYSKEY=0x556699AA; //write key2 to SYSKEY
        // OSCCON is now unlocked
        /* set SWRST bit to arm reset */
        RSWRSTSET=1;
        /* read RSWRST register to trigger reset */
        unsigned int dummy=RSWRST;
        /* prevent any unwanted code execution until reset occurs*/
        while(1);
    }
} // </editor-fold>