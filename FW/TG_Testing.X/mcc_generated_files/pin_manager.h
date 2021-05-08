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
        Device            :  PIC16F18876
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

// get/set BLED aliases
#define BLED_TRIS                 TRISAbits.TRISA1
#define BLED_LAT                  LATAbits.LATA1
#define BLED_PORT                 PORTAbits.RA1
#define BLED_WPU                  WPUAbits.WPUA1
#define BLED_OD                   ODCONAbits.ODCA1
#define BLED_ANS                  ANSELAbits.ANSA1
#define BLED_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define BLED_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define BLED_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define BLED_GetValue()           PORTAbits.RA1
#define BLED_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define BLED_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define BLED_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define BLED_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define BLED_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define BLED_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define BLED_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define BLED_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set RTC_INT aliases
#define RTC_INT_TRIS                 TRISAbits.TRISA3
#define RTC_INT_LAT                  LATAbits.LATA3
#define RTC_INT_PORT                 PORTAbits.RA3
#define RTC_INT_WPU                  WPUAbits.WPUA3
#define RTC_INT_OD                   ODCONAbits.ODCA3
#define RTC_INT_ANS                  ANSELAbits.ANSA3
#define RTC_INT_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define RTC_INT_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define RTC_INT_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define RTC_INT_GetValue()           PORTAbits.RA3
#define RTC_INT_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define RTC_INT_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define RTC_INT_SetPullup()          do { WPUAbits.WPUA3 = 1; } while(0)
#define RTC_INT_ResetPullup()        do { WPUAbits.WPUA3 = 0; } while(0)
#define RTC_INT_SetPushPull()        do { ODCONAbits.ODCA3 = 0; } while(0)
#define RTC_INT_SetOpenDrain()       do { ODCONAbits.ODCA3 = 1; } while(0)
#define RTC_INT_SetAnalogMode()      do { ANSELAbits.ANSA3 = 1; } while(0)
#define RTC_INT_SetDigitalMode()     do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set FLASH_nCS aliases
#define FLASH_nCS_TRIS                 TRISBbits.TRISB0
#define FLASH_nCS_LAT                  LATBbits.LATB0
#define FLASH_nCS_PORT                 PORTBbits.RB0
#define FLASH_nCS_WPU                  WPUBbits.WPUB0
#define FLASH_nCS_OD                   ODCONBbits.ODCB0
#define FLASH_nCS_ANS                  ANSELBbits.ANSB0
#define FLASH_nCS_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define FLASH_nCS_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define FLASH_nCS_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define FLASH_nCS_GetValue()           PORTBbits.RB0
#define FLASH_nCS_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define FLASH_nCS_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define FLASH_nCS_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define FLASH_nCS_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define FLASH_nCS_SetPushPull()        do { ODCONBbits.ODCB0 = 0; } while(0)
#define FLASH_nCS_SetOpenDrain()       do { ODCONBbits.ODCB0 = 1; } while(0)
#define FLASH_nCS_SetAnalogMode()      do { ANSELBbits.ANSB0 = 1; } while(0)
#define FLASH_nCS_SetDigitalMode()     do { ANSELBbits.ANSB0 = 0; } while(0)

// get/set RB3 procedures
#define RB3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define RB3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define RB3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define RB3_GetValue()              PORTBbits.RB3
#define RB3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define RB3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define RB3_SetPullup()             do { WPUBbits.WPUB3 = 1; } while(0)
#define RB3_ResetPullup()           do { WPUBbits.WPUB3 = 0; } while(0)
#define RB3_SetAnalogMode()         do { ANSELBbits.ANSB3 = 1; } while(0)
#define RB3_SetDigitalMode()        do { ANSELBbits.ANSB3 = 0; } while(0)

// get/set RB4 procedures
#define RB4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define RB4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define RB4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define RB4_GetValue()              PORTBbits.RB4
#define RB4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define RB4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define RB4_SetPullup()             do { WPUBbits.WPUB4 = 1; } while(0)
#define RB4_ResetPullup()           do { WPUBbits.WPUB4 = 0; } while(0)
#define RB4_SetAnalogMode()         do { ANSELBbits.ANSB4 = 1; } while(0)
#define RB4_SetDigitalMode()        do { ANSELBbits.ANSB4 = 0; } while(0)

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

// get/set RB7 procedures
#define RB7_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define RB7_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define RB7_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define RB7_GetValue()              PORTBbits.RB7
#define RB7_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define RB7_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define RB7_SetPullup()             do { WPUBbits.WPUB7 = 1; } while(0)
#define RB7_ResetPullup()           do { WPUBbits.WPUB7 = 0; } while(0)
#define RB7_SetAnalogMode()         do { ANSELBbits.ANSB7 = 1; } while(0)
#define RB7_SetDigitalMode()        do { ANSELBbits.ANSB7 = 0; } while(0)

