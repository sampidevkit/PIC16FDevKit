#include "libcomp.h"
#include "MCP970x.h"

public float MCP9700_GetTemp(int16_t AdcIn)
{
	int32_t tmp=AdcIn;
    // convert to mV
    tmp*=MCP9700_ADC_VREF;
    tmp>>=MCP9700_ADC_RES_BIT; // mV=(ADCvalue*Vref)>>ADC_resolution
    // Offset 500mV at 0 C degree
    tmp-=500;
    // Resolution MCP9700: 10mV/C degree
    return (((float) tmp)/10.0);
}

public float MCP9701_GetTemp(int16_t AdcIn)
{
	int32_t tmp=AdcIn;
    // convert to mV
    tmp*=MCP9701_ADC_VREF;
    tmp>>=MCP9701_ADC_RES_BIT; // mV=(ADCvalue*Vref)>>ADC_resolution
    // Offset 500mV at 0 C degree
    tmp-=500;
    // Resolution MCP9701: 19.5mV/C degree
    return (((float) tmp)/19.5);
}

