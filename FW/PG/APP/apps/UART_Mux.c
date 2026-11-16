#include "UART_Mux.h"
#include "system/task_manager.h"

private new_simple_task_t(UART_Bridge_Tasks)
{

    Task_Done();
}

private new_simple_task_t(VCP_Config_Tasks)
{

    Task_Done();
}

private new_simple_task_t(VCP_Icsp_Tasks)
{

    Task_Done();
}

void UART_Mux_SetBaud(uint32_t baud)
{
    TaskManager_End_Task(UART_Bridge_Tasks);
    TaskManager_End_Task(VCP_Config_Tasks);
    TaskManager_End_Task(VCP_Icsp_Tasks);
    // stop UART ports
    UART0_Deinitialize();
    UART1_Deinitialize();

    if(baud==1000000) // configuration mode
    {
        TaskManager_Create_NewSimpleTask(VCP_Config_Tasks);
    }
    else if(baud>1000000) // ICSP mode
    {
        TaskManager_Create_NewSimpleTask(VCP_Icsp_Tasks);
    }
    else // UART bridge mode
    {
        // start UART ports
        UART0_Initialize(baud);
        UART1_Initialize(baud);
        TaskManager_Create_NewSimpleTask(UART_Bridge_Tasks);
    }
}

