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
* [Thông tin thêm xem tại đây](https://www.microchip.com/wwwproducts/ProductCompare/PIC16F877A/PIC16F18877).

## 4. Môi Trường Lập Trình, Trình Biên Dịch và Công Cụ Hỗ Trợ

### 4.1. Môi Trường Lập Trình MPLAB X IDE
![](https://microchipdeveloper.com/local--files/mplabx:lesson1-7/mplabx-start-page.PNG)
Môi trường lập trình MPLAB X IDE sử dụng mã nguồn của Netbeans, giao diện thân thiện và dễ sử dụng. Tải về và hướng dẫn cài đặt tại đây: </br>
[Installing MPLAB® X IDE](https://microchipdeveloper.com/mplabx:installation). </br>
Khuyến cáo: Sử dụng Windows 64bit với RAM tối thiểu 4GB và ổ cứng trống từ 20GB.

### 4.2. Trình Biên Dịch MPLAB XC8
Nếu sử dụng ngôn ngữ lập trình C để lập trình cho Kit, bạn cần tải về trình biên dịch XC8. Nó sẽ chuyển mã C thành mã assembly. </br>
![](https://microchipdeveloper.com/local--files/mplabx:lesson1-4/CompilerWork2.png)
</br>Sau đó, nó sẽ chuyển mã assembly sang mã máy dưới dạng file HEX. Bạn cũng có thể sử dụng XC8 để biên dịch cho mã nguồn được viết trực tiếp bằng assembly. 
![](https://microchipdeveloper.com/local--files/mplabx:lesson1-4/HEXFile.png)
</br>Trình biên dịch có thể sử dụng miễn phí, không giới hạn code size, chỉ giới hạn các cấp độ tối ưu mã nguồn. Chức năng tối ưu mã nguồn sử dụng trong sản xuất, không cần thiết trong học tập. Tải về và hướng dẫn cài đặt tại đây: </br>
[Installing MPLAB® XC8 Compiler](https://microchipdeveloper.com/xc8:installation).

### 4.3. Công Cụ Cấu Hình và Tạo Code Mẫu MPLAB Code Configurator (MCC)
MCC là một plugin của MPLAB X IDE, hỗ trợ tạo cấu hình chip, cấu hình các ngoại vi và các API để người dùng sử dụng mà không mất nhiều thời gian xây dựng chúng. </br>
![](https://microchipdeveloper.com/local--files/mplabx:mcc/mccscreen.png)
</br>Tải về và hướng dẫn cài đặt tại đây: </br>
[Install MPLAB® Code Configurator (MCC)](https://microchipdeveloper.com/install:mcc).

## 5. Mạch Nạp Tích Hợp

### 5.1. Nạp Chương Trình Mạch Nạp
Chương trình mạch nạp chỉ cần nạp 1 lần. Các công cụ cần chuẩn bị: </br>
* Mạch nạp chuyên dụng như PICkit3, PICkit4, Snap, ICD3, ICD4, ...
* Header đực 2x4x1.27 dùng cho cổng nạp ICSP theo sơ đồ sau: </br>
Pin2-MCLR, Pin4-PGC, Pin6-PGD, Pin8-VDD (3V3), Pin7-GND </br>
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/Docs/ICSP.png?raw=true)
* Cáp micro USB: Kết nối Kit với nguồn USB 5V bất kỳ. Nếu sử dụng nguồn điện 3.3V cấp từ mạch nạp thì không cần sử dụng cáp micro USB.
* File chương trình tải về từ [master/FW/PG_APP.X/Bootloader_Application.hex](https://github.com/sampidevkit/PIC16FDevKit/raw/master/FW/PG_APP.X/Bootloader_Application.hex).
* MCU là PIC32MM0064GPM028.
Khi nạp thành công, kết nối kit với máy tính bằng cáp micro USB bạn sẽ thấy xuất hiện ổ đĩa như sau: </br>
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/Docs/SAMPIDevKit_MSD_APP.png?raw=true) </br>
Mở ổ đĩa này, bạn sẽ thấy file SAMPIDevKit_INFO.txt chứa nội dung như sau: </br>
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/Docs/SAMPIDevKit_INFO.png?raw=true) </br>
Nếu có lỗi xảy ra, xem ở mục 5.3.
### 5.2. Cập Nhật Chương Trình Mạch Nạp
Để cập nhật chương trình mới cho chip nạp, bạn có thể thực hiện như mục 5.1 hoặc thực hiện như sau: </br>
* Kết nối kit với máy tính bằng cáp micro USB.
* Nhấn giữ nút RESET đến khi các đèn STT, RLED, BLED cùng sáng (khoảng 5s).
* Vào My Computer/ This PC sẽ thấy xuất hiện ổ đĩa BOOTLOADER.
* Tải File chương trình về từ [master/FW/PG_APP.X/Bootloader_Application.hex](https://github.com/sampidevkit/PIC16FDevKit/raw/master/FW/PG_APP.X/Bootloader_Application.hex) và lưu vào ổ đĩa BOOTLOADER. </br>
![](https://github.com/sampidevkit/PIC16FDevKit/blob/master/Docs/SAMPIDevKit_MSD_BLD.png?raw=true)
* Sau khi lưu, kit sẽ tự khởi động lại và hoạt động với chương trình mới. Nếu có lỗi xảy ra, xem ở mục 5.3.

### 5.3 Các Trạng Thái LED Lỗi
* Lỗi khi ghi file hex vào ổ đĩa của kit: File nạp không đúng định dạng hoặc sự cố kết nối USB.
* Chế độ bootloader:
* Chế độ chờ: Led STT nháy với chu kì ON=10ms, OFF=1990ms
* Lỗi không nhận chip: Led STT nháy với chu kì ON=500ms, OFF=1500ms
* Truyền nhận dữ liệu UART: Led STT nháy 1 lần TON=5ms.

## 6. Hướng Dẫn Lập Trình Cơ Bản
[Xem tại đây](https://github.com/sampidevkit/PIC16FDevKit/blob/master/FW/README.md).

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
* [Arduino Uno Pinout](https://content.arduino.cc/assets/Pinout-UNOrev3_latest.png).