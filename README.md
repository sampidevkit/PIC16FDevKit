# PIC16F1887X MICROCONTROLLER DEVELOPMENT KIT
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/HW/Product/Picture/PIC16DevKit.png?raw=true)
<br/>Đây là thiết kế mở - một kit phát triển vi điều khiển 8-bit họ PIC16F18875/6/7. Kit được trang bị các tính năng như sau:<br/>
* PCB và các ngõ vào ra theo định dạng của Arduino Uno.
* Mạch nạp tích hợp theo kiểu USB lưu trữ, tệp hex sẽ được kéo - thả để nạp trực tiếp mà không cần sử dụng phần mềm nạp cũng như các mạch nạp bên ngoài như PICKit, ICD, ..., tuy nhiên người dùng vẫn có thể sử dụng được các mạch nạp chuyên dụng kết nối với cổng ICSP được thiết kế sẵn.
* Cổng chuyển đổi USB - UART, người dùng không cần sử dụng thêm thiết bị chuyển đổi bên ngoài như CP2102, FT232, ...
* 4kByte SRAM dùng để mở rộng bộ nhớ tạm cho MCU chính. Chức năng này được thực hiện bởi chip nạp thông qua giao tiếp I2C.
* 2 ngõ ra mở rộng để điều khiển LED được trang bị sẵn trên board. Chức năng này cũng được thực hiện bởi chip nạp thông qua giao tiếp I2C.
* Bộ nhớ Flash 4Mbit, lưu dữ liệu, cấu hình của ứng dụng người dùng. Giao tiếp SPI với MCU chính.
* Cảm biến nhiệt độ dạng tín hiệu tương tự.
* Chip đồng hồ thời gian thực độ chính xác cao. Giao tiếp I2C với MCU chính.<br/>
## 1. Sơ Đồ Khối
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/Docs/Diagram.png?raw=true)
## 2. Sơ Đồ Nguyên Lý
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/HW/Product/Schematic/PIC16DevKit_001.png?raw=true)
<br/>
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/HW/Product/Schematic/PIC16DevKit_002.png?raw=true)
## 3. Vi Điều Khiển Chính PIC16F1887x
Họ vi điều khiển PIC16F1887x là họ vi điều khiển 8-bit thế hệ mới của PIC16F887/PIC16F877A. Tương thích hoàn toàn về mặt I/O và các chức năng cơ bản. Bên cạnh đó, chip được trang bị các tính năng mới hơn như:<br/>
* Dao động nội lên đến 32MHz và tốc độ đạt 8MIPS so với 5MIPS của chip cũ.
* Bộ nhớ chương trình từ 7kByte đến 56kByte, RAM 512byte-4096byte, EEPROM nội lên đến 256byte.
* Chip được trang bị 1x UART, 2x SPI/I2C, 5x Capture/Compare/PWM (CCP), 2x PWM 10bit, 3x timer 8bit, 4x timer 16bit.
* ADC 10 bit sử dụng được cho tất cả các I/O, 1x DAC 5bit.
* Tính năng mới: 4x cổng logic khả trình (CLC), tính năng bắt điểm 0 của tín hiệu AC (ZCD), CRC, NCO, CWG, DSM, ...
* Ngõ vào ra của các module chức năng có thể cấu hình trên bất kì I/O nào nhờ chức năng Peripheral Pin Select (PPS).
* Năng lượng thấp, phù hợp cho các ứng dụng sử dụng pin.<br/>
[Thông tin thêm](https://www.microchip.com/wwwproducts/ProductCompare/PIC16F877A/PIC16F18877).
## 4. Môi Trường Lập Trình, Trình Biên Dịch và Công Cụ Hỗ Trợ

### 4.1. [Môi Trường Lập Trình MPLAB X IDE](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-x-ide).

### 4.2. [Trình Biên Dịch MPLAB XC8](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-xc-compilers).

### 4.3. [Công Cụ Cấu Hình và Tạo Code Mẫu MPLAB Code Configurator (MCC)](https://www.microchip.com/en-us/development-tools-tools-and-software/embedded-software-center/mplab-code-configurator#Downloads).

## 5. Mạch Nạp Tích Hợp

### 5.1. Nạp Bootloader

### 5.2. Nạp Application

### 5.3. Kích Hoạt Kit

### 5.4. Các Mã Lỗi

## 6. Tài Liệu Kỹ Thuật:
* [Target MCU PIC16LF18877](https://ww1.microchip.com/downloads/en/DeviceDoc/PIC16LF1885777_Data_Sheet_40001825F.pdf).
* [PIC16LF18877 Programming Specification](https://ww1.microchip.com/downloads/en/DeviceDoc/40001753B.pdf).
* [Programmer MCU PIC32MM0064GPM028](https://ww1.microchip.com/downloads/en/DeviceDoc/PIC32MM0256GPM064-Family-Data-Sheet-DS60001387D.pdf).
* [PIC32MM0064GPM028 Programming Specification](https://ww1.microchip.com/downloads/en/DeviceDoc/PIC32MM-Families-Flash-Programming-Specification-DS60001364E.pdf).
* [Flash memory SST25VF040B](https://ww1.microchip.com/downloads/en/DeviceDoc/20005051E.pdf).
* [Temperature sensor MCP9700](https://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf).
* [Real time clock and calendar RV3028-C7](https://www.microcrystal.com/fileadmin/Media/Products/RTC/Datasheet/RV-3028-C7.pdf).
* [Voltage level shifter 74LVC2T45GS-Q100X](https://assets.nexperia.com/documents/data-sheet/74LVC_LVCH2T45_Q100.pdf).
* [LDO 3.3V AP2210](https://www.diodes.com/assets/Datasheets/AP2210.pdf).
* [LDO 3.3V MCP1700](https://ww1.microchip.com/downloads/en/DeviceDoc/MCP1700-Data-Sheet-20001826F.pdf).
* [SMPS 5V MP1470](https://www.monolithicpower.com/en/documentview/productdocument/index/version/2/document_type/Datasheet/lang/en/sku/MP1470/document_id/327/).
* [SMPS 5V AP62150](https://www.diodes.com/assets/Datasheets/AP62150.pdf).
* [Button PTS 815](https://www.ckswitches.com/media/2728/pts815.pdf).
* [Inductor 3.3uH/6.8uH CD53 Series](http://www.coilsjs.com/product/product_images/b/cn_D_1_108.pdf).
* [Switching diode 1N4148W-E3-18](https://www.vishay.com/docs/85748/1n4148w.pdf).
* [Schottky Power Rectifier SS24](https://www.onsemi.com/pdf/datasheet/ss24-d.pdf).
* [Resettable fuse 0ZCG0050AF2C](https://www.belfuse.com/resources/datasheets/circuitprotection/ds-cp-0zcg-series.pdf).
* [Micro USB connector 10118192-0002LF](https://www.amphenol-icc.com/media/wysiwyg/files/drawing/10118192.pdf).
* [Mosfet P-CH 2A FDN340P](https://www.onsemi.com/pdf/datasheet/fdn340p-d.pdf).
* [Test pin RCT-0C](https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773266&DocType=DS&DocLang=English).
* [Female header 2x4x1.27mm SFMC-104-T1-S-D](http://suddendocs.samtec.com/prints/sfm-thd.pdf).
* [Female header 2x2x2.54mm M20-8760242](https://cdn.harwin.com/pdfs/M20-876.pdf).
* [Female header 1x10/8/7x2.54mm SSW-1XX-01-T-S](http://suddendocs.samtec.com/catalog_english/ssq_th.pdf).
* [Male header 1x10/8/7x2.54mm TSW-1XX-23-L-S](http://suddendocs.samtec.com/catalog_english/tsw_th.pdf).
* [Arduino Uno Dimension](http://arduino.cc/documents/ArduinoUno.dxf).
* [Arduino Uno Pinout](https://content.arduino.cc/assets/Pinout-UNOrev3_latest.png)