/**
  PIN MANAGER Generated Driver File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description:
    This source file provides implementations for PIN MANAGER.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0064GPM028
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
        MPLAB 	          :  MPLAB X v5.45
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

#ifndef _PIN_MANAGER_H
#define _PIN_MANAGER_H
/**
    Section: Includes
*/
#include <xc.h>
#include <stdbool.h>
/**
    Section: Device Pin Macros
*/
/**
  @Summary
    Sets the GPIO pin, RB13, high using LATB13.

  @Description
    Sets the GPIO pin, RB13, high using LATB13.

  @Preconditions
    The RB13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB13 high (1)
    RLED_EXT_SetHigh();
    </code>

*/
#define RLED_EXT_SetHigh()          ( LATBSET = (1 << 13) )
/**
  @Summary
    Sets the GPIO pin, RB13, low using LATB13.

  @Description
    Sets the GPIO pin, RB13, low using LATB13.

  @Preconditions
    The RB13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB13 low (0)
    RLED_EXT_SetLow();
    </code>

*/
#define RLED_EXT_SetLow()           ( LATBCLR = (1 << 13) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB13, low or high using LATB13.

  @Preconditions
    The RB13 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB13 to low.
    RLED_EXT_SetValue(false);
    </code>

*/
inline static void RLED_EXT_SetValue(bool value)
{
  if(value)
  {
    RLED_EXT_SetHigh();
  }
  else
  {
    RLED_EXT_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB13, using LATB13.

  @Description
    Toggles the GPIO pin, RB13, using LATB13.

  @Preconditions
    The RB13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB13
    RLED_EXT_Toggle();
    </code>

*/
#define RLED_EXT_Toggle()           ( LATBINV = (1 << 13) )
/**
  @Summary
    Reads the value of the GPIO pin, RB13.

  @Description
    Reads the value of the GPIO pin, RB13.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB13
    postValue = RLED_EXT_GetValue();
    </code>

*/
#define RLED_EXT_GetValue()         PORTBbits.RB13
/**
  @Summary
    Configures the GPIO pin, RB13, as an input.

  @Description
    Configures the GPIO pin, RB13, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB13 as an input
    RLED_EXT_SetDigitalInput();
    </code>

*/
#define RLED_EXT_SetDigitalInput()   ( TRISBSET = (1 << 13) )
/**
  @Summary
    Configures the GPIO pin, RB13, as an output.

  @Description
    Configures the GPIO pin, RB13, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB13 as an output
    RLED_EXT_SetDigitalOutput();
    </code>

*/
#define RLED_EXT_SetDigitalOutput()   ( TRISBCLR = (1 << 13) )
/**
  @Summary
    Sets the GPIO pin, RB14, high using LATB14.

  @Description
    Sets the GPIO pin, RB14, high using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB14 high (1)
    GLED_EXT_SetHigh();
    </code>

*/
#define GLED_EXT_SetHigh()          ( LATBSET = (1 << 14) )
/**
  @Summary
    Sets the GPIO pin, RB14, low using LATB14.

  @Description
    Sets the GPIO pin, RB14, low using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB14 low (0)
    GLED_EXT_SetLow();
    </code>

*/
#define GLED_EXT_SetLow()           ( LATBCLR = (1 << 14) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB14, low or high using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB14 to low.
    GLED_EXT_SetValue(false);
    </code>

*/
inline static void GLED_EXT_SetValue(bool value)
{
  if(value)
  {
    GLED_EXT_SetHigh();
  }
  else
  {
    GLED_EXT_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB14, using LATB14.

  @Description
    Toggles the GPIO pin, RB14, using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB14
    GLED_EXT_Toggle();
    </code>

*/
#define GLED_EXT_Toggle()           ( LATBINV = (1 << 14) )
/**
  @Summary
    Reads the value of the GPIO pin, RB14.

  @Description
    Reads the value of the GPIO pin, RB14.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB14
    postValue = GLED_EXT_GetValue();
    </code>

*/
#define GLED_EXT_GetValue()         PORTBbits.RB14
/**
  @Summary
    Configures the GPIO pin, RB14, as an input.

  @Description
    Configures the GPIO pin, RB14, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB14 as an input
    GLED_EXT_SetDigitalInput();
    </code>

*/
#define GLED_EXT_SetDigitalInput()   ( TRISBSET = (1 << 14) )
/**
  @Summary
    Configures the GPIO pin, RB14, as an output.

  @Description
    Configures the GPIO pin, RB14, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB14 as an output
    GLED_EXT_SetDigitalOutput();
    </code>

*/
#define GLED_EXT_SetDigitalOutput()   ( TRISBCLR = (1 << 14) )
/**
  @Summary
    Sets the GPIO pin, RB2, high using LATB2.

  @Description
    Sets the GPIO pin, RB2, high using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB2 high (1)
    nVICSP_EN_SetHigh();
    </code>

*/
#define nVICSP_EN_SetHigh()          ( LATBSET = (1 << 2) )
/**
  @Summary
    Sets the GPIO pin, RB2, low using LATB2.

  @Description
    Sets the GPIO pin, RB2, low using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB2 low (0)
    nVICSP_EN_SetLow();
    </code>

*/
#define nVICSP_EN_SetLow()           ( LATBCLR = (1 << 2) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB2, low or high using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB2 to low.
    nVICSP_EN_SetValue(false);
    </code>

*/
inline static void nVICSP_EN_SetValue(bool value)
{
  if(value)
  {
    nVICSP_EN_SetHigh();
  }
  else
  {
    nVICSP_EN_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB2, using LATB2.

  @Description
    Toggles the GPIO pin, RB2, using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB2
    nVICSP_EN_Toggle();
    </code>

*/
#define nVICSP_EN_Toggle()           ( LATBINV = (1 << 2) )
/**
  @Summary
    Reads the value of the GPIO pin, RB2.

  @Description
    Reads the value of the GPIO pin, RB2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB2
    postValue = nVICSP_EN_GetValue();
    </code>

*/
#define nVICSP_EN_GetValue()         PORTBbits.RB2
/**
  @Summary
    Configures the GPIO pin, RB2, as an input.

  @Description
    Configures the GPIO pin, RB2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB2 as an input
    nVICSP_EN_SetDigitalInput();
    </code>

*/
#define nVICSP_EN_SetDigitalInput()   ( TRISBSET = (1 << 2) )
/**
  @Summary
    Configures the GPIO pin, RB2, as an output.

  @Description
    Configures the GPIO pin, RB2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB2 as an output
    nVICSP_EN_SetDigitalOutput();
    </code>

*/
#define nVICSP_EN_SetDigitalOutput()   ( TRISBCLR = (1 << 2) )
/**
  @Summary
    Sets the GPIO pin, RB3, high using LATB3.

  @Description
    Sets the GPIO pin, RB3, high using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 high (1)
    nPG_INT_SetHigh();
    </code>

*/
#define nPG_INT_SetHigh()          ( LATBSET = (1 << 3) )
/**
  @Summary
    Sets the GPIO pin, RB3, low using LATB3.

  @Description
    Sets the GPIO pin, RB3, low using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 low (0)
    nPG_INT_SetLow();
    </code>

*/
#define nPG_INT_SetLow()           ( LATBCLR = (1 << 3) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB3, low or high using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB3 to low.
    nPG_INT_SetValue(false);
    </code>

*/
inline static void nPG_INT_SetValue(bool value)
{
  if(value)
  {
    nPG_INT_SetHigh();
  }
  else
  {
    nPG_INT_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB3, using LATB3.

  @Description
    Toggles the GPIO pin, RB3, using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB3
    nPG_INT_Toggle();
    </code>

*/
#define nPG_INT_Toggle()           ( LATBINV = (1 << 3) )
/**
  @Summary
    Reads the value of the GPIO pin, RB3.

  @Description
    Reads the value of the GPIO pin, RB3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB3
    postValue = nPG_INT_GetValue();
    </code>

*/
#define nPG_INT_GetValue()         PORTBbits.RB3
/**
  @Summary
    Configures the GPIO pin, RB3, as an input.

  @Description
    Configures the GPIO pin, RB3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an input
    nPG_INT_SetDigitalInput();
    </code>

*/
#define nPG_INT_SetDigitalInput()   ( TRISBSET = (1 << 3) )
/**
  @Summary
    Configures the GPIO pin, RB3, as an output.

  @Description
    Configures the GPIO pin, RB3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an output
    nPG_INT_SetDigitalOutput();
    </code>

*/
#define nPG_INT_SetDigitalOutput()   ( TRISBCLR = (1 << 3) )
/**
  @Summary
    Sets the GPIO pin, RB4, high using LATB4.

  @Description
    Sets the GPIO pin, RB4, high using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 high (1)
    ICSP_MCLR_SetHigh();
    </code>

*/
#define ICSP_MCLR_SetHigh()          ( LATBSET = (1 << 4) )
/**
  @Summary
    Sets the GPIO pin, RB4, low using LATB4.

  @Description
    Sets the GPIO pin, RB4, low using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 low (0)
    ICSP_MCLR_SetLow();
    </code>

*/
#define ICSP_MCLR_SetLow()           ( LATBCLR = (1 << 4) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB4, low or high using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB4 to low.
    ICSP_MCLR_SetValue(false);
    </code>

*/
inline static void ICSP_MCLR_SetValue(bool value)
{
  if(value)
  {
    ICSP_MCLR_SetHigh();
  }
  else
  {
    ICSP_MCLR_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB4, using LATB4.

  @Description
    Toggles the GPIO pin, RB4, using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB4
    ICSP_MCLR_Toggle();
    </code>

*/
#define ICSP_MCLR_Toggle()           ( LATBINV = (1 << 4) )
/**
  @Summary
    Reads the value of the GPIO pin, RB4.

  @Description
    Reads the value of the GPIO pin, RB4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB4
    postValue = ICSP_MCLR_GetValue();
    </code>

*/
#define ICSP_MCLR_GetValue()         PORTBbits.RB4
/**
  @Summary
    Configures the GPIO pin, RB4, as an input.

  @Description
    Configures the GPIO pin, RB4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an input
    ICSP_MCLR_SetDigitalInput();
    </code>

*/
#define ICSP_MCLR_SetDigitalInput()   ( TRISBSET = (1 << 4) )
/**
  @Summary
    Configures the GPIO pin, RB4, as an output.

  @Description
    Configures the GPIO pin, RB4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an output
    ICSP_MCLR_SetDigitalOutput();
    </code>

*/
#define ICSP_MCLR_SetDigitalOutput()   ( TRISBCLR = (1 << 4) )
/**
  @Summary
    Sets the GPIO pin, RB5, high using LATB5.

  @Description
    Sets the GPIO pin, RB5, high using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 high (1)
    PG_STT_SetHigh();
    </code>

*/
#define PG_STT_SetHigh()          ( LATBSET = (1 << 5) )
/**
  @Summary
    Sets the GPIO pin, RB5, low using LATB5.

  @Description
    Sets the GPIO pin, RB5, low using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 low (0)
    PG_STT_SetLow();
    </code>

*/
#define PG_STT_SetLow()           ( LATBCLR = (1 << 5) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB5, low or high using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB5 to low.
    PG_STT_SetValue(false);
    </code>

*/
inline static void PG_STT_SetValue(bool value)
{
  if(value)
  {
    PG_STT_SetHigh();
  }
  else
  {
    PG_STT_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB5, using LATB5.

  @Description
    Toggles the GPIO pin, RB5, using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB5
    PG_STT_Toggle();
    </code>

*/
#define PG_STT_Toggle()           ( LATBINV = (1 << 5) )
/**
  @Summary
    Reads the value of the GPIO pin, RB5.

  @Description
    Reads the value of the GPIO pin, RB5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB5
    postValue = PG_STT_GetValue();
    </code>

*/
#define PG_STT_GetValue()         PORTBbits.RB5
/**
  @Summary
    Configures the GPIO pin, RB5, as an input.

  @Description
    Configures the GPIO pin, RB5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an input
    PG_STT_SetDigitalInput();
    </code>

*/
#define PG_STT_SetDigitalInput()   ( TRISBSET = (1 << 5) )
/**
  @Summary
    Configures the GPIO pin, RB5, as an output.

  @Description
    Configures the GPIO pin, RB5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an output
    PG_STT_SetDigitalOutput();
    </code>

*/
#define PG_STT_SetDigitalOutput()   ( TRISBCLR = (1 << 5) )
/**
  @Summary
    Sets the GPIO pin, RC9, high using LATC9.

  @Description
    Sets the GPIO pin, RC9, high using LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC9 high (1)
    nPG_BT_SetHigh();
    </code>

*/
#define nPG_BT_SetHigh()          ( LATCSET = (1 << 9) )
/**
  @Summary
    Sets the GPIO pin, RC9, low using LATC9.

  @Description
    Sets the GPIO pin, RC9, low using LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC9 low (0)
    nPG_BT_SetLow();
    </code>

*/
#define nPG_BT_SetLow()           ( LATCCLR = (1 << 9) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RC9, low or high using LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RC9 to low.
    nPG_BT_SetValue(false);
    </code>

*/
inline static void nPG_BT_SetValue(bool value)
{
  if(value)
  {
    nPG_BT_SetHigh();
  }
  else
  {
    nPG_BT_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RC9, using LATC9.

  @Description
    Toggles the GPIO pin, RC9, using LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC9
    nPG_BT_Toggle();
    </code>

*/
#define nPG_BT_Toggle()           ( LATCINV = (1 << 9) )
/**
  @Summary
    Reads the value of the GPIO pin, RC9.

  @Description
    Reads the value of the GPIO pin, RC9.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC9
    postValue = nPG_BT_GetValue();
    </code>

*/
#define nPG_BT_GetValue()         PORTCbits.RC9
/**
  @Summary
    Configures the GPIO pin, RC9, as an input.

  @Description
    Configures the GPIO pin, RC9, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC9 as an input
    nPG_BT_SetDigitalInput();
    </code>

*/
#define nPG_BT_SetDigitalInput()   ( TRISCSET = (1 << 9) )
/**
  @Summary
    Configures the GPIO pin, RC9, as an output.

  @Description
    Configures the GPIO pin, RC9, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC9 as an output
    nPG_BT_SetDigitalOutput();
    </code>

*/
#define nPG_BT_SetDigitalOutput()   ( TRISCCLR = (1 << 9) )

/**
    Section: Function Prototypes
*/
/**
  @Summary
    Configures the pin settings of the PIC32MM0064GPM028
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    void SYSTEM_Initialize(void)
    {
        // Other initializers are called from this function
        PIN_MANAGER_Initialize();
    }
    </code>

*/
void PIN_MANAGER_Initialize (void);



#endif
