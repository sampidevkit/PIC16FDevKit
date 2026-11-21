#include "project.h"
#include "common/Util.h"
#include "common/debug.h"
#include "internal_memory_maps.h"
#include "bootloader.h"

//#define __TEST__
static uint32_t lastAppAddr=0;

/* *************************************** Prototypes for data streaming port */
void BLD_Port_Init(void)
{
    lastAppAddr=AppCodeMem()->BEGIN_ADDR;
}

void BLD_Port_DeInit(void)
{

}

bool BLD_Port_IsTxReady(void)
{
    return 1;
}

void BLD_Port_Write(uint8_t b)
{

}

bool BLD_Port_IsTxDone(void)
{
    return 1;
}

bool BLD_Port_IsRxReady(void)
{
    return 0;
}

uint8_t BLD_Port_Read(void)
{
    return 0;
}

void BLD_Port_Task(void)
{

}

/* ********************************* Prototypes for trigger/indicator signals */
bool BLD_TRIG_GetValue(void)
{
    if((BT_FNC_N_GetValue()==0)||(NoInitMem()->BootCnt==0xAA))
        return 1;

    return 0;
}

/* ************************************************************** Application */
bool BLD_BootFlag(void)
{
    return BLD_TRIG_GetValue();
}

void BLD_SetBootFlag(void)
{
    __dbs("\r\nApplication is updated");
    NoInitMem()->BootCnt=0;
}

void BLD_GetEncryptKey(uint32_t key[4])
{

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
