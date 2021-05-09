#ifndef RV3028C7_CFG_H
#define	RV3028C7_CFG_H

#define RV3028C7_GetClkInState()                        0
#define RV3028C7_I2c_WriteNBytes(address, pdata, len)   I2C_Master_Write(address, pdata, len)
#define RV3028C7_I2c_ReadNBytes(address, pdata, len)    I2C_Master_Read(address, pdata, len)

#endif