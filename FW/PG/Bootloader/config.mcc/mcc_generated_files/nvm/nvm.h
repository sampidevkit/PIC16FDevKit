#ifndef NVM_H
#define NVM_H

#include "flash_access.h"
#include "../system/utils/compiler.h"

#define PROGMEM_BLOCK_SIZE (512U)
#define SERIAL_NUMBER_SIZE (16U)

typedef uint8_t flash_data_t;
typedef uint32_t flash_address_t;
typedef uint8_t eeprom_data_t;
typedef uint16_t eeprom_address_t;
typedef uint8_t sigrow_data_t;
typedef uint16_t sigrow_address_t;
typedef uint32_t device_id_data_t;
typedef uint8_t fuse_data_t;
typedef uint16_t fuse_address_t;

typedef enum {
    NVM_OK, /**<0 - The NVM operation succeeded.*/
    NVM_ERROR /**<1 - The NVM operation failed.*/
} nvm_status_t;

void NVM_Initialize(void);
nvm_status_t NVM_StatusGet(void);
void NVM_StatusClear(void);
flash_data_t FLASH_Read(flash_address_t address);
uint16_t FLASH_ReadWord(flash_address_t address);
nvm_status_t FLASH_Write(flash_address_t address, uint16_t data);
nvm_status_t FLASH_RowWrite(flash_address_t address, flash_data_t *dataBuffer);
nvm_status_t FLASH_PageErase(flash_address_t address);
bool FLASH_IsBusy(void);
flash_address_t FLASH_PageAddressGet(flash_address_t address);
uint16_t FLASH_PageOffsetGet(flash_address_t address);

#define FLASH_ErasePageAddressGet FLASH_PageAddressGet
#define FLASH_ErasePageOffsetGet FLASH_PageOffsetGet

eeprom_data_t EEPROM_Read(eeprom_address_t address);
void EEPROM_Write(eeprom_address_t address, eeprom_data_t data);
bool EEPROM_IsBusy(void);

#endif
