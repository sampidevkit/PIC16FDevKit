#ifndef USB_DEVICE_MSD_CFG_H
#define USB_DEVICE_MSD_CFG_H

#define T10_ASSIGNED_VENDOR_ID  'S', 'A', 'M', 'P', 'I', 'K', 'I', 'T' // this is the T10 assigned Vendor ID
// Function pointer to the MediaInitialize() function of the physical media being used. 
#define MEDIA_Initialize        ICSP_FileIo_MediaInitialize
// Function pointer to the ReadCapacity() function of the physical media being used.
#define MEDIA_ReadCapacity      ICSP_FileIo_CapacityRead
// Function pointer to the ReadSectorSize() function of the physical media being used.
#define MEDIA_ReadSectorSize    ICSP_FileIo_SectorSizeRead
// Function pointer to the MediaDetect() function of the physical media being used.
#define MEDIA_Detect            ICSP_FileIo_MediaDetect
// Function pointer to the SectorRead() function of the physical media being used.
#define MEDIA_SectorRead        ICSP_FileIo_SectorRead
// Function pointer to the WriteProtectState() function of the physical media being used.
#define MEDIA_WriteProtectState ICSP_FileIo_WriteProtectStateGet
// Function pointer to the SectorWrite() function of the physical media being used.
#define MEDIA_SectorWrite       ICSP_FileIo_SectorWrite
// Pointer to a media-specific parameter structure
#define MEDIA_Parameters        NULL

#endif