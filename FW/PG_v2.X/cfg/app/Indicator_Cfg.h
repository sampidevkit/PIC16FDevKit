#ifndef INDICATOR_CFG_H
#define INDICATOR_CFG_H

#define NUM_OF_INDICATORS   1
#define IND_ACTIVELOGIC     1
#define IND_INACTIVELOGIC   0
#define LED1_SetState       PG_STTLED_SetValue // System state

typedef enum {
    SLED_IDLE,
    SLED_ACTIVE,
    SLED_RESET,
    SLED_FAIL,
    SLED_ONESHOT
} sled_t;

void StatusLED_SetState(sled_t State);
    
#endif