/**
 * POWER Generated API Header File
 * 
 * @file power.h
 * 
 * @defgroup  power POWER
 * 
 * @brief This is the generated header file for the POWER driver.
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

#ifndef POWER_H
#define POWER_H

/**
  Section: Included Files
 */

#include <stdbool.h>
#include <stdint.h>

/**
  Section: POWER Enumerations
 */

/**
 * @ingroup power
 * @enum power_mode_t
 * @brief Contains the available power modes.
 */
typedef enum
{
    POWER_IDLE_MODE = 0 ,/** Sleep mode: IDLE */
    POWER_STDBY_MODE = 1 ,/** Sleep mode: STDBY */
    POWER_PDOWN_MODE = 2 
} power_mode_t;



/**
  Section: POWER APIs
 */
/**
 * @ingroup power
 * @brief  Enters and sets the mode in the Power module and puts the device in Sleep mode, depending on the enum entered.
 * @param powerMode - Selected power mode as specified by an enum of the type power_mode_t
 * @retval True Enum is invalid
 * @retval False Enum is valid
 */ 
bool POWER_LowPowerModeEnter(power_mode_t powerMode);


#endif // POWER_H
/**
 End of File
 */
