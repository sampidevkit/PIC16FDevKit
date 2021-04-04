#ifndef FILE_LITE_CFG_H
#define FILE_LITE_CFG_H

// semantic versioning
#define FILES_MAJOR             1 // change only when incompatible changes are made
#define FILES_MINOR             3 // change when adding functionality or fixing bugs
// this release date
#define FILES_YEAR              2021
#define FILES_MONTH             1   // January=1, February=2 ..
#define FILES_DAY               1  // Day:1..31

#define ROOT_ENTRY_SIZE         32  // standard root entry size
#define ENTRY_FILE_SIZE_OFFSET  28  // offset to entry.file_size field
#define ENTRY_CLUSTER           26  // offset of entry.cluster
#define FileIO_InfoSize()       ICSP_FileIo_InfoSize()

#endif