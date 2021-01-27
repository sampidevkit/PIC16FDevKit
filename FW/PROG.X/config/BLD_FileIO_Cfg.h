#ifndef BLD_FILEIO_CFG_H
#define BLD_FILEIO_CFG_H

#define __PROJECT_NAME__            "SAMPI BOOTLOADER"
#define __HARDWARE_ID__             "SAMM.CAP32M-UL865-EUD v3.0"
#define __WEBSITE__                 "https://github.com/sampidevkit"
//#define BLD_FileIo_Log_Buffer       App_Log_Buffer // defined in libcomp.h

#define DRV_CONFIG_DRIVE_CAPACITY   4096 // *512 byte = useable drive volume
#define DRV_SECTORS_PER_CLUSTER     8 // *512 byte = cluster size (4kB)
#define DRV_MAX_NUM_FILES_IN_ROOT   16
#define DRV_NUM_RESERVED_SECTORS    1
#define DRV_NUM_VBR_SECTORS         1
#define DRV_NUM_FAT_SECTORS         1

#endif