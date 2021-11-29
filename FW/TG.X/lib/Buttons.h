#ifndef BUTTONS_H
#define BUTTONS_H

typedef enum
{
    TASK_INIT=0,
    TASK_STOP,
    TASK_FORWARD,
    TASK_REVERSE
} task_t;

typedef struct
{
    int1 State;
    unsigned int8 Count;
} bt_t;

#define Button_Init(btCxt, Pin)  do{((bt_t)(btCxt)).State=1; ((bt_t)(btCxt)).Count=0;}while(0)

#endif