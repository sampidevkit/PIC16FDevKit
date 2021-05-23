#include "libcomp.h"

#define SW_SCL_SetDigitalInput()    ICSP_PGD_SetDigitalInput()
#define SW_SCL_SetDigitalOutput()   ICSP_PGD_SetDigitalOutput()
#define SW_SCL_GetValue()           ICSP_PGD_GetValue()
#define SW_SCL_SetHigh()            ICSP_PGD_SetHigh()
#define SW_SCL_SetLow()             ICSP_PGD_SetLow()

#define SW_SDA_SetDigitalInput()    ICSP_PGC_SetDigitalInput()
#define SW_SDA_SetDigitalOutput()   ICSP_PGC_SetDigitalOutput()
#define SW_SDA_GetValue()           ICSP_PGC_GetValue()
#define SW_SDA_SetHigh()            ICSP_PGC_SetHigh()
#define SW_SDA_SetLow()             ICSP_PGC_SetLow()

public bool MediaReady=0;
public uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN];

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{
    VDDTG_EN_SetHigh();
    nVICSP_EN_SetLow();
    nVICSP_EN_SetDigitalOutput();
} // </editor-fold>

public void SoftwareReset(void) // <editor-fold defaultstate="collapsed" desc="Software reset">
{
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
} // </editor-fold>

private void SW_I2C_SCL_Pulse(bool x) // <editor-fold defaultstate="collapsed" desc="SCL pulse">
{
    if(x)
    {
        SW_SCL_SetDigitalInput();
        SW_SCL_SetHigh();
    }
    else
    {
        SW_SCL_SetLow();
        SW_SCL_SetDigitalOutput();
    }

    while(SW_SCL_GetValue()!=x);
} // </editor-fold>

private void SW_I2C_SDA_Pulse(bool x) // <editor-fold defaultstate="collapsed" desc="SDA pulse">
{
    if(x)
    {
        SW_SDA_SetDigitalInput();
        SW_SDA_SetHigh();
    }
    else
    {
        SW_SDA_SetLow();
        SW_SDA_SetDigitalOutput();
    }

    while(SW_SDA_GetValue()!=x);
} // </editor-fold>

public void Change_I2C_To_ICSP(void) // <editor-fold defaultstate="collapsed" desc="Change I2C to ICSP">
{
    nVICSP_EN_SetLow();
    nVICSP_EN_SetDigitalOutput();
    // clear the master interrupt flag
    IFS2bits.I2C1SIF=0;
    // enable the master interrupt
    IEC2bits.I2C1SIE=0;
    // OFF I2C module
    I2C1CONbits.ON=0;
    SRAM_Emulate_Deinit();
} // </editor-fold>

public void Change_ICSP_To_I2C(void) // <editor-fold defaultstate="collapsed" desc="Change ICSP to I2C">
{
    nVICSP_EN_SetHigh();
    nVICSP_EN_SetDigitalInput();
    SRAM_Emulate_Init();
    I2C1_Initialize();
} // </editor-fold>

public void StatusLED_SetState(sled_t Set) // <editor-fold defaultstate="collapsed" desc="Set state of status LED">
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
                Indicator_SetState(0, 10, 1990, IND_LOOP_FOREVER);
            else
            {
                Set=SLED_FAIL;
                goto LOOP;
            }
            break;
    }
} // </editor-fold>