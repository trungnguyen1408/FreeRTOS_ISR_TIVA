# FreeRTOS_ISR_TIVA

## Chương trình thực hiện chức năng ngắt UART và sử dụng queue khi sử dụng FreeRTOS.

- Yêu cầu: 
  - Nếu nhận được ký tự O từ UART, bật led Red. Nếu nhận ký tự F, tắt led Red. 
  - Nếu nút nhấn SW1 nhấn, bật led Green, nhả nút SW1, tắt led Green.
  - Nếu nút nhấn SW2 nhấn, bật led Blue, nhả nút SW2, tắt led Blue.
  - Sử dụng FreeRTOS để quản lý các tác vụ, đọc và ghi vào queue.

- Sử dụng phần mềm Putty hoặc Hercules để thực hiện nhập ký tự, tốc độ baud là 115200, data 8 bit, 1 bit stop, không có bit Parity.
