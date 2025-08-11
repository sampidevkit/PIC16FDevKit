/**
 * I2C Generated Driver API Header File
 *
 * @file {moduleGroupNameLowerCase}_client_types.h
 *
 * @ingroup i2c_client_interrupt
 *
 * @brief This header file contains helper structures for the implementation of the I2C client driver.
 *
 * @version TWI0 Driver Version 2.1.4
 * 
 * @version TWI0 Package Version 8.2.0
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

#ifndef I2C_CLIENT_TYPES_H
#define	I2C_CLIENT_TYPES_H

/**
 * @ingroup i2c_client_interrupt
 * @enum i2c_client_transfer_dir_t
 * @brief Enumeration to determine the direction of data transfer initiated by the host, 
 *        as determined by the I2Cx_TransferDirGet function
 */
typedef enum
{
    I2C_CLIENT_TRANSFER_DIR_WRITE = 0,  /**< I2C client is writing to host */
    I2C_CLIENT_TRANSFER_DIR_READ  = 1, /**< I2C client is reading from host */
} i2c_client_transfer_dir_t;

/**
 * @ingroup i2c_client_interrupt
 * @enum i2c_client_ack_status_t
 * @brief Enumeration for acknowledgment and non-acknowledgment status.
 */
typedef enum
{
    I2C_CLIENT_ACK_STATUS_RECEIVED_ACK = 0,  /**< Host sent an ACK to I2C client */
    I2C_CLIENT_ACK_STATUS_RECEIVED_NACK = 1, /**< Host sent a NACK to I2C client */
} i2c_client_ack_status_t;

/**
 * @ingroup i2c_client_interrupt
 * @enum i2c_client_transfer_event_t
 * @brief Enumeration defining the various I2C event types.
 */
typedef enum
{
    I2C_CLIENT_TRANSFER_EVENT_NONE = 0,          /**< Event indicating that the I2C bus is in an idle state */
    I2C_CLIENT_TRANSFER_EVENT_ADDR_MATCH,        /**< Event indicating that the I2C client has received a matching address */
    I2C_CLIENT_TRANSFER_EVENT_RX_READY ,         /**< Event indicating that the I2C client is prepared to receive data from the host */
    I2C_CLIENT_TRANSFER_EVENT_TX_READY,          /**< Event indicating that the I2C client is ready to transmit data to the host */
    I2C_CLIENT_TRANSFER_EVENT_STOP_BIT_RECEIVED, /**< Event indicating that the I2C client has received a stop bit */
    I2C_CLIENT_TRANSFER_EVENT_ERROR,             /**< Event indicating an error occurred on the I2C bus */
} i2c_client_transfer_event_t;

/**
 * @ingroup i2c_client_interrupt
 * @enum i2c_client_error_t
 * @brief Enumeration that specifies the possible errors in the I2C client driver.
 */
typedef enum
{
    I2C_CLIENT_ERROR_NONE = 0, /**< Indicates no error */
    I2C_CLIENT_ERROR_BUS_ERROR, /**< Indicates an illegal bus operation */ 
    I2C_CLIENT_ERROR_COLLISION, /**< Indicates an error due to bus collision */
} i2c_client_error_t;

#endif /* I2C_CLIENT_TYPES_H */
