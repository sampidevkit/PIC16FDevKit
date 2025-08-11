/**
 * RSTCTRL Generated Driver API Header File
 * 
 * @file rstctrl.h
 * 
 * @defgroup  rstctrl RSTCTRL
 * 
 * @brief This file contains the API prototypes and data types for the RSTCTRL module.
 *
 * @version RSTCTRL Driver Version 1.2.0
 *
 * @version Package Version 4.1.0
*/
/*
© [2025] Microchip Technology Inc. and its subsidiaries.

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

#ifndef RSTCTRL_H
#define RSTCTRL_H

/**
  Section: Included Files
*/

#include <stdint.h>
#include "../system/ccp.h"

/**
* @ingroup rstctrl
* @brief The RSTCTRL_reset() function is deprecated and will be removed in the future release. 
*        For future development, it is recommended to use the RSTCTRL_SoftwareReset() API to issue a software reset.
*/
#define RSTCTRL_reset() RSTCTRL_SoftwareReset()

/**
* @ingroup rstctrl
* @brief The RSTCTRL_clear_reset_cause() function is deprecated and will be removed in the future release. 
*        For future development, it is recommended to use the RSTCTRL_ResetFlagsAllClear() API to clear all Reset flags.
*/
#define RSTCTRL_clear_reset_cause() RSTCTRL_ResetFlagsAllClear()

/**
* @ingroup rstctrl
* @brief The RSTCTRL_get_reset_cause() function is deprecated and will be removed in the future release. 
*        For future development, it is recommended to use the RSTCTRL_ResetCauseGet() API to retrieve the reset cause.
*/
#define RSTCTRL_get_reset_cause() RSTCTRL_ResetCauseGet()

/**
 * @ingroup rstctrl
 * @typedef rstctrl_resetflags_t 
 * @brief Enumeration for the Reset flags.
 */
typedef enum
{
  POR_RSTFLAG,    /** Reset flag: POR */
  BOR_RSTFLAG,    /** Reset flag: BOR */
  EXTR_RSTFLAG,   /** Reset flag: EXTR */
  WDR_RSTFLAG,    /** Reset flag: WDR */
  SWR_RSTFLAG,    /** Reset flag: SWR */
  UPDIR_RSTFLAG   /** Reset flag: UPDIR */
}rstctrl_resetflags_t;

/**
 * @ingroup rstctrl
 * @brief Issues a System Reset from the software.
 * @param None.
 * @return None.
 */
void RSTCTRL_SoftwareReset(void);

/**
 * @ingroup rstctrl
 * @brief Returns the value of the Reset Flag register.
 * @param None.
 * @return Reset flag - Value of the Reset Flag register
 */
uint8_t RSTCTRL_ResetCauseGet(void);

/**
 * @ingroup rstctrl
 * @brief Clears the Reset Flag register.
 * @param None.
 * @return None.
 */
void  RSTCTRL_ResetFlagsAllClear(void);

/**
 * @ingroup rstctrl
 * @brief Clears the individual Reset flag set in the Reset Flag register.
 * @param Flag to be cleared
 * @return None.
 */
void RSTCTRL_ResetFlagClear(rstctrl_resetflags_t resetflag);


#endif /* RSTCTRL_H*/