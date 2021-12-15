#ifndef BLD_NVM_CFG_H
#define BLD_NVM_CFG_H

#define BLD_NVM_TARGET_DEVICE_PIC32
#define BLD_NVM_TARGET_DEVICE_PIC32MM0064GPM0XX

#define BLD_Nvm_Lock()                          FLASH_Lock()
#define BLD_Nvm_UnLock()                        FLASH_Unlock(FLASH_UNLOCK_KEY)
#define BLD_Nvm_ErasePage(addr)                 FLASH_ErasePage(addr)
#define BLD_Nvm_WriteDoubleWord(addr, Lsb, Msb) FLASH_WriteDoubleWord(addr, Lsb, Msb)

#endif