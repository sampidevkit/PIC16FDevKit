/**
  UART2 Generated Driver File 

  @Company
    Microchip Technology Inc.

  @File Name
    uart2.c

  @Summary
    This is the generated source file for the UART2 driver using Foundation Services Library

  @Description
    This source file provides APIs for driver for UART2. 

    Generation Information : 
        Product Revision  :  Foundation Services Library - pic24-dspic-pic32mm : v1.26
        Device            :  PIC32MM0064GPM028
    The generated drivers are tested against the following:
        Compiler          :  XC32 1.42
        MPLAB 	          :  MPLAB X 3.45
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

/**
  Section: Included Files
*/
#include <stdbool.h>
#include <stdint.h>
#include "xc.h"
#include "uart2.h"

/**
  Section: Data Type Definitions
*/

/** UART Driver Queue Status

  @Summary
    Defines the object required for the status of the queue.
*/

static uint8_t * volatile rxTail;
static uint8_t * rxHead;
static uint8_t * txTail;
static uint8_t * volatile txHead;
static bool volatile rxOverflowed;

/** UART Driver Queue Length

  @Summary
    Defines the length of the Transmit and Receive Buffers

*/

#define UART2_CONFIG_TX_BYTEQ_LENGTH (254+1)
#define UART2_CONFIG_RX_BYTEQ_LENGTH (254+1)

/** UART Driver Queue

  @Summary
    Defines the Transmit and Receive Buffers

*/

static uint8_t txQueue[UART2_CONFIG_TX_BYTEQ_LENGTH] ;
static uint8_t rxQueue[UART2_CONFIG_RX_BYTEQ_LENGTH] ;

void (*UART2_TxDefaultInterruptHandler)(void);
void (*UART2_RxDefaultInterruptHandler)(void);

/**
  Section: Driver Interface
*/


void UART2_Initialize (void)
{
   IEC1bits.U2TXIE = 0;
   IEC1bits.U2RXIE = 0;
   
   // STSEL 1; PDSEL 8N; RTSMD disabled; OVFDIS disabled; ACTIVE disabled; RXINV disabled; WAKE disabled; BRGH enabled; IREN disabled; ON enabled; SLPEN disabled; SIDL disabled; ABAUD disabled; LPBACK disabled; UEN TX_RX; CLKSEL SYSCLK; 
   U2MODE = (0x28008 & ~(1<<15));  // disabling UART
   // UTXISEL TX_ONE_CHAR; UTXINV disabled; ADDR 0; MASK 0; URXEN disabled; OERR disabled; URXISEL RX_ONE_CHAR; UTXBRK disabled; UTXEN disabled; ADDEN disabled; 
   U2STA = 0x0;
   // BaudRate = 9600; Frequency = 24000000 Hz; BRG 624; 
   U2BRG = 0x270;
   
   txHead = txQueue;
   txTail = txQueue;
   rxHead = rxQueue;
   rxTail = rxQueue;
   
   rxOverflowed = 0;

   UART2_SetTxInterruptHandler(UART2_Transmit_ISR);

   UART2_SetRxInterruptHandler(UART2_Receive_ISR);
   IEC1bits.U2RXIE = 1;
   
    //Make sure to set LAT bit corresponding to TxPin as high before UART initialization
   U2STASET = _U2STA_UTXEN_MASK;
   U2MODESET = _U2MODE_ON_MASK;  // enabling UART ON bit
   U2STASET = _U2STA_URXEN_MASK; 
}

/**
    Maintains the driver's transmitter state machine and implements its ISR
*/
void UART2_SetTxInterruptHandler(void* handler){
    UART2_TxDefaultInterruptHandler = handler;
}

void __attribute__ ((vector(_UART2_TX_VECTOR), interrupt(IPL1SOFT))) _UART2_TX ( void )
{
    (*UART2_TxDefaultInterruptHandler)();
}

void UART2_Transmit_ISR(void)
{ 
    if(txHead == txTail)
    {
        IEC1bits.U2TXIE = 0;
        return;
    }

    IFS1CLR= 1 << _IFS1_U2TXIF_POSITION;

    while(!(U2STAbits.UTXBF == 1))
    {
        U2TXREG = *txHead++;

        if(txHead == (txQueue + UART2_CONFIG_TX_BYTEQ_LENGTH))
        {
            txHead = txQueue;
        }

        // Are we empty?
        if(txHead == txTail)
        {
            break;
        }
    }
}

void UART2_SetRxInterruptHandler(void* handler){
    UART2_RxDefaultInterruptHandler = handler;
}

void __attribute__ ((vector(_UART2_RX_VECTOR), interrupt(IPL1SOFT))) _UART2_RX( void )
{
    (*UART2_RxDefaultInterruptHandler)();
}

void UART2_Receive_ISR(void)
{
    while((U2STAbits.URXDA == 1))
    {
        *rxTail = U2RXREG;

        // Will the increment not result in a wrap and not result in a pure collision?
        // This is most often condition so check first
        if ( ( rxTail    != (rxQueue + UART2_CONFIG_RX_BYTEQ_LENGTH-1)) &&
             ((rxTail+1) != rxHead) )
        {
            rxTail++;
        } 
        else if ( (rxTail == (rxQueue + UART2_CONFIG_RX_BYTEQ_LENGTH-1)) &&
                  (rxHead !=  rxQueue) )
        {
            // Pure wrap no collision
            rxTail = rxQueue;
        } 
        else // must be collision
        {
            rxOverflowed = true;
        }

    }

      IFS1CLR= 1 << _IFS1_U2RXIF_POSITION;
}

void __attribute__ ((vector(_UART2_ERR_VECTOR), interrupt(IPL1SOFT))) _UART2_ERR ( void )
{
    if ((U2STAbits.OERR == 1))
    {
        U2STACLR = _U2STA_OERR_MASK; 
    }

     IFS1CLR= 1 << _IFS1_U2EIF_POSITION;
}

