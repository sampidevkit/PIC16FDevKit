#include <time.h>
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/spi2.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/examples/i2c1_master_example.h"

#define MCP9701_ADC_RES_BIT 10
#define MCP9701_ADC_VREF    2048 // FVR output 1
#define TICK_PER_MS         4 // LFINTOSC/4/TMR0_Prescaler/1000  
#define Tick_Reset(cxt)     cxt.Over=1

typedef enum
{
    EXP_TRIS=4096,
    EXP_PORT,
    EXP_LAT
} exp_gpio_reg_t;

typedef struct
{
    bool Over;
    uint16_t Begin;
    uint16_t End;
} tick_t;

static bool Tick_Is_Over(tick_t *pTick, uint16_t ms) // <editor-fold defaultstate="collapsed" desc="Check timeout">
{
    if(pTick->Over==1)
    {
        pTick->Begin=TMR0_ReadTimer();
        pTick->End=ms*TICK_PER_MS;
        pTick->Over=0;
    }

    if((TMR0_ReadTimer()-pTick->Begin)>=pTick->End)
        pTick->Over=1;

    return pTick->Over;
} // </editor-fold>

static bool UBT_Is_Pressed(void) // <editor-fold defaultstate="collapsed" desc="Button UP">
{
    static bool prv=1;
    static uint8_t t=0;

    if(prv!=UBT_N_GetValue())
    {
        if(prv==1)
        {
            if(++t>100) // check 100 cycles
            {
                prv=0;
                return 1;
            }
        }
        else
            prv=1;
    }
    else if(t>0)
        t=0;

    return 0;
} // </editor-fold>

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

static void ExternalSRAM_Write(uint16_t SramAddr, uint8_t d) // <editor-fold defaultstate="collapsed" desc="Write data to external SRAM">
{
    uint8_t buff[4];

    buff[0]=(uint8_t) (SramAddr<<8); // MSB of SRAM address
    buff[1]=(uint8_t) SramAddr; // LSB of SRAM address
    buff[2]=d; // data
    I2C1_WriteNBytes(0x53, buff, 3);
} // </editor-fold>

static uint8_t ExternalSRAM_Read(uint16_t SramAddr) // <editor-fold defaultstate="collapsed" desc="Read data from external SRAM">
{
    uint8_t buff[2];

    buff[0]=(uint8_t) (SramAddr<<8); // MSB of SRAM address
    buff[1]=(uint8_t) SramAddr; // LSB of SRAM address
    I2C1_WriteNBytes(0x53, buff, 2);
    I2C1_ReadNBytes(0x53, &buff[0], 1);

    return buff[0];
} // </editor-fold>

static void ExpanderGPIO_Write(exp_gpio_reg_t Reg, uint8_t val) // <editor-fold defaultstate="collapsed" desc="Read expander GPIO">
{
    uint8_t buff[4];

    buff[0]=(uint8_t) (Reg<<8); // MSB of SRAM address
    buff[1]=(uint8_t) Reg; // LSB of SRAM address
    buff[2]=val; // data
    I2C1_WriteNBytes(0x53, buff, 3);
} // </editor-fold>

static uint8_t ExpanderGPIO_Read(exp_gpio_reg_t Reg) // <editor-fold defaultstate="collapsed" desc="Read expander GPIO">
{
    uint8_t buff[2];

    buff[0]=(uint8_t) (Reg<<8); // MSB of expander GPIO register address
    buff[1]=(uint8_t) Reg; // LSB of expander GPIO register address
    I2C1_WriteNBytes(0x53, buff, 2);
    I2C1_ReadNBytes(0x53, &buff[0], 1);

    return buff[0];
} // </editor-fold>

static void ExpanderGPIO_SetBit(exp_gpio_reg_t Reg, uint8_t Bit, uint8_t logic) // <editor-fold defaultstate="collapsed" desc="Set 1 bit of expander IO register">
{
    uint8_t regVal=ExpanderGPIO_Read(Reg);

    if(logic==1) // set bit
        regVal|=(1<<Bit);
    else if(logic==0) // clear bit
        regVal&=~(1<<Bit);
    else // toggle bit
        regVal^=(1<<Bit);

    ExpanderGPIO_Write(Reg, regVal);
} // </editor-fold>

static void SST_Flash_GetID(uint8_t *pD) // <editor-fold defaultstate="collapsed" desc="Get flash JEDEC ID">
{
    SPI2_Open(SPI2_DEFAULT);
    FLASH_CS_N_SetLow();
    SPI2_ExchangeByte(0x9F); // JEDEC ID command
    *pD=SPI2_ExchangeByte(0xFF);
    pD++;
    *pD=SPI2_ExchangeByte(0xFF);
    pD++;
    *pD=SPI2_ExchangeByte(0xFF);
    FLASH_CS_N_SetHigh();
    SPI2_Close();
} // </editor-fold>

static void RV8263C7_Init(void) // <editor-fold defaultstate="collapsed" desc="RTCC init">
{

} // </editor-fold>

static void RV8263C7_Get(struct tm *pD) // <editor-fold defaultstate="collapsed" desc="Get RTC">
{

} // </editor-fold>

static void RV8263C7_Isr(void) // <editor-fold defaultstate="collapsed" desc="RTCC ISR">
{
    BLED_Toggle();
} // </editor-fold>

void main(void)
{
    uint16_t i;
    tick_t Tick;
    bool RtcTrig=0;
    uint8_t x, DoNext=0;

    SYSTEM_Initialize();
    //Tick_Reset(Tick);
    VDDSS_EN_N_SetLow(); // Enable Sensor VDD
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    RV8263C7_Init();
    IOCAF3_SetInterruptHandler(RV8263C7_Isr);
    ExpanderGPIO_Write(EXP_TRIS, 0);
    ExpanderGPIO_Write(EXP_LAT, 0);

    while(1)
    {
        CLRWDT();

        switch(DoNext)
        {
            default:
                if(UBT_Is_Pressed())
                {
                    uint8_t JedecID[4];
                    
                    i=0;
                    DoNext=1;
                    ExpanderGPIO_SetBit(EXP_LAT, 0, 1);
                    SST_Flash_GetID(JedecID);
                    printf("\nFlash ID: %02X%02X%02X", JedecID[0], JedecID[1], JedecID[2]);
                }
                break;

            case 1: // Write data to SRAM
                ExternalSRAM_Write(i, (uint8_t) i);

                if(++i>=4096)
                {
                    i=0;
                    DoNext=2;
                    printf("\nWrite SRAM: Done");
                }
                break;

            case 2:
                x=ExternalSRAM_Read(i);

                if(x!=(uint8_t) i)
                    printf("\nSRAM Error %04X: %02X", i, x);

                if(++i>=4096)
                {
                    i=0;
                    DoNext=0;
                    ExpanderGPIO_SetBit(EXP_LAT, 0, 0);
                    printf("\nRead SRAM: Done");
                }
                break;
        }

        if(RtcTrig!=BLED_GetValue())
        {
            RtcTrig=BLED_GetValue();

            if(RtcTrig)
            {
                struct tm Tm;
                
                ExpanderGPIO_SetBit(EXP_LAT, 1, 2);
                RV8263C7_Get(&Tm);
                printf("\n%02d:%02d:%02d-", Tm.tm_hour, Tm.tm_min, Tm.tm_sec);
                printf("\n%02d/%02d/%04d-", Tm.tm_mday, Tm.tm_mon, Tm.tm_year);
                printf("\nTemperature: %.1f", MCP9701_GetTemp());
            }
        }

        while(EUSART_is_rx_ready()) // UART echo
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }
    }
}