# Sáp nhập các nhánh tính năng
Giờ thì bạn đã quen thuộc với tìm nạp, kéo và đẩy, bây giờ chúng tôi sẽ kiểm tra kỹ năng của bạn với một quy trình làm việc mới.

Trong các dự án lớn, các nhà phát triển thường làm việc trên các nhánh tính năng (feature branch) (được phân nhánh từ main) và chỉ thực hiện tích hợp sau khi công việc hoàn thành. Điều này tương tự như mô tả trong bài học trước (đẩy nhánh bên sang kho lưu trữ từ xa), nhưng chúng ta sẽ đi sâu hơn một chút trong phần này.

Một vài nhà phát triển chỉ thực hiện đẩy và kéo khi ở trên nhánh main -- như vậy thì nhánh main luôn luôn được cập nhật với nhánh từ xa (o/main).

Vậy nên với quy trình làm việc này chúng tôi đã kết hợp 2 việc:

- tích hợp nhánh chức năng lên nhánh main, và
- đẩy và kéo từ nhánh từ xa

Hãy xem qua cách cập nhật nhánh main và đẩy lên nhánh từ xa hoạt động như thế nào.

Ta thực thi 2 câu lệnh làm việc sau: `git pull --rebase` `git push` 

- tái bố trí (rebase) thành quả của ta lên commit của nhánh từ xa, và
- xuất bản thành quả của ta lên nhánh từ xa

# Practice

thay đổi nhánh origin bằng rebase