#include "vcp.h"
#include "project.h"

static bool vcp_is_opened = false;

public
new_simple_task_t(VCP_Tasks) {
  uint8_t cdcData;
  volatile RETURN_CODE_t status = SUCCESS;
  volatile CDC_RETURN_CODE_t cdcStatus = CDC_SUCCESS;

  status = USBDevice_Handle();
  // If USB error detected
  if (SUCCESS == status) {
    vcp_is_opened = USB_CDCDataTerminalReady();

    // Tests if DTE is set and USB ready for transfer
    if (true == vcp_is_opened) {
      // Running CDC Virtual Serial Port handler
      status = USB_CDCVirtualSerialPortHandler();
    }
  } else {
    vcp_is_opened = false;
  }

  Task_Done();
}

void VCP_Init(void) {
  vcp_is_opened = false;
  USB_Start();
  TaskManager_Create_NewSimpleTask(VCP_Tasks);
}

void VCP_Deinit(void) {
  vcp_is_opened = false;
  TaskManager_End_Task(VCP_Tasks);
  USB_Stop();
}

bool VCP_IsOpenned(void) { return vcp_is_opened; }

bool VCP_IsRxReady(void) {
  if (!vcp_is_opened) {
    return false;
  }

  return USB_CDCRxAvailable() > 0;
}

uint8_t VCP_RxByte(void) {
  if (!vcp_is_opened) {
    return 0;
  }

  return USB_CDCReadByte();
}

bool VCP_IsTxReady(void) {
  if (!vcp_is_opened) {
    return false;
  }

  return !USB_CDCTxBusy();
}

bool VCP_IsTxDone(void) {
  if (!vcp_is_opened) {
    return false;
  }

  return USB_CDCTxIsComplete();
}

void VCP_TxByte(uint8_t data) {
  if (vcp_is_opened) {
    USB_CDCWrite(data);
  }
}