// get/set VDDSS_nEN aliases
#define VDDSS_nEN_TRIS                 TRISDbits.TRISD0
#define VDDSS_nEN_LAT                  LATDbits.LATD0
#define VDDSS_nEN_PORT                 PORTDbits.RD0
#define VDDSS_nEN_WPU                  WPUDbits.WPUD0
#define VDDSS_nEN_OD                   ODCONDbits.ODCD0
#define VDDSS_nEN_ANS                  ANSELDbits.ANSD0
#define VDDSS_nEN_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define VDDSS_nEN_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define VDDSS_nEN_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define VDDSS_nEN_GetValue()           PORTDbits.RD0
#define VDDSS_nEN_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define VDDSS_nEN_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define VDDSS_nEN_SetPullup()          do { WPUDbits.WPUD0 = 1; } while(0)
#define VDDSS_nEN_ResetPullup()        do { WPUDbits.WPUD0 = 0; } while(0)
#define VDDSS_nEN_SetPushPull()        do { ODCONDbits.ODCD0 = 0; } while(0)
#define VDDSS_nEN_SetOpenDrain()       do { ODCONDbits.ODCD0 = 1; } while(0)
#define VDDSS_nEN_SetAnalogMode()      do { ANSELDbits.ANSD0 = 1; } while(0)
#define VDDSS_nEN_SetDigitalMode()     do { ANSELDbits.ANSD0 = 0; } while(0)

// get/set TEMP aliases
#define TEMP_TRIS                 TRISDbits.TRISD1
#define TEMP_LAT                  LATDbits.LATD1
#define TEMP_PORT                 PORTDbits.RD1
#define TEMP_WPU                  WPUDbits.WPUD1
#define TEMP_OD                   ODCONDbits.ODCD1
#define TEMP_ANS                  ANSELDbits.ANSD1
#define TEMP_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define TEMP_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define TEMP_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define TEMP_GetValue()           PORTDbits.RD1
#define TEMP_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define TEMP_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define TEMP_SetPullup()          do { WPUDbits.WPUD1 = 1; } while(0)
#define TEMP_ResetPullup()        do { WPUDbits.WPUD1 = 0; } while(0)
#define TEMP_SetPushPull()        do { ODCONDbits.ODCD1 = 0; } while(0)
#define TEMP_SetOpenDrain()       do { ODCONDbits.ODCD1 = 1; } while(0)
#define TEMP_SetAnalogMode()      do { ANSELDbits.ANSD1 = 1; } while(0)
#define TEMP_SetDigitalMode()     do { ANSELDbits.ANSD1 = 0; } while(0)

// get/set UBT aliases
#define UBT_TRIS                 TRISDbits.TRISD3
#define UBT_LAT                  LATDbits.LATD3
#define UBT_PORT                 PORTDbits.RD3
#define UBT_WPU                  WPUDbits.WPUD3
#define UBT_OD                   ODCONDbits.ODCD3
#define UBT_ANS                  ANSELDbits.ANSD3
#define UBT_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define UBT_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define UBT_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define UBT_GetValue()           PORTDbits.RD3
#define UBT_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define UBT_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define UBT_SetPullup()          do { WPUDbits.WPUD3 = 1; } while(0)
#define UBT_ResetPullup()        do { WPUDbits.WPUD3 = 0; } while(0)
#define UBT_SetPushPull()        do { ODCONDbits.ODCD3 = 0; } while(0)
#define UBT_SetOpenDrain()       do { ODCONDbits.ODCD3 = 1; } while(0)
#define UBT_SetAnalogMode()      do { ANSELDbits.ANSD3 = 1; } while(0)
#define UBT_SetDigitalMode()     do { ANSELDbits.ANSD3 = 0; } while(0)

// get/set RD6 procedures
#define RD6_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define RD6_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define RD6_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define RD6_GetValue()              PORTDbits.RD6
#define RD6_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define RD6_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define RD6_SetPullup()             do { WPUDbits.WPUD6 = 1; } while(0)
#define RD6_ResetPullup()           do { WPUDbits.WPUD6 = 0; } while(0)
#define RD6_SetAnalogMode()         do { ANSELDbits.ANSD6 = 1; } while(0)
#define RD6_SetDigitalMode()        do { ANSELDbits.ANSD6 = 0; } while(0)

// get/set RD7 procedures
#define RD7_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define RD7_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define RD7_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define RD7_GetValue()              PORTDbits.RD7
#define RD7_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define RD7_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define RD7_SetPullup()             do { WPUDbits.WPUD7 = 1; } while(0)
#define RD7_ResetPullup()           do { WPUDbits.WPUD7 = 0; } while(0)
#define RD7_SetAnalogMode()         do { ANSELDbits.ANSD7 = 1; } while(0)
#define RD7_SetDigitalMode()        do { ANSELDbits.ANSD7 = 0; } while(0)

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


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCAF3 pin functionality
 * @Example
    IOCAF3_ISR();
 */
void IOCAF3_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCAF3 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCAF3 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCAF3_SetInterruptHandler(MyInterruptHandler);

*/
void IOCAF3_SetInterruptHandler(void (* InterruptHandler)(void));

/**
  @Summary
    Dynamic Interrupt Handler for IOCAF3 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCAF3_SetInterruptHandler() method.
    This handler is called every time the IOCAF3 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCAF3_SetInterruptHandler(IOCAF3_InterruptHandler);

*/
extern void (*IOCAF3_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCAF3 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCAF3_SetInterruptHandler() method.
    This handler is called every time the IOCAF3 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCAF3_SetInterruptHandler(IOCAF3_DefaultInterruptHandler);

*/
void IOCAF3_DefaultInterruptHandler(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/