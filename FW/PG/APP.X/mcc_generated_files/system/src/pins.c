/**
 * Generated Driver File
 * 
 * @file pins.c
 * 
 * @ingroup  pinsdriver
 * 
 * @brief This is generated driver implementation for pins. 
 *        This file provides implementations for pin APIs for all pins selected in the GUI.
 *
 * @version Driver Version 1.1.0
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

#include "../pins.h"

static void (*RXD1_InterruptHandler)(void);
static void (*TXD1_InterruptHandler)(void);
static void (*RXD0_InterruptHandler)(void);
static void (*TXD0_InterruptHandler)(void);
static void (*VPP_SEN_InterruptHandler)(void);
static void (*VDDTG_SEN_InterruptHandler)(void);
static void (*SCL_InterruptHandler)(void);
static void (*SDA_InterruptHandler)(void);
static void (*TG_PGC_InterruptHandler)(void);
static void (*TG_PGD_InterruptHandler)(void);
static void (*BT_FNC_N_InterruptHandler)(void);
static void (*LED_TGRDY_InterruptHandler)(void);
static void (*LED_BUSY_InterruptHandler)(void);
static void (*TG_MCLR_InterruptHandler)(void);
static void (*VTG_EN_N_InterruptHandler)(void);
static void (*VPP_EN_InterruptHandler)(void);

void PIN_MANAGER_Initialize()
{

  /* OUT Registers Initialization */
    PORTA.OUT = 0x0;
    PORTC.OUT = 0x0;
    PORTD.OUT = 0x58;
    PORTF.OUT = 0x1;

  /* DIR Registers Initialization */
    PORTA.DIR = 0x30;
    PORTC.DIR = 0x0;
    PORTD.DIR = 0x58;
    PORTF.DIR = 0x3;

  /* PINxCTRL registers Initialization */
    PORTA.PIN0CTRL = 0x0;
    PORTA.PIN1CTRL = 0x0;
    PORTA.PIN2CTRL = 0x0;
    PORTA.PIN3CTRL = 0x0;
    PORTA.PIN4CTRL = 0x0;
    PORTA.PIN5CTRL = 0x0;
    PORTA.PIN6CTRL = 0x0;
    PORTA.PIN7CTRL = 0x0;
    PORTC.PIN0CTRL = 0x0;
    PORTC.PIN1CTRL = 0x0;
    PORTC.PIN2CTRL = 0x0;
    PORTC.PIN3CTRL = 0x0;
    PORTC.PIN4CTRL = 0x0;
    PORTC.PIN5CTRL = 0x0;
    PORTC.PIN6CTRL = 0x0;
    PORTC.PIN7CTRL = 0x0;
    PORTD.PIN0CTRL = 0x0;
    PORTD.PIN1CTRL = 0x0;
    PORTD.PIN2CTRL = 0x0;
    PORTD.PIN3CTRL = 0x0;
    PORTD.PIN4CTRL = 0x0;
    PORTD.PIN5CTRL = 0x0;
    PORTD.PIN6CTRL = 0x0;
    PORTD.PIN7CTRL = 0x0;
    PORTF.PIN0CTRL = 0x0;
    PORTF.PIN1CTRL = 0x0;
    PORTF.PIN2CTRL = 0x0;
    PORTF.PIN3CTRL = 0x0;
    PORTF.PIN4CTRL = 0x0;
    PORTF.PIN5CTRL = 0x0;
    PORTF.PIN6CTRL = 0x0;
    PORTF.PIN7CTRL = 0x0;

  /* PORTMUX Initialization */
    PORTMUX.CCLROUTEA = 0x0;
    PORTMUX.EVSYSROUTEA = 0x0;
    PORTMUX.SPIROUTEA = 0x0;
    PORTMUX.TCAROUTEA = 0x0;
    PORTMUX.TCBROUTEA = 0x0;
    PORTMUX.TWIROUTEA = 0x0;
    PORTMUX.USARTROUTEA = 0x13;

  // register default ISC callback functions at runtime; use these methods to register a custom function
    RXD1_SetInterruptHandler(RXD1_DefaultInterruptHandler);
    TXD1_SetInterruptHandler(TXD1_DefaultInterruptHandler);
    RXD0_SetInterruptHandler(RXD0_DefaultInterruptHandler);
    TXD0_SetInterruptHandler(TXD0_DefaultInterruptHandler);
    VPP_SEN_SetInterruptHandler(VPP_SEN_DefaultInterruptHandler);
    VDDTG_SEN_SetInterruptHandler(VDDTG_SEN_DefaultInterruptHandler);
    SCL_SetInterruptHandler(SCL_DefaultInterruptHandler);
    SDA_SetInterruptHandler(SDA_DefaultInterruptHandler);
    TG_PGC_SetInterruptHandler(TG_PGC_DefaultInterruptHandler);
    TG_PGD_SetInterruptHandler(TG_PGD_DefaultInterruptHandler);
    BT_FNC_N_SetInterruptHandler(BT_FNC_N_DefaultInterruptHandler);
    LED_TGRDY_SetInterruptHandler(LED_TGRDY_DefaultInterruptHandler);
    LED_BUSY_SetInterruptHandler(LED_BUSY_DefaultInterruptHandler);
    TG_MCLR_SetInterruptHandler(TG_MCLR_DefaultInterruptHandler);
    VTG_EN_N_SetInterruptHandler(VTG_EN_N_DefaultInterruptHandler);
    VPP_EN_SetInterruptHandler(VPP_EN_DefaultInterruptHandler);
}

