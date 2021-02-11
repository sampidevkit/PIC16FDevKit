/**
  SCCP8 Generated Driver File 

  @Company
    Microchip Technology Inc.

  @File Name
    sccp8.c

  @Summary
    This is the generated driver implementation file for the SCCP8 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides implementations for driver APIs for SCCP8. 
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

#include "sccp8_compare.h"

/** OC Mode.

  @Summary
    Defines the OC Mode.

  @Description
    This data type defines the OC Mode of operation.

*/

static uint16_t         gSCCP8Mode;

/**
  Section: Driver Interface
*/


void SCCP8_COMPARE_Initialize (void)
{
    // ON disabled; MOD 16-Bit Single Edge, High; ALTSYNC disabled; SIDL disabled; OPS Each Time Base Period Match; CCPSLP disabled; TMRSYNC disabled; RTRGEN disabled; CCSEL disabled; ONESHOT disabled; TRIGEN disabled; T32 16 Bit; SYNC None; OPSSRC Timer Interrupt Event; TMRPS 1:1; CLKSEL SYSCLK; 
    CCP8CON1 = (0x01 & 0xFFFF7FFF); //Disabling CCPON bit
    //ASDGM disabled; ICGSM Level-Sensitive mode; ICS ICM8; SSDG disabled; AUXOUT Disabled; ASDG 0; PWMRSEN disabled; OCAEN disabled; OENSYNC disabled; 
    CCP8CON2 = 0x00;
    //OETRIG disabled; OSCNT None; POLACE disabled; PSSACE Tri-state; 
    CCP8CON3 = 0x00;
    //SCEVT disabled; TRSET disabled; ICOV disabled; ASEVT disabled; ICGARM disabled; RBWIP disabled; TRCLR disabled; RAWIP disabled; TMRHWIP disabled; TMRLWIP disabled; PRLWIP disabled; 
    CCP8STAT = 0x00;
    //TMRL 0; TMRH 0; 
    CCP8TMR = 0x00;
    //PRH 0; PRL 0; 
    CCP8PR = 0x00;
    //CMPA 0; 
    CCP8RA = 0x00;
    //CMPB 0; 
    CCP8RB = 0x00;
    //BUFL 0; BUFH 0; 
    CCP8BUF = 0x00;


    gSCCP8Mode = CCP8CON1bits.MOD;

}

void __attribute__ ((weak)) SCCP8_COMPARE_CallBack(void)
{
    // Add your custom callback code here
}

void SCCP8_COMPARE_Tasks( void )
{
    if(IFS2bits.CCP8IF)
    {
		// SCCP8 COMPARE callback function 
		SCCP8_COMPARE_CallBack();
		
        IFS2CLR= 1 << _IFS2_CCP8IF_POSITION;
    }
}

void __attribute__ ((weak)) SCCP8_COMPARE_TimerCallBack(void)
{
    // Add your custom callback code here
}


void SCCP8_COMPARE_TimerTasks( void )
{
    if(IFS2bits.CCT8IF)
    {
		// SCCP8 COMPARE Timer callback function 
		SCCP8_COMPARE_TimerCallBack();
	
        IFS2CLR= 1 << _IFS2_CCT8IF_POSITION;
    }
}

void SCCP8_COMPARE_Start( void )
{
    /* Start the Timer */
    CCP8CON1SET = (1 << _CCP8CON1_ON_POSITION);
}

void SCCP8_COMPARE_Stop( void )
{
    /* Start the Timer */
    CCP8CON1CLR = (1 << _CCP8CON1_ON_POSITION);
}

void SCCP8_COMPARE_SingleCompare16ValueSet( uint16_t value )
{   
    CCP8RA = value;
}


void SCCP8_COMPARE_DualCompareValueSet( uint16_t priVal, uint16_t secVal )
{

    CCP8RA = priVal;

    CCP8RB = secVal;
}

void SCCP8_COMPARE_DualEdgeBufferedConfig( uint16_t priVal, uint16_t secVal )
{

    CCP8RA = priVal;

    CCP8RB = secVal;
}

void SCCP8_COMPARE_CenterAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP8RA = priVal;

    CCP8RB = secVal;
}

void SCCP8_COMPARE_EdgeAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP8RA = priVal;

    CCP8RB = secVal;
}

void SCCP8_COMPARE_VariableFrequencyPulseConfig( uint16_t priVal )
{
    CCP8RA = priVal;
}

bool SCCP8_COMPARE_IsCompareCycleComplete( void )
{
    return(IFS2bits.CCP8IF);
}

bool SCCP8_COMPARE_TriggerStatusGet( void )
{
    return( CCP8STATbits.CCPTRIG );
    
}

void SCCP8_COMPARE_TriggerStatusSet( void )
{
    CCP8STATSET = (1 << _CCP8STAT_TRSET_POSITION);
}

void SCCP8_COMPARE_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    CCP8STATCLR = (1 << _CCP8STAT_TRCLR_POSITION);
}

bool SCCP8_COMPARE_SingleCompareStatusGet( void )
{
    return( CCP8STATbits.SCEVT );
}

void SCCP8_COMPARE_SingleCompareStatusClear( void )
{
    /* Clears the trigger status */
    CCP8STATCLR = (1 << _CCP8STAT_SCEVT_POSITION);
    
}
/**
 End of File
*/
