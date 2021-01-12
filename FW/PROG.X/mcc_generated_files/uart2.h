/**
  UART2 Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    uart2.h

  @Summary
    This is the generated header file for the UART2 driver using Foundation Services Library

  @Description
    This header file provides APIs for driver for UART2.
    Generation Information :
        Product Revision  :  Foundation Services Library - pic24-dspic-pic32mm : v1.26
        Device            :  PIC32MM0064GPM028
    The generated drivers are tested against the following:
        Compiler          :  XC32 1.42
        MPLAB             :  MPLAB X 3.45
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
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

#ifndef _UART2_H
#define _UART2_H

/**
  Section: Included Files
*/

#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: UART2 Driver Routines
*/

/**
  @Summary
    Initializes the UART instance : 2

  @Description
    This routine initializes the UART driver instance for : 2
    index.
    This routine must be called before any other UART routine is called.
    
  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Comment
    
*/
void UART2_Initialize(void);

/**
  @Summary
    Read a byte of data from the UART2

  @Description
    This routine reads a byte of data from the UART2.  It will
    block until a byte of data is available.  If you do not wish to block, call 
    the UART2_IsTxReady() function to check to see if there is
    data available to read first.

  @Preconditions
    UART2_Initialize function should have been called 
    before calling this function. 

  @Param
    None.

  @Returns
    A data byte received by the driver.
*/
uint8_t UART2_Read(void);

/**
  @Summary
    Writes a byte of data to the UART2

  @Description
    This routine writes a byte of data to the UART2. This function
    will block if this transmit buffer is currently full until the transmit 
    buffer becomes available.  If you do not wish to block, call the
    UART2_IsTxReady() function to check on the transmit
    availability.

  @Preconditions
    UART2_Initialize() function should have been called
    before calling this function.

  @Param
    byte - data to be written
*/
void UART2_Write(uint8_t byte);

/**
  @Description
    Indicates of there is data available to read.

  @Returns
    true if byte can be read.
    false if byte can't be read right now.
*/
bool UART2_IsRxReady(void);

/**
  @Description
    Indicates if a byte can be written.
 
 @Returns
    true if byte can be written.
    false if byte can't be written right now.
*/
bool UART2_IsTxReady(void);

/**
  @Description
    Indicates if all bytes have been transferred.
 
 @Returns
    true if all bytes transfered.
    false if there is still data pending to transfer.
*/
bool UART2_IsTxDone(void);

void UART2_SetTxInterruptHandler(void* handler);
void UART2_Transmit_ISR(void);

void UART2_SetRxInterruptHandler(void* handler);
void UART2_Receive_ISR(void);







/*******************************************************************************

  !!! Deprecated API and types !!!
  !!! These functions will not be supported in future releases !!!

*******************************************************************************/

/**
  @Summary
    Returns the size of the receive buffer

  @Description
    This routine returns the size of the receive buffer.

  @Param
    None.

  @Returns
    Size of receive buffer.
    
  @Example 
    <code>
    uint8_t readBuffer[5];
    uint8_t size, numBytes = 0;
    unsigned int readbufferLen = sizeof(readBuffer);
    UART2__Initialize();
    
    while(size < readbufferLen)
	{
	    UART2_TasksReceive ( );
	    size = UART2_is_rx_ready();
	}
    numBytes = UART2_ReadBuffer ( readBuffer , readbufferLen ) ;
    </code>
 
*/
uint8_t __attribute__((deprecated)) UART2_is_rx_ready(void);

/**
  @Summary
    Returns the size of the transmit buffer

  @Description
    This routine returns the size of the transmit buffer.

 @Param
    None.
 
 @Returns
    Size of transmit buffer.

 @Example
    Refer to UART2_Initialize(); for example.
*/
uint8_t __attribute__((deprecated)) UART2_is_tx_ready(void);

/**
  @Summary
    Returns the status of the TRMT bit

  @Description
    This routine returns if the transmit shift register is full or not.

 @Param
    None.
 
 @Returns
    True if the transmit TXREG is empty
    False if the transmit is in progress

 @Example
 
*/
bool __attribute__((deprecated)) UART2_is_tx_done(void);

/** UART2 Driver Transfer Flags

  @Summary
    Specifies the status of the receive or transmit

  @Description
    This type specifies the status of the receive or transmit operation.
    More than one of these values may be OR'd together to create a complete
    status value.  To test a value of this type, the bit of interest must be
    AND'ed with value and checked to see if the result is non-zero.
*/

