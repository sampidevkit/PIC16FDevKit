#ifndef APPMAIN_H
#define APPMAIN_H

#include "Common/LibDef.h"

public void APP_Main_Initialize(void); // Called by KIT_Tasks(), after global interrupt enabling and after start-up delay
public void APP_Main_Tasks(void);

#endif