/**
  Allows selecting an interrupt handler for RXD1 at application runtime
*/
void RXD1_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    RXD1_InterruptHandler = interruptHandler;
}

void RXD1_DefaultInterruptHandler(void)
{
    // add your RXD1 interrupt custom code
    // or set custom function using RXD1_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for TXD1 at application runtime
*/
void TXD1_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    TXD1_InterruptHandler = interruptHandler;
}

void TXD1_DefaultInterruptHandler(void)
{
    // add your TXD1 interrupt custom code
    // or set custom function using TXD1_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for RXD0 at application runtime
*/
void RXD0_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    RXD0_InterruptHandler = interruptHandler;
}

void RXD0_DefaultInterruptHandler(void)
{
    // add your RXD0 interrupt custom code
    // or set custom function using RXD0_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for TXD0 at application runtime
*/
void TXD0_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    TXD0_InterruptHandler = interruptHandler;
}

void TXD0_DefaultInterruptHandler(void)
{
    // add your TXD0 interrupt custom code
    // or set custom function using TXD0_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for VPP_SEN at application runtime
*/
void VPP_SEN_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    VPP_SEN_InterruptHandler = interruptHandler;
}

void VPP_SEN_DefaultInterruptHandler(void)
{
    // add your VPP_SEN interrupt custom code
    // or set custom function using VPP_SEN_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for VDDTG_SEN at application runtime
*/
void VDDTG_SEN_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    VDDTG_SEN_InterruptHandler = interruptHandler;
}

void VDDTG_SEN_DefaultInterruptHandler(void)
{
    // add your VDDTG_SEN interrupt custom code
    // or set custom function using VDDTG_SEN_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for SCL at application runtime
*/
void SCL_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    SCL_InterruptHandler = interruptHandler;
}

void SCL_DefaultInterruptHandler(void)
{
    // add your SCL interrupt custom code
    // or set custom function using SCL_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for SDA at application runtime
*/
void SDA_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    SDA_InterruptHandler = interruptHandler;
}

void SDA_DefaultInterruptHandler(void)
{
    // add your SDA interrupt custom code
    // or set custom function using SDA_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for TG_PGC at application runtime
*/
void TG_PGC_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    TG_PGC_InterruptHandler = interruptHandler;
}

void TG_PGC_DefaultInterruptHandler(void)
{
    // add your TG_PGC interrupt custom code
    // or set custom function using TG_PGC_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for TG_PGD at application runtime
*/
void TG_PGD_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    TG_PGD_InterruptHandler = interruptHandler;
}

void TG_PGD_DefaultInterruptHandler(void)
{
    // add your TG_PGD interrupt custom code
    // or set custom function using TG_PGD_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for BT_FNC_N at application runtime
*/
void BT_FNC_N_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    BT_FNC_N_InterruptHandler = interruptHandler;
}

void BT_FNC_N_DefaultInterruptHandler(void)
{
    // add your BT_FNC_N interrupt custom code
    // or set custom function using BT_FNC_N_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for LED_TGRDY at application runtime
*/
void LED_TGRDY_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    LED_TGRDY_InterruptHandler = interruptHandler;
}

