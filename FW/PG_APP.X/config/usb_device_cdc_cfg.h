#ifndef USB_DEVICE_CDC_CFG_H
#define USB_DEVICE_CDC_CFG_H

#ifndef __APP_DEBUG__
#define USE_CDC_FOWARD_TO_UART2     1
#endif

#define USB_CDC_TX_BUFFER           256
#define USB_CDC_RX_BUFFER           256

#define USB_CDC_RXD_LedSetHigh()    StatusLED_SetState(SLED_ONESHOT)
#define USB_CDC_RXD_LedSetLow()     StatusLED_SetState(SLED_IDLE)
#define USB_CDC_TXD_LedSetHigh()    StatusLED_SetState(SLED_ONESHOT)
#define USB_CDC_TXD_LedSetLow()     StatusLED_SetState(SLED_IDLE)

#endif