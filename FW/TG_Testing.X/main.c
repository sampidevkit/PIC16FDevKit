#include "libcomp.h"

// Reset to 00:00:00:00, Saturday, Jan, 1st, 2000
#define Set_Default_DateTime(Tm)    \
    Tm.tm_hour=0;\
    Tm.tm_min=0;\
    Tm.tm_sec=0;\
    Tm.tm_wday=6;\
    Tm.tm_mday=1;\
    Tm.tm_year=0;

bool Button_is_pressed(void)
{
    static bool prv=1;

    if(prv!=UBT_GetValue())
    {
        prv=UBT_GetValue();

        if(prv==0)
            return 1;
    }

    return 0;
}

void Temperature_Test(void)
{
    int16_t tmp;
    int16_t adc=(int16_t) ADCC_GetSingleConversion(TEMP);

    // convert to mV
    tmp=adc<<1; // mV=ADC*Vref/1024=ADC*2048/1024=ADC*2
    tmp-=500; // Offset 500mV at 0 C degree
    // Resolution MCP9700: 10mV/C degree, MCP9701: 19.5mV/C degree

#if(0) // MCP9700
    tmp/=10;
#else // MCP9701
    tmp*=10;
    tmp/=195;
#endif

    printf("\nADC=%04X, T=%d", adc, tmp);
}

void Flash_Test(void)
{
    uint8_t buf[4];

    SPI2_Open(SPI2_DEFAULT);
    FLASH_nCS_SetLow();
    SPI2_ExchangeByte(0x9F); // JEDEC-ID command
    buf[0]=SPI2_ExchangeByte(0xFF);
    buf[1]=SPI2_ExchangeByte(0xFF);
    buf[2]=SPI2_ExchangeByte(0xFF);
    FLASH_nCS_SetHigh();
    SPI2_Close();

    printf("\nJEDEC-ID: %02X%02X%02X", buf[0], buf[1], buf[2]);
}

void RTC_Test(void)
{
    tm_t Tm;

    while(RV3028C7_GetDateTime(&Tm)==RV3028C7_RESULT_BUSY);

    printf("\n%02X:%02X:%02X", Tm.tm_hour, Tm.tm_min, Tm.tm_sec);
}

void RTC_Int_Isr(void)
{
    BLED_Toggle();
}

void SRAM_Test(void)
{
    uint16_t i;
    uint8_t sram[4];

    i=TMR0_ReadTimer()&0x0FFF;
    sram[0]=(uint8_t) (i>>8);
    sram[1]=(uint8_t) (i);
    sram[2]=TMR0L;
    sram[3]=0;

    if(I2C_Master_Write(0x53, &sram[0], 3))// write data
    {
        if(I2C_Master_Write(0x53, &sram[0], 2)) // write address
        {
            if(I2C_Master_Read(0x53, &sram[3], 1)) // read data
            {
                if(sram[2]==sram[3])
                    printf("\nSRAM %04X, %02X", i, sram[3]);
                else
                    __debug(__LINE__);
            }
            else
                __debug(__LINE__);
        }
        else
            __debug(__LINE__);
    }
    else
        __debug(__LINE__);
}

void Ext_Gpo_Test(void)
{
    static bool init=0;
    uint8_t gpio[4];

    if(init==0) // Set tris
    {
        gpio[0]=0x10;
        gpio[1]=0x00;

        if(I2C_Master_Write(0x53, &gpio[0], 2)) // write address
        {
            if(I2C_Master_Read(0x53, &gpio[2], 1)) // read data
            {
                gpio[2]=0x00;

                if(I2C_Master_Write(0x53, &gpio[0], 3))// write data
                {
                    init=1;
                    printf("\nTRIS=%02X", gpio[2]);
                }
                else
                {
                    __debug(__LINE__);
                    return;
                }
            }
            else
            {
                __debug(__LINE__);
                return;
            }
        }
        else
        {
            __debug(__LINE__);
            return;
        }
    }

    gpio[0]=0x10;
    gpio[1]=0x02;

    if(I2C_Master_Write(0x53, &gpio[0], 2)) // write address
    {
        if(I2C_Master_Read(0x53, &gpio[2], 1)) // read data
        {
            gpio[2]^=0xFF;

            if(I2C_Master_Write(0x53, &gpio[0], 3))// write data
                printf("\nLAT=%02X", gpio[2]);
            else
                __debug(__LINE__);
        }
        else
            __debug(__LINE__);
    }
    else
        __debug(__LINE__);
}

void main(void)
{
    tm_t Tm;
    int8_t Rslt;

    SYSTEM_Initialize();
    VDDSS_nEN_SetHigh();
    __delay_ms(250);
    __delay_ms(250);
    __delay_ms(250);
    __delay_ms(250);
    ClrWdt();
    VDDSS_nEN_SetLow();
    __delay_ms(250);
    __delay_ms(250);
    __delay_ms(250);
    __delay_ms(250);
    ClrWdt();
    IOCAF3_SetInterruptHandler(RTC_Int_Isr);
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    __debug(__LINE__);

    do
        Rslt=RV3028C7_Init(_RV3028C7_CFG_CLKO_1HZ);
    while(Rslt==RV3028C7_RESULT_BUSY);

    if(Rslt==RV3028C7_RESULT_NO_BAT)
    {
        __debug(__LINE__);
        Set_Default_DateTime(Tm);

        do
            Rslt=RV3028C7_SetDateTime(&Tm);
        while(Rslt==RV3028C7_RESULT_BUSY);
    }

    __debug(__LINE__);

    while(1)
    {
        ClrWdt();

        while(EUSART_is_rx_ready())
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }

        if(Button_is_pressed())
        {
            //BLED_Toggle();
            Temperature_Test();
            Flash_Test();
            RTC_Test();
            SRAM_Test();
            Ext_Gpo_Test();
        }
    }
}