#include "RV8263C7.h"

#define __debug(...)    //printf(__VA_ARGS__)
#define __ndb(...)      //printf(__VA_ARGS__)

#define RV8263C7_IDLE               0
#define RV8263C7_READ               1
#define RV8263C7_WRITE              2
#define RV8263C7_CONVERT            3

static uint8_t Rv8263c7_Data[8];
static uint8_t Rv8263c7_Temp0, Rv8263c7_Temp1, Rv8263c7_ToDo, Rv8263c7_DoNext;

static uint8_t Dec2BCD(uint8_t hexvalue) // <editor-fold defaultstate="collapsed" desc="Convert Hex to BCD">
{
    return (((uint8_t) ((hexvalue/10)<<4))|(hexvalue%10));
} // </editor-fold>

static uint8_t BCD2Dec(uint8_t bcdvalue) // <editor-fold defaultstate="collapsed" desc="Convert BCD to Hex">
{
    return (((uint8_t) (bcdvalue>>4)*10)+(bcdvalue&0x0F));
} // </editor-fold>

static void RV8263C7_RMW(uint8_t reg, uint8_t set, uint8_t mask) // <editor-fold defaultstate="collapsed" desc="Read - Modify - Write">
{
    //__ndb("\n%d\n",__LINE__);
    Rv8263c7_Data[0]=reg;
    // Read data
    I2C1_WriteNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[0], 1);
    I2C1_ReadNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[1], 1);
    // Modify data
    Rv8263c7_Data[1]&=(~mask);
    Rv8263c7_Data[1]|=set;
    // Write data
    I2C1_WriteNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[0], 2);
} // </editor-fold>

void RV8263C7_Init(void) // <editor-fold defaultstate="collapsed" desc="Initialize">
{
    uint8_t reg;
    
    RV8263C7_RegGet(RV8263C7_REG_CONTROL1, &reg);
    
    if((reg&RV8263C7_CONTROL1_STOP_MASK)==RV8263C7_CONTROL1_STOP_MASK)
        RV8263C7_RegSet(RV8263C7_REG_CONTROL1, 0x58); // reset clock datasheet pg.11/61
        
    RV8263C7_SetHourMode(RV8263C7_H24);
    // Unused: 000
    // Timer Clock Frequency: 10-1Hz
    // Timer Enable: 1-Enable
    // Timer Interrupt Enable: 1-Interrupt generated from timer
    // Timer Interrupt Mode: 0-Interval Mode. Interrupt follows Timer Flag TF
    RV8263C7_RegSet(RV8263C7_REG_TMR_MODE, 0b00010110);
    // set TMR value
    RV8263C7_RegSet(RV8263C7_REG_TMR_VALUE, 1);
    // Alarm Interrupt: 0-Disable
    // Alarm Flag: 0-Cleared
    // Minute Interrupt: 0-Disable
    // Half Minute Interrupt: 0-Disable
    // Timer Flag: 0-Cleared
    // CLKOUT Frequency: 111-CLKOUT low
    RV8263C7_RegSet(RV8263C7_REG_CONTROL2, 0b00000111);
} // </editor-fold>

void RV8263C7_SetHourMode(bool H24_12) // <editor-fold defaultstate="collapsed" desc="Set hour mode">
{
    RV8263C7_RMW(RV8263C7_REG_CONTROL1, (uint8_t) (H24_12<<RV8263C7_CONTROL1_H12_24_POS), RV8263C7_CONTROL1_H12_24_MASK);
} // </editor-fold>

void RV8263C7_RegSet(uint8_t reg, uint8_t val) // <editor-fold defaultstate="collapsed" desc="Set a register">
{
    Rv8263c7_Data[0]=reg;
    Rv8263c7_Data[1]=val;
    I2C1_WriteNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[0], 2);
} // </editor-fold>

void RV8263C7_RegGet(uint8_t reg, uint8_t *pVal) // <editor-fold defaultstate="collapsed" desc="Get value of a register">
{
    I2C1_WriteNBytes(RV8263C7_SLAVE_ADDR, &reg, 1);
    I2C1_ReadNBytes(RV8263C7_SLAVE_ADDR, pVal, 1);
} // </editor-fold>

void RV8263C7_SetClockOut(uint8_t mode) // <editor-fold defaultstate="collapsed" desc="Set clock output frequency">
{
    RV8263C7_RMW(RV8263C7_REG_CONTROL2, (uint8_t) (mode<<RV8263C7_CONTROL2_FD_POS), RV8263C7_CONTROL2_FD_MASK);
} // </editor-fold>

void RV8263C7_SoftReset(void) // <editor-fold defaultstate="collapsed" desc="RTC chip software reset">
{
    RV8263C7_RegSet(RV8263C7_REG_CONTROL1, 0x58); // datasheet pg.11/61
} // </editor-fold>

void RV8263C7_Stop(void) // <editor-fold defaultstate="collapsed" desc="RTC chip stop">
{
    RV8263C7_RMW(RV8263C7_REG_CONTROL1, (1<<RV8263C7_CONTROL1_STOP_POS), RV8263C7_CONTROL1_STOP_MASK);
} // </editor-fold>

void RV8263C7_Resume(void) // <editor-fold defaultstate="collapsed" desc="RTC chip resume">
{
    RV8263C7_RMW(RV8263C7_REG_CONTROL1, (0<<RV8263C7_CONTROL1_STOP_POS), RV8263C7_CONTROL1_STOP_MASK);
} // </editor-fold>

void RV8263C7_SetRtcc(const rtcc_t *pD) // <editor-fold defaultstate="collapsed" desc="Set RTCC value">
{
    Rv8263c7_Data[0]=RV8263C7_REG_SECOND;
    Rv8263c7_Data[1]=Dec2BCD(pD->sec);
    Rv8263c7_Data[2]=Dec2BCD(pD->min);
    Rv8263c7_Data[3]=Dec2BCD(pD->hour);
    Rv8263c7_Data[4]=Dec2BCD(pD->day);
    Rv8263c7_Data[5]=pD->wkday;
    Rv8263c7_Data[6]=Dec2BCD(pD->month);
    Rv8263c7_Data[7]=Dec2BCD(pD->year);
    I2C1_WriteNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[0], 8);
} // </editor-fold>

void RV8263C7_GetRtcc(rtcc_t *pD) // <editor-fold defaultstate="collapsed" desc="Get RTCC value">
{
    Rv8263c7_Data[0]=RV8263C7_REG_SECOND;
    I2C1_WriteNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[0], 1);
    I2C1_ReadNBytes(RV8263C7_SLAVE_ADDR, &Rv8263c7_Data[1], 7);
    pD->sec=BCD2Dec(Rv8263c7_Data[1]&0x7F);
    pD->min=BCD2Dec(Rv8263c7_Data[2]);
    pD->hour=BCD2Dec(Rv8263c7_Data[3]);
    pD->day=BCD2Dec(Rv8263c7_Data[4]);
    pD->wkday=Rv8263c7_Data[5];
    pD->month=BCD2Dec(Rv8263c7_Data[6]);
    pD->year=BCD2Dec(Rv8263c7_Data[7]);
} // </editor-fold>
