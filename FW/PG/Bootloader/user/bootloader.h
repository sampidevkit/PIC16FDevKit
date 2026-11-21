#ifndef BOOTLOADER_H
#define	BOOTLOADER_H

#include "Common/libdef.h"
#include "project.h"

void BLD_Init(void);
void BLD_Deinit(void);
int8_t BLD_Tasks(void);

/* *************************************** Prototypes for data streaming port */
void BLD_Port_Init(void);
void BLD_Port_DeInit(void);
bool BLD_Port_IsTxReady(void);
void BLD_Port_Write(uint8_t b);
bool BLD_Port_IsTxDone(void);
bool BLD_Port_IsRxReady(void);
uint8_t BLD_Port_Read(void);
void BLD_Port_Task(void);

/* ********************************* Prototypes for trigger/indicator signals */
bool BLD_TRIG_GetValue(void);

/* *********************************************** Prototypes for application */
bool BLD_BootFlag(void);
void BLD_SetBootFlag(void);
void BLD_GetEncryptKey(uint32_t key[4]);
void BLD_NVM_Write(uint32_t addr, uint32_t data);
void BLD_NVM_EraseUnusedMemory(uint32_t beginAddr);
void BLD_SystemReboot(void);

#endif
