#ifndef USB_DEVICE_CDC_CFG_H
#define USB_DEVICE_CDC_CFG_H

#define USE_CDC_FOWARD_TO_UART2             1
#define KIT_USB_Device_CDC_Uart_IO_Deinit() TRISAbits.TRISA2=1
#define KIT_USB_Device_CDC_Uart_IO_Init()   TRISAbits.TRISA2=0
#define USB_CDC_TX_BUFFER                   256
#define USB_CDC_RX_BUFFER                   256

#define USB_CDC_RXD_LedSetHigh()            StatusLED_SetState(SLED_ONESHOT)
#define USB_CDC_RXD_LedSetLow()             StatusLED_SetState(SLED_IDLE)
#define USB_CDC_TXD_LedSetHigh()            StatusLED_SetState(SLED_ONESHOT)
#define USB_CDC_TXD_LedSetLow()             StatusLED_SetState(SLED_IDLE)

#endif