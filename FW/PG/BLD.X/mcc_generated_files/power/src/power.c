/**
 * POWER Generated Driver File
 * 
 * @file power.c
 * 
 * @ingroup power
 * 
 * @brief This is the generated driver implementation file for the POWER driver.
 *
 * @version POWER Driver Version 1.1.0
*/
/*
© [2026] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

/**
  Section: Included Files
*/
#include <avr/io.h>
#include <stddef.h>
#include "../power.h"

/**
  Section: POWER Macros
 */
#define NOP() __asm__ ( "nop" "\n\t" :: )
#define SLEEP() __asm__ __volatile__ ( "sleep" "\n\t" :: )
#define SETTINGDATA_MASK (uint8_t)0xFF

/**
  Section: POWER APIs
*/
bool POWER_LowPowerModeEnter(power_mode_t powerMode) 
{
    bool error = true;

    SLPCTRL.CTRLA = ((SLPCTRL.CTRLA | SLPCTRL_SEN_bm) & ~(SLPCTRL_SMODE_0_bm | SLPCTRL_SMODE_1_bm)); // Set SEN bit and Clear the sleep mode bits

    switch (powerMode) {
        case POWER_IDLE_MODE:
            SLEEP();
            NOP();
            error = false;
            break;

        case POWER_STDBY_MODE:
            SLPCTRL.CTRLA |= SLPCTRL_SMODE_0_bm; // Set bit 0 for STDBY mode
            SLEEP();
            NOP();
            error = false;
            break;

        case POWER_PDOWN_MODE:
            SLPCTRL.CTRLA |= SLPCTRL_SMODE_1_bm; // Set bit 1 for PDOWN mode
            SLEEP();
            NOP();
            error = false;
            break;

        default:
            error = true; // Handle unexpected powerMode values if necessary
            break;   
    }    
    return error; // Return true on error, false on success
}


/**
 End of File
*/