typedef enum
{
    /* Indicates that the core driver buffer is full */
    UART2_TRANSFER_STATUS_RX_FULL = (1 << 0) ,
    /* Indicates that at least one byte of Data has been received */
    UART2_TRANSFER_STATUS_RX_DATA_PRESENT = (1 << 1) ,
    /* Indicates that the core driver receiver buffer is empty */
    UART2_TRANSFER_STATUS_RX_EMPTY = (1 << 2) ,
    /* Indicates that the core driver transmitter buffer is full */
    UART2_TRANSFER_STATUS_TX_FULL = (1 << 3) ,
    /* Indicates that the core driver transmitter buffer is empty */
    UART2_TRANSFER_STATUS_TX_EMPTY = (1 << 4) 
} UART2_TRANSFER_STATUS;

/**
  @Summary
    Returns the number of bytes read by the UART2 peripheral

  @Description
    This routine returns the number of bytes read by the Peripheral and fills the
    application read buffer with the read data.

  @Preconditions
    UART2_Initialize function should have been called 
    before calling this function

  @Param
    buffer       - Buffer into which the data read from the UART2

  @Param
    numbytes     - Total number of bytes that need to be read from the UART2
                   (must be equal to or less than the size of the buffer)

  @Returns
    Number of bytes actually copied into the caller's buffer or -1 if there
    is an error.

  @Example
    <code>
    char                     myBuffer[MY_BUFFER_SIZE];
    unsigned int             numBytes;
    UART2_TRANSFER_STATUS status ;

    // Pre-initialize myBuffer with MY_BUFFER_SIZE bytes of valid data.

    numBytes = 0;
    while( numBytes < MY_BUFFER_SIZE);
    {
        status = UART2_TransferStatusGet ( ) ;
        if (status & UART2_TRANSFER_STATUS_RX_FULL)
        {
            numBytes += UART2_ReadBuffer( myBuffer + numBytes, MY_BUFFER_SIZE - numBytes )  ;
            if(numBytes < readbufferLen)
            {
                continue;
            }
            else
            {
                break;
            }
        }
        else
        {
            continue;
        }

        // Do something else...
    }
    </code>
*/
unsigned int __attribute__((deprecated)) UART2_ReadBuffer( uint8_t *buffer ,  unsigned int numbytes);

/**
  @Summary
    Returns the number of bytes written into the internal buffer

  @Description
    This API transfers the data from application buffer to internal buffer and 
    returns the number of bytes added in that queue

  @Preconditions
    UART2_Initialize function should have been called 
    before calling this function

  @Example
    <code>
    char                     myBuffer[MY_BUFFER_SIZE];
    unsigned int             numBytes;
    UART2_TRANSFER_STATUS status ;

    // Pre-initialize myBuffer with MY_BUFFER_SIZE bytes of valid data.

    numBytes = 0;
    while( numBytes < MY_BUFFER_SIZE);
    {
        status = UART2_TransferStatusGet ( ) ;
        if (status & UART2_TRANSFER_STATUS_TX_EMPTY)
        {
            numBytes += UART2_WriteBuffer ( myBuffer + numBytes, MY_BUFFER_SIZE - numBytes )  ;
            if(numBytes < writebufferLen)
            {
                continue;
            }
            else
            {
                break;
            }
        }
        else
        {
            continue;
        }

        // Do something else...
    }
    </code>
*/
unsigned int __attribute__((deprecated)) UART2_WriteBuffer( uint8_t *buffer , unsigned int numbytes );

/**
  @Summary
    Returns the transmitter and receiver transfer status

  @Description
    This returns the transmitter and receiver transfer status.The returned status 
    may contain a value with more than one of the bits
    specified in the UART2_TRANSFER_STATUS enumeration set.  
    The caller should perform an "AND" with the bit of interest and verify if the
    result is non-zero (as shown in the example) to verify the desired status
    bit.

  @Preconditions
    UART2_Initialize function should have been called 
    before calling this function

  @Param
    None.

  @Returns
    A UART2_TRANSFER_STATUS value describing the current status 
    of the transfer.

  @Example
    Refer to UART2_ReadBuffer and UART2_WriteBuffer for example

*/
UART2_TRANSFER_STATUS __attribute__((deprecated)) UART2_TransferStatusGet (void );

