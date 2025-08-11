/**
  * RSTCTRL Generated Driver File
  *
  * @file rstctrl.c
  *
  * @ingroup rstctrl
  *
  * @brief This file contains the source code for the RSTCTRL module.
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

#include "../rstctrl.h"

void RSTCTRL_SoftwareReset(void)
{
	/* SWRR is protected with CCP */
	ccp_write_io((void *)&RSTCTRL.SWRR, 0x1);
}

uint8_t RSTCTRL_ResetCauseGet(void)
{
	return RSTCTRL.RSTFR;
}

void  RSTCTRL_ResetFlagsAllClear(void)
{
	RSTCTRL.RSTFR = RSTCTRL_UPDIRF_bm | RSTCTRL_SWRF_bm | RSTCTRL_WDRF_bm | RSTCTRL_EXTRF_bm | RSTCTRL_BORF_bm | RSTCTRL_PORF_bm;
}

void RSTCTRL_ResetFlagClear(rstctrl_resetflags_t resetflag)
{
    switch(resetflag) 
    {
      case POR_RSTFLAG: 
		    RSTCTRL.RSTFR = RSTCTRL_PORF_bm; 
		    break;
      case BOR_RSTFLAG:
     	  RSTCTRL.RSTFR = RSTCTRL_BORF_bm;
		    break;
      case EXTR_RSTFLAG: 
		    RSTCTRL.RSTFR = RSTCTRL_EXTRF_bm; 
		    break;
      case WDR_RSTFLAG: 
		    RSTCTRL.RSTFR = RSTCTRL_WDRF_bm;
		    break;
      case SWR_RSTFLAG: 
		    RSTCTRL.RSTFR = RSTCTRL_SWRF_bm; 
		    break;
      case UPDIR_RSTFLAG: 
		    RSTCTRL.RSTFR = RSTCTRL_UPDIRF_bm; 
		    break;
      default:
        break;
    }
} 