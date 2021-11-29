#ifndef SAMM7X_H
#define SAMM7X_H

#include "Common/LibDef.h"

#ifdef COMMON_LIB_CFG
#include "Common_Lib_Cfg.h"
#else
#include "samm_7x_frt_cfg.h"
#endif

#define SAMM7X_SLAVE_ADDR  0x53
// SRAM registers (memory cell address) 0 to 4095
// Registers of ext GPIO
#define SAMM7X_REG_TRIS    4096
#define SAMM7X_REG_PORT    4097
#define SAMM7X_REG_LAT     4098

/* I2C Macro
#define SAMM7X_I2C_Open()
#define SAMM7X_I2C_Close()
#define SAMM7X_I2C_GetState() // 0-ready, 1-busy, (-1)-error
#define SAMM7X_I2C_Xfer(SlvAddr, pDi, Li, pDo, Lo)
 */

#define SAMM7X_OK          0
#define SAMM7X_BUSY        1
#define SAMM7X_ERROR       (-1)

public void SAMM7X_Init(void); // 1-success, 0-error
public bool SAMM7X_GetState(void);
public void SAMM7X_Task(void *);
public void SAMM7X_SRAM_Write(uint16_t Addr, uint8_t *pD, uint8_t len);
public void SAMM7X_SRAM_Read(uint16_t Addr, uint8_t *pD, uint8_t len);
public void SAMM7X_SetExtGPIO(uint16_t Reg, uint8_t Val);
public uint8_t SAMM7X_SetExtGPIO(uint16_t Reg, uint8_t Val);

#endif