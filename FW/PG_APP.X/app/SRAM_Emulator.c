#include "libcomp.h"
#include "SRAM_Emulator.h"

#define EMULATE_SRAM_SIZE 4096

static bool addressState=true;
static uint16_t address, addrByteCount;
static uint8_t i2c1_slaveWriteData=0xAA;
static uint8_t EMULATE_SRAM_Memory[EMULATE_SRAM_SIZE];

void SRAM_Emulate_Init(void)
{
    memset((void*)EMULATE_SRAM_Memory, 0x00, membersof(EMULATE_SRAM_Memory));
}

void SRAM_Emulate_Deinit(void)
{
    
}

bool I2C1_StatusCallback(I2C1_SLAVE_DRIVER_STATUS status)
{
    switch(status)
    {
        case I2C1_SLAVE_TRANSMIT_REQUEST_DETECTED:
            // set up the slave driver buffer transmit pointer
            I2C1_ReadPointerSet(&EMULATE_SRAM_Memory[address++]);
            if(address>=EMULATE_SRAM_SIZE)
            {
                address=0;
            }
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
                {
                    address=EMULATE_SRAM_SIZE;
                }
            }
            else // if (addressState == false)
            {
                // set the memory with the received data
                EMULATE_SRAM_Memory[address++]=i2c1_slaveWriteData;
                if(address>=EMULATE_SRAM_SIZE)
                {
                    address=0;
                }
            }

            break;

        case I2C1_SLAVE_10BIT_RECEIVE_REQUEST_DETECTED:

            // do something here when 10-bit address is detected

            // 10-bit address is detected

            break;

        default:
            break;

    }

    return true;
}