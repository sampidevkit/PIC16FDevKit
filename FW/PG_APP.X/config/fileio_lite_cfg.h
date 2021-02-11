#ifndef FILEIO_LITE_CFG_H
#define FILEIO_LITE_CFG_H
// Macro for file IO and MSD
//#define USE_NVM_MEDIA
#define FILEIO_DISK_NAME                        "PIC16DEVKIT" // Volume Label is exactly 11 bytes
#define FILEIO_DISK_NAME_IN_BYTE                'P', 'I', 'C', '1', '6', 'D','E', 'V', 'K', 'I', 'T'
// Macro indicating how many drives can be mounted simultaneously.
#define FILEIO_CONFIG_MAX_DRIVES                1
// Delimiter for directories.
#define FILEIO_CONFIG_DELIMITER                 '/'
// Macro defining the maximum supported sector size for the FILEIO module.  This value should always be 512 , 1024, 2048, or 4096 bytes.
// Most media uses 512-byte sector sizes.
#define FILEIO_CONFIG_MEDIA_SECTOR_SIZE         512
// Uncomment FILEIO_CONFIG_FUNCTION_SEARCH to disable the functions used to search for files.
#define FILEIO_CONFIG_SEARCH_DISABLE
// Uncomment FILEIO_CONFIG_FUNCTION_FORMAT to disable the function used to format drives.
#define FILEIO_CONFIG_FORMAT_DISABLE
// Uncomment FILEIO_CONFIG_FUNCTION_DIRECTORY to disable use of directories on your drive.  Disabling this feature will
// limit you to performing all file operations in the root directory.
// #define FILEIO_CONFIG_DIRECTORY_DISABLE
// Uncomment FILEIO_CONFIG_FUNCTION_PROGRAM_MEMORY_STRINGS to disable functions that accept ROM string arguments.
// This is only necessary on PIC18 parts.
#define FILEIO_CONFIG_PROGRAM_MEMORY_STRINGS_DISABLE

#define FILEIO_INVALID_HANDLE                   NULL
#define FILEIO_FILE_NAME_LENGTH_8P3             12 // Maximum file name length for 8.3 formatted files
#define FILEIO_FILE_NAME_LENGTH_8P3_NO_RADIX    11 // Maximum file name length for 8.3 formatted files with no radix

#endif