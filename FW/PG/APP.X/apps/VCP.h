#ifndef VCP_H
#define	VCP_H

#include "common/libdef.h"

void VCP_Init(void);
void VCP_Deinit(void);
bool VCP_IsRxReady(void);
bool VCP_IsTxReady(void);
bool VCP_IsTxDone(void);
void VCP_Write(uint8_t b);
void VCP_Puts(uint8_t *pD, uint8_t len);
uint8_t VCP_Read(void);

#endif
