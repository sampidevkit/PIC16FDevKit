#ifndef REGISTRATION_H
#define	REGISTRATION_H

#include "Common/LibDef.h"

extern bool Kit_Is_Registed;

public void Registration_Init(void);
public int Get_RegisCode(uint8_t *pCode);
public void Write_RegisKey(uint8_t *pKey);

#endif