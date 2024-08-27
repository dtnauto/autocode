# RTOS
## Định nghĩa
- Real-Time Operating System hay hệ điều hành thời gian thực cho phép ứng dụng chạy đa tác vụ

- Các hệ điều hành RTOS:
    - RT Thread
    - Free RTOS
    - uC/OS
    - CMSIS

> phần chia thời gian thực thi các task. -> thực thi song song chương trình

## Task API
- Task là công việc cần phải xử lý. Trong FreeRTOS có thể coi task giống như thread.
- xTaskCreate() dùng để tạo ra 1 task
## Task state
- Ready: Task đã sẵn sàng để có thể thực thi nhưng chưa được thực thi do có các Task khác với độ ưu tiên ngang bằng hoặc hơn đang chạy. Các Task ở đây cũng được sắp xếp theo đọ ưu tiên để sẵn sàng Running khi Task trong trạng thái Running thực thi xong
- Running: Task đang được thực thi. Task sẽ được lấy từ hàng đợi các Task ở trạng thái Ready. Khi thực thi nếu Task này cần chờ đợi sự kiện gì thì sẽ được chuyển sang trạng thái Block hoặc nếu task khác cần thực thi (có thể có độ ưu tiên cao hơn, ngắt,...) thì có thể gọi ham vTaskSuspend() để chuyển sang trạng thái Suspended
- Blocked: Task đang chờ sự kiện để có thể thực thi tiếp. Khi có sự kiện thì sẽ được đưa vào trạng thái Ready
- Suspended: Task đang ở trạng thái treo như trạng thái Blocked. Nhưng để thực thi tiếp thì cần gọi hàm vTaskResume() mới được chuyển sang trạng thái Ready

