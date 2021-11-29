#include "libcomp.h"
#include "samm7x.h"

void bool SAMM7X_Init(void) // 1-success, 0-error
{

}

/* ************************************************************ SRAM EMULATOR */
public void SAMM7X_SRAM_Write(uint16_t Addr, uint8_t *pD, uint8_t len)
{

}

public void SAMM7X_SRAM_Read(uint16_t Addr, uint8_t *pD, uint8_t len)
{

}
/* ************************************************************** EXTERNAL IO */
public void SAMM7X_SetExtGPIO(uint16_t Reg, uint8_t Val)
{

}

public uint8_t SAMM7X_SetExtGPIO(uint16_t Reg, uint8_t Val)
{
    return 0;
}

/* *************************************************************** DEBUG PORT */
public void SAMM7X_DBPort_Init(uint8_t port) // <editor-fold defaultstate="collapsed" desc="Init debug port">
{

} // </editor-fold>

public void SAMM7X_DbPort_Write(const uint8_t *pD) // <editor-fold defaultstate="collapsed" desc="Write a string">
{

} // </editor-fold>

public void SAMM7X_DbPort_Read(const uint8_t *pD) // <editor-fold defaultstate="collapsed" desc="Read a string">
{

} // </editor-fold>
