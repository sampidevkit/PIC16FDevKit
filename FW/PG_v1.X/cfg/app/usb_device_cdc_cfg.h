#ifndef USB_DEVICE_CDC_CFG_H
#define USB_DEVICE_CDC_CFG_H

#define USE_CDC_FOWARD_TO_UART2             1
#define KIT_USB_Device_CDC_Uart_IO_Deinit() TRISAbits.TRISA4=1
#define KIT_USB_Device_CDC_Uart_IO_Init()   TRISAbits.TRISA4=0
#define USB_CDC_TX_BUFFER                   256
#define USB_CDC_RX_BUFFER                   256

#define USB_CDC_RXD_LedSetHigh()            Indicator_SetState(1, 5, 1, 1)
#define USB_CDC_RXD_LedSetLow()             
#define USB_CDC_TXD_LedSetHigh()            Indicator_SetState(1, 5, 1, 1)
#define USB_CDC_TXD_LedSetLow()             

#endif