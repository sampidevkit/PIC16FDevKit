#include "libcomp.h"

public uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN]={
    "OK\n"
};

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{

} // </editor-fold>

public void Change_I2C_To_ICSP(void)
{
    // clear the master interrupt flag
    IFS2bits.I2C1SIF=0;
    // enable the master interrupt
    IEC2bits.I2C1SIE=0;
    // OFF I2C module
    I2C1CONbits.ON=0;
    nVICSP_EN_SetLow();
    nVICSP_EN_SetDigitalOutput();
}

public void Change_ICSP_To_I2C(void)
{
    nVICSP_EN_SetHigh();
    nVICSP_EN_SetDigitalInput();
    I2C1_Initialize();
}

public void StatusLED_SetState(sled_t Set)
{
    static bool locked=0;

LOOP:
    switch(Set)
    {
        case SLED_ACTIVE:
            locked=0;
        case SLED_RESET:
            Indicator_SetHigh(0);
            break;

        case SLED_FAIL:
            locked=1;
            Indicator_SetState(0, 500, 1500, IND_LOOP_FOREVER);
            break;

        case SLED_ONESHOT:
            Indicator_SetState(0, 5, 1, 1);
            break;

        case SLED_IDLE:
        default:
            if(locked==0)
                Indicator_SetState(0, 5, 1995, IND_LOOP_FOREVER);
            else
            {
                Set=SLED_FAIL;
                goto LOOP;
            }
            break;
    }
}