#ifndef BLD_FILEIO_CFG_H
#define BLD_FILEIO_CFG_H

#define __FIXED_INFO_SIZE__
#define __INFO_ADDRESS__            0x9D00C000
#define __PROJECT_NAME__            "PIC16F Dev Kit"
#define __HARDWARE_ID__             "SAMM-7x v2.x"
#define __OWNER__                   "SAMPI"
//#define BLD_FileIo_Log_Buffer       App_Log_Buffer // defined in libcomp.h

#define __CUSTOM_INFO__     __PROJECT_NAME__ " " __HARDWARE_ID__ \
    "\nOwner: " __OWNER__ "\nBLD Rel: " __DATE__ "-" __TIME__ 

#define DRV_CONFIG_DRIVE_CAPACITY   4096 // *512 byte = useable drive volume
#define DRV_SECTORS_PER_CLUSTER     8 // *512 byte = cluster size (4kB)
#define DRV_MAX_NUM_FILES_IN_ROOT   16
#define DRV_NUM_RESERVED_SECTORS    1
#define DRV_NUM_VBR_SECTORS         1
#define DRV_NUM_FAT_SECTORS         1

#endif