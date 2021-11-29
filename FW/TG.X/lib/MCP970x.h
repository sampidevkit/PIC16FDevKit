#ifndef MCP970X_H
#define MCP970X_H

#include "common/LibDef.h"

#ifdef COMMON_LIB_CFG
#include "Common_Lib_Cfg.h"
#else
#include "MCP970X_Cfg.h"
#endif

#ifndef MCP9700_ADC_RES_BIT
#define MCP9700_ADC_RES_BIT 10
#endif

#ifndef MCP9700_ADC_VREF
#define MCP9700_ADC_VREF 2048
#endif

#ifndef MCP9701_ADC_RES_BIT
#define MCP9701_ADC_RES_BIT 10
#endif

#ifndef MCP9701_ADC_VREF
#define MCP9701_ADC_VREF 2048
#endif

public float MCP9700_GetTemp(int16_t AdcIn);
public float MCP9701_GetTemp(int16_t AdcIn);
    
#endif