/**
  Section: UART Driver Client Routines
*/

uint8_t UART2_Read( void)
{
    uint8_t data = 0;

    while (rxHead == rxTail )
    {
    }
    
    data = *rxHead;

    rxHead++;

    if (rxHead == (rxQueue + UART2_CONFIG_RX_BYTEQ_LENGTH))
    {
        rxHead = rxQueue;
    }
    return data;
}

void UART2_Write( uint8_t byte)
{
    while(UART2_IsTxReady() == 0)
    {
    }

    *txTail = byte;

    txTail++;
    
    if (txTail == (txQueue + UART2_CONFIG_TX_BYTEQ_LENGTH))
    {
        txTail = txQueue;
    }

    IEC1bits.U2TXIE = 1;
}

bool UART2_IsRxReady(void)
{    
    return !(rxHead == rxTail);
}

bool UART2_IsTxReady(void)
{
    uint16_t size;
    uint8_t *snapshot_txHead = (uint8_t*)txHead;
    
    if (txTail < snapshot_txHead)
    {
        size = (snapshot_txHead - txTail - 1);
    }
    else
    {
        size = ( UART2_CONFIG_TX_BYTEQ_LENGTH - (txTail - snapshot_txHead) - 1 );
    }
    
    return (size != 0);
}

bool UART2_IsTxDone(void)
{
    if(txTail == txHead)
    {
        return (bool)U2STAbits.TRMT;
    }
    
    return false;
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
static uint8_t UART2_RxDataAvailable(void)
{
    uint16_t size;
    uint8_t *snapshot_rxTail = (uint8_t*)rxTail;
    
    if (snapshot_rxTail < rxHead) 
    {
        size = ( UART2_CONFIG_RX_BYTEQ_LENGTH - (rxHead-snapshot_rxTail));
    }
    else
    {
        size = ( (snapshot_rxTail - rxHead));
    }
    
    if(size > 0xFF)
    {
        return 0xFF;
    }
    
    return size;
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
uint8_t __attribute__((deprecated)) UART2_is_rx_ready(void)
{
    return UART2_RxDataAvailable();
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
static uint8_t UART2_TxDataAvailable(void)
{
    uint16_t size;
    uint8_t *snapshot_txHead = (uint8_t*)txHead;
    
    if (txTail < snapshot_txHead)
    {
        size = (snapshot_txHead - txTail - 1);
    }
    else
    {
        size = ( UART2_CONFIG_TX_BYTEQ_LENGTH - (txTail - snapshot_txHead) - 1 );
    }
    
    if(size > 0xFF)
    {
        return 0xFF;
    }
    
    return size;
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
uint8_t __attribute__((deprecated)) UART2_is_tx_ready(void)
{
    return UART2_TxDataAvailable();
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
bool __attribute__((deprecated)) UART2_is_tx_done(void)
{
    return UART2_IsTxDone();
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
unsigned int __attribute__((deprecated)) UART2_ReadBuffer( uint8_t *buffer ,  unsigned int numbytes)
{
    unsigned int rx_count = UART2_RxDataAvailable();
    unsigned int i;
    
    if(numbytes < rx_count)
    {
        rx_count = numbytes;
    }
    
    for(i=0; i<rx_count; i++)
    {
        *buffer++ = UART2_Read();
    }
    
    return rx_count;    
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
unsigned int __attribute__((deprecated)) UART2_WriteBuffer( uint8_t *buffer , unsigned int numbytes )
{
    unsigned int tx_count = UART2_TxDataAvailable();
    unsigned int i;
    
    if(numbytes < tx_count)
    {
        tx_count = numbytes;
    }
    
    for(i=0; i<tx_count; i++)
    {
        UART2_Write(*buffer++);
    }
    
    return tx_count;  
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
UART2_TRANSFER_STATUS __attribute__((deprecated)) UART2_TransferStatusGet (void )
{
    UART2_TRANSFER_STATUS status = 0;
    uint8_t rx_count = UART2_RxDataAvailable();
    uint8_t tx_count = UART2_TxDataAvailable();
    
    switch(rx_count)
    {
        case 0:
            status |= UART2_TRANSFER_STATUS_RX_EMPTY;
            break;
        case UART2_CONFIG_RX_BYTEQ_LENGTH:
            status |= UART2_TRANSFER_STATUS_RX_FULL;
            break;
        default:
            status |= UART2_TRANSFER_STATUS_RX_DATA_PRESENT;
            break;
    }
    
    switch(tx_count)
    {
        case 0:
            status |= UART2_TRANSFER_STATUS_TX_FULL;
            break;
        case UART2_CONFIG_RX_BYTEQ_LENGTH:
            status |= UART2_TRANSFER_STATUS_TX_EMPTY;
            break;
        default:
            break;
    }

    return status;    
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
uint8_t __attribute__((deprecated)) UART2_Peek(uint16_t offset)
{
    uint8_t *peek = rxHead + offset;
    
    while(peek > (rxQueue + UART2_CONFIG_RX_BYTEQ_LENGTH))
    {
        peek -= UART2_CONFIG_RX_BYTEQ_LENGTH;
    }
    
    return *peek;
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
bool __attribute__((deprecated)) UART2_ReceiveBufferIsEmpty (void)
{
    return (UART2_RxDataAvailable() == 0);
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
bool __attribute__((deprecated)) UART2_TransmitBufferIsFull (void)
{
    return (UART2_TxDataAvailable() == 0);
}

/* !!! Deprecated API - This function may not be supported in a future release !!! */
UART2_STATUS __attribute__((deprecated)) UART2_StatusGet (void )
{
    return U2STA;
}

