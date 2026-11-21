#include "common/debug.h"
#include "system/task_manager.h"
#include "vcp.h"

void debug_usr_init(void) {}

void debug_init(void) {}

void debug_deinit(void) {}

void debug_port_write(uint8_t c) {
  while (!VCP_IsTxReady()) {
    TaskManager();
  }

  VCP_TxByte(c);
}
