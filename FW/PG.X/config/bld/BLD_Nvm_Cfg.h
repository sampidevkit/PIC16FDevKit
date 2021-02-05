#ifndef BLD_NVM_CFG_H
#define BLD_NVM_CFG_H

//#define BLD_NVM_TARGET_DEVICE_PIC32MM0256GPM0XX
// #define BLD_NVM_TARGET_DEVICE_PIC32MM0128GPM0XX
 #define BLD_NVM_TARGET_DEVICE_PIC32MM0064GPM0XX

#define BLD_Nvm_Lock()                          FLASH_Lock()
#define BLD_Nvm_UnLock()                        FLASH_Unlock(FLASH_UNLOCK_KEY)
#define BLD_Nvm_ErasePage(addr)                 FLASH_ErasePage(addr)
#define BLD_Nvm_ReadWord(addr)                  FLASH_ReadWord(addr)
#define BLD_Nvm_WriteDoubleWord(addr, Lsb, Msb) FLASH_WriteDoubleWord(addr, Lsb, Msb)

// #define bld_nvm_write_log(...)                  do{if(FsLog!=NULL) fprintf(FsLog, __VA_ARGS__);}while(0)
// #define bld_nvm_write_error_log(line)           do{err=line; icsp_log(ICSP_LOG_INTERNAL_ERROR, &err, NULL);}while(0)

#endif