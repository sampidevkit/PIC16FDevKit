/**
 * Generated Pins header File
 * 
 * @file pins.h
 * 
 * @defgroup  pinsdriver Pins Driver
 * 
 * @brief This is generated driver header for pins. 
 *        This header file provides APIs for all pins selected in the GUI.
 *
 * @version Driver Version  1.1.0
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

#ifndef PINS_H_INCLUDED
#define PINS_H_INCLUDED

#include <avr/io.h>
#include "./port.h"

//get/set RXD1 aliases
#define RXD1_SetHigh() do { PORTD_OUTSET = 0x80; } while(0)
#define RXD1_SetLow() do { PORTD_OUTCLR = 0x80; } while(0)
#define RXD1_Toggle() do { PORTD_OUTTGL = 0x80; } while(0)
#define RXD1_GetValue() (VPORTD.IN & (0x1 << 7))
#define RXD1_SetDigitalInput() do { PORTD_DIRCLR = 0x80; } while(0)
#define RXD1_SetDigitalOutput() do { PORTD_DIRSET = 0x80; } while(0)
#define RXD1_SetPullUp() do { PORTD_PIN7CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define RXD1_ResetPullUp() do { PORTD_PIN7CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define RXD1_SetInverted() do { PORTD_PIN7CTRL  |= PORT_INVEN_bm; } while(0)
#define RXD1_ResetInverted() do { PORTD_PIN7CTRL  &= ~PORT_INVEN_bm; } while(0)
#define RXD1_DisableInterruptOnChange() do { PORTD.PIN7CTRL = (PORTD.PIN7CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define RXD1_EnableInterruptForBothEdges() do { PORTD.PIN7CTRL = (PORTD.PIN7CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define RXD1_EnableInterruptForRisingEdge() do { PORTD.PIN7CTRL = (PORTD.PIN7CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define RXD1_EnableInterruptForFallingEdge() do { PORTD.PIN7CTRL = (PORTD.PIN7CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define RXD1_DisableDigitalInputBuffer() do { PORTD.PIN7CTRL = (PORTD.PIN7CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define RXD1_EnableInterruptForLowLevelSensing() do { PORTD.PIN7CTRL = (PORTD.PIN7CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PD7_SetInterruptHandler RXD1_SetInterruptHandler

//get/set TXD1 aliases
#define TXD1_SetHigh() do { PORTD_OUTSET = 0x40; } while(0)
#define TXD1_SetLow() do { PORTD_OUTCLR = 0x40; } while(0)
#define TXD1_Toggle() do { PORTD_OUTTGL = 0x40; } while(0)
#define TXD1_GetValue() (VPORTD.IN & (0x1 << 6))
#define TXD1_SetDigitalInput() do { PORTD_DIRCLR = 0x40; } while(0)
#define TXD1_SetDigitalOutput() do { PORTD_DIRSET = 0x40; } while(0)
#define TXD1_SetPullUp() do { PORTD_PIN6CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define TXD1_ResetPullUp() do { PORTD_PIN6CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define TXD1_SetInverted() do { PORTD_PIN6CTRL  |= PORT_INVEN_bm; } while(0)
#define TXD1_ResetInverted() do { PORTD_PIN6CTRL  &= ~PORT_INVEN_bm; } while(0)
#define TXD1_DisableInterruptOnChange() do { PORTD.PIN6CTRL = (PORTD.PIN6CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define TXD1_EnableInterruptForBothEdges() do { PORTD.PIN6CTRL = (PORTD.PIN6CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define TXD1_EnableInterruptForRisingEdge() do { PORTD.PIN6CTRL = (PORTD.PIN6CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define TXD1_EnableInterruptForFallingEdge() do { PORTD.PIN6CTRL = (PORTD.PIN6CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define TXD1_DisableDigitalInputBuffer() do { PORTD.PIN6CTRL = (PORTD.PIN6CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define TXD1_EnableInterruptForLowLevelSensing() do { PORTD.PIN6CTRL = (PORTD.PIN6CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PD6_SetInterruptHandler TXD1_SetInterruptHandler

//get/set RXD0 aliases
#define RXD0_SetHigh() do { PORTD_OUTSET = 0x20; } while(0)
#define RXD0_SetLow() do { PORTD_OUTCLR = 0x20; } while(0)
#define RXD0_Toggle() do { PORTD_OUTTGL = 0x20; } while(0)
#define RXD0_GetValue() (VPORTD.IN & (0x1 << 5))
#define RXD0_SetDigitalInput() do { PORTD_DIRCLR = 0x20; } while(0)
#define RXD0_SetDigitalOutput() do { PORTD_DIRSET = 0x20; } while(0)
#define RXD0_SetPullUp() do { PORTD_PIN5CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define RXD0_ResetPullUp() do { PORTD_PIN5CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define RXD0_SetInverted() do { PORTD_PIN5CTRL  |= PORT_INVEN_bm; } while(0)
#define RXD0_ResetInverted() do { PORTD_PIN5CTRL  &= ~PORT_INVEN_bm; } while(0)
#define RXD0_DisableInterruptOnChange() do { PORTD.PIN5CTRL = (PORTD.PIN5CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define RXD0_EnableInterruptForBothEdges() do { PORTD.PIN5CTRL = (PORTD.PIN5CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define RXD0_EnableInterruptForRisingEdge() do { PORTD.PIN5CTRL = (PORTD.PIN5CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define RXD0_EnableInterruptForFallingEdge() do { PORTD.PIN5CTRL = (PORTD.PIN5CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define RXD0_DisableDigitalInputBuffer() do { PORTD.PIN5CTRL = (PORTD.PIN5CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define RXD0_EnableInterruptForLowLevelSensing() do { PORTD.PIN5CTRL = (PORTD.PIN5CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PD5_SetInterruptHandler RXD0_SetInterruptHandler

//get/set TXD0 aliases
#define TXD0_SetHigh() do { PORTD_OUTSET = 0x10; } while(0)
#define TXD0_SetLow() do { PORTD_OUTCLR = 0x10; } while(0)
#define TXD0_Toggle() do { PORTD_OUTTGL = 0x10; } while(0)
#define TXD0_GetValue() (VPORTD.IN & (0x1 << 4))
#define TXD0_SetDigitalInput() do { PORTD_DIRCLR = 0x10; } while(0)
#define TXD0_SetDigitalOutput() do { PORTD_DIRSET = 0x10; } while(0)
#define TXD0_SetPullUp() do { PORTD_PIN4CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define TXD0_ResetPullUp() do { PORTD_PIN4CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define TXD0_SetInverted() do { PORTD_PIN4CTRL  |= PORT_INVEN_bm; } while(0)
#define TXD0_ResetInverted() do { PORTD_PIN4CTRL  &= ~PORT_INVEN_bm; } while(0)
#define TXD0_DisableInterruptOnChange() do { PORTD.PIN4CTRL = (PORTD.PIN4CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define TXD0_EnableInterruptForBothEdges() do { PORTD.PIN4CTRL = (PORTD.PIN4CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define TXD0_EnableInterruptForRisingEdge() do { PORTD.PIN4CTRL = (PORTD.PIN4CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define TXD0_EnableInterruptForFallingEdge() do { PORTD.PIN4CTRL = (PORTD.PIN4CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define TXD0_DisableDigitalInputBuffer() do { PORTD.PIN4CTRL = (PORTD.PIN4CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define TXD0_EnableInterruptForLowLevelSensing() do { PORTD.PIN4CTRL = (PORTD.PIN4CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PD4_SetInterruptHandler TXD0_SetInterruptHandler

//get/set SCL aliases
#define SCL_SetHigh() do { PORTA_OUTSET = 0x8; } while(0)
#define SCL_SetLow() do { PORTA_OUTCLR = 0x8; } while(0)
#define SCL_Toggle() do { PORTA_OUTTGL = 0x8; } while(0)
#define SCL_GetValue() (VPORTA.IN & (0x1 << 3))
#define SCL_SetDigitalInput() do { PORTA_DIRCLR = 0x8; } while(0)
#define SCL_SetDigitalOutput() do { PORTA_DIRSET = 0x8; } while(0)
#define SCL_SetPullUp() do { PORTA_PIN3CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define SCL_ResetPullUp() do { PORTA_PIN3CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define SCL_SetInverted() do { PORTA_PIN3CTRL  |= PORT_INVEN_bm; } while(0)
#define SCL_ResetInverted() do { PORTA_PIN3CTRL  &= ~PORT_INVEN_bm; } while(0)
#define SCL_DisableInterruptOnChange() do { PORTA.PIN3CTRL = (PORTA.PIN3CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define SCL_EnableInterruptForBothEdges() do { PORTA.PIN3CTRL = (PORTA.PIN3CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define SCL_EnableInterruptForRisingEdge() do { PORTA.PIN3CTRL = (PORTA.PIN3CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define SCL_EnableInterruptForFallingEdge() do { PORTA.PIN3CTRL = (PORTA.PIN3CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define SCL_DisableDigitalInputBuffer() do { PORTA.PIN3CTRL = (PORTA.PIN3CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define SCL_EnableInterruptForLowLevelSensing() do { PORTA.PIN3CTRL = (PORTA.PIN3CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA3_SetInterruptHandler SCL_SetInterruptHandler

//get/set SDA aliases
#define SDA_SetHigh() do { PORTA_OUTSET = 0x4; } while(0)
#define SDA_SetLow() do { PORTA_OUTCLR = 0x4; } while(0)
#define SDA_Toggle() do { PORTA_OUTTGL = 0x4; } while(0)
#define SDA_GetValue() (VPORTA.IN & (0x1 << 2))
#define SDA_SetDigitalInput() do { PORTA_DIRCLR = 0x4; } while(0)
#define SDA_SetDigitalOutput() do { PORTA_DIRSET = 0x4; } while(0)
#define SDA_SetPullUp() do { PORTA_PIN2CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define SDA_ResetPullUp() do { PORTA_PIN2CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define SDA_SetInverted() do { PORTA_PIN2CTRL  |= PORT_INVEN_bm; } while(0)
#define SDA_ResetInverted() do { PORTA_PIN2CTRL  &= ~PORT_INVEN_bm; } while(0)
#define SDA_DisableInterruptOnChange() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define SDA_EnableInterruptForBothEdges() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define SDA_EnableInterruptForRisingEdge() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define SDA_EnableInterruptForFallingEdge() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define SDA_DisableDigitalInputBuffer() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define SDA_EnableInterruptForLowLevelSensing() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA2_SetInterruptHandler SDA_SetInterruptHandler

//get/set TG_PGC aliases
#define TG_PGC_SetHigh() do { PORTA_OUTSET = 0x1; } while(0)
#define TG_PGC_SetLow() do { PORTA_OUTCLR = 0x1; } while(0)
#define TG_PGC_Toggle() do { PORTA_OUTTGL = 0x1; } while(0)
#define TG_PGC_GetValue() (VPORTA.IN & (0x1 << 0))
#define TG_PGC_SetDigitalInput() do { PORTA_DIRCLR = 0x1; } while(0)
#define TG_PGC_SetDigitalOutput() do { PORTA_DIRSET = 0x1; } while(0)
#define TG_PGC_SetPullUp() do { PORTA_PIN0CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define TG_PGC_ResetPullUp() do { PORTA_PIN0CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define TG_PGC_SetInverted() do { PORTA_PIN0CTRL  |= PORT_INVEN_bm; } while(0)
#define TG_PGC_ResetInverted() do { PORTA_PIN0CTRL  &= ~PORT_INVEN_bm; } while(0)
#define TG_PGC_DisableInterruptOnChange() do { PORTA.PIN0CTRL = (PORTA.PIN0CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define TG_PGC_EnableInterruptForBothEdges() do { PORTA.PIN0CTRL = (PORTA.PIN0CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define TG_PGC_EnableInterruptForRisingEdge() do { PORTA.PIN0CTRL = (PORTA.PIN0CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define TG_PGC_EnableInterruptForFallingEdge() do { PORTA.PIN0CTRL = (PORTA.PIN0CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define TG_PGC_DisableDigitalInputBuffer() do { PORTA.PIN0CTRL = (PORTA.PIN0CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define TG_PGC_EnableInterruptForLowLevelSensing() do { PORTA.PIN0CTRL = (PORTA.PIN0CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA0_SetInterruptHandler TG_PGC_SetInterruptHandler

//get/set TG_PGD aliases
#define TG_PGD_SetHigh() do { PORTA_OUTSET = 0x2; } while(0)
#define TG_PGD_SetLow() do { PORTA_OUTCLR = 0x2; } while(0)
#define TG_PGD_Toggle() do { PORTA_OUTTGL = 0x2; } while(0)
#define TG_PGD_GetValue() (VPORTA.IN & (0x1 << 1))
#define TG_PGD_SetDigitalInput() do { PORTA_DIRCLR = 0x2; } while(0)
#define TG_PGD_SetDigitalOutput() do { PORTA_DIRSET = 0x2; } while(0)
#define TG_PGD_SetPullUp() do { PORTA_PIN1CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define TG_PGD_ResetPullUp() do { PORTA_PIN1CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define TG_PGD_SetInverted() do { PORTA_PIN1CTRL  |= PORT_INVEN_bm; } while(0)
#define TG_PGD_ResetInverted() do { PORTA_PIN1CTRL  &= ~PORT_INVEN_bm; } while(0)
#define TG_PGD_DisableInterruptOnChange() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define TG_PGD_EnableInterruptForBothEdges() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define TG_PGD_EnableInterruptForRisingEdge() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define TG_PGD_EnableInterruptForFallingEdge() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define TG_PGD_DisableDigitalInputBuffer() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define TG_PGD_EnableInterruptForLowLevelSensing() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA1_SetInterruptHandler TG_PGD_SetInterruptHandler

//get/set BT_FNC_N aliases
#define BT_FNC_N_SetHigh() do { PORTA_OUTSET = 0x80; } while(0)
#define BT_FNC_N_SetLow() do { PORTA_OUTCLR = 0x80; } while(0)
#define BT_FNC_N_Toggle() do { PORTA_OUTTGL = 0x80; } while(0)
#define BT_FNC_N_GetValue() (VPORTA.IN & (0x1 << 7))
#define BT_FNC_N_SetDigitalInput() do { PORTA_DIRCLR = 0x80; } while(0)
#define BT_FNC_N_SetDigitalOutput() do { PORTA_DIRSET = 0x80; } while(0)
#define BT_FNC_N_SetPullUp() do { PORTA_PIN7CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define BT_FNC_N_ResetPullUp() do { PORTA_PIN7CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define BT_FNC_N_SetInverted() do { PORTA_PIN7CTRL  |= PORT_INVEN_bm; } while(0)
#define BT_FNC_N_ResetInverted() do { PORTA_PIN7CTRL  &= ~PORT_INVEN_bm; } while(0)
#define BT_FNC_N_DisableInterruptOnChange() do { PORTA.PIN7CTRL = (PORTA.PIN7CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define BT_FNC_N_EnableInterruptForBothEdges() do { PORTA.PIN7CTRL = (PORTA.PIN7CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define BT_FNC_N_EnableInterruptForRisingEdge() do { PORTA.PIN7CTRL = (PORTA.PIN7CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define BT_FNC_N_EnableInterruptForFallingEdge() do { PORTA.PIN7CTRL = (PORTA.PIN7CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define BT_FNC_N_DisableDigitalInputBuffer() do { PORTA.PIN7CTRL = (PORTA.PIN7CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define BT_FNC_N_EnableInterruptForLowLevelSensing() do { PORTA.PIN7CTRL = (PORTA.PIN7CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA7_SetInterruptHandler BT_FNC_N_SetInterruptHandler

//get/set LED_TGRDY aliases
#define LED_TGRDY_SetHigh() do { PORTA_OUTSET = 0x10; } while(0)
#define LED_TGRDY_SetLow() do { PORTA_OUTCLR = 0x10; } while(0)
#define LED_TGRDY_Toggle() do { PORTA_OUTTGL = 0x10; } while(0)
#define LED_TGRDY_GetValue() (VPORTA.IN & (0x1 << 4))
#define LED_TGRDY_SetDigitalInput() do { PORTA_DIRCLR = 0x10; } while(0)
#define LED_TGRDY_SetDigitalOutput() do { PORTA_DIRSET = 0x10; } while(0)
#define LED_TGRDY_SetPullUp() do { PORTA_PIN4CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define LED_TGRDY_ResetPullUp() do { PORTA_PIN4CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define LED_TGRDY_SetInverted() do { PORTA_PIN4CTRL  |= PORT_INVEN_bm; } while(0)
#define LED_TGRDY_ResetInverted() do { PORTA_PIN4CTRL  &= ~PORT_INVEN_bm; } while(0)
#define LED_TGRDY_DisableInterruptOnChange() do { PORTA.PIN4CTRL = (PORTA.PIN4CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define LED_TGRDY_EnableInterruptForBothEdges() do { PORTA.PIN4CTRL = (PORTA.PIN4CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define LED_TGRDY_EnableInterruptForRisingEdge() do { PORTA.PIN4CTRL = (PORTA.PIN4CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define LED_TGRDY_EnableInterruptForFallingEdge() do { PORTA.PIN4CTRL = (PORTA.PIN4CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define LED_TGRDY_DisableDigitalInputBuffer() do { PORTA.PIN4CTRL = (PORTA.PIN4CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define LED_TGRDY_EnableInterruptForLowLevelSensing() do { PORTA.PIN4CTRL = (PORTA.PIN4CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA4_SetInterruptHandler LED_TGRDY_SetInterruptHandler

//get/set LED_BUSY aliases
#define LED_BUSY_SetHigh() do { PORTA_OUTSET = 0x20; } while(0)
#define LED_BUSY_SetLow() do { PORTA_OUTCLR = 0x20; } while(0)
#define LED_BUSY_Toggle() do { PORTA_OUTTGL = 0x20; } while(0)
#define LED_BUSY_GetValue() (VPORTA.IN & (0x1 << 5))
#define LED_BUSY_SetDigitalInput() do { PORTA_DIRCLR = 0x20; } while(0)
#define LED_BUSY_SetDigitalOutput() do { PORTA_DIRSET = 0x20; } while(0)
#define LED_BUSY_SetPullUp() do { PORTA_PIN5CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define LED_BUSY_ResetPullUp() do { PORTA_PIN5CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define LED_BUSY_SetInverted() do { PORTA_PIN5CTRL  |= PORT_INVEN_bm; } while(0)
#define LED_BUSY_ResetInverted() do { PORTA_PIN5CTRL  &= ~PORT_INVEN_bm; } while(0)
#define LED_BUSY_DisableInterruptOnChange() do { PORTA.PIN5CTRL = (PORTA.PIN5CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define LED_BUSY_EnableInterruptForBothEdges() do { PORTA.PIN5CTRL = (PORTA.PIN5CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define LED_BUSY_EnableInterruptForRisingEdge() do { PORTA.PIN5CTRL = (PORTA.PIN5CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define LED_BUSY_EnableInterruptForFallingEdge() do { PORTA.PIN5CTRL = (PORTA.PIN5CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define LED_BUSY_DisableDigitalInputBuffer() do { PORTA.PIN5CTRL = (PORTA.PIN5CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define LED_BUSY_EnableInterruptForLowLevelSensing() do { PORTA.PIN5CTRL = (PORTA.PIN5CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PA5_SetInterruptHandler LED_BUSY_SetInterruptHandler

//get/set TG_MCLR aliases
#define TG_MCLR_SetHigh() do { PORTD_OUTSET = 0x8; } while(0)
#define TG_MCLR_SetLow() do { PORTD_OUTCLR = 0x8; } while(0)
#define TG_MCLR_Toggle() do { PORTD_OUTTGL = 0x8; } while(0)
#define TG_MCLR_GetValue() (VPORTD.IN & (0x1 << 3))
#define TG_MCLR_SetDigitalInput() do { PORTD_DIRCLR = 0x8; } while(0)
#define TG_MCLR_SetDigitalOutput() do { PORTD_DIRSET = 0x8; } while(0)
#define TG_MCLR_SetPullUp() do { PORTD_PIN3CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define TG_MCLR_ResetPullUp() do { PORTD_PIN3CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define TG_MCLR_SetInverted() do { PORTD_PIN3CTRL  |= PORT_INVEN_bm; } while(0)
#define TG_MCLR_ResetInverted() do { PORTD_PIN3CTRL  &= ~PORT_INVEN_bm; } while(0)
#define TG_MCLR_DisableInterruptOnChange() do { PORTD.PIN3CTRL = (PORTD.PIN3CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define TG_MCLR_EnableInterruptForBothEdges() do { PORTD.PIN3CTRL = (PORTD.PIN3CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define TG_MCLR_EnableInterruptForRisingEdge() do { PORTD.PIN3CTRL = (PORTD.PIN3CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define TG_MCLR_EnableInterruptForFallingEdge() do { PORTD.PIN3CTRL = (PORTD.PIN3CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define TG_MCLR_DisableDigitalInputBuffer() do { PORTD.PIN3CTRL = (PORTD.PIN3CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define TG_MCLR_EnableInterruptForLowLevelSensing() do { PORTD.PIN3CTRL = (PORTD.PIN3CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PD3_SetInterruptHandler TG_MCLR_SetInterruptHandler

//get/set VTG_EN_N aliases
#define VTG_EN_N_SetHigh() do { PORTF_OUTSET = 0x1; } while(0)
#define VTG_EN_N_SetLow() do { PORTF_OUTCLR = 0x1; } while(0)
#define VTG_EN_N_Toggle() do { PORTF_OUTTGL = 0x1; } while(0)
#define VTG_EN_N_GetValue() (VPORTF.IN & (0x1 << 0))
#define VTG_EN_N_SetDigitalInput() do { PORTF_DIRCLR = 0x1; } while(0)
#define VTG_EN_N_SetDigitalOutput() do { PORTF_DIRSET = 0x1; } while(0)
#define VTG_EN_N_SetPullUp() do { PORTF_PIN0CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define VTG_EN_N_ResetPullUp() do { PORTF_PIN0CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define VTG_EN_N_SetInverted() do { PORTF_PIN0CTRL  |= PORT_INVEN_bm; } while(0)
#define VTG_EN_N_ResetInverted() do { PORTF_PIN0CTRL  &= ~PORT_INVEN_bm; } while(0)
#define VTG_EN_N_DisableInterruptOnChange() do { PORTF.PIN0CTRL = (PORTF.PIN0CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define VTG_EN_N_EnableInterruptForBothEdges() do { PORTF.PIN0CTRL = (PORTF.PIN0CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define VTG_EN_N_EnableInterruptForRisingEdge() do { PORTF.PIN0CTRL = (PORTF.PIN0CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define VTG_EN_N_EnableInterruptForFallingEdge() do { PORTF.PIN0CTRL = (PORTF.PIN0CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define VTG_EN_N_DisableDigitalInputBuffer() do { PORTF.PIN0CTRL = (PORTF.PIN0CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define VTG_EN_N_EnableInterruptForLowLevelSensing() do { PORTF.PIN0CTRL = (PORTF.PIN0CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PF0_SetInterruptHandler VTG_EN_N_SetInterruptHandler

//get/set VPP_EN aliases
#define VPP_EN_SetHigh() do { PORTF_OUTSET = 0x2; } while(0)
#define VPP_EN_SetLow() do { PORTF_OUTCLR = 0x2; } while(0)
#define VPP_EN_Toggle() do { PORTF_OUTTGL = 0x2; } while(0)
#define VPP_EN_GetValue() (VPORTF.IN & (0x1 << 1))
#define VPP_EN_SetDigitalInput() do { PORTF_DIRCLR = 0x2; } while(0)
#define VPP_EN_SetDigitalOutput() do { PORTF_DIRSET = 0x2; } while(0)
#define VPP_EN_SetPullUp() do { PORTF_PIN1CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define VPP_EN_ResetPullUp() do { PORTF_PIN1CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define VPP_EN_SetInverted() do { PORTF_PIN1CTRL  |= PORT_INVEN_bm; } while(0)
#define VPP_EN_ResetInverted() do { PORTF_PIN1CTRL  &= ~PORT_INVEN_bm; } while(0)
#define VPP_EN_DisableInterruptOnChange() do { PORTF.PIN1CTRL = (PORTF.PIN1CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define VPP_EN_EnableInterruptForBothEdges() do { PORTF.PIN1CTRL = (PORTF.PIN1CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define VPP_EN_EnableInterruptForRisingEdge() do { PORTF.PIN1CTRL = (PORTF.PIN1CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define VPP_EN_EnableInterruptForFallingEdge() do { PORTF.PIN1CTRL = (PORTF.PIN1CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define VPP_EN_DisableDigitalInputBuffer() do { PORTF.PIN1CTRL = (PORTF.PIN1CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define VPP_EN_EnableInterruptForLowLevelSensing() do { PORTF.PIN1CTRL = (PORTF.PIN1CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)
#define PF1_SetInterruptHandler VPP_EN_SetInterruptHandler

/**
 * @ingroup  pinsdriver
 * @brief GPIO and peripheral I/O initialization
 * @param none
 * @return none
 */
void PIN_MANAGER_Initialize();

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for RXD1 pin. 
 *        This is a predefined interrupt handler to be used together with the RXD1_SetInterruptHandler() method.
 *        This handler is called every time the RXD1 ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void RXD1_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for RXD1 pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for RXD1 at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void RXD1_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for TXD1 pin. 
 *        This is a predefined interrupt handler to be used together with the TXD1_SetInterruptHandler() method.
 *        This handler is called every time the TXD1 ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void TXD1_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for TXD1 pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for TXD1 at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void TXD1_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for RXD0 pin. 
 *        This is a predefined interrupt handler to be used together with the RXD0_SetInterruptHandler() method.
 *        This handler is called every time the RXD0 ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void RXD0_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for RXD0 pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for RXD0 at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void RXD0_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for TXD0 pin. 
 *        This is a predefined interrupt handler to be used together with the TXD0_SetInterruptHandler() method.
 *        This handler is called every time the TXD0 ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void TXD0_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for TXD0 pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for TXD0 at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void TXD0_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for SCL pin. 
 *        This is a predefined interrupt handler to be used together with the SCL_SetInterruptHandler() method.
 *        This handler is called every time the SCL ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void SCL_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for SCL pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for SCL at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void SCL_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for SDA pin. 
 *        This is a predefined interrupt handler to be used together with the SDA_SetInterruptHandler() method.
 *        This handler is called every time the SDA ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void SDA_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for SDA pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for SDA at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void SDA_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for TG_PGC pin. 
 *        This is a predefined interrupt handler to be used together with the TG_PGC_SetInterruptHandler() method.
 *        This handler is called every time the TG_PGC ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void TG_PGC_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for TG_PGC pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for TG_PGC at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void TG_PGC_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for TG_PGD pin. 
 *        This is a predefined interrupt handler to be used together with the TG_PGD_SetInterruptHandler() method.
 *        This handler is called every time the TG_PGD ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void TG_PGD_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for TG_PGD pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for TG_PGD at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void TG_PGD_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for BT_FNC_N pin. 
 *        This is a predefined interrupt handler to be used together with the BT_FNC_N_SetInterruptHandler() method.
 *        This handler is called every time the BT_FNC_N ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void BT_FNC_N_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for BT_FNC_N pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for BT_FNC_N at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void BT_FNC_N_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for LED_TGRDY pin. 
 *        This is a predefined interrupt handler to be used together with the LED_TGRDY_SetInterruptHandler() method.
 *        This handler is called every time the LED_TGRDY ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void LED_TGRDY_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for LED_TGRDY pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for LED_TGRDY at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void LED_TGRDY_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for LED_BUSY pin. 
 *        This is a predefined interrupt handler to be used together with the LED_BUSY_SetInterruptHandler() method.
 *        This handler is called every time the LED_BUSY ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void LED_BUSY_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for LED_BUSY pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for LED_BUSY at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void LED_BUSY_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for TG_MCLR pin. 
 *        This is a predefined interrupt handler to be used together with the TG_MCLR_SetInterruptHandler() method.
 *        This handler is called every time the TG_MCLR ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void TG_MCLR_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for TG_MCLR pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for TG_MCLR at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void TG_MCLR_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for VTG_EN_N pin. 
 *        This is a predefined interrupt handler to be used together with the VTG_EN_N_SetInterruptHandler() method.
 *        This handler is called every time the VTG_EN_N ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void VTG_EN_N_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for VTG_EN_N pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for VTG_EN_N at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void VTG_EN_N_SetInterruptHandler(void (* interruptHandler)(void)) ; 

/**
 * @ingroup  pinsdriver
 * @brief Default Interrupt Handler for VPP_EN pin. 
 *        This is a predefined interrupt handler to be used together with the VPP_EN_SetInterruptHandler() method.
 *        This handler is called every time the VPP_EN ISR is executed. 
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param none
 * @return none
 */
void VPP_EN_DefaultInterruptHandler(void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt Handler Setter for VPP_EN pin input-sense-config functionality.
 *        Allows selecting an interrupt handler for VPP_EN at application runtime
 * @pre PIN_MANAGER_Initialize() has been called at least once
 * @param InterruptHandler function pointer.
 * @return none
 */
void VPP_EN_SetInterruptHandler(void (* interruptHandler)(void)) ; 
#endif /* PINS_H_INCLUDED */
