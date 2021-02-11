/**
  FLASH Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    flash.h

  @Summary
    This is the generated header file for the FLASH driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides APIs for driver for FLASH.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0064GPM028
        Driver Version    :  1.00
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.61
        MPLAB 	          :  MPLAB X v5.45
*/

#ifndef FLASH_H
#define FLASH_H


#include <stdint.h>
#include <stdbool.h>
//-------------------------------

#define FLASH_PC_UNITS_PER_INSTRUCTION 4
#define FLASH_WORD_WRITE_SIZE_IN_INSTRUCTIONS 2

#define  WRITE_DWORD_CODE     0x4002
#define  ERASE_PAGE_CODE      0x4004
#define  FLASH_WRITE_ROW_CODE 0x4003
#define  FLASH_NOP            0x4000

#define FLASH_WRITE_ROW_SIZE_IN_INSTRUCTIONS  64
#define FLASH_ERASE_PAGE_SIZE_IN_INSTRUCTIONS (FLASH_WRITE_ROW_SIZE_IN_INSTRUCTIONS*8)

#define FLASH_WRITE_ROW_SIZE_IN_PC_UNITS (FLASH_WRITE_ROW_SIZE_IN_INSTRUCTIONS*4)
#define FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS  (FLASH_ERASE_PAGE_SIZE_IN_INSTRUCTIONS*4)


#define FLASH_ERASE_PAGE_MASK    (~((FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS) - 1)) 


#define FLASH_UNLOCK_KEY 0xAA996655



/* FLASH_Unlock:   Updated the keys used to operate on the flash.  Refer to user documentation for correct keys
 *                   */
void     FLASH_Unlock(uint32_t  key);

/* FLASH_Lock:   Erases the keys used for flash operation in memory.
 *                   */
void     FLASH_Lock(void);

/* FLASH_ErasePage:   Erases a single page of flash.
 *       Parameter address:  Address of the page, must be page aligned.
 * 
 *       returns    true   for success
 *                  false for failure
 *                   */
bool     FLASH_ErasePage(uint32_t address);    

/* FLASH_ReadWord:   Reads a single word of flash from memory.
 *       Parameter address:  Address of the flash.  Must be word aligned.
 * 
 *       returns    value of the flash. */
uint32_t FLASH_ReadWord(uint32_t address);

/* FLASH_WriteDoubleWord:   Writes two words of data to flash.
 *       Parameter address:  Address of the flash.  Must be double word aligned.
 * 
 *                  data0, data1:  The two words of flash to write.
 * 
  *       returns   true   for success
 *                  false for failure
 *                   */

bool     FLASH_WriteDoubleWord(uint32_t address, uint32_t Data0, uint32_t Data1  );

/* FLASH_WriteRow:   Writes a single row of data from the location given in *data to
 *                   the flash location in address.  
 *                   The address in *data must be row aligned.
  *       returns    true   for success
 *                   false for failure
 *                   */
bool     FLASH_WriteRow(uint32_t address, uint32_t *data);

/* FLASH_ClearError:   Clears any pending error on the flash controller.
 *                     returns true if successful */
bool     FLASH_ClearError();
uint16_t FLASH_GetErasePageOffset(uint32_t address);
uint32_t FLASH_GetErasePageAddress(uint32_t address);


#endif	/* FLASH_H */
