#include "libcomp.h"

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{

} // </editor-fold>

bool I2C_Master_Write(uint8_t SlvAddr, uint8_t *pData, uint8_t Len)
{
    i2c1_error_t rslt;

    do
        rslt=I2C1_Open(SlvAddr);
    while(rslt==I2C1_BUSY); // sit here until we get the bus..

    if(rslt==I2C1_FAIL)
        return 0;

    I2C1_SetBuffer(pData, Len);
    I2C1_SetAddressNackCallback(NULL, NULL); //NACK polling?

    do
        rslt=I2C1_MasterOperation(false);
    while(rslt==I2C1_BUSY); // sit here until we get the bus..

    if(rslt==I2C1_FAIL)
        return 0;

    do
        rslt=I2C1_Close();
    while(rslt==I2C1_BUSY); // sit here until we get the bus..

    if(rslt==I2C1_FAIL)
        return 0;

    return 1;
}

bool I2C_Master_Read(uint8_t SlvAddr, uint8_t *pData, uint8_t Len)
{
    i2c1_error_t rslt;

    do
        rslt=I2C1_Open(SlvAddr);
    while(rslt==I2C1_BUSY); // sit here until we get the bus..

    if(rslt==I2C1_FAIL)
        return 0;

    I2C1_SetBuffer(pData, Len);
    I2C1_SetAddressNackCallback(NULL, NULL); //NACK polling?

    do
        rslt=I2C1_MasterOperation(true);
    while(rslt==I2C1_BUSY); // sit here until we get the bus..

    if(rslt==I2C1_FAIL)
        return 0;

    do
        rslt=I2C1_Close();
    while(rslt==I2C1_BUSY); // sit here until we get the bus..

    if(rslt==I2C1_FAIL)
        return 0;

    return 1;
}