void LED_TGRDY_DefaultInterruptHandler(void)
{
    // add your LED_TGRDY interrupt custom code
    // or set custom function using LED_TGRDY_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for LED_BUSY at application runtime
*/
void LED_BUSY_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    LED_BUSY_InterruptHandler = interruptHandler;
}

void LED_BUSY_DefaultInterruptHandler(void)
{
    // add your LED_BUSY interrupt custom code
    // or set custom function using LED_BUSY_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for TG_MCLR at application runtime
*/
void TG_MCLR_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    TG_MCLR_InterruptHandler = interruptHandler;
}

void TG_MCLR_DefaultInterruptHandler(void)
{
    // add your TG_MCLR interrupt custom code
    // or set custom function using TG_MCLR_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for VTG_EN_N at application runtime
*/
void VTG_EN_N_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    VTG_EN_N_InterruptHandler = interruptHandler;
}

void VTG_EN_N_DefaultInterruptHandler(void)
{
    // add your VTG_EN_N interrupt custom code
    // or set custom function using VTG_EN_N_SetInterruptHandler()
}
/**
  Allows selecting an interrupt handler for VPP_EN at application runtime
*/
void VPP_EN_SetInterruptHandler(void (* interruptHandler)(void)) 
{
    VPP_EN_InterruptHandler = interruptHandler;
}

void VPP_EN_DefaultInterruptHandler(void)
{
    // add your VPP_EN interrupt custom code
    // or set custom function using VPP_EN_SetInterruptHandler()
}
ISR(PORTA_PORT_vect)
{ 
    // Call the interrupt handler for the callback registered at runtime
    if(VPORTA.INTFLAGS & PORT_INT3_bm)
    {
       SCL_InterruptHandler(); 
    }
    if(VPORTA.INTFLAGS & PORT_INT2_bm)
    {
       SDA_InterruptHandler(); 
    }
    if(VPORTA.INTFLAGS & PORT_INT0_bm)
    {
       TG_PGC_InterruptHandler(); 
    }
    if(VPORTA.INTFLAGS & PORT_INT1_bm)
    {
       TG_PGD_InterruptHandler(); 
    }
    if(VPORTA.INTFLAGS & PORT_INT7_bm)
    {
       BT_FNC_N_InterruptHandler(); 
    }
    if(VPORTA.INTFLAGS & PORT_INT4_bm)
    {
       LED_TGRDY_InterruptHandler(); 
    }
    if(VPORTA.INTFLAGS & PORT_INT5_bm)
    {
       LED_BUSY_InterruptHandler(); 
    }
    /* Clear interrupt flags */
    VPORTA.INTFLAGS = 0xff;
}

ISR(PORTC_PORT_vect)
{ 
    /* Clear interrupt flags */
    VPORTC.INTFLAGS = 0xff;
}

ISR(PORTD_PORT_vect)
{ 
    // Call the interrupt handler for the callback registered at runtime
    if(VPORTD.INTFLAGS & PORT_INT7_bm)
    {
       RXD1_InterruptHandler(); 
    }
    if(VPORTD.INTFLAGS & PORT_INT6_bm)
    {
       TXD1_InterruptHandler(); 
    }
    if(VPORTD.INTFLAGS & PORT_INT5_bm)
    {
       RXD0_InterruptHandler(); 
    }
    if(VPORTD.INTFLAGS & PORT_INT4_bm)
    {
       TXD0_InterruptHandler(); 
    }
    if(VPORTD.INTFLAGS & PORT_INT0_bm)
    {
       VPP_SEN_InterruptHandler(); 
    }
    if(VPORTD.INTFLAGS & PORT_INT1_bm)
    {
       VDDTG_SEN_InterruptHandler(); 
    }
    if(VPORTD.INTFLAGS & PORT_INT3_bm)
    {
       TG_MCLR_InterruptHandler(); 
    }
    /* Clear interrupt flags */
    VPORTD.INTFLAGS = 0xff;
}

ISR(PORTF_PORT_vect)
{ 
    // Call the interrupt handler for the callback registered at runtime
    if(VPORTF.INTFLAGS & PORT_INT0_bm)
    {
       VTG_EN_N_InterruptHandler(); 
    }
    if(VPORTF.INTFLAGS & PORT_INT1_bm)
    {
       VPP_EN_InterruptHandler(); 
    }
    /* Clear interrupt flags */
    VPORTF.INTFLAGS = 0xff;
}

/**
 End of File
*/