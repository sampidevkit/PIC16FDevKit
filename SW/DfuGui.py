import queue
import threading
import time
import tkinter as tk
from datetime import datetime
from pathlib import Path
from tkinter import filedialog, messagebox, scrolledtext, ttk

import serial
import serial.tools.list_ports

PAGE_SIZE = 512
ADDR_SIZE = 4
CRC_SIZE = 2
PAYLOAD_BEFORE_CRC = ADDR_SIZE + PAGE_SIZE  # 516 bytes
DECODED_CHUNK_SIZE = PAYLOAD_BEFORE_CRC + CRC_SIZE  # 518 bytes
RESPONSE_TIMEOUT_SEC = 5.0

# Các vùng nhớ tham khảo trên AVR-Dx (byte-addressed):
# - Flash thông thường: 0x00000000 .. 0x0001FFFF (tối đa 128 KB cho DA/DB; EA/EB/DU có thể có vùng map riêng)
# - Fuses / Lockbits / UserRow / BootRow / EEPROM: thường nằm quanh 0x1040 .. 0x17FF
FLASH_128K_LIMIT = 0x20000
SPECIAL_NVM_MIN = 0x1040
SPECIAL_NVM_MAX = 0x17FF


def crc16_ccitt(data: bytes, poly: int = 0x1021, init: int = 0xFFFF) -> int:
    """Tính CRC16-CCITT cho mảng bytes."""
    crc = init
    for byte in data:
        crc ^= byte << 8
        for _ in range(8):
            if crc & 0x8000:
                crc = ((crc << 1) ^ poly) & 0xFFFF
            else:
                crc = (crc << 1) & 0xFFFF
    return crc


def is_all_0xff(data: bytes) -> bool:
    """Kiểm tra toàn bộ dữ liệu của page có phải là 0xFF hay không."""
    return all(b == 0xFF for b in data)


def classify_avr_dx_address(addr: int) -> str:
    """
    Phân loại địa chỉ byte trên AVR-Dx:
    - 'flash_128k': trong 128 KB Flash đầu (0x00000 .. 0x1FFFF)
    - 'special_nvm': vùng Fuse / Lockbits / UserRow / BootRow / EEPROM (0x1040 .. 0x17FF)
    - 'flash_above_128k': trên 128 KB nhưng dưới 0x10000000 (ví dụ chip >128KB hoặc mapped section)
    - 'invalid': không phù hợp với các vùng nhớ AVR-Dx
    """
    if 0x00000 <= addr < FLASH_128K_LIMIT:
        return "flash_128k"
    if SPECIAL_NVM_MIN <= addr <= SPECIAL_NVM_MAX:
        return "special_nvm"
    if FLASH_128K_LIMIT <= addr < 0x10000000:
        return "flash_above_128k"
    return "invalid"


