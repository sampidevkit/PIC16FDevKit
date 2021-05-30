
/**
  I2C1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    i2c1.c

  @Summary
    This is the generated header file for the I2C1 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides APIs for driver for I2C1.
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

#include "i2c1.h"

/**
 Section: Data Types
*/

/**
  I2C Slave Driver State Enumeration

  @Summary
    Defines the different states of the i2c slave.

  @Description
    This defines the different states that the i2c slave
    used to process transactions on the i2c bus.
*/
typedef enum
{
    S_SLAVE_IDLE,
    S_SLAVE_RECEIVE_MODE,
    S_SLAVE_TRANSMIT_MODE,
    S_SLAVE_LOW_BYTE_ADDRESS_DETECT,

} I2C_SLAVE_STATES;

/**
 Section: Macro Definitions
*/
/* defined for I2C1 */
#define I2C1_TRANSMIT_REG                       I2C1TRN	// Defines the transmit register used to send data.
#define I2C1_RECEIVE_REG                        I2C1RCV	// Defines the receive register used to receive data.

#define I2C1_MASK_REG                           I2C1MSK	// Defines the address mask register.
#define I2C1_ADDRESS_REG                        I2C1ADD	// Defines the address register. 

// The following control bits are used in the I2C state machine to manage
// the I2C module and determine next states.
#define I2C1_GENERAL_CALL_ENABLE_BIT            I2C1CONbits.GCEN	// I2C General Call enable control bit.
#define I2C1_10_BIT_ADDRESS_ENABLE_BIT          I2C1CONbits.A10M	// I2C Address Mode (7 or 10 bit address) control bit.
#define I2C1_RELEASE_SCL_CLOCK_CONTROL_BIT      I2C1CONbits.SCLREL	// I2C clock stretch/release control bit.

// The following status bits are used in the I2C state machine to determine
// the next states.

#define I2C1_READ_NOT_WRITE_STATUS_BIT          I2C1STATbits.R_W    // I2C current transaction read/write status bit.
#define I2C1_DATA_NOT_ADDRESS_STATUS_BIT        I2C1STATbits.D_A    // I2C last byte receive was data/address status bit.
#define I2C1_RECEIVE_OVERFLOW_STATUS_BIT        I2C1STATbits.I2COV	// I2C receive buffer overflow status bit.
#define I2C1_GENERAL_CALL_ADDRESS_STATUS_BIT    I2C1STATbits.GCSTAT	// I2C General Call status bit.
#define I2C1_ACKNOWLEDGE_STATUS_BIT             I2C1STATbits.ACKSTAT	// I2C ACK status bit.

#define EMULATE_EEPROM_SIZE                     64

//Macros for atomic operations on PIC32MM devices
#define I2C1_GENERAL_CALL_CLR         I2C1CONCLR = _I2C1CON_GCEN_MASK
#define I2C1_GENERAL_CALL_SET         I2C1CONSET = _I2C1CON_GCEN_MASK

#define I2C1_10_BIT_ADDRESS_CLR       I2C1CONCLR = _I2C1CON_A10M_MASK
#define I2C1_10_BIT_ADDRESS_SET       I2C1CONSET = _I2C1CON_A10M_MASK

#define I2C1_RELEASE_SCL_CLOCK_CONTROL_CLR    I2C1CONCLR = _I2C1CON_SCLREL_MASK
#define I2C1_RELEASE_SCL_CLOCK_CONTROL_SET    I2C1CONSET = _I2C1CON_SCLREL_MASK


#define I2C1_READ_NOT_WRITE_STATUS_CLR        I2C1STATCLR = _I2C1STAT_R_W_MASK
#define I2C1_READ_NOT_WRITE_STATUS_SET        I2C1STATSET = _I2C1STAT_R_W_MASK

#define I2C1_DATA_NOT_ADDRESS_STATUS_CLR      I2C1STATCLR = _I2C1STAT_D_A_MASK
#define I2C1_DATA_NOT_ADDRESS_STATUS_SET      I2C1STATSET = _I2C1STAT_D_A_MASK

