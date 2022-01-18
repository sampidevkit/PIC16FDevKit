 /**
   PWM7 Generated Driver API Header File
 
   @Company
     Microchip Technology Inc. 

   @File Name
    pwm7.h

   @Summary
     This is the generated header file for the PWM7 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs
 
   @Description
     This header file provides APIs for driver for PWM7.
     Generation Information :
         Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
         Device            :  PIC16F18877
         Driver Version    :  2.01
     The generated drivers are tested against the following:
         Compiler          :  XC8 2.31 and above or later
         MPLAB             :  MPLAB X 5.45
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

#ifndef PWM7_H
 #define PWM7_H
 
 /**
   Section: Included Files
 */

 #include <xc.h>
 #include <stdint.h>

 #ifdef __cplusplus  // Provide C++ Compatibility

     extern "C" {

 #endif

 /**
   Section: Macro Declarations
 */

 #define PWM7_INITIALIZE_DUTY_VALUE    0

 /**
   Section: PWM Module APIs
 */

 /**
   @Summary
     Initializes the PWM7

   @Description
     This routine initializes the EPWM7_Initialize
     This routine must be called before any other PWM7 routine is called.
     This routine should only be called once during system initialization.

   @Preconditions
     None

   @Param
     None

   @Returns
     None

   @Comment
     

  @Example
     <code>
     uint16_t dutycycle;

     PWM7_Initialize();
     PWM7_LoadDutyValue(dutycycle);
     </code>
  */
 void PWM7_Initialize(void);

 /**
   @Summary
     Loads 16-bit duty cycle.

   @Description
     This routine loads the 16 bit duty cycle value.

   @Preconditions
     PWM7_Initialize() function should have been called 
         before calling this function.

   @Param
     Pass 16bit duty cycle value.

   @Returns
     None

   @Example
     <code>
     uint16_t dutycycle;

     PWM7_Initialize();
     PWM7_LoadDutyValue(dutycycle);
     </code>
 */
 void PWM7_LoadDutyValue(uint16_t dutyValue);

 
 #ifdef __cplusplus  // Provide C++ Compatibility

     }

 #endif

 #endif	//PWM7_H
 /**
  End of File
 */