def parse_intel_hex(hex_path: str) -> tuple[dict[int, int], list[str], list[str]]:
    """
    Giải mã file Intel HEX cho AVR-Dx core.
    Trả về:
      - memory: dict {địa_chỉ_byte: giá_trị_byte}
      - console_warnings: cảnh báo chỉ ghi vào Console Log (ví dụ vùng EEPROM/Fuse hoặc địa chỉ lẻ)
      - popup_warnings: cảnh báo nghiêm trọng khi địa chỉ không phù hợp với mọi vùng nhớ AVR-Dx
    """
    memory: dict[int, int] = {}
    console_warnings: list[str] = []
    popup_warnings: list[str] = []
    ext_linear_addr = 0
    ext_segment_addr = 0

    seen_special_nvm = False
    seen_above_128k = False
    seen_invalid = False

    with open(hex_path, "r", encoding="utf-8", errors="ignore") as f:
        for line_no, raw_line in enumerate(f, start=1):
            line = raw_line.strip()
            if not line:
                continue
            if not line.startswith(":"):
                raise ValueError(f"Dòng {line_no} thiếu ký tự ':' của chuẩn Intel HEX.")

            rec = bytes.fromhex(line[1:])
            if len(rec) < 5:
                raise ValueError(f"Dòng {line_no} quá ngắn.")

            if (sum(rec) & 0xFF) != 0:
                raise ValueError(f"Sai checksum Intel HEX tại dòng {line_no}.")

            byte_count = rec[0]
            offset_addr = (rec[1] << 8) | rec[2]
            rec_type = rec[3]
            data = rec[4 : 4 + byte_count]

            if len(data) != byte_count:
                raise ValueError(f"Độ dài dữ liệu không khớp tại dòng {line_no}.")

            if rec_type == 0x00:  # Data record
                base_addr = ext_linear_addr + ext_segment_addr + offset_addr
                for i, val in enumerate(data):
                    addr = base_addr + i
                    if addr in memory and memory[addr] != val:
                        console_warnings.append(
                            f"Ghi đè dữ liệu tại địa chỉ 0x{addr:08X} (0x{memory[addr]:02X} -> 0x{val:02X})."
                        )
                    memory[addr] = val

                    kind = classify_avr_dx_address(addr)
                    if kind == "special_nvm" and not seen_special_nvm:
                        seen_special_nvm = True
                        console_warnings.append(
                            f"Phát hiện dữ liệu vùng đặc biệt AVR-Dx (Fuse/EEPROM/UserRow/BootRow) quanh địa chỉ 0x{addr:08X}."
                        )
                    elif kind == "flash_above_128k" and not seen_above_128k:
                        seen_above_128k = True
                        console_warnings.append(
                            f"Phát hiện địa chỉ 0x{addr:08X} nằm ngoài mốc 128 KB Flash (0x{FLASH_128K_LIMIT:08X})."
                        )
                    elif kind == "invalid" and not seen_invalid:
                        seen_invalid = True
                        popup_warnings.append(
                            f"Địa chỉ 0x{addr:08X} không phù hợp với tất cả các vùng nhớ của AVR-Dx."
                        )

            elif rec_type == 0x01:  # EOF
                break
            elif rec_type == 0x02:  # Extended Segment Address
                if byte_count == 2:
                    ext_segment_addr = ((data[0] << 8) | data[1]) << 4
                    console_warnings.append(
                        f"Phát hiện Extended Segment Address tại dòng {line_no}: 0x{ext_segment_addr:08X}."
                    )
            elif rec_type == 0x04:  # Extended Linear Address
                if byte_count == 2:
                    ext_linear_addr = ((data[0] << 8) | data[1]) << 16
                    console_warnings.append(
                        f"Phát hiện Extended Linear Address tại dòng {line_no}: 0x{ext_linear_addr:08X}."
                    )
            elif rec_type in (0x03, 0x05):
                console_warnings.append(
                    f"Bỏ qua record type 0x{rec_type:02X} (Start Address) tại dòng {line_no}."
                )
            else:
                console_warnings.append(f"Record type lạ 0x{rec_type:02X} tại dòng {line_no}.")

    return memory, console_warnings, popup_warnings


def build_avr_dx_pages_and_eof(
    memory: dict[int, int],
) -> tuple[list[bytes], bytes, int, list[str], list[str]]:
    """
    Tạo danh sách các page (mỗi page 518 bytes: 4B addr0 + 512B data + 2B CRC16-CCITT),
    bỏ qua các page có toàn bộ 512 byte dữ liệu là 0xFF,
    và tạo 1 mảng dữ liệu giả báo kết thúc (516B 0xFF + 2B CRC16-CCITT).
    Trả về (pages, eof_chunk, skipped_0xff_pages, console_warnings, popup_warnings).
    """
    console_warnings: list[str] = []
    popup_warnings: list[str] = []

    if not memory:
        raise ValueError("Tệp HEX không chứa dữ liệu bộ nhớ hợp lệ.")

    sorted_addrs = sorted(memory.keys())
    min_addr = sorted_addrs[0]
    max_addr = sorted_addrs[-1]

    if (min_addr % PAGE_SIZE) != 0:
        console_warnings.append(
            f"Địa chỉ bắt đầu 0x{min_addr:08X} không chia hết cho 512 byte (page size). "
            f"Sẽ căn về đầu page 0x{(min_addr // PAGE_SIZE) * PAGE_SIZE:08X} và đệm 0xFF."
        )

    start_page_addr = (min_addr // PAGE_SIZE) * PAGE_SIZE
    end_page_addr = (max_addr // PAGE_SIZE) * PAGE_SIZE

    pages: list[bytes] = []
    skipped_0xff_count = 0
    curr_page = start_page_addr

    while curr_page <= end_page_addr:
        page_data = bytes(memory.get(curr_page + offset, 0xFF) for offset in range(PAGE_SIZE))

        if is_all_0xff(page_data):
            skipped_0xff_count += 1
        else:
            addr_bytes = curr_page.to_bytes(ADDR_SIZE, byteorder="big")
            raw_516 = addr_bytes + page_data
            crc_val = crc16_ccitt(raw_516)
            crc_bytes = crc_val.to_bytes(CRC_SIZE, byteorder="big")
            pages.append(raw_516 + crc_bytes)

        curr_page += PAGE_SIZE

    if not pages:
        raise ValueError("Tất cả các page sau giải mã đều toàn 0xFF, không có page nào cần truyền.")

    # Mảng dữ liệu giả báo kết thúc: 516 byte 0xFF + 2 byte CRC16-CCITT của 516 byte đó
    eof_payload = bytes([0xFF] * PAYLOAD_BEFORE_CRC)
    eof_crc = crc16_ccitt(eof_payload).to_bytes(CRC_SIZE, byteorder="big")
    eof_chunk = eof_payload + eof_crc

    return pages, eof_chunk, skipped_0xff_count, console_warnings, popup_warnings


def wrap_frame(chunk_518: bytes) -> bytes:
    """
    Đóng khung truyền:
    ['\n'] + [Hex ASCII của mảng 518 byte] + ['\r']
    """
    hex_ascii = chunk_518.hex().upper().encode("ascii")
    return b"\n" + hex_ascii + b"\r"


def format_chunk_detail(label: str, chunk_518: bytes) -> str:
    """Định dạng chi tiết 1 mảng 518 byte (4B addr + 512B data + 2B CRC16-CCITT) để ghi vào tệp log."""
    addr_bytes = chunk_518[:ADDR_SIZE]
    data_512 = chunk_518[ADDR_SIZE : ADDR_SIZE + PAGE_SIZE]
    crc_bytes = chunk_518[ADDR_SIZE + PAGE_SIZE :]

    addr_val = int.from_bytes(addr_bytes, byteorder="big")
    crc_val = int.from_bytes(crc_bytes, byteorder="big")
    hex_ascii_full = chunk_518.hex().upper()

    data_lines = []
    for row_off in range(0, PAGE_SIZE, 32):
        row_hex = data_512[row_off : row_off + 32].hex().upper()
        data_lines.append(f"    +0x{row_off:03X}: {row_hex}")

    return (
        f"--- {label} ---\n"
        f"  Address (4B) : 0x{addr_val:08X} ({addr_bytes.hex().upper()})\n"
        f"  CRC16   (2B) : 0x{crc_val:04X} ({crc_bytes.hex().upper()})\n"
        f"  Hex ASCII    : {hex_ascii_full}\n"
        f"  Data (512B)  :\n" + "\n".join(data_lines)
    )


class AvrDxFlasherGUI:
    def __init__(self, root: tk.Tk) -> None:
        self.root = root
        self.root.title("AVR-Dx Serial Page Flasher")
        self.root.geometry("780x500")

        self.current_hex_path: str = ""
        self.page_chunks: list[bytes] = []
        self.eof_chunk: bytes | None = None
        self.log_queue: queue.Queue[str] = queue.Queue()
        self.console_history: list[str] = []
        self.is_downloading = False

        self._build_ui()
        self.scan_serial_ports()
        self._poll_logs()

        # Đăng ký xử lý khi đóng cửa sổ GUI
        self.root.protocol("WM_DELETE_WINDOW", self.on_close)

    def _build_ui(self) -> None:
        pad = {"padx": 8, "pady": 6}

        # Hàng 1: Combox Serial Port, Combox Baud Rate, nút SCAN
        row1 = tk.Frame(self.root)
        row1.pack(fill=tk.X, **pad)

        tk.Label(row1, text="Serial Port:").pack(side=tk.LEFT)
        self.cb_port = ttk.Combobox(row1, state="readonly", width=18)
        self.cb_port.pack(side=tk.LEFT, padx=(4, 12))

        tk.Label(row1, text="Baud Rate:").pack(side=tk.LEFT)
        self.cb_baud = ttk.Combobox(
            row1,
            state="readonly",
            values=["9600", "19200", "115200", "921600"],
            width=12,
        )
        self.cb_baud.set("115200")
        self.cb_baud.pack(side=tk.LEFT, padx=(4, 12))

        self.btn_scan = tk.Button(row1, text="SCAN", width=10, command=self.scan_serial_ports)
        self.btn_scan.pack(side=tk.LEFT)

        # Hàng 2: Textbox Hex file path + nút Browse Hex
        row2 = tk.Frame(self.root)
        row2.pack(fill=tk.X, **pad)

        tk.Label(row2, text="Hex File:").pack(side=tk.LEFT)
        self.txt_hex_path = tk.Entry(row2)
        self.txt_hex_path.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=(4, 8))

        self.btn_browse = tk.Button(row2, text="Browse Hex", width=12, command=self.browse_hex)
        self.btn_browse.pack(side=tk.LEFT)

        # Hàng 3: nút Download
        row3 = tk.Frame(self.root)
        row3.pack(fill=tk.X, **pad)

        self.btn_download = tk.Button(
            row3, text="Download", width=14, command=self.start_download
        )
        self.btn_download.pack(side=tk.LEFT)

        # Hàng 4: Rich Textbox for console log
        row4 = tk.LabelFrame(self.root, text="Console Log")
        row4.pack(fill=tk.BOTH, expand=True, **pad)

        self.txt_log = scrolledtext.ScrolledText(row4, wrap=tk.WORD, state=tk.NORMAL)
        self.txt_log.pack(fill=tk.BOTH, expand=True, padx=4, pady=4)

    def log(self, msg: str) -> None:
        timestamped = f"[{datetime.now().strftime('%H:%M:%S.%f')[:-3]}] {msg}"
        self.log_queue.put(timestamped)

    def _poll_logs(self) -> None:
        while not self.log_queue.empty():
            msg = self.log_queue.get_nowait()
            self.console_history.append(msg)
            self.txt_log.insert(tk.END, msg + "\n")
            self.txt_log.see(tk.END)
        self.root.after(20, self._poll_logs)

    def scan_serial_ports(self) -> None:
        self.cb_port.set("")
        ports = [p.device for p in serial.tools.list_ports.comports()]
        self.cb_port["values"] = ports
        if ports:
            self.cb_port.current(0)
        self.log(
            f"[SCAN] Đã cập nhật {len(ports)} cổng Serial: {', '.join(ports) if ports else 'Không có'}"
        )

    def browse_hex(self) -> None:
        path = filedialog.askopenfilename(
            title="Chọn tệp HEX cho AVR-Dx",
            filetypes=[("HEX files", "*.hex"), ("All files", "*.*")],
        )
        if not path:
            return

        self.current_hex_path = path
        self.txt_hex_path.delete(0, tk.END)
        self.txt_hex_path.insert(0, path)

        try:
            memory, p_console_warns, p_popup_warns = parse_intel_hex(path)
            pages, eof_chunk, skipped_0xff, b_console_warns, b_popup_warns = (
                build_avr_dx_pages_and_eof(memory)
            )

            self.page_chunks = pages
            self.eof_chunk = eof_chunk

            console_warns = p_console_warns + b_console_warns
            popup_warns = p_popup_warns + b_popup_warns

            self.log(f"[HEX] Giải mã thành công: {path}")
            self.log(
                f"[HEX] Tổng số mảng page cần truyền: {len(self.page_chunks)} "
                f"(đã bỏ qua {skipped_0xff} page toàn 0xFF, +1 mảng kết thúc giả)"
            )

            for w in console_warns:
                self.log(f"[WARN] {w}")

            for w in popup_warns:
                self.log(f"[ERR_ADDR] {w}")

            # Chỉ bật cửa sổ cảnh báo khi có địa chỉ không phù hợp với tất cả vùng nhớ AVR-Dx
            if popup_warns:
                messagebox.showwarning(
                    "Cảnh báo địa chỉ bộ nhớ AVR-Dx",
                    "Tệp HEX chứa địa chỉ không phù hợp với tất cả các vùng nhớ của AVR-Dx:\n\n"
                    + "\n".join(popup_warns),
                )
        except Exception as exc:
            self.page_chunks = []
            self.eof_chunk = None
            self.log(f"[ERR] Lỗi giải mã HEX: {exc}")
            messagebox.showerror("Lỗi giải mã HEX", str(exc))

    def _set_ui_busy(self, busy: bool) -> None:
        state = tk.DISABLED if busy else tk.NORMAL
        self.btn_scan.config(state=state)
        self.btn_browse.config(state=state)
        self.btn_download.config(state=state)
        self.cb_port.config(state=tk.DISABLED if busy else "readonly")
        self.cb_baud.config(state=tk.DISABLED if busy else "readonly")

    def start_download(self) -> None:
        if self.is_downloading:
            return

        port = self.cb_port.get().strip()
        baud_str = self.cb_baud.get().strip()

        if not port:
            messagebox.showwarning("Thiếu cổng Serial", "Vui lòng chọn Serial Port.")
            return
        if not baud_str:
            messagebox.showwarning("Thiếu Baud Rate", "Vui lòng chọn Baud Rate.")
            return
        if not self.page_chunks or self.eof_chunk is None:
            messagebox.showwarning("Chưa có dữ liệu", "Vui lòng chọn tệp *.hex hợp lệ trước.")
            return

        frames_to_send = [
            (f"Page {i}/{len(self.page_chunks)}", wrap_frame(p))
            for i, p in enumerate(self.page_chunks, 1)
        ]
        frames_to_send.append(("EOF Dummy", wrap_frame(self.eof_chunk)))

        self.is_downloading = True
        self._set_ui_busy(True)

        threading.Thread(
            target=self._download_worker,
            args=(port, int(baud_str), frames_to_send),
            daemon=True,
        ).start()

    def _wait_for_response(self, ser: serial.Serial, timeout_sec: float = RESPONSE_TIMEOUT_SEC) -> bytes:
        """
        Đọc phản hồi từ MCU cho đến khi nhận được '\nOK\r' hoặc '\nERR\r',
        hoặc hết thời gian timeout_sec. Trả về ngay khi phát hiện chuỗi phản hồi.
        """
        deadline = time.monotonic() + timeout_sec
        buf = bytearray()

        while time.monotonic() < deadline:
            waiting = ser.in_waiting
            chunk = ser.read(waiting if waiting > 0 else 1)
            if chunk:
                buf.extend(chunk)
                if b"\nOK\r" in buf or b"\nERR\r" in buf:
                    return bytes(buf)

        return bytes(buf)

    def _send_with_retry(
        self, ser: serial.Serial, label: str, frame: bytes, max_retries: int = 5
    ) -> bool:
        for attempt in range(1, max_retries + 1):
            ser.reset_input_buffer()
            ser.write(frame)
            ser.flush()
            self.log(f"[TX] Gửi {label} (lần {attempt}/{max_retries})")

            resp = self._wait_for_response(ser, RESPONSE_TIMEOUT_SEC)

            if not resp:
                self.log(
                    f"[TIMEOUT] Không nhận được phản hồi trong 5s khi gửi {label}. Ngắt kết nối."
                )
                return False

            if b"\nOK\r" in resp:
                self.log(f"[RX] Nhận OK cho {label}.")
                return True
            elif b"\nERR\r" in resp:
                self.log(f"[RX] Nhận ERR cho {label} (lần {attempt}/{max_retries}).")
            else:
                self.log(f"[RX] Phản hồi không hợp lệ ({resp!r}) cho {label}.")

        self.log(f"[ABORT] Gửi lại {label} quá {max_retries} lần thất bại. Ngắt kết nối.")
        return False

    def _download_worker(
        self, port: str, baudrate: int, frames: list[tuple[str, bytes]]
    ) -> None:
        ser: serial.Serial | None = None
        try:
            self.log(f"[SERIAL] Mở cổng {port} @ {baudrate} bps...")
            ser = serial.Serial(port=port, baudrate=baudrate, timeout=0.05)

            for label, frame in frames:
                ok = self._send_with_retry(ser, label, frame, max_retries=5)
                if not ok:
                    return

            self.log("[DONE] Đã truyền toàn bộ page có dữ liệu và mảng báo kết thúc thành công!")

        except Exception as exc:
            self.log(f"[ERR] Lỗi truyền Serial: {exc}")
        finally:
            if ser is not None and ser.is_open:
                ser.close()
                self.log(f"[SERIAL] Đã ngắt kết nối {port}.")
            self.root.after(0, self._finish_download)

    def _finish_download(self) -> None:
        self.is_downloading = False
        self._set_ui_busy(False)

    def save_session_log_file(self) -> Path:
        """Ghi toàn bộ console log và toàn bộ dữ liệu đã giải mã ra tệp log khi tắt GUI."""
        while not self.log_queue.empty():
            self.console_history.append(self.log_queue.get_nowait())

        log_dir = Path(__file__).resolve().parent / "logs"
        log_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        log_path = log_dir / f"avr_dx_session_{stamp}.log"

        sections: list[str] = []
        sections.append("============================================================")
        sections.append("AVR-Dx SERIAL PAGE FLASHER - SESSION LOG")
        sections.append(f"Saved At : {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        sections.append(f"HEX File : {self.current_hex_path or '(Chưa chọn tệp HEX)'}")
        sections.append(f"Pages    : {len(self.page_chunks)}")
        sections.append("============================================================\n")

        # Phần 1: Console Log
        sections.append("=== CONSOLE LOG ===")
        if self.console_history:
            sections.extend(self.console_history)
        else:
            sections.append("(Không có nội dung Console Log)")
        sections.append("")

        # Phần 2: Toàn bộ dữ liệu đã giải mã
        sections.append("=== DECODED DATA (PAGES + EOF DUMMY) ===")
        if self.page_chunks:
            total_pages = len(self.page_chunks)
            for idx, chunk in enumerate(self.page_chunks, start=1):
                sections.append(format_chunk_detail(f"Page {idx}/{total_pages}", chunk))
            if self.eof_chunk is not None:
                sections.append(format_chunk_detail("EOF Dummy (516B 0xFF + 2B CRC16)", self.eof_chunk))
        else:
            sections.append("(Chưa có dữ liệu page đã giải mã)")

        log_path.write_text("\n".join(sections) + "\n", encoding="utf-8")
        return log_path

    def on_close(self) -> None:
        try:
            saved_path = self.save_session_log_file()
            print(f"[LOG] Đã lưu tệp log phiên làm việc tại: {saved_path}")
        except Exception as exc:
            print(f"[LOG][ERR] Không thể lưu tệp log khi đóng GUI: {exc}")
        finally:
            self.root.destroy()


if __name__ == "__main__":
    root = tk.Tk()
    app = AvrDxFlasherGUI(root)
    root.mainloop()
    