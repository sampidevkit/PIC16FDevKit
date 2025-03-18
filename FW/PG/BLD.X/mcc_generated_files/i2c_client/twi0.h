/**
 * TWI0 Generated Driver API Header File
 *
 * @file twi0.h
 *
 * @defgroup twi0_client TWI0_client
 *
 * @brief This header file provides APIs for the TWI0 driver.
 *
 * @version TWI0 Driver Version 2.1.3
 * 
 * @version TWI0 Package Version 8.1.6
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

#ifndef TWI0_H
#define TWI0_H

/**
 * @misradeviation {@advisory,2.5} For false positives, which include 
 * macros that are used as arguments but are not getting recognized by the tool.
 * This rule ID is disabled at project level due to its multiple occurrences in several 
 * files.Therefore, in the application project, this rule ID must be disabled in the 
 * MPLAB-X IDE from Tools -> Options -> Embedded -> MISRA Check.
*/

#include <stdbool.h>
#include <stdint.h>
#include "i2c_client_types.h"
#include "i2c_client_interface.h"

/**
 Section: Data Type Definitions
*/

#define i2c0_client_client_interface I2C0_Client

#define I2C0_Client_Initialize TWI0_Initialize
#define I2C0_Client_Deinitialize TWI0_Deinitialize
#define I2C0_Client_WriteByte TWI0_WriteByte
#define I2C0_Client_ReadByte TWI0_ReadByte
#define I2C0_Client_ReadAddr TWI0_ReadAddr
#define I2C0_Client_ErrorGet TWI0_ErrorGet
#define I2C0_Client_TransferDirGet TWI0_TransferDirGet
#define I2C0_Client_LastByteAckStatusGet TWI0_LastByteAckStatusGet
#define I2C0_Client_CallbackRegister TWI0_CallbackRegister

extern const i2c_client_interface_t I2C0_Client;

/**
 * @ingroup I2C_client
 * @brief This API initializes the TWI0 module.
 * @param void
 * @return void
 */ 
void TWI0_Initialize(void);

/**
 * @ingroup I2C_client
 * @brief This API Deinitializes the TWI0 module. This routine disables the TWI0 module.
 * @param void
 * @return void
 */
void TWI0_Deinitialize(void);

/**
 * @ingroup I2C_client
 * @brief This function writes data to a host on the bus.
 * @param [in] wrByte - TWI0 client write byte
 * @return void
 */
void TWI0_WriteByte(uint8_t wrByte);

/**
 * @ingroup I2C_client
 * @brief This function read data from a host on the bus.
 * @param void
 * @return data byte -TWI0 client read byte
 */
uint8_t TWI0_ReadByte(void);

/**
 * @ingroup I2C_client
 * @brief This function read requested address from a host on the bus.
 * @param void
 * @return address byte -TWI0 client read byte
 */
uint16_t TWI0_ReadAddr(void);

/**
 * @ingroup I2C_client
 * @brief This function the error occurred during I2C Transmit and Receive.
 * @param void
 * @retval  I2C_CLIENT_ERROR_BUS_COLLISION    - I2C Bus Collision Error
 * @retval  I2C_CLIENT_ERROR_WRITE_COLLISION  - I2C Write Collision Error
 * @retval  I2C_CLIENT_ERROR_RECEIVE_OVERFLOW - I2C Receive overflow
 * @retval  I2C_CLIENT_ERROR_NONE             - No Error
 */
i2c_client_error_t TWI0_ErrorGet(void);

/**
 * @ingroup I2C_client
 * @brief This function get the I2C Transfer direction.
 * @param void
 * @retval  I2C_CLIENT_TRANSFER_DIR_WRITE  - I2C Host is writing to client
 * @retval  I2C_CLIENT_TRANSFER_DIR_READ   - I2C Host is reading from client
 */
i2c_client_transfer_dir_t TWI0_TransferDirGet(void);

/**
 * @ingroup I2C_client
 * @brief This function get the I2C Host ACK status.
 * @param void
 * @retval  I2C_CLIENT_ACK_STATUS_RECEIVED_ACK   - I2C Host is send ACK to client
 * @retval  I2C_CLIENT_ACK_STATUS_RECEIVED_NACK  - I2C Host is send NACK to client
 */
i2c_client_ack_status_t TWI0_LastByteAckStatusGet(void);

/**
 * @ingroup I2C_client
 * @brief This function sets the pointer to be called "back" when
 *        the given I2C transfer events, Bus collision and Write collision occur.
 * @param handler - A pointer to a function.
 * @return void
 */
void TWI0_CallbackRegister(bool (*callback)(i2c_client_transfer_event_t clientEvent));


#endif /* TWI0_H */
