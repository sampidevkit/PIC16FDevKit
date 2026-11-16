

/**
  * CLKCTRL Generated Driver File
  *
  * @file clkctrl.c
  *
  * @ingroup clkctrl
  *
  * @brief This file contains the driver code for CLKCTRL module.
  *
  * version CLKCTRL Driver Version 1.2.0
  *
  * @version Package Version 2.2.0
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


#include "../clock.h"

void CLOCK_Initialize(void)
{
    ccp_write_io((void*)&(CLKCTRL.MCLKCTRLA),(uint8_t)(0U << CLKCTRL_CLKOUT_bp)   // CLKOUT disabled
            | (uint8_t)CLKCTRL_CLKSEL_OSCHF_gc   // CLKSEL Internal high-frequency oscillator
            );
	
    ccp_write_io((void*)&(CLKCTRL.MCLKCTRLB),(uint8_t)CLKCTRL_PDIV_DIV2_gc   // PDIV Divide by 2
            | (uint8_t)(0U << CLKCTRL_PEN_bp)   // PEN disabled
            );
	
    ccp_write_io((void*)&(CLKCTRL.OSC32KCTRLA),(uint8_t)(0U << CLKCTRL_RUNSTDBY_bp)   // RUNSTDBY disabled
            );
	
    ccp_write_io((void*)&(CLKCTRL.OSCHFCTRLA),(uint8_t)CLKCTRL_AUTOTUNE_OFF_gc   // AUTOTUNE OFF
            | (uint8_t)CLKCTRL_FRQSEL_24M_gc   // FRQSEL 24 MHz system clock
            | (uint8_t)(0U << CLKCTRL_RUNSTDBY_bp)   // RUNSTDBY disabled
            | (uint8_t)CLKCTRL_ALGSEL_BIN_gc   // ALGSEL BIN
            );
	
    ccp_write_io((void*)&(CLKCTRL.OSCHFTUNE),(uint8_t)0x0   // TUNE 0x0
            );
	
    ccp_write_io((void*)&(CLKCTRL.XOSC32KCTRLA),(uint8_t)CLKCTRL_CSUT_1K_gc   // CSUT 1k cycles
            | (uint8_t)(0U << CLKCTRL_ENABLE_bp)   // ENABLE disabled
            | (uint8_t)(0U << CLKCTRL_LPMODE_bp)   // LPMODE disabled
            | (uint8_t)(0U << CLKCTRL_RUNSTDBY_bp)   // RUNSTDBY disabled
            | (uint8_t)CLKCTRL_SEL_XTAL_gc   // SEL XTAL
            );
	
    ccp_write_io((void*)&(CLKCTRL.MCLKCTRLC),(uint8_t)(0U << CLKCTRL_CFDEN_bp)   // CFDEN disabled
            | (uint8_t)CLKCTRL_CFDSRC_CLKMAIN_gc   // CFDSRC CLKMAIN
            | (uint8_t)(0U << CLKCTRL_CFDTST_bp)   // CFDTST disabled
            );
	
    ccp_write_io((void*)&(CLKCTRL.MCLKINTCTRL),(uint8_t)(0U << CLKCTRL_CFD_bp)   // CFD disabled
            | (uint8_t)CLKCTRL_INTTYPE_INT_gc   // INTTYPE INT
            );
	
    ccp_write_io((void*)&(CLKCTRL.MCLKINTFLAGS),(uint8_t)(0U << CLKCTRL_CFD_bp)   // CFD disabled
            );
	
    ccp_write_io((void*)&(CLKCTRL.XOSCHFCTRLA),(uint8_t)CLKCTRL_CSUTHF_256_gc   // CSUTHF 256
            | (uint8_t)(0U << CLKCTRL_ENABLE_bp)   // ENABLE disabled
            | (uint8_t)CLKCTRL_FRQRANGE_8M_gc   // FRQRANGE 8M
            | (uint8_t)(0U << CLKCTRL_RUNSTBY_bp)   // RUNSTBY disabled
            | (uint8_t)CLKCTRL_SELHF_XTAL_gc   // SELHF XTAL
            );
	
    ccp_write_io((void*)&(CLKCTRL.MCLKTIMEBASE),(uint8_t)0x18   // TIMEBASE 0x18
            );
	

    // System clock stability check by polling the status register.
    while(!(CLKCTRL.MCLKSTATUS & CLKCTRL_OSCHFS_bm))
    {
    }

}

void CFD_Enable(CLKCTRL_CFDSRC_t cfd_source)
{
    /* Enable Clock Failure Detection on main clock */
    ccp_write_io((uint8_t *) & CLKCTRL.MCLKCTRLC, (uint8_t)((uint8_t)cfd_source | CLKCTRL_CFDEN_bm));
}

void CFD_Disable(void)
{
    /* Disable Clock Failure Detection on main clock */
    ccp_write_io((uint8_t *) & CLKCTRL.MCLKCTRLC, (uint8_t)(CLKCTRL.MCLKCTRLC & ~CLKCTRL_CFDEN_bm));
}

void CLKCTRL_AutoTuneEnable(void)
{
    CLKCTRL.OSCHFCTRLA |= CLKCTRL_AUTOTUNE_0_bm;
}

void CLKCTRL_AutoTuneDisable(void)
{
    CLKCTRL.OSCHFCTRLA &= ~(CLKCTRL_AUTOTUNE_0_bm);
}

bool CLKCTRL_TuneSet(uint8_t tuneValue)
{
    // manualTuneStatus = true  - Manual tuning was applied successfully.
    // manualTuneStatus = false - Automatic tuning is enabled; manual tuning was not applied.
    bool manualTuneStatus = false;

    if((CLKCTRL.OSCHFCTRLA & CLKCTRL_AUTOTUNE_0_bm) == 0U)
    {
        CLKCTRL.OSCHFTUNE = tuneValue;
        
        manualTuneStatus = true;
    }
    return manualTuneStatus;
}


/**
 End of File
*/