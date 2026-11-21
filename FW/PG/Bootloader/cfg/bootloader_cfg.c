#include "hardware.h"
#include "Common/Util.h"
#include "Common/debug.h"
#include "Apps/DataLog/DataLog.h"
#include "internal_memory_maps.h"
#include "Bootloader/bootloader.h"
#include "Apps/DataLog/datalog_memory_maps.h"
#include "IrDA.h"

//#define __TEST__
static uint32_t lastAppAddr=0;

/* *************************************** Prototypes for data streaming port */
void BLD_Port_Init(void)
{
    VREF_Initialize();
    AC1_Initialize();
    USART2_Initialize();
    IrDA_RxEnable();
    lastAppAddr=AppCodeMem()->BEGIN_ADDR;
}

void BLD_Port_DeInit(void)
{
    VREF_Deinitialize();
    AC1_Deinitialize();
    USART2_Deinitialize();
    IrDA_RxTxDisable();
}

bool BLD_Port_IsTxReady(void)
{
    return 1;
}

void BLD_Port_Write(uint8_t b)
{
    IrDA_Write(b);
}

bool BLD_Port_IsTxDone(void)
{
    return 1;
}

bool BLD_Port_IsRxReady(void)
{
    return IrDA_IsRxReady();
}

uint8_t BLD_Port_Read(void)
{
    return IrDA_Read();
}

void BLD_Port_Task(void)
{

}

/* ********************************* Prototypes for trigger/indicator signals */
bool BLD_TRIG_GetValue(void)
{
    if((TAMPER_N_GetValue()&TAMPER_S_GetValue())==0) // Mot trong 2 cam bien Hall duoc kich hoat
        return 1;

    return 0;
}

/* ************************************************************** Application */
bool BLD_BootFlag(void)
{
    if(EEPROM_Read(EepromMem()->BEGIN_ADDR+StatusMem()->offset)!=BOOTLOADER_DISABLE)
    {
        //__dbs("\r\nBoot flag");
        return 1;
    }

    return 0;
}

void BLD_SetBootFlag(void)
{
    __dbs("\r\nApplication is updated");
    EEPROM_Write(EepromMem()->BEGIN_ADDR+StatusMem()->offset, BOOTLOADER_APP_RDY);
    while(EEPROM_IsBusy());
}

void BLD_GetEncryptKey(uint32_t key[4])
{
    uint8_t i;
    bool blank;
    uint32_t addr;
    uint16_t *pKey;

    blank=1;
    pKey=(uint16_t *) key;
    addr=AppDataMem()->BEGIN_ADDR+SecKeyMem()->offset;

    if(EEPROM_Read(ACTIVE_ADDR)!=DEVICE_DEACTIVATED)
    {
        for(i=0; i<8; i++)
        {
            *pKey=FLASH_ReadWord(addr);

            if(*pKey!=0xFFFF)
                blank=0;

            pKey++;
            addr+=2;
        }
    }

    if(blank==1) // SECKEY is blanked
    {
        __dbs("\r\nLoad default key");
        key[0]=0x05DB08E2;
        key[1]=0x3D53E789;
        key[2]=0x2859B98B;
        key[3]=0x7AD58395;
    }

#ifndef DISABLE_CLIB_WARNING
    __dbsh("\r\nKey: ", key[0]);
    __dbh8(key[1]);
    __dbh8(key[2]);
    __dbh8(key[3]);
#endif
}

void BLD_NVM_Write(uint32_t addr, uint32_t data)
{
    static uint32_t lastPageAddr=0xFFFFFF;
    uint16_t wd, rd;
    uint32_t pageAddr;

    if(addr<AppCodeMem()->BEGIN_ADDR)
        return;

    if(addr<AppDataMem()->BEGIN_ADDR)
        lastAppAddr=addr;

    pageAddr=FLASH_ErasePageAddressGet(addr); // return word address

    if(lastPageAddr!=pageAddr)
    {
        lastPageAddr=pageAddr;
        __dbsh("\r\nE ", pageAddr);

#ifndef __TEST__
        FLASH_PageErase(pageAddr);
#endif
    }

    //addr>>=1;// word address

    data=swap_endian(data);
    wd=(uint16_t) (data);
    __dbsh("\r\nW ", addr);
    __dbc(' ');
    __dbh(wd, 4);

#ifndef __TEST__
    pgm_word_write(addr, wd);
#endif

    rd=FLASH_ReadWord(addr);

    if(rd!=wd)
    {
        __dbs(" --> Err: ");
        __dbh(rd, 4);
    }

    addr+=2;
    wd=(uint16_t) (data>>16);
    __dbsh("\r\nW ", addr);
    __dbc(' ');
    __dbh(wd, 4);

#ifndef __TEST__
    pgm_word_write(addr, wd);
#endif

    rd=FLASH_ReadWord(addr);

    if(rd!=wd)
    {
        __dbs(" --> Err: ");
        __dbh(rd, 4);
    }
}

void BLD_NVM_EraseUnusedMemory(uint32_t beginAddr)
{
    uint32_t pageAddr;

    if(beginAddr>AppCodeMem()->END_ADDR)
        beginAddr=lastAppAddr;

    // Erase unused APP space only
    pageAddr=FLASH_ErasePageAddressGet(beginAddr);

    if(beginAddr!=pageAddr)
        pageAddr+=PROGMEM_PAGE_SIZE;

    while(pageAddr<AppCodeMem()->END_ADDR)
    {
        if(pageAddr>=AppCodeMem()->BEGIN_ADDR)
        {
            __dbsh("\r\nE ", pageAddr);

#ifndef __TEST__
            FLASH_PageErase(pageAddr); // return word address
#endif
        }

        pageAddr+=PROGMEM_PAGE_SIZE;
    }
}

void BLD_SystemReboot(void)
{
    __delay_ms(500);
    SoftReset();
}
