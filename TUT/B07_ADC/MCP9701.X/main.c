#include "mcc_generated_files/mcc.h"

#define MCP9701_ADC_RES_BIT 10
#define MCP9701_ADC_VREF    2048 // FVR output 1

static float MCP9701_GetTemp(void) // <editor-fold defaultstate="collapsed" desc="Thermal sensor">
{
    int32_t tmp=ADCC_GetSingleConversion(MCP970X);
    // convert to mV
    tmp*=MCP9701_ADC_VREF;
    tmp>>=MCP9701_ADC_RES_BIT; // mV=(ADCvalue*Vref)>>ADC_resolution
    // Offset 500mV at 0 C degree
    tmp-=400;
    // Resolution MCP9701: 19.5mV/C degree
    return (((float) tmp)/19.5f);
} // </editor-fold>

static void Plot(float data)
{
    uint8_t i;

    EUSART_Write(0xFE);

    for(i=0; i<4; i++)
    {
        uint8_t c=((uint8_t *) (&data))[i];

        switch(c)
        {
            case 0xFC:
            case 0xFD:
            case 0xFE:
                EUSART_Write(0xFD);
                EUSART_Write(c^0x20);
                break;

            default:
                EUSART_Write(c);
                break;
        }
    }

    EUSART_Write(0xFC);
}

void main(void)
{
    SYSTEM_Initialize();
    VDDSS_EN_N_SetLow(); // Enable Sensor VDD
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    __delay_ms(500);
    printf("\nTest Program: ");
    printf("%s-%s\n", __DATE__, __TIME__);

    while(1)
    {
        CLRWDT();
        BLED_Toggle();
        Plot(MCP9701_GetTemp());
        __delay_ms(500);
    }
}