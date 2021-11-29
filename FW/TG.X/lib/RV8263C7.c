#include "libcomp.h"
#include "RV8263C7.h"

#ifdef __db
#undef __db
#endif

#define __debug(...)    //task_debug(__VA_ARGS__)

#ifdef __ndb
#undef __ndb
#endif

#define __ndb(...)       //nontask_debug(__VA_ARGS__)

#define RV8263C7_IDLE               0
#define RV8263C7_READ               1
#define RV8263C7_WRITE              2
#define RV8263C7_CONVERT            3

static int8_t Rv8263c7_State;
static uint8_t Rv8263c7_DataSet;
static uint8_t Rv8263c7_DataMask;
static uint8_t Rv8263c7_Data[8];
static rtcc_t *pRv8263c7_Data;
static uint8_t Rv8263c7_Temp0, Rv8263c7_Temp1, Rv8263c7_ToDo, Rv8263c7_DoNext;

int8_t RV8263C7_GetState(void) // <editor-fold defaultstate="collapsed" desc="Get state">
{
    switch(Rv8263c7_DoNext)
    {
        case RV8263C7_READ:
            RV8263C7_I2C_Wait();

            if(RV8263C7_I2C_GetState()==RV8263C7_OK)
            {
                if(Rv8263c7_ToDo==RV8263C7_WRITE)
                {
                    Rv8263c7_DoNext=RV8263C7_WRITE;
                    Rv8263c7_Data[1]&=Rv8263c7_DataMask;
                    Rv8263c7_Data[1]|=Rv8263c7_DataSet;
                    RV8263C7_I2C_Xfer(&Rv8263c7_Data[0], 2, NULL, 0);
                    RV8263C7_I2C_Enable();
                }
                else if(Rv8263c7_ToDo==RV8263C7_CONVERT)
                {
                    pRv8263c7_Data->sec=BCD2Dec(Rv8263c7_Data[1]);
                    pRv8263c7_Data->min=BCD2Dec(Rv8263c7_Data[2]);
                    pRv8263c7_Data->hour=BCD2Dec(Rv8263c7_Data[3]);
                    pRv8263c7_Data->day=BCD2Dec(Rv8263c7_Data[4]);
                    pRv8263c7_Data->wkday=Rv8263c7_Data[5];
                    pRv8263c7_Data->month=BCD2Dec(Rv8263c7_Data[6]);
                    pRv8263c7_Data->year=BCD2Dec(Rv8263c7_Data[7]);
                    //__ndb("\n%02X:%02X:%02X", Rv8263c7_Data[3], Rv8263c7_Data[2], Rv8263c7_Data[1]);
                    //__ndb("\n%02X:%02X:%02X\n", pRv8263c7_Data->hour, pRv8263c7_Data->min, pRv8263c7_Data->sec);
                    Rv8263c7_State=RV8263C7_OK;
                    Rv8263c7_DoNext=RV8263C7_IDLE;
                }
                else
                {
                    Rv8263c7_State=RV8263C7_OK;
                    Rv8263c7_DoNext=RV8263C7_IDLE;
                }
            }
            else if(RV8263C7_I2C_GetState()==RV8263C7_ERR)
            {
                __ndb("\nerror 1\n");
                Rv8263c7_State=RV8263C7_ERR;
                Rv8263c7_DoNext=RV8263C7_IDLE;
            }
            break;

        case RV8263C7_WRITE:
            RV8263C7_I2C_Wait();

            if(RV8263C7_I2C_GetState()==RV8263C7_OK)
            {
                Rv8263c7_State=RV8263C7_OK;
                Rv8263c7_DoNext=RV8263C7_IDLE;
            }
            else if(RV8263C7_I2C_GetState()==RV8263C7_ERR)
            {
                Rv8263c7_State=RV8263C7_ERR;
                Rv8263c7_DoNext=RV8263C7_IDLE;
                __ndb("\nerror 2\n");
            }
            break;

        case RV8263C7_IDLE:
        default:
            break;
    }

    return Rv8263c7_State;
} // </editor-fold>

static void RV8263C7_RMW(uint8_t reg, uint8_t set, uint8_t mask) // <editor-fold defaultstate="collapsed" desc="Read - Modify - Write">
{
    //__ndb("\n%d\n",__LINE__);
    Rv8263c7_State=RV8263C7_BUSY;
    Rv8263c7_DoNext=RV8263C7_READ;
    Rv8263c7_ToDo=RV8263C7_WRITE;
    Rv8263c7_DataSet=set;
    Rv8263c7_DataMask=~mask;
    Rv8263c7_Data[0]=reg;
    RV8263C7_I2C_Xfer(&Rv8263c7_Data[0], 1, &Rv8263c7_Data[1], 1);
    RV8263C7_I2C_Enable();
} // </editor-fold>

void RV8263C7_Init(void) // <editor-fold defaultstate="collapsed" desc="Initialize">
{
    Rv8263c7_DoNext=RV8263C7_IDLE;
    RV8263C7_SetHourMode(RV8263C7_H24);
    RV3028C7_CLKOE_SetHigh();
} // </editor-fold>

