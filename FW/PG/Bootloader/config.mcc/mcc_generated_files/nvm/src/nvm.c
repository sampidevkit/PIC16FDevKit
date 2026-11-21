#include <avr/pgmspace.h>
#include "../system/ccp.h"
#include "nvm.h"

void NVM_Initialize(void)
{
    NVMCTRL.STATUS&= ~NVMCTRL_ERROR_gm;
    //FLMAPLOCK disabled; FLMAP SECTION0; APPDATAWP disabled; BOOTRP enabled; APPCODEWP disabled; 
    NVMCTRL.CTRLB=0x02;
    //EEREADY disabled; 
    //NVMCTRL.INTCTRL=0x0; // reset value 0x00
}

nvm_status_t NVM_StatusGet(void)
{
    return (((NVMCTRL.STATUS&NVMCTRL_ERROR_gm)!=0)?NVM_ERROR:NVM_OK);
}

void NVM_StatusClear(void)
{
    NVMCTRL.STATUS&= ~NVMCTRL_ERROR_gm;
}

static void FLASH_SpmWriteWord(flash_address_t address, uint16_t data)
{
    __asm__ __volatile__(
            "push r0\n\t" /* back up R0*/\
                         "lds r0, %0\n\t" /* back up RAMPZ*/\
                         "push r0\n\t" /* back up RAMPZ*/\
                         "movw r0, %A2\n\t" /* update R0,R1 pair with data*/\
                         "movw r30, %A1\n\t" /* update R30,R31 pair with address[Byte1,Byte0]*/\
                         "sts  %0, %C1\n\t" /* update RAMPZ with address[Byte2]*/\
                         "spm \n\t" /* spm */\
                         "clr r1\n\t" /* R1 is always assumed to be zero by the compiler. Resetting R1 to zero*/\
                         "pop r0\n\t" /* restore RAMPZ*/\
                         "sts %0, r0\n\t" /* restore RAMPZ*/\
                         "pop r0 \n\t" /* restore R0*/\
                         :                                      \
                         :"i" (_SFR_MEM_ADDR(RAMPZ)),          \
                         "r" ((uint32_t) (address)),            \
                         "r" ((uint16_t) (data))                \
                         :"r30", "r31" /* Clobber R30, R31 to indicate they are used here*/
            );
}

flash_data_t FLASH_Read(flash_address_t address)
{
    return pgm_read_byte_far(address);
}

uint16_t FLASH_ReadWord(flash_address_t address)
{
    return (((uint16_t) pgm_read_byte_far(address+1)<<8)|pgm_read_byte_far(address));
}

nvm_status_t FLASH_Write(flash_address_t address, uint16_t data)
{
    //Write the flash page
    ccp_write_spm((void *) &NVMCTRL.CTRLA, NVMCTRL_CMD_FLWR_gc);
    //Write data to the page buffer
    FLASH_SpmWriteWord(address, data);
    //Clear the current command
    ccp_write_spm((void *) &NVMCTRL.CTRLA, NVMCTRL_CMD_NONE_gc);

    return (((NVMCTRL.STATUS&NVMCTRL_ERROR_gm)!=0)?NVM_ERROR:NVM_OK);
}

nvm_status_t FLASH_RowWrite(flash_address_t address, flash_data_t *dataBuffer)
{
    uint16_t dataWord;

    //Write the flash page
    ccp_write_spm((void *) &NVMCTRL.CTRLA, NVMCTRL_CMD_FLWR_gc);

    //Write data to the page buffer, one word at a time
    for(uint16_t i=0; i<PROGMEM_PAGE_SIZE; i=i+2U)
    {
        //Access wordwise data from buffer
        dataWord=(uint16_t) (dataBuffer[i]|(dataBuffer[i+1U]<<8U));
        FLASH_SpmWriteWord(address+(uint32_t) i, dataWord);
    }

    //Clear the current command
    ccp_write_spm((void *) &NVMCTRL.CTRLA, NVMCTRL_CMD_NONE_gc);

    return (((NVMCTRL.STATUS&NVMCTRL_ERROR_gm)!=0)?NVM_ERROR:NVM_OK);
}

nvm_status_t FLASH_PageErase(flash_address_t address)
{
    /* Wait for completion of previous write */
    while(NVMCTRL.STATUS&(NVMCTRL_EEBUSY_bm|NVMCTRL_FBUSY_bm));
    /* Clear the current command */
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_NONE_gc);
    /* Erase the flash page */
    /* Send erase command */
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_FLPER_gc);
    /* Dummy write to start erase operation */
    pgm_word_write(address, 0x00);
    /* Wait for completion of previous write */
    while(NVMCTRL.STATUS&(NVMCTRL_EEBUSY_bm|NVMCTRL_FBUSY_bm));
    /* Clear the current command */
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_NONE_gc);
    /* Enable flash Write Mode */
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_FLWR_gc);

    return NVM_OK;
}

bool FLASH_IsBusy(void)
{
    return (NVMCTRL.STATUS&NVMCTRL_FBUSY_bm);
}

flash_address_t FLASH_PageAddressGet(flash_address_t address)
{
    return (flash_address_t) (address&((PROGMEM_SIZE-1) ^ (PROGMEM_PAGE_SIZE-1)));
}

uint16_t FLASH_PageOffsetGet(flash_address_t address)
{
    return (uint16_t) (address&(PROGMEM_PAGE_SIZE-1));
}

eeprom_data_t EEPROM_Read(eeprom_address_t address)
{
    return *(eeprom_data_t *) address;
}

void EEPROM_Write(eeprom_address_t address, eeprom_data_t data)
{
    //Program the EEPROM with desired value(s)
    ccp_write_spm((void *) &NVMCTRL.CTRLA, NVMCTRL_CMD_EEERWR_gc);
    //Write byte to EEPROM
    *(uint8_t *) address=data;
    //Clear the current command
    ccp_write_spm((void *) &NVMCTRL.CTRLA, NVMCTRL_CMD_NONE_gc);
}

bool EEPROM_IsBusy(void)
{
    return (NVMCTRL.STATUS&NVMCTRL_EEBUSY_bm);
}
