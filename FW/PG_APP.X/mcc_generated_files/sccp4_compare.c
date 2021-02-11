/**
  SCCP4 Generated Driver File 

  @Company
    Microchip Technology Inc.

  @File Name
    sccp4.c

  @Summary
    This is the generated driver implementation file for the SCCP4 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides implementations for driver APIs for SCCP4. 
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0064GPM028
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
        MPLAB             :  MPLAB X v5.45
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/

#include "sccp4_compare.h"

/** OC Mode.

  @Summary
    Defines the OC Mode.

  @Description
    This data type defines the OC Mode of operation.

*/

static uint16_t         gSCCP4Mode;

/**
  Section: Driver Interface
*/


void SCCP4_COMPARE_Initialize (void)
{
    // ON disabled; MOD 16-Bit Single Edge, High; ALTSYNC disabled; SIDL disabled; OPS Each Time Base Period Match; CCPSLP disabled; TMRSYNC disabled; RTRGEN disabled; CCSEL disabled; ONESHOT disabled; TRIGEN disabled; T32 16 Bit; SYNC None; OPSSRC Timer Interrupt Event; TMRPS 1:1; CLKSEL SYSCLK; 
    CCP4CON1 = (0x01 & 0xFFFF7FFF); //Disabling CCPON bit
    //ASDGM disabled; ICGSM Level-Sensitive mode; ICS ICM4; SSDG disabled; AUXOUT Disabled; ASDG 0; PWMRSEN disabled; OCAEN disabled; OENSYNC disabled; 
    CCP4CON2 = 0x00;
    //OETRIG disabled; OSCNT None; POLACE disabled; PSSACE Tri-state; 
    CCP4CON3 = 0x00;
    //SCEVT disabled; TRSET disabled; ICOV disabled; ASEVT disabled; ICGARM disabled; RBWIP disabled; TRCLR disabled; RAWIP disabled; TMRHWIP disabled; TMRLWIP disabled; PRLWIP disabled; 
    CCP4STAT = 0x00;
    //TMRL 0; TMRH 0; 
    CCP4TMR = 0x00;
    //PRH 0; PRL 0; 
    CCP4PR = 0x00;
    //CMPA 0; 
    CCP4RA = 0x00;
    //CMPB 0; 
    CCP4RB = 0x00;
    //BUFL 0; BUFH 0; 
    CCP4BUF = 0x00;


    gSCCP4Mode = CCP4CON1bits.MOD;

}

void __attribute__ ((weak)) SCCP4_COMPARE_CallBack(void)
{
    // Add your custom callback code here
}

void SCCP4_COMPARE_Tasks( void )
{
    if(IFS2bits.CCP4IF)
    {
		// SCCP4 COMPARE callback function 
		SCCP4_COMPARE_CallBack();
		
        IFS2CLR= 1 << _IFS2_CCP4IF_POSITION;
    }
}

void __attribute__ ((weak)) SCCP4_COMPARE_TimerCallBack(void)
{
    // Add your custom callback code here
}


void SCCP4_COMPARE_TimerTasks( void )
{
    if(IFS2bits.CCT4IF)
    {
		// SCCP4 COMPARE Timer callback function 
		SCCP4_COMPARE_TimerCallBack();
	
        IFS2CLR= 1 << _IFS2_CCT4IF_POSITION;
    }
}

void SCCP4_COMPARE_Start( void )
{
    /* Start the Timer */
    CCP4CON1SET = (1 << _CCP4CON1_ON_POSITION);
}

void SCCP4_COMPARE_Stop( void )
{
    /* Start the Timer */
    CCP4CON1CLR = (1 << _CCP4CON1_ON_POSITION);
}

void SCCP4_COMPARE_SingleCompare16ValueSet( uint16_t value )
{   
    CCP4RA = value;
}


void SCCP4_COMPARE_DualCompareValueSet( uint16_t priVal, uint16_t secVal )
{

    CCP4RA = priVal;

    CCP4RB = secVal;
}

void SCCP4_COMPARE_DualEdgeBufferedConfig( uint16_t priVal, uint16_t secVal )
{

    CCP4RA = priVal;

    CCP4RB = secVal;
}

void SCCP4_COMPARE_CenterAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP4RA = priVal;

    CCP4RB = secVal;
}

void SCCP4_COMPARE_EdgeAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP4RA = priVal;

    CCP4RB = secVal;
}

void SCCP4_COMPARE_VariableFrequencyPulseConfig( uint16_t priVal )
{
    CCP4RA = priVal;
}

bool SCCP4_COMPARE_IsCompareCycleComplete( void )
{
    return(IFS2bits.CCP4IF);
}

bool SCCP4_COMPARE_TriggerStatusGet( void )
{
    return( CCP4STATbits.CCPTRIG );
    
}

void SCCP4_COMPARE_TriggerStatusSet( void )
{
    CCP4STATSET = (1 << _CCP4STAT_TRSET_POSITION);
}

void SCCP4_COMPARE_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    CCP4STATCLR = (1 << _CCP4STAT_TRCLR_POSITION);
}

bool SCCP4_COMPARE_SingleCompareStatusGet( void )
{
    return( CCP4STATbits.SCEVT );
}

void SCCP4_COMPARE_SingleCompareStatusClear( void )
{
    /* Clears the trigger status */
    CCP4STATCLR = (1 << _CCP4STAT_SCEVT_POSITION);
    
}
/**
 End of File
*/
