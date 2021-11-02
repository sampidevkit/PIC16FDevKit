#ifndef RV8263C7_CFG_H
#define RV8263C7_CFG_H

#define RV8263C7_I2C_Xfer(pDi, Li, pDo, Lo)             KIT_I2C2_Xfer(RV8263C7_SLAVE_ADDR, pDi, Li, pDo, Lo)
#define RV8263C7_I2C_Enable()                           KIT_I2C2_Enable()
#define RV8263C7_I2C_Wait()                             KIT_I2C2_Wait()
#define RV8263C7_I2C_GetState()                         KIT_I2C2_GetState()
#define RV3028C7_CLKOE_SetLow()                         EVI_RTCC_SetLow()
#define RV3028C7_CLKOE_SetHigh()                        EVI_RTCC_SetHigh()

#endif