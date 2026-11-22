#include "project_cfg.h"
#include "internal_memory_maps.h"

#ifndef USE_INTERNAL_MEMORY_MAPS_DEBUG
#define DEBUG_H
#endif

#include "common/debug.h"

noinit_t *NoInitMem(void)
{
    static __attribute__((persistent)) noinit_t NOINITMEM __at(SRAM_BEGIN_ADDR+1024U); // Can not locate at the beginning of RAM

    return &NOINITMEM;
}

const inter_memmap_t *BootMem(void)
{
    static const inter_memmap_t BOOTMEM={
        .BEGIN_ADDR=BOOT_BEGIN_ADDR,
        .PAGE_COUNT=BOOT_PAGE_COUNT, // FUSE.BOOTSIZE in configure bits
        .END_ADDR=BOOT_END_ADDR
    };

    return &BOOTMEM;
}

const inter_memmap_t *AppCodeMem(void)
{
    static const inter_memmap_t APPCODEMEM={
        .BEGIN_ADDR=APPCODE_BEGIN_ADDR,
        .PAGE_COUNT=APPCODE_PAGE_COUNT, // FUSE.CODESIZE in configure bits
        .END_ADDR=APPCODE_END_ADDR
    };

    return &APPCODEMEM;
}

const inter_memmap_t *AppDataMem(void)
{
    #ifdef APPDATA_BEGIN_ADDR
    static const inter_memmap_t APPDATAMEM={
        .BEGIN_ADDR=APPDATA_BEGIN_ADDR,
        .PAGE_COUNT=APPDATA_PAGE_COUNT,
        .END_ADDR=APPDATA_END_ADDR,
    };

    return &APPDATAMEM;
    #endif

    return NULL;
}

const inter_memmap_t *EepromMem(void)
{
    static const inter_memmap_t EEPROMMEM={
        .BEGIN_ADDR=EEPROM_START,
        .PAGE_COUNT=1,
        .END_ADDR=EEPROM_END,
    };

    return &EEPROMMEM;
}

void Display_InterMemMap(void) // <editor-fold defaultstate="collapsed" desc="Display internal memory map">
{
#ifdef USE_INTERNAL_MEMORY_MAPS_DEBUG
    __dbs("\r\nBOOT: ");
    __dbh((BootMem()->BEGIN_ADDR), 4);
    __dbc('-');
    __dbh((BootMem()->END_ADDR), 4);
    __dbsu(":", (BootMem()->PAGE_COUNT*PROGMEM_PAGE_SIZE));

    __dbs("\r\nCODE: ");
    __dbh((AppCodeMem()->BEGIN_ADDR), 4);
    __dbc('-');
    __dbh((AppCodeMem()->END_ADDR), 4);
    __dbsu(":", (AppCodeMem()->PAGE_COUNT*PROGMEM_PAGE_SIZE));

#ifdef APPDATA_BEGIN_ADDR
    __dbs("\r\nDATA: ");
    __dbh((AppDataMem()->BEGIN_ADDR), 4);
    __dbc('-');
    __dbh((AppDataMem()->END_ADDR), 4);
    __dbsu(":", (AppDataMem()->PAGE_COUNT*PROGMEM_PAGE_SIZE));
#endif

    __dbs("\r\nEEPROM: ");
    __dbh((EepromMem()->BEGIN_ADDR), 4);
    __dbc('-');
    __dbh((EepromMem()->END_ADDR), 4);
    __dbsu(":", (EepromMem()->PAGE_COUNT*PROGMEM_PAGE_SIZE));
#endif
} // </editor-fold>