/**
  @Summary
    Returns the character in the read sequence at the offset provided, without
    extracting it

  @Description
    This routine returns the character in the read sequence at the offset provided,
    without extracting it
 
  @Param
    None.
    
  @Example 
    <code>
    uint8_t readBuffer[5];
    unsigned int data, numBytes = 0;
    unsigned int readbufferLen = sizeof(readBuffer);
    UART2_Initialize();
    
    while(numBytes < readbufferLen)        
    {   
        UART2_TasksReceive ( );
        //Check for data at a particular place in the buffer
        data = UART2_Peek(3);
        if(data == 5)
        {
            //discard all other data if byte that is wanted is received.    
            //continue other operation
            numBytes += UART2_ReadBuffer ( readBuffer + numBytes , readbufferLen ) ;
        }
        else
        {
            break;
        }
    }
    </code>
 
*/
uint8_t __attribute__((deprecated)) UART2_Peek(uint16_t offset);

/**
  @Summary
    Returns the status of the receive buffer

  @Description
    This routine returns if the receive buffer is empty or not.

  @Param
    None.
 
  @Returns
    True if the receive buffer is empty
    False if the receive buffer is not empty
    
  @Example
    <code>
    char                     myBuffer[MY_BUFFER_SIZE];
    unsigned int             numBytes;
    UART2_TRANSFER_STATUS status ;

    // Pre-initialize myBuffer with MY_BUFFER_SIZE bytes of valid data.

    numBytes = 0;
    while( numBytes < MY_BUFFER_SIZE);
    {
        status = UART2_TransferStatusGet ( ) ;
        if (!UART2_ReceiveBufferIsEmpty())
        {
            numBytes += UART2_ReadBuffer( myBuffer + numBytes, MY_BUFFER_SIZE - numBytes )  ;
            if(numBytes < readbufferLen)
            {
                continue;
            }
            else
            {
                break;
            }
        }
        else
        {
            continue;
        }

        // Do something else...
    }
    </code>
 
*/
bool __attribute__((deprecated)) UART2_ReceiveBufferIsEmpty (void);

/**
  @Summary
    Returns the status of the transmit buffer

  @Description
    This routine returns if the transmit buffer is full or not.

 @Param
    None.
 
 @Returns
    True if the transmit buffer is full
    False if the transmit buffer is not full

 @Example
    Refer to UART2_Initialize() for example.
 
*/
bool __attribute__((deprecated)) UART2_TransmitBufferIsFull (void);

/** UART2 Driver Hardware Flags

  @Summary
    Specifies the status of the hardware receive or transmit

  @Description
    This type specifies the status of the hardware receive or transmit.
    More than one of these values may be OR'd together to create a complete
    status value.  To test a value of this type, the bit of interest must be
    AND'ed with value and checked to see if the result is non-zero.
*/
typedef enum
{
    /* Indicates that Receive buffer has data, at least one more character can be read */
    UART2_RX_DATA_AVAILABLE = (1 << 0),
    /* Indicates that Receive buffer has overflowed */
    UART2_RX_OVERRUN_ERROR = (1 << 1),
    /* Indicates that Framing error has been detected for the current character */
    UART2_FRAMING_ERROR = (1 << 2),
    /* Indicates that Parity error has been detected for the current character */
    UART2_PARITY_ERROR = (1 << 3),
    /* Indicates that Receiver is Idle */
    UART2_RECEIVER_IDLE = (1 << 4),
    /* Indicates that the last transmission has completed */
    UART2_TX_COMPLETE = (1 << 8),
    /* Indicates that Transmit buffer is full */
    UART2_TX_FULL = (1 << 9) 
}UART2_STATUS;

/**
  @Summary
    Returns the transmitter and receiver status

  @Description
    This returns the transmitter and receiver status. The returned status may 
    contain a value with more than one of the bits
    specified in the UART2_STATUS enumeration set.  
    The caller should perform an "AND" with the bit of interest and verify if the
    result is non-zero (as shown in the example) to verify the desired status
    bit.

  @Preconditions
    UART2_Initialize function should have been called 
    before calling this function

  @Param
    None.

  @Returns
    A UART2_STATUS value describing the current status 
    of the transfer.

  @Example
    <code>
        while(!(UART2_StatusGet & UART2_TX_COMPLETE ))
        {
           // Wait for the tranmission to complete
        }
    </code>
*/
UART2_STATUS __attribute__((deprecated)) UART2_StatusGet (void );


#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
    
#endif  // _UART2_H

