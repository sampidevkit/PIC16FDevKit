#include "libcomp.h"
#include "SRAM_Emulator.h"

// Extern variables
volatile uint8_t EMULATE_SRAM_Memory[EMULATE_SRAM_SIZE];

#define TRISX EMULATE_SRAM_Memory[4096]
#define PORTX EMULATE_SRAM_Memory[4097]
#define LATX EMULATE_SRAM_Memory[4098]

static bool addressState=true;
static uint16_t address, addrByteCount;
static uint8_t i2c2_slaveWriteData=0xAA;

private uint8_t SRAM_Emulate_TRIS_Read(void)
{
    uint8_t value=TRISX_EXT_GPIO5;

    value<<=1;
    value|=TRISX_EXT_GPIO4;
    value<<=1;
    value|=TRISX_EXT_GPIO3;
    value<<=1;
    value|=TRISX_EXT_GPIO2;
    value<<=1;
    value|=TRISX_EXT_GPIO1;
    value<<=1;
    value|=TRISX_EXT_GPIO0;

    return value;
}

private uint8_t SRAM_Emulate_PORT_Read(void)
{
    uint8_t value=PORTX_EXT_GPIO5;

    value<<=1;
    value|=PORTX_EXT_GPIO4;
    value<<=1;
    value|=PORTX_EXT_GPIO3;
    value<<=1;
    value|=PORTX_EXT_GPIO2;
    value<<=1;
    value|=PORTX_EXT_GPIO1;
    value<<=1;
    value|=PORTX_EXT_GPIO0;

    return value;
}

private uint8_t SRAM_Emulate_LAT_Read(void)
{
    uint8_t value=LATX_EXT_GPIO5;

    value<<=1;
    value|=LATX_EXT_GPIO4;
    value<<=1;
    value|=LATX_EXT_GPIO3;
    value<<=1;
    value|=LATX_EXT_GPIO2;
    value<<=1;
    value|=LATX_EXT_GPIO1;
    value<<=1;
    value|=LATX_EXT_GPIO0;

    return value;
}

public new_simple_task_t(SRAM_Emulate_Tasks)
{
    if(SRAM_Emulate_TRIS_Read()!=TRISX)
    {
        TRISX_EXT_GPIO0=(bool) (TRISX&1);
        TRISX_EXT_GPIO1=(bool) ((TRISX>>1)&1);
        TRISX_EXT_GPIO2=(bool) ((TRISX>>2)&1);
        TRISX_EXT_GPIO3=(bool) ((TRISX>>3)&1);
        TRISX_EXT_GPIO4=(bool) ((TRISX>>4)&1);
        TRISX_EXT_GPIO5=(bool) ((TRISX>>5)&1);
    }

    if(SRAM_Emulate_PORT_Read()!=LATX)
    {
        LATX_EXT_GPIO0=(bool) (LATX&1);
        LATX_EXT_GPIO1=(bool) ((LATX>>1)&1);
        LATX_EXT_GPIO2=(bool) ((LATX>>1)&1);
        LATX_EXT_GPIO3=(bool) ((LATX>>1)&1);
        LATX_EXT_GPIO4=(bool) ((LATX>>1)&1);
        LATX_EXT_GPIO5=(bool) ((LATX>>1)&1);
    }

    if(PORTX!=SRAM_Emulate_PORT_Read())
        PORTX=SRAM_Emulate_PORT_Read();

    Task_Done();
}

public void SRAM_Emulate_Init(void)
{
    TRISX_EXT_GPIO0=1;
    TRISX_EXT_GPIO1=1;
    TRISX_EXT_GPIO2=1;
    TRISX_EXT_GPIO3=1;
    TRISX_EXT_GPIO4=1;
    TRISX_EXT_GPIO5=1;
    memset((void*) EMULATE_SRAM_Memory, 0x00, EMULATE_SRAM_SIZE);
    TRISX=0b11111111;
    PORTX=0b00000000;
    LATX=0b00000000;
    TaskManager_Create_NewSimpleTask(SRAM_Emulate_Tasks);
}

public void SRAM_Emulate_Deinit(void)
{
    TaskManager_End_Task(SRAM_Emulate_Tasks);
    TRISX=0b11111111;
    PORTX=0b00000000;
    LATX=0b00000000;
    TRISX_EXT_GPIO0=0;
    TRISX_EXT_GPIO1=0;
    TRISX_EXT_GPIO2=0;
    TRISX_EXT_GPIO3=0;
    TRISX_EXT_GPIO4=0;
    TRISX_EXT_GPIO5=0;
}

public bool I2C2_StatusCallback(I2C2_SLAVE_DRIVER_STATUS status)
{
    switch(status)
    {
        case I2C2_SLAVE_TRANSMIT_REQUEST_DETECTED:
            // set up the slave driver buffer transmit pointer
            I2C2_ReadPointerSet((uint8_t*) (&EMULATE_SRAM_Memory[address++]));

            if(address>=EMULATE_SRAM_SIZE)
                address=0;
            break;

        case I2C2_SLAVE_RECEIVE_REQUEST_DETECTED:
            addrByteCount=0;
            addressState=true;
            // set up the slave driver buffer receive pointer
            I2C2_WritePointerSet(&i2c2_slaveWriteData);
            break;

        case I2C2_SLAVE_RECEIVED_DATA_DETECTED:
            if(addressState==true)
            {
                // get the address of the memory being written
                if(addrByteCount==0)
                {
                    address=(i2c2_slaveWriteData<<8) & 0xFF00;
                    addrByteCount++;
                }
                else if(addrByteCount==1)
                {
                    address=address|i2c2_slaveWriteData;
                    addrByteCount=0;
                    addressState=false;
                }

                if(address>=EMULATE_SRAM_SIZE)
                    address=EMULATE_SRAM_SIZE;
            }
            else // if (addressState == false)
            {
                // set the memory with the received data
                EMULATE_SRAM_Memory[address++]=i2c2_slaveWriteData;

                if(address>=EMULATE_SRAM_SIZE)
                    address=0;
            }
            break;

        default:
            return true;
    }

    return true;
}