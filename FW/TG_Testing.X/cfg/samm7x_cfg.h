#ifndef SAMM7X_CFG_H
#define SAMM7X_CFG_H

#define SAMM7X_I2C_Open()                       I2C1_Open(SAMM7X_SLAVE_ADDR)
#define SAMM7X_I2C_Close()                      I2C1_Close()
#define SAMM7X_I2C_MasterOperation(rw)          I2C1_MasterOperation(rw)
#define SAMM7X_I2C_SetBuffer(pD, len)           I2C1_SetBuffer(pD, len)
#define SAMM7X_I2C_SetTimeoutCallback(cb, ptr)  I2C1_SetTimeoutCallback(cb, ptr)
#define SAMM7X_ClearTimer()                     __SAMM7X_I2C_ClearTimer()
#define SAMM7X_Timeout()                        __SAMM7X_I2C_Timeout()

void __SAMM7X_I2C_ClearTimer(void);
bool __SAMM7X_I2C_Timeout(void);

#endif