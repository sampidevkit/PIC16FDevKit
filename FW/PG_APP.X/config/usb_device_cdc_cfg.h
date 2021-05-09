#ifndef USB_DEVICE_CDC_CFG_H
#define USB_DEVICE_CDC_CFG_H

#ifndef __APP_DEBUG__
//#define USE_CDC_FOWARD_TO_UART2             1
#define USE_CDC_FOWARD_TO_SOFTWARE          1
#endif

#define UART_Initialize()                   SOFTPORT_Initialize()
#define UART_IsRxReady()                    SOFTPORT_IsRxReady()
#define UART_Read()                         SOFTPORT_Read()
#define UART_IsTxReady()                    SOFTPORT_IsTxReady()
#define UART_Write(Data)                    SOFTPORT_Write(Data)
#define KIT_USB_Device_CDC_Uart_Enable()    SOFTPORT_Enable()
#define KIT_USB_Device_CDC_Uart_Disable()   SOFTPORT_Disable()
#define KIT_USB_Device_CDC_SetBaudrate(x)   SOFTPORT_SetBaudrate(x)

#define USB_CDC_TX_BUFFER                   256
#define USB_CDC_RX_BUFFER                   256

#define USB_CDC_RXD_LedSetHigh()            StatusLED_SetState(SLED_ONESHOT)
#define USB_CDC_RXD_LedSetLow()             StatusLED_SetState(SLED_IDLE)
#define USB_CDC_TXD_LedSetHigh()            StatusLED_SetState(SLED_ONESHOT)
#define USB_CDC_TXD_LedSetLow()             StatusLED_SetState(SLED_IDLE)

#endif