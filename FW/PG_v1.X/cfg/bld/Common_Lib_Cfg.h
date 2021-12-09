#ifndef COMMON_LIB_CFG_H
#define	COMMON_LIB_CFG_H
/* *************************************************************** READ ME FIRST
 * Step 1. Create your project
 * Step 2. Create folder 'App' in your project directory
 * Step 3. Copy file 'AppMain.h' and 'AppMain.c' to folder 'App'
 * Step 4. Create folder 'Config' in your project directory
 * Step 5. Copy file this file 'Common_Lib_Cfg.h', 'libcomp.h', 'libcom.c' to
 * folder 'Config'
 * Step 6. Copy all files '*.tmpl' in every library folder (which you want to use)
 * to folder 'Config'. Rename these files to '*.h'
 * Step 7. Un-comment including line of these files below
 * Step 8. Change macro of these files to compatible with your project
 * ************************************************************************** */

/* ******************************************************************** Audio */
//#include "Pcm_Cfg.h"
//#include "Microphone_Cfg.h"
//#include "DFPlayer_Cfg.h"
//#include "Buzzer_Cfg.h"
//#include "AK4637_Cfg.h"

/* **************************************************************** Bluetooth */
//#include "BM71/bm71_cfg.h"

/* ************************************************************** Boot Loader */
#include "Bootloader_Cfg.h"

/* ****************************************************************** Buttons */
//#include "Buttons_Cfg.h"

/* ***************************************************************** Cellular */
//#include "Cellular_Cfg.h"

/* ******************************************************************* Common */
//#include "UserFunctions_Cfg.h"
//#include "RingBuffer_Cfg.h"
//#include "Debug_Cfg.h"

/* ************************************************************* Cryptography */
//#include "md5_cfg.h"
//#include "ecc_cfg.h"
//#include "xtea_cfg.h"

/* ****************************************************************** File IO */
#include "files_lite_cfg.h"
#include "fileio_lite_cfg.h"
//#include "files_cfg.h"
//#include "fileio_cfg.h"

/* **************************************************************** Indicator */
//#include "RGB_Led_Cfg.h"
//#include "LedMatrix_Cfg.h"
//#include "Led7Seg_Cfg.h"
//#include "Indicator_Cfg.h"

/* ********************************************************************** Kit */
#include "kit_usb_cfg.h"
//#include "kit_rs232_win32_cfg.h"
#include "kit_cfg.h"

/* ********************************************************************** LCD */
//#include "TextLCD_Cfg.h"

/* ******************************************************************* Memory */
//#include "SSTFileIO_Cfg.h"
//#include "SST25xx_Cfg.h"
#include "BLD_FileIO_Cfg.h"
#include "BLD_Nvm_Cfg.h"
//#include "AT21CS01_Cfg.h"

/* ******************************************************************* Motors */
//#include "StepperMotor_Cfg.h"
//#include "DCMotor_Cfg.h"

/* *************************************************************** Programmer */
//#include "ICSP_PIC32MM_Cfg.h"
//#include "Icsp_Cfg.h"
#include "HexParsing_Cfg.h"

/* ********************************************************************* RTCC */
//#include "RV3028C7_Cfg.h"

/* ****************************************************************** Sensors */
//#include "HX711_Cfg.h"
//#include "AT30TS74_Cfg.h"

/* ********************************************************** SoftPeripherals */
//#include "SWI_Cfg.h"
//#include "MAX7219_Cfg.h"
//#include "HC595_Cfg.h"

/* ******************************************************************* System */
#include "Wdt_Cfg.h"
#include "TickTimer_Cfg.h"
//#include "TickCounter_Cfg.h"

/* ********************************************************************** USB */
#include "user_usb_device_config.h"
//#include "usb_device_phdc_com_model_cfg.h"
//#include "usb_device_phdc_cfg.h"
#include "usb_device_msd_cfg.h"
//#include "usb_device_midi_cfg.h"
//#include "usb_device_hid_cfg.h"
//#include "usb_device_generic_cfg.h"
//#include "usb_device_cdc_cfg.h"
//#include "usb_device_ccid_cfg.h"
//#include "usb_device_audio_cfg.h"

#endif