#define I2C1_RECEIVE_OVERFLOW_STATUS_CLR      I2C1STATCLR = _I2C1STAT_I2COV_MASK
#define I2C1_RECEIVE_OVERFLOW_STATUS_SET      I2C1STATSET = _I2C1STAT_I2COV_MASK

#define I2C1_GENERAL_CALL_ADDRESS_STATUS_CLR      I2C1STATCLR = _I2C1STAT_GCSTAT_MASK
#define I2C1_GENERAL_CALL_ADDRESS_STATUS_SET      I2C1STATSET = _I2C1STAT_GCSTAT_MASK

#define I2C1_ACKNOWLEDGE_STATUS_CLR      I2C1STATCLR = _I2C1STAT_ACKSTAT_MASK
#define I2C1_ACKNOWLEDGE_STATUS_SET      I2C1STATSET = _I2C1STAT_ACKSTAT_MASK

#define I2C1_TransmitProcess() do{if(p_i2c1_read_pointer==NULL) return; \
    I2C1_TRANSMIT_REG=*p_i2c1_read_pointer; I2C1_RELEASE_SCL_CLOCK_CONTROL_SET;} while(0)

#define I2C1_ReceiveProcess() do{if(p_i2c1_write_pointer==NULL) return; \
    *p_i2c1_write_pointer=I2C1_RECEIVE_REG;} while(0)

/**
 Section: Local Functions
*/

//inline void __attribute__ ((always_inline)) I2C1_TransmitProcess(void);
//inline void __attribute__ ((always_inline)) I2C1_ReceiveProcess(void);

/**
 Section: Local Variables
*/

static I2C_SLAVE_STATES   i2c1_slave_state;
static uint8_t            *p_i2c1_write_pointer;
static uint8_t            *p_i2c1_read_pointer;

/**
  Prototype:        void I2C1_Initialize(void)
  Input:            none
  Output:           none
  Description:      I2C1_Initialize is an
                    initialization routine that takes inputs from the GUI.
  Comment:          
  Usage:            I2C1_Initialize();
*/
void I2C1_Initialize(void)
{

    // initialize the hardware
    // ACKEN disabled; STRICT disabled; STREN disabled; GCEN disabled; SMEN disabled; DISSLW enabled; SBCDE disabled; SIDL disabled; BOEN disabled; ACKDT Sends ACK; SCIE disabled; PCIE disabled; SCLREL Holds; RSEN disabled; SDAHT disabled; A10M 7 Bit; PEN disabled; RCEN disabled; SEN disabled; ON enabled; 
    I2C1CON = 0x8000;
    // BCL disabled; P disabled; S disabled; I2COV disabled; IWCOL disabled; 
    I2C1STAT = 0x00;
    // I2CADD 83; 
    I2C1_SlaveAddressSet(0x53);
    // AMSK 0; 
    I2C1_SlaveAddressMaskSet(0x00);

    // make sure this is set first
    i2c1_slave_state = S_SLAVE_IDLE;
    
    I2C1_ReadPointerSet(NULL);
    I2C1_WritePointerSet(NULL);
    
    /* I2C 1 Slave */
    // clear the master interrupt flag
    IFS2bits.I2C1SIF = 0;
    // enable the master interrupt
    IEC2bits.I2C1SIE = 1;
    
}


void __attribute__ ((vector(_I2C1_SLAVE_VECTOR), interrupt(IPL3SOFT))) _I2C1_SLAVE ( void )
{

    static bool  prior_address_match = false;
    static bool  not_busy = true;
    uint8_t      dummy;

    // NOTE: The slave driver will always acknowledge 
    //       any address match.

    switch (i2c1_slave_state)
    {
        case S_SLAVE_IDLE:
        case S_SLAVE_RECEIVE_MODE:

            /* When at S_SLAVE_RECEIVE_MODE this mode there
               will be two types of incoming transactions:
               1. Data sent by master
               2. A restart or start detection

               But from the point of view of the firmware, there is
               no difference between S_SLAVE_IDLE and S_SLAVE_RECEIVE_MODE
               states, since the types of incoming transactions will be
               the same so we share the code here.
             */

            if  (
                    // case of 7-bit address detected
                    (   (I2C1_10_BIT_ADDRESS_ENABLE_BIT       == 0) &&
                        (I2C1_DATA_NOT_ADDRESS_STATUS_BIT     == 0)
                    )
                    ||
                    // case of general address call detected
                    (   (I2C1_GENERAL_CALL_ENABLE_BIT         == 1) &&
                        (I2C1_GENERAL_CALL_ADDRESS_STATUS_BIT == 1)
                    )
                )
            {
                            
                if (I2C1_READ_NOT_WRITE_STATUS_BIT == 0)
                {
                    // it is a write, go to receive mode 

                    I2C1_StatusCallback(I2C1_SLAVE_RECEIVE_REQUEST_DETECTED);
                    
                    // Receive the data if valid
                    I2C1_ReceiveProcess();
                    i2c1_slave_state = S_SLAVE_RECEIVE_MODE;
                }
                else
                {
                    // read the receive register only when
                    // we are ready for the next transaction.
                    // this one is a dummy read
                    dummy = I2C1_RECEIVE_REG;
                    
                    // it is a read, go to transmit mode
                    
                    I2C1_StatusCallback(I2C1_SLAVE_TRANSMIT_REQUEST_DETECTED);

                    // during this portion, the master is expecting the
                    // slave for a reply. So the returned status of
                    // the callback at this point cannot be used to 
                    // delay the reply if needed.
                    // In other words, the slave has to reply to the master.
                    // Therefore, the transmit will be performed.
                    
                    I2C1_TransmitProcess();
                    i2c1_slave_state = S_SLAVE_TRANSMIT_MODE;
                }

            }

            else if
               (
                    // case of 10-bit high address detected
                    (   (I2C1_10_BIT_ADDRESS_ENABLE_BIT   == 1)  &&
                        (I2C1_DATA_NOT_ADDRESS_STATUS_BIT == 0)
                    )
               )
            {
                if (I2C1_READ_NOT_WRITE_STATUS_BIT == 0)
                {
                    // it is the detection of high byte address of 
                    // 10-bit address, go to detection of low byte address
                    prior_address_match = false;
                    i2c1_slave_state = S_SLAVE_LOW_BYTE_ADDRESS_DETECT;

                }
                else // if (I2C1_READ_NOT_WRITE_STATUS_BIT == 1)
                {
                    if (prior_address_match == true)
                    {
                        // it is the detection of high byte
                        // address of 10-bit address, but the next
                        // transaction is read transaction (so it
                        // is a restart).
                        // set the transmit register with the data
                        // to transmit then go to transmit mode

                        I2C1_StatusCallback(I2C1_SLAVE_TRANSMIT_REQUEST_DETECTED);

                        // during this portion, the master is expecting the
                        // slave for a reply. So the returned status of
                        // the callback at this point cannot be used to
                        // delay the reply if needed.
                        // In other words, the slave has to reply to the master.
                        // Therefore, the transmit will be performed.

                        I2C1_TransmitProcess();
                        i2c1_slave_state = S_SLAVE_TRANSMIT_MODE;
                    }
                    else
                    {
                        // it is the detection of high byte address of
                        // 10-bit address, but next transaction is a write.
                        // go to detection of low byte address
                        prior_address_match = false;
                        i2c1_slave_state = S_SLAVE_LOW_BYTE_ADDRESS_DETECT;

                    }
                }

                // dummy read is needed
                dummy = I2C1_RECEIVE_REG;
            }

            // this if statement is to make sure we only save incoming
            // data when we are truly in receiving mode
            if (i2c1_slave_state == S_SLAVE_RECEIVE_MODE)
            {
                // case of data received
                if (I2C1_DATA_NOT_ADDRESS_STATUS_BIT == 1)
                {
                    // check if we are overflowing the receive buffer
                    if (I2C1_RECEIVE_OVERFLOW_STATUS_BIT != 1)
                    {
                        I2C1_ReceiveProcess();
                        not_busy = I2C1_StatusCallback(I2C1_SLAVE_RECEIVED_DATA_DETECTED);
                    }
                    else
                    {
                        // overflow detected!
                        // read the buffer to reset the buffer full flag
                        // and clear the overflow bit
                        // then do nothing so the master
                        // will resend the data
                        dummy = I2C1_RECEIVE_REG;
                        //I2C1_RECEIVE_OVERFLOW_STATUS_BIT = 0;
						I2C1_RECEIVE_OVERFLOW_STATUS_CLR;
                    }
                }
            }

            break;

        case S_SLAVE_LOW_BYTE_ADDRESS_DETECT:
            // Note that this state will only get
            // executed when 10-bit address is set

            // we send receive request but we do not actually know
            // if the next one is a data from master since the 
            // next one can be a restart with a transmit request.
            // When that happens, the next state will take care of it.
            // This is just the nature of i2c bus protocol.
            not_busy = I2C1_StatusCallback(I2C1_SLAVE_10BIT_RECEIVE_REQUEST_DETECTED);

            // set this flag to indicate we have
            // full 10-bit address detection
            prior_address_match = true;

            if (not_busy)
            {
                // dummy read is needed
                dummy = I2C1_RECEIVE_REG;
            }

            i2c1_slave_state = S_SLAVE_RECEIVE_MODE;

            break;

        case S_SLAVE_TRANSMIT_MODE:

            // this is the state where an ACK or NACK is expected
            // to occur after the slave has placed data to the
            // transmit register.

            // if the transaction was ACK'ed, more data needs to be sent
            // if the transaction was NACK'ed then we don't need to send
            // more data
            if (I2C1_ACKNOWLEDGE_STATUS_BIT == 0)
            {
                // prepare next data
                I2C1_StatusCallback(I2C1_SLAVE_TRANSMIT_REQUEST_DETECTED);

                // transmit more data
                I2C1_TransmitProcess();
                
            }
            else //if (I2C1_ACKNOWLEDGE_STATUS_BIT == 1)
            {
                // no more data to be sent so we go to idle state
                i2c1_slave_state = S_SLAVE_IDLE;
            }
            break;


        default:
            // should never happen, if we ever get here stay here forever
            while(1);
            break;
    }


    // clear the slave interrupt flag
    IFS2bits.I2C1SIF = 0;

}

void I2C1_ReadPointerSet(uint8_t *p)
{
    p_i2c1_read_pointer = p;
}



void I2C1_WritePointerSet(uint8_t *p)
{
    p_i2c1_write_pointer = p;
}



uint8_t *I2C1_ReadPointerGet(void)
{
    return (p_i2c1_read_pointer);
}



uint8_t *I2C1_WritePointerGet(void)
{
    return (p_i2c1_write_pointer);
}



void I2C1_SlaveAddressMaskSet(
                                uint16_t mask)
{
    I2C1_MASK_REG = mask;
}



void I2C1_SlaveAddressSet(
                                uint16_t address)
{
    if (address > 0x7F)
    {
        // use 10 bit address
        //I2C1_10_BIT_ADDRESS_ENABLE_BIT = true;
		I2C1_10_BIT_ADDRESS_SET;
    }
    else
    {
        // use 7 bit address
        //I2C1_10_BIT_ADDRESS_ENABLE_BIT = false;
		I2C1_10_BIT_ADDRESS_CLR;
    }
    i2c1_slave_state = S_SLAVE_IDLE;
    I2C1_ADDRESS_REG = address;

}



//inline void __attribute__ ((always_inline)) I2C1_TransmitProcess(void)
//{
//    // get the data to be transmitted
//
//    // sanity check (to avoid stress)
//    if (p_i2c1_read_pointer == NULL)
//        return;
//
//    I2C1_TRANSMIT_REG = *p_i2c1_read_pointer;
//
//    // set the SCL clock to be released
//    //I2C1_RELEASE_SCL_CLOCK_CONTROL_BIT = 1;
//    I2C1_RELEASE_SCL_CLOCK_CONTROL_SET;
//
//}
//
//inline void __attribute__ ((always_inline)) I2C1_ReceiveProcess(void)
//{   
//    // store the received data 
//    
//    // sanity check (to avoid stress)
//    if (p_i2c1_write_pointer == NULL)
//        return;
//
//    *p_i2c1_write_pointer = I2C1_RECEIVE_REG;
//
//}

/* Note: This is an example of the I2C1_StatusCallback()
         implementation. This is an emulated EEPROM Memory
         configured to act as a I2C Slave Device.
         For specific slave device implementation, remove
         or modify this function to the specific slave device
         behavior.
*/

//static uint8_t i2c1_slaveWriteData = 0xAA;
//
//bool I2C1_StatusCallback(I2C1_SLAVE_DRIVER_STATUS status)
//{
//
//    // this emulates the slave device memory where data written to slave
//    // is placed and data read from slave is taken
//    /*
//     Emulate EEPORM default memory size is 64bytes
// 
//     Emulate EEPORM Read/Write Instruction:
//     --------------------------------------     
//     Byte Write Instruction:
//     |Start|slave Addr + w|Ack|AddrHighByte|Ack|AddrLowByte|Ack|data|Nack|Stop|
//     
//     Page Write Instruction:
//     |Start|slave Addr + w|Ack|AddrHighByte|Ack|AddrLowByte|Ack|dataByte n|Ack|...|data Byte n+x|Nack|Stop|
//     
//     Byte Read Instruction:
//     |Start|slave Addr + r|Ack|AddrHighByte|Ack|AddrLowByte|Ack|data|Nack|Stop|
//
//     Page Read Instruction:
//     |Start|slave Addr + r|Ack|AddrHighByte|Ack|AddrLowByte|Ack|dataByte n|Ack|...|dataByte n+x|Nack|Stop|
//    */
//    
//    static uint8_t EMULATE_EEPROM_Memory[EMULATE_EEPROM_SIZE] =
//            {
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//                0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
//            };
//
//    static uint16_t address, addrByteCount;
//    static bool     addressState = true;
//
//    switch (status)
//    {
//        case I2C1_SLAVE_TRANSMIT_REQUEST_DETECTED:
//            // set up the slave driver buffer transmit pointer
//            I2C1_ReadPointerSet(&EMULATE_EEPROM_Memory[address++]);
//            if(address >= EMULATE_EEPROM_SIZE) {
//                address = 0;
//            }
//            break;
//
//        case I2C1_SLAVE_RECEIVE_REQUEST_DETECTED:
//
//            addrByteCount = 0;
//            addressState = true;
//
//            // set up the slave driver buffer receive pointer
//            I2C1_WritePointerSet(&i2c1_slaveWriteData);
//            break;
//
//        case I2C1_SLAVE_RECEIVED_DATA_DETECTED:
//
//            if (addressState == true)
//            {
//                // get the address of the memory being written
//                if (addrByteCount == 0)
//                {
//                    address = (i2c1_slaveWriteData << 8) & 0xFF00;
//                    addrByteCount++;
//                }
//                else if (addrByteCount == 1)
//                {
//                    address = address | i2c1_slaveWriteData;
//                    addrByteCount = 0;
//                    addressState = false;
//                }
//                
//                if(address >= EMULATE_EEPROM_SIZE) {
//                    address = EMULATE_EEPROM_SIZE;
//                }
//            }
//            else // if (addressState == false)
//            {
//                // set the memory with the received data
//                EMULATE_EEPROM_Memory[address++] = i2c1_slaveWriteData;
//                if(address >= EMULATE_EEPROM_SIZE) {
//                    address = 0;
//                }
//            }
//
//            break;
//
//        case I2C1_SLAVE_10BIT_RECEIVE_REQUEST_DETECTED:
//
//            // do something here when 10-bit address is detected
//
//            // 10-bit address is detected
//
//            break;
//
//        default:
//            break;
//
//    }
//
//    return true;
//}