void RV8263C7_SetHourMode(bool H24_12) // <editor-fold defaultstate="collapsed" desc="Set hour mode">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
        RV8263C7_RMW(RV8263C7_REG_CONTROL1, (H24_12<<RV8263C7_CONTROL1_H12_24_POS), RV8263C7_CONTROL1_H12_24_MASK);
} // </editor-fold>

void RV8263C7_RegSet(uint8_t reg, uint8_t val) // <editor-fold defaultstate="collapsed" desc="Set a register">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
    {
        Rv8263c7_State=RV8263C7_BUSY;
        Rv8263c7_DoNext=RV8263C7_WRITE;
        Rv8263c7_Data[0]=reg;
        Rv8263c7_Data[1]=val;
        RV8263C7_I2C_Xfer(&Rv8263c7_Data[0], 2, NULL, 0);
        RV8263C7_I2C_Enable();
    }
} // </editor-fold>

void RV8263C7_RegGet(uint8_t reg, uint8_t *pVal) // <editor-fold defaultstate="collapsed" desc="Get value of a register">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
    {
        Rv8263c7_State=RV8263C7_BUSY;
        Rv8263c7_DoNext=RV8263C7_READ;
        Rv8263c7_ToDo=RV8263C7_IDLE;
        Rv8263c7_Data[0]=reg;
        RV8263C7_I2C_Xfer(&Rv8263c7_Data[0], 1, pVal, 1);
        RV8263C7_I2C_Enable();
    }
} // </editor-fold>

void RV8263C7_SetClockOut(uint8_t mode) // <editor-fold defaultstate="collapsed" desc="Set clock output frequency">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
        RV8263C7_RMW(RV8263C7_REG_CONTROL2, (mode<<RV8263C7_CONTROL2_FD_POS), RV8263C7_CONTROL2_FD_MASK);
} // </editor-fold>

void RV8263C7_SoftReset(void) // <editor-fold defaultstate="collapsed" desc="RTC chip software reset">
{
    RV8263C7_RegSet(RV8263C7_REG_CONTROL1, 0x58); // datasheet pg.11/61
} // </editor-fold>

void RV8263C7_Stop(void) // <editor-fold defaultstate="collapsed" desc="RTC chip stop">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
        RV8263C7_RMW(RV8263C7_REG_CONTROL1, (1<<RV8263C7_CONTROL1_STOP_POS), RV8263C7_CONTROL1_STOP_MASK);
} // </editor-fold>

void RV8263C7_Resume(void) // <editor-fold defaultstate="collapsed" desc="RTC chip resume">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
        RV8263C7_RMW(RV8263C7_REG_CONTROL1, (0<<RV8263C7_CONTROL1_STOP_POS), RV8263C7_CONTROL1_STOP_MASK);
} // </editor-fold>

void RV8263C7_SetRtcc(const rtcc_t *pD) // <editor-fold defaultstate="collapsed" desc="Set RTCC value">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
    {
        Rv8263c7_State=RV8263C7_BUSY;
        Rv8263c7_DoNext=RV8263C7_WRITE;
        Rv8263c7_ToDo=RV8263C7_IDLE;
        Rv8263c7_Data[0]=RV8263C7_REG_SECOND;
        Rv8263c7_Data[1]=Dec2BCD(pD->sec);
        Rv8263c7_Data[2]=Dec2BCD(pD->min);
        Rv8263c7_Data[3]=Dec2BCD(pD->hour);
        Rv8263c7_Data[4]=Dec2BCD(pD->day);
        Rv8263c7_Data[5]=pD->wkday;
        Rv8263c7_Data[6]=Dec2BCD(pD->month);
        Rv8263c7_Data[7]=Dec2BCD(pD->year);
        RV8263C7_I2C_Xfer(&Rv8263c7_Data[0], 8, NULL, 0);
        RV8263C7_I2C_Enable();
    }
} // </editor-fold>

void RV8263C7_GetRtcc(rtcc_t *pD) // <editor-fold defaultstate="collapsed" desc="Get RTCC value">
{
    if(Rv8263c7_DoNext==RV8263C7_IDLE)
    {
        //__ndb("\nGet RTC\n");
        pRv8263c7_Data=pD;
        Rv8263c7_State=RV8263C7_BUSY;
        Rv8263c7_DoNext=RV8263C7_READ;
        Rv8263c7_ToDo=RV8263C7_CONVERT;
        Rv8263c7_Data[0]=RV8263C7_REG_SECOND;
        RV8263C7_I2C_Xfer(&Rv8263c7_Data[0], 1, &Rv8263c7_Data[1], 7);
        RV8263C7_I2C_Enable();
    }
} // </editor-fold>

void RV8263C7_CancelAnyTask(void) // <editor-fold defaultstate="collapsed" desc="Cancel any current task">
{
    Rv8263c7_DoNext=RV8263C7_IDLE;
} // </editor-fold>