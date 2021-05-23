#include "libcomp.h"
#include "SRAM_Emulator.h"

// Extern variables
volatile uint8_t EMULATE_SRAM_Memory[EMULATE_SRAM_SIZE];

#define TRISX EMULATE_SRAM_Memory[4096]
#define PORTX EMULATE_SRAM_Memory[4097]
#define LATX EMULATE_SRAM_Memory[4098]

static bool addressState=true;
static uint16_t address, addrByteCount;
static uint8_t i2c1_slaveWriteData=0xAA;

void SRAM_Emulate_Init(void)
{
    memset((void*) EMULATE_SRAM_Memory, 0x00, EMULATE_SRAM_SIZE);
    TRISX=0b11111111;
    PORTX=0b11111100;
    LATX=0b11111100;
}

void SRAM_Emulate_Deinit(void)
{
    TRISX=0b11111111;
    PORTX=0b11111100;
    LATX=0b11111100;
}

uint8_t SRAM_Emulate_TRIS_Read(void)
{
    uint8_t value=TRISX_EXT_GPIO0;

    value<<=1;
    value|=TRISX_EXT_GPIO1;

    return value;
}

uint8_t SRAM_Emulate_PORT_Read(void)
{
    uint8_t value=PORTX_EXT_GPIO0;

    value<<=1;
    value|=PORTX_EXT_GPIO1;

    return value;
}

uint8_t SRAM_Emulate_LAT_Read(void)
{
    uint8_t value=LATX_EXT_GPIO0;

    value<<=1;
    value|=LATX_EXT_GPIO1;

    return value;
}

void SRAM_Emulate_Tasks(void)
{
    if(SRAM_Emulate_TRIS_Read()!=TRISX)
    {
        TRISX_EXT_GPIO0=(bool) (TRISX&1);
        TRISX_EXT_GPIO1=(bool) ((TRISX>>1)&1);
    }

    if(SRAM_Emulate_LAT_Read()!=LATX)
    {
        LATX_EXT_GPIO0=(bool) (LATX&1);
        LATX_EXT_GPIO1=(bool) ((LATX>>1)&1);
    }

    if(PORTX!=SRAM_Emulate_PORT_Read())
        PORTX=SRAM_Emulate_PORT_Read();
}

bool I2C1_StatusCallback(I2C1_SLAVE_DRIVER_STATUS status)
{
    switch(status)
    {
        case I2C1_SLAVE_TRANSMIT_REQUEST_DETECTED:
            // set up the slave driver buffer transmit pointer
            I2C1_ReadPointerSet((uint8_t*) (&EMULATE_SRAM_Memory[address++]));

            if(address>=EMULATE_SRAM_SIZE)
                address=0;
            break;

        case I2C1_SLAVE_RECEIVE_REQUEST_DETECTED:
            addrByteCount=0;
            addressState=true;
            // set up the slave driver buffer receive pointer
            I2C1_WritePointerSet(&i2c1_slaveWriteData);
            break;

        case I2C1_SLAVE_RECEIVED_DATA_DETECTED:
            if(addressState==true)
            {
                // get the address of the memory being written
                if(addrByteCount==0)
                {
                    address=(i2c1_slaveWriteData<<8) & 0xFF00;
                    addrByteCount++;
                }
                else if(addrByteCount==1)
                {
                    address=address|i2c1_slaveWriteData;
                    addrByteCount=0;
                    addressState=false;
                }

                if(address>=EMULATE_SRAM_SIZE)
                    address=EMULATE_SRAM_SIZE;
            }
            else // if (addressState == false)
            {
                // set the memory with the received data
                EMULATE_SRAM_Memory[address++]=i2c1_slaveWriteData;

                if(address>=EMULATE_SRAM_SIZE)
                    address=0;
            }
            break;

        default:
            return true;
    }

    return true;
}