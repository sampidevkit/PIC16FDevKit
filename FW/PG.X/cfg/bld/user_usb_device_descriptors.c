#ifndef USER_USB_DEVICE_DESCRIPTORS_C
#define USER_USB_DEVICE_DESCRIPTORS_C

#include "libcomp.h"

/* Device Descriptor */
const USB_DEVICE_DESCRIPTOR device_dsc={
    0x12, // Size of this descriptor in bytes
    USB_DESCRIPTOR_DEVICE, // DEVICE descriptor type
    0x0110, // USB Spec Release Number in BCD format
    0x00, // Class Code
    0x00, // Subclass code
    0x00, // Protocol code
    USB_EP0_BUFF_SIZE, // Max packet size for EP0, see usbcfg.h
    0x04D8, // Vendor ID
    0x0009, // Product ID: mass storage device demo
    0x0001, // Device release number in BCD format
    0x01, // Manufacturer string index
    0x02, // Product string index
    0x03, // Device serial number string index
    0x01 // Number of possible configurations
};

/* Configuration 1 Descriptor */
const uint8_t configDescriptor1[]={
    /* Configuration Descriptor */
    9, // Size of this descriptor in bytes
    USB_DESCRIPTOR_CONFIGURATION, // CONFIGURATION descriptor type
    0x20, 0x00, // Total length of data for this cfg
    1, // Number of interfaces in this cfg
    1, // Index value of this configuration
    0, // Configuration string index
    _DEFAULT|_SELF, // Attributes, see usbdefs_std_dsc.h
    50, // Max power consumption (2X mA)

    /* Interface Descriptor */
    9, // Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE, // INTERFACE descriptor type
    0, // Interface Number
    0, // Alternate Setting Number
    2, // Number of endpoints in this intf
    MSD_INTF, // Class code
    MSD_INTF_SUBCLASS, // Subclass code
    MSD_PROTOCOL, // Protocol code
    0, // Interface string index

    /* Endpoint Descriptor */
    7,
    USB_DESCRIPTOR_ENDPOINT,
    _EP01_IN, _BULK,
    MSD_IN_EP_SIZE, 0x00,
    0x00,

    7,
    USB_DESCRIPTOR_ENDPOINT,
    _EP01_OUT,
    _BULK,
    MSD_OUT_EP_SIZE, 0x00,
    0x00
};

//Language ID codes

const struct
{
    uint8_t bLength;
    uint8_t bDscType;
    uint16_t string[1];
}

sd000={
    sizeof (sd000),
    USB_DESCRIPTOR_STRING,
    {
        0x0409
    }
};

//Manufacturer String

const struct
{
    uint8_t bLength;
    uint8_t bDscType;
    uint16_t string[25];
}

sd001={
    sizeof (sd001), USB_DESCRIPTOR_STRING,
    {
        'M', 'i', 'c', 'r', 'o', 'c', 'h', 'i', 'p', ' ',
        'T', 'e', 'c', 'h', 'n', 'o', 'l', 'o', 'g', 'y', ' ', 'I', 'n', 'c', '.'
    }
};

//Product String

const struct
{
    uint8_t bLength;
    uint8_t bDscType;
    uint16_t string[28];
}

sd002={
    sizeof (sd002), USB_DESCRIPTOR_STRING,
    {
        'M', 'i', 'c', 'r', 'o', 'c', 'h', 'i', 'p', ' ', 'M', 'a', 's', 's', ' ', 'S', 't', 'o', 'r', 'a', 'g', 'e', ' ', 'D', 'r', 'i', 'v', 'e'
    }
};

//Serial number string descriptor.  Note: This should be unique for each unit 
//built on the assembly line.  Plugging in two units simultaneously with the 
//same serial number into a single machine can cause problems.  Additionally, not 
//all hosts support all character values in the serial number string.  The MSD 
//Bulk Only Transport (BOT) specs v1.0 restrict the serial number to consist only
//of ASCII characters "0" through "9" and capital letters "A" through "F".

struct
{
    uint8_t bLength;
    uint8_t bDscType;
    uint16_t string[12];
}

sd003={
    sizeof (sd003), USB_DESCRIPTOR_STRING,
    {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B'
    }
};

void USER_USB_Device_LoadUDID(void)
{
    uint32_t udID;
    uint8_t i;

    udID=UDID1;

    for(i=0; i<8; i++)
    {
        sd003.string[i]=Bcd2Hex((uint8_t) (udID&0xF));
        udID>>=4;
    }

    udID=UDID2;

    for(i=0; i<4; i++)
    {
        sd003.string[8+i]=Bcd2Hex((uint8_t) (udID&0xF));
        udID>>=4;
    }
}

//Array of configuration descriptors
const uint8_t*const USB_CD_Ptr[]={
    (const uint8_t*const) &configDescriptor1
};

//Array of string descriptors
const uint8_t*const USB_SD_Ptr[]={
    (const uint8_t*const) &sd000,
    (const uint8_t*const) &sd001,
    (const uint8_t*const) &sd002,
    (const uint8_t*const) &sd003
};

#endif
