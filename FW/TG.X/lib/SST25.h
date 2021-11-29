#ifndef SST25_H
#define SST25_H

#include "Common/LibDef.h"
#include "SST25_Cfg.h"

#ifdef SST25VF020B
// Registers
#define SST25_READ_DATA         0x03
#define SST25_FAST_READ_DATA    0x0B
#define SST25_SECTOR_ERASE      0x20
#define SST25_SECTOR_32_ERASE   0x52
#define SST25_SECTOR_64_ERASE   0xD8
#define SST25_BULK_ERASE        0xC7
#define SST25_BYTE_PROG         0x02
#define SST25_WORD_PROG         0xAD
#define SST25_READ_STATUS       0x05
#define SST25_WRITE_STATUS_EN   0x50
#define SST25_WRITE_STATUS      0x01
#define SST25_WRITE_EN          0x06
#define SST25_WRITE_DIS         0x04
#define SST25_READ_JDECID       0x9F
#define SST25_HW_WR_STATUS      0x70
#define SST25_POLL_WR_STATUS    0x80
#define SST25_PROTECT_LOCK      0x80
#define SST25_PROTECT_UNLOCK    0x00

#define SST25_SECTOR_LENGTH     4096
#define SST25_PAGE_LENGTH       256
#define SST25_PAGE_IN_SECTOR    16

#define SST25_MAX_MEM_ADDR      0x3FFFF  
#define SST25_JDECID            0xBF250000
#else
#error "This library doesn't sopport your memory chip"
#endif

typedef enum SST25_PROTECT_RANGE {
    SST25_PROTECT_NONE = 0,
    SST25_PROTECT_64KB = 1,
    SST25_PROTECT_128KB = 2,
    SST25_PROTECT_256KB = 3,
    SST25_PRTOECT_512KB = 4,
    SST25_PROTECT_1MB = 5,
    SST25_PROTECT_2MB = 6,
    SST25_PROTECT_ALL = 7
} sst25_protect_range_t;

public void SST25_Init(void);
public void SST25_Deinit(void);
public uint32_t SST25_GetJDECID(void);
public void SST25_Protect(sst25_protect_range_t range);
public void SST25_Sector_Erase(uint32_t BAddr);
public void SST25_Chip_Erase(void);
public uint8_t SST25_ReadByte(uint32_t Addr);
public void SST25_WriteByte(uint32_t Addr, uint8_t Data);

#endif