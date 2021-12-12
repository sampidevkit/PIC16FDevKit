#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/examples/i2c1_master_example.h"

typedef enum
{
    EXP_TRIS=4096,
    EXP_PORT,
    EXP_LAT
} exp_gpio_reg_t;

static bool Button_Is_Pressed(void) // <editor-fold defaultstate="collapsed" desc="Check the button">
{
    static bool prv=1;
    static uint8_t t=0;

    if(prv!=USER_BT_N_GetValue())
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

void main(void)
{
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    printf("\nPIC16F Dev Kit v1.x - Testing\n");

    while(1)
    {
        CLRWDT();

        if(Button_Is_Pressed())
        {
            uint8_t data;
            uint16_t addr;

            USER_LED_SetHigh();

            printf("\nWrite data to SRAM: ");

            for(addr=0; addr<4096; addr++)
            {
                CLRWDT();
                data=(uint8_t) addr;
                ExternalSRAM_Write(addr, data);
            }

            printf("Done");
            printf("\nRead data from SRAM: ");

            for(addr=0; addr<4096; addr++)
            {
                CLRWDT();
                data=ExternalSRAM_Read(addr);

                if(data!=(uint8_t) addr)
                {
                    printf("\n%04X: %02X != %02X", addr, (uint8_t) addr, data);
                    break;
                }
            }

            if(addr==4096)
                printf("Done");
            else
                printf("\nError");

            ExpanderGPIO_Write(EXP_TRIS, 0x00);
            data=TMR0L;
            printf("\nWrite GPIO: %02X", data);
            ExpanderGPIO_Write(EXP_LAT, data);
            printf("\nRead GPIO: %02X", ExpanderGPIO_Read(EXP_LAT));
            ExpanderGPIO_Write(EXP_TRIS, 0xFF);
            
            USER_LED_SetLow();
        }

        while(EUSART_is_rx_ready())
        {
            if(EUSART_is_tx_ready())
                EUSART_Write(EUSART_Read());
            else
                break;
        }

        //        USER_LED_Toggle();
        //        printf("Hello\n");
        //        __delay_ms(500);
    }
}