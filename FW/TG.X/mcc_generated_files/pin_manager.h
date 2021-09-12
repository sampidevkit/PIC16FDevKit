/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F1619
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set RA0 procedures
#define RA0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define RA0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define RA0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define RA0_GetValue()              PORTAbits.RA0
#define RA0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define RA0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define RA0_SetPullup()             do { WPUAbits.WPUA0 = 1; } while(0)
#define RA0_ResetPullup()           do { WPUAbits.WPUA0 = 0; } while(0)
#define RA0_SetAnalogMode()         do { ANSELAbits.ANSA0 = 1; } while(0)
#define RA0_SetDigitalMode()        do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set RA1 procedures
#define RA1_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define RA1_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define RA1_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define RA1_GetValue()              PORTAbits.RA1
#define RA1_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define RA1_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define RA1_SetPullup()             do { WPUAbits.WPUA1 = 1; } while(0)
#define RA1_ResetPullup()           do { WPUAbits.WPUA1 = 0; } while(0)
#define RA1_SetAnalogMode()         do { ANSELAbits.ANSA1 = 1; } while(0)
#define RA1_SetDigitalMode()        do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set ULED aliases
#define ULED_TRIS                 TRISAbits.TRISA2
#define ULED_LAT                  LATAbits.LATA2
#define ULED_PORT                 PORTAbits.RA2
#define ULED_WPU                  WPUAbits.WPUA2
#define ULED_OD                   ODCONAbits.ODA2
#define ULED_ANS                  ANSELAbits.ANSA2
#define ULED_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define ULED_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define ULED_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define ULED_GetValue()           PORTAbits.RA2
#define ULED_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define ULED_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define ULED_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define ULED_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define ULED_SetPushPull()        do { ODCONAbits.ODA2 = 0; } while(0)
#define ULED_SetOpenDrain()       do { ODCONAbits.ODA2 = 1; } while(0)
#define ULED_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define ULED_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set RA4 procedures
#define RA4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RA4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RA4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RA4_GetValue()              PORTAbits.RA4
#define RA4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RA4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define RA4_SetPullup()             do { WPUAbits.WPUA4 = 1; } while(0)
#define RA4_ResetPullup()           do { WPUAbits.WPUA4 = 0; } while(0)
#define RA4_SetAnalogMode()         do { ANSELAbits.ANSA4 = 1; } while(0)
#define RA4_SetDigitalMode()        do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set RA5 procedures
#define RA5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RA5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RA5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RA5_GetValue()              PORTAbits.RA5
#define RA5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RA5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RA5_SetPullup()             do { WPUAbits.WPUA5 = 1; } while(0)
#define RA5_ResetPullup()           do { WPUAbits.WPUA5 = 0; } while(0)

// get/set SCK aliases
#define SCK_TRIS                 TRISBbits.TRISB4
#define SCK_LAT                  LATBbits.LATB4
#define SCK_PORT                 PORTBbits.RB4
#define SCK_WPU                  WPUBbits.WPUB4
#define SCK_OD                   ODCONBbits.ODB4
#define SCK_ANS                  ANSELBbits.ANSB4
#define SCK_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define SCK_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define SCK_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define SCK_GetValue()           PORTBbits.RB4
#define SCK_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define SCK_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define SCK_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define SCK_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define SCK_SetPushPull()        do { ODCONBbits.ODB4 = 0; } while(0)
#define SCK_SetOpenDrain()       do { ODCONBbits.ODB4 = 1; } while(0)
#define SCK_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define SCK_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set RB5 procedures
#define RB5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define RB5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define RB5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define RB5_GetValue()              PORTBbits.RB5
#define RB5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define RB5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define RB5_SetPullup()             do { WPUBbits.WPUB5 = 1; } while(0)
#define RB5_ResetPullup()           do { WPUBbits.WPUB5 = 0; } while(0)
#define RB5_SetAnalogMode()         do { ANSELBbits.ANSB5 = 1; } while(0)
#define RB5_SetDigitalMode()        do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set RB6 procedures
#define RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define RB6_GetValue()              PORTBbits.RB6
#define RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define RB6_SetPullup()             do { WPUBbits.WPUB6 = 1; } while(0)
#define RB6_ResetPullup()           do { WPUBbits.WPUB6 = 0; } while(0)
#define RB6_SetAnalogMode()         do { ANSELBbits.ANSB6 = 1; } while(0)
#define RB6_SetDigitalMode()        do { ANSELBbits.ANSB6 = 0; } while(0)

// get/set GPIO1 aliases
#define GPIO1_TRIS                 TRISBbits.TRISB7
#define GPIO1_LAT                  LATBbits.LATB7
#define GPIO1_PORT                 PORTBbits.RB7
#define GPIO1_WPU                  WPUBbits.WPUB7
#define GPIO1_OD                   ODCONBbits.ODB7
#define GPIO1_ANS                  ANSELBbits.ANSB7
#define GPIO1_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define GPIO1_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define GPIO1_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define GPIO1_GetValue()           PORTBbits.RB7
#define GPIO1_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define GPIO1_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define GPIO1_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define GPIO1_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define GPIO1_SetPushPull()        do { ODCONBbits.ODB7 = 0; } while(0)
#define GPIO1_SetOpenDrain()       do { ODCONBbits.ODB7 = 1; } while(0)
#define GPIO1_SetAnalogMode()      do { ANSELBbits.ANSB7 = 1; } while(0)
#define GPIO1_SetDigitalMode()     do { ANSELBbits.ANSB7 = 0; } while(0)

// get/set NCS aliases
#define NCS_TRIS                 TRISCbits.TRISC0
#define NCS_LAT                  LATCbits.LATC0
#define NCS_PORT                 PORTCbits.RC0
#define NCS_WPU                  WPUCbits.WPUC0
#define NCS_OD                   ODCONCbits.ODC0
#define NCS_ANS                  ANSELCbits.ANSC0
#define NCS_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define NCS_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define NCS_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define NCS_GetValue()           PORTCbits.RC0
#define NCS_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define NCS_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define NCS_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define NCS_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define NCS_SetPushPull()        do { ODCONCbits.ODC0 = 0; } while(0)
#define NCS_SetOpenDrain()       do { ODCONCbits.ODC0 = 1; } while(0)
#define NCS_SetAnalogMode()      do { ANSELCbits.ANSC0 = 1; } while(0)
#define NCS_SetDigitalMode()     do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set SDO aliases
#define SDO_TRIS                 TRISCbits.TRISC1
#define SDO_LAT                  LATCbits.LATC1
#define SDO_PORT                 PORTCbits.RC1
#define SDO_WPU                  WPUCbits.WPUC1
#define SDO_OD                   ODCONCbits.ODC1
#define SDO_ANS                  ANSELCbits.ANSC1
#define SDO_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define SDO_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define SDO_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define SDO_GetValue()           PORTCbits.RC1
#define SDO_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define SDO_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define SDO_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define SDO_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define SDO_SetPushPull()        do { ODCONCbits.ODC1 = 0; } while(0)
#define SDO_SetOpenDrain()       do { ODCONCbits.ODC1 = 1; } while(0)
#define SDO_SetAnalogMode()      do { ANSELCbits.ANSC1 = 1; } while(0)
#define SDO_SetDigitalMode()     do { ANSELCbits.ANSC1 = 0; } while(0)

// get/set SDI aliases
#define SDI_TRIS                 TRISCbits.TRISC2
#define SDI_LAT                  LATCbits.LATC2
#define SDI_PORT                 PORTCbits.RC2
#define SDI_WPU                  WPUCbits.WPUC2
#define SDI_OD                   ODCONCbits.ODC2
#define SDI_ANS                  ANSELCbits.ANSC2
#define SDI_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define SDI_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define SDI_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define SDI_GetValue()           PORTCbits.RC2
#define SDI_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define SDI_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define SDI_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define SDI_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define SDI_SetPushPull()        do { ODCONCbits.ODC2 = 0; } while(0)
#define SDI_SetOpenDrain()       do { ODCONCbits.ODC2 = 1; } while(0)
#define SDI_SetAnalogMode()      do { ANSELCbits.ANSC2 = 1; } while(0)
#define SDI_SetDigitalMode()     do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set SAN0 aliases
#define SAN0_TRIS                 TRISCbits.TRISC3
#define SAN0_LAT                  LATCbits.LATC3
#define SAN0_PORT                 PORTCbits.RC3
#define SAN0_WPU                  WPUCbits.WPUC3
#define SAN0_OD                   ODCONCbits.ODC3
#define SAN0_ANS                  ANSELCbits.ANSC3
#define SAN0_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define SAN0_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define SAN0_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define SAN0_GetValue()           PORTCbits.RC3
#define SAN0_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define SAN0_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define SAN0_SetPullup()          do { WPUCbits.WPUC3 = 1; } while(0)
#define SAN0_ResetPullup()        do { WPUCbits.WPUC3 = 0; } while(0)
#define SAN0_SetPushPull()        do { ODCONCbits.ODC3 = 0; } while(0)
#define SAN0_SetOpenDrain()       do { ODCONCbits.ODC3 = 1; } while(0)
#define SAN0_SetAnalogMode()      do { ANSELCbits.ANSC3 = 1; } while(0)
#define SAN0_SetDigitalMode()     do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set GPIO3 aliases
#define GPIO3_TRIS                 TRISCbits.TRISC4
#define GPIO3_LAT                  LATCbits.LATC4
#define GPIO3_PORT                 PORTCbits.RC4
#define GPIO3_WPU                  WPUCbits.WPUC4
#define GPIO3_OD                   ODCONCbits.ODC4
#define GPIO3_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define GPIO3_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define GPIO3_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define GPIO3_GetValue()           PORTCbits.RC4
#define GPIO3_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define GPIO3_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define GPIO3_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define GPIO3_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define GPIO3_SetPushPull()        do { ODCONCbits.ODC4 = 0; } while(0)
#define GPIO3_SetOpenDrain()       do { ODCONCbits.ODC4 = 1; } while(0)

// get/set GPIO2 aliases
#define GPIO2_TRIS                 TRISCbits.TRISC5
#define GPIO2_LAT                  LATCbits.LATC5
#define GPIO2_PORT                 PORTCbits.RC5
#define GPIO2_WPU                  WPUCbits.WPUC5
#define GPIO2_OD                   ODCONCbits.ODC5
#define GPIO2_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define GPIO2_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define GPIO2_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define GPIO2_GetValue()           PORTCbits.RC5
#define GPIO2_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define GPIO2_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define GPIO2_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define GPIO2_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define GPIO2_SetPushPull()        do { ODCONCbits.ODC5 = 0; } while(0)
#define GPIO2_SetOpenDrain()       do { ODCONCbits.ODC5 = 1; } while(0)

// get/set SAN1 aliases
#define SAN1_TRIS                 TRISCbits.TRISC6
#define SAN1_LAT                  LATCbits.LATC6
#define SAN1_PORT                 PORTCbits.RC6
#define SAN1_WPU                  WPUCbits.WPUC6
#define SAN1_OD                   ODCONCbits.ODC6
#define SAN1_ANS                  ANSELCbits.ANSC6
#define SAN1_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define SAN1_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define SAN1_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define SAN1_GetValue()           PORTCbits.RC6
#define SAN1_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define SAN1_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define SAN1_SetPullup()          do { WPUCbits.WPUC6 = 1; } while(0)
#define SAN1_ResetPullup()        do { WPUCbits.WPUC6 = 0; } while(0)
#define SAN1_SetPushPull()        do { ODCONCbits.ODC6 = 0; } while(0)
#define SAN1_SetOpenDrain()       do { ODCONCbits.ODC6 = 1; } while(0)
#define SAN1_SetAnalogMode()      do { ANSELCbits.ANSC6 = 1; } while(0)
#define SAN1_SetDigitalMode()     do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set GPIO0 aliases
#define GPIO0_TRIS                 TRISCbits.TRISC7
#define GPIO0_LAT                  LATCbits.LATC7
#define GPIO0_PORT                 PORTCbits.RC7
#define GPIO0_WPU                  WPUCbits.WPUC7
#define GPIO0_OD                   ODCONCbits.ODC7
#define GPIO0_ANS                  ANSELCbits.ANSC7
#define GPIO0_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define GPIO0_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define GPIO0_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define GPIO0_GetValue()           PORTCbits.RC7
#define GPIO0_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define GPIO0_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define GPIO0_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define GPIO0_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define GPIO0_SetPushPull()        do { ODCONCbits.ODC7 = 0; } while(0)
#define GPIO0_SetOpenDrain()       do { ODCONCbits.ODC7 = 1; } while(0)
#define GPIO0_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define GPIO0_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/