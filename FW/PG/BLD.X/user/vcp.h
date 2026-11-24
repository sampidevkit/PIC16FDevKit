#ifndef VCP_H
#define VCP_H

#include "system/task_manager.h"

void VCP_Init(void);
void VCP_Deinit(void);
void VCP_Tasks(void);

bool VCP_IsOpenned(void);
bool VCP_IsRxReady(void);
uint8_t VCP_RxByte(void);
bool VCP_IsTxReady(void);
void VCP_TxByte(uint8_t data);

#endif // VCP_H
