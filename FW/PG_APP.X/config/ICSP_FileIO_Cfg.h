#ifndef ICSP_FILEIO_CFG_H
#define ICSP_FILEIO_CFG_H

#define __PROJECT_NAME__            "PIC16 DEV KIT"
#define __HARDWARE_ID__             "SAMM-7x-F|R|T v2.0"
#define __WEBSITE__                 "https://github.com/sampidevkit/PIC16FDevKit/tree/master"
#define write_error_log(line)       do{uint32_t err=line; icsp_log(ICSP_LOG_INTERNAL_ERROR, &err, NULL, NULL);}while(0)

#define DRV_CONFIG_DRIVE_CAPACITY   4096 // *512 byte = useable drive volume
#define DRV_SECTORS_PER_CLUSTER     8 // *512 byte = cluster size (4kB)
#define DRV_MAX_NUM_FILES_IN_ROOT   16
#define DRV_NUM_RESERVED_SECTORS    1
#define DRV_NUM_VBR_SECTORS         1
#define DRV_NUM_FAT_SECTORS         1

#endif