#include "mcc.h"
#include "RV8263C7.h"

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

    buff[0]=(uint8_t) (SramAddr>>8); // MSB of SRAM address
    buff[1]=(uint8_t) SramAddr; // LSB of SRAM address
    buff[2]=d; // data
    I2C1_WriteNBytes(0x53, buff, 3);
} // </editor-fold>

static uint8_t ExternalSRAM_Read(uint16_t SramAddr) // <editor-fold defaultstate="collapsed" desc="Read data from external SRAM">
{
    uint8_t buff[2];

    buff[0]=(uint8_t) (SramAddr>>8); // MSB of SRAM address
    buff[1]=(uint8_t) SramAddr; // LSB of SRAM address
    I2C1_WriteNBytes(0x53, buff, 2);
    I2C1_ReadNBytes(0x53, &buff[0], 1);

    return buff[0];
} // </editor-fold>

static void ExpanderGPIO_Write(exp_gpio_reg_t Reg, uint8_t val) // <editor-fold defaultstate="collapsed" desc="Read expander GPIO">
{
    uint8_t buff[4];

    buff[0]=(uint8_t) (Reg>>8); // MSB of SRAM address
    buff[1]=(uint8_t) Reg; // LSB of SRAM address
    buff[2]=val; // data
    I2C1_WriteNBytes(0x53, buff, 3);
} // </editor-fold>

static uint8_t ExpanderGPIO_Read(exp_gpio_reg_t Reg) // <editor-fold defaultstate="collapsed" desc="Read expander GPIO">
{
    uint8_t buff[2];

    buff[0]=(uint8_t) (Reg>>8); // MSB of expander GPIO register address
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

static bool LeapYear(uint16_t Year) // <editor-fold defaultstate="collapsed" desc="Check leap year">
{
    bool leap=0;

    if((Year%4)==0)
    {
        if((Year%100)==0)
        {
            if((Year%400)==0)
                leap=1;
        }
        else
            leap=1;
    }

    return leap;
} // </editor-fold>

static bool ValidDateTimeCheck(const rtcc_t *pD) // <editor-fold defaultstate="collapsed" desc="Check valid date time">
{
    if(pD->sec>59)
        return 0;

    if(pD->min>59)
        return 0;

    if(pD->hour>23)
        return 0;

    if((pD->month==0)||(pD->month>12))
        return 0;

    switch(pD->month)
    {
        case 4:
        case 6:
        case 9:
        case 11:
            if(pD->day>30)
                return 0;
            break;

        case 2:
            if(LeapYear(2000+pD->year))
            {
                if(pD->day>29)
                    return 0;
            }
            else if(pD->day>28)
                return 0;
            break;

        default:
            if(pD->day>31)
                return 0;
            break;
    }

    return 1;
} // </editor-fold>

static void RV8263C7_Isr(void) // <editor-fold defaultstate="collapsed" desc="RTCC ISR">
{
    BLED_Toggle();
} // </editor-fold>

static void SK9822_Write(uint8_t Brightness, uint8_t Red, uint8_t Green, uint8_t Blue) // <editor-fold defaultstate="collapsed" desc="Addressable RGB led">
{
    SPI2_Open(SPI2_DEFAULT);
    CLC2CONbits.EN=1;
    CLKRCONbits.CLKREN=0; // disable CLKR_OUT
    Brightness|=0b11100000;
    // Start frame: 32 bits 0
    SPI2_ExchangeByte(0x00);
    SPI2_ExchangeByte(0x00);
    SPI2_ExchangeByte(0x00);
    SPI2_ExchangeByte(0x00);
    // Brightness
    SPI2_ExchangeByte(Brightness);
    // Blue
    SPI2_ExchangeByte(Blue);
    // Green
    SPI2_ExchangeByte(Green);
    // Red
    SPI2_ExchangeByte(Red);
    // End frame: 32 bits 1
    SPI2_ExchangeByte(0xFF);
    SPI2_ExchangeByte(0xFF);
    SPI2_ExchangeByte(0xFF);
    SPI2_ExchangeByte(0xFF);
    SPI2_Close();
    CLC2CONbits.EN=0;
    CLKRCONbits.CLKREN=1; // enable CLKR_OUT
} // </editor-fold>

void main(void) // <editor-fold defaultstate="collapsed" desc="Main">
{
    uint16_t i;
    tick_t Tick;
    bool RtcTrig=0;
    uint8_t x, DoNext=0, Brightness=15, Red=0, Green=0, Blue=0;

    SYSTEM_Initialize();
    Tick_Reset(Tick);
    VDDSS_EN_N_SetLow(); // Enable Sensor VDD
    UBT_N_SetLow();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    RV8263C7_Init();
    IOCAF3_SetInterruptHandler(RV8263C7_Isr);
    ExpanderGPIO_Write(EXP_TRIS, 0);
    ExpanderGPIO_Write(EXP_LAT, 2);
    __delay_ms(500);
    UBT_N_SetHigh();
    printf("\nTest Program: ");
    printf("%s-%s\n", __DATE__, __TIME__);

    while(1)
    {
        CLRWDT();

        switch(DoNext)
        {
            default:
                if(UBT_Is_Pressed())
                {
                    rtcc_t Rtcc;
                    uint8_t Tmp[4];
                    uint32_t JedecID;

                    i=0;
                    DoNext=1;
                    ExpanderGPIO_SetBit(EXP_LAT, 0, 1);
                    SST_Flash_GetID(Tmp);
                    JedecID=Tmp[0];
                    JedecID<<=8;
                    JedecID|=Tmp[1];
                    JedecID<<=8;
                    JedecID|=Tmp[2];

                    if((JedecID!=0)&&(JedecID!=0x00FFFFFF))
                        printf("\nFlash ID: %02X%02X%02X", Tmp[0], Tmp[1], Tmp[2]);
                    else
                        printf("\nFlash error");

                    RV8263C7_GetRtcc(&Rtcc);

                    if(ValidDateTimeCheck(&Rtcc))
                    {
                        printf("\n%02d:%02d:%02d-", Rtcc.hour, Rtcc.min, Rtcc.sec);
                        printf("%02d/%02d/20%02d", Rtcc.day, Rtcc.month, Rtcc.year);
                    }
                    else
                        printf("\nRTCC error");

                    printf("\nTemperature: %.1f", MCP9701_GetTemp());
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
            RV8263C7_RegSet(RV8263C7_REG_TMR_VALUE, 1); // reload TMR value
            RV8263C7_RegSet(RV8263C7_REG_CONTROL2, 0b00000111); // clear interrupt flag
            ExpanderGPIO_SetBit(EXP_LAT, 1, 2);
        }

        if(Tick_Is_Over(&Tick, 100))
        {
            Red+=3;
            Green+=5;
            Blue+=7;

            if((Red|Green|Blue)==0)
            {
                if(++Brightness>31)
                    Brightness=1;
            }

            SK9822_Write(Brightness, Red, Green, Blue);
        }

        while(EUSART_is_rx_ready()) // UART echo
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }
    }
} // </editor-fold>