#ifndef INTERNAL_MEMORY_MAPS_H
#define	INTERNAL_MEMORY_MAPS_H

#include <stdint.h>
#include "system/system.h"

#define SRAM_BEGIN_ADDR     0x804000U
#define SRAM_END_ADDR       0x807FFFU
#define SRAM_SIZE           0x8000U

#define BOOT_BEGIN_ADDR     ((uint32_t) FLASHSTART)
#define BOOT_PAGE_COUNT     0x27UL // FUSE.BOOTSIZE in configure bits
#define BOOT_END_ADDR       ((BOOT_PAGE_COUNT*(uint32_t) PROGMEM_PAGE_SIZE)+BOOT_BEGIN_ADDR-1)

#define APPCODE_BEGIN_ADDR  (BOOT_END_ADDR+1UL)
#define APPCODE_PAGE_COUNT  0x0UL // FUSE.CODESIZE in configure bits
#define APPCODE_END_ADDR    ((APPCODE_PAGE_COUNT*(uint32_t) PROGMEM_PAGE_SIZE)+APPCODE_BEGIN_ADDR-1)

#if(APPCODE_PAGE_COUNT>0)
#define APPDATA_BEGIN_ADDR  (APPCODE_END_ADDR+1UL)
#define APPDATA_PAGE_COUNT  0x0UL
#define APPDATA_END_ADDR    ((uint32_t) FLASHEND)
#endif

typedef struct {
    uint32_t BEGIN_ADDR;
    uint32_t PAGE_COUNT;
    uint32_t END_ADDR;
} inter_memmap_t;

typedef struct {
    uint32_t RtccTs;
    uint8_t BootCnt;
    uint8_t AppCnt;
} noinit_t;

noinit_t *NoInitMem(void);
const inter_memmap_t *BootMem(void); // return boot memory info
const inter_memmap_t *AppCodeMem(void); // return appcode memory info
const inter_memmap_t *AppDataMem(void); // return appdata memory info
const inter_memmap_t *EepromMem(void); // return eeprom memory info

void Display_InterMemMap(void);

#endif
