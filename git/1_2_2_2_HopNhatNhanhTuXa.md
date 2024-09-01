# Tại sao không hợp nhất?
Để có thể đẩy cập nhật của bạn lên kho nhánh từ xa, tất cả những gì bạn cần làm là kết nạp thay đổi mới nhất từ nhánh từ xa. Nghĩa là bạn có thể dùng rebase hoặc merge với nhánh từ xa (ví dụ o/main).

Vậy ta có thể sử dụng một trong 2 cách, thì tại sao đến giờ ta chỉ tập trung vào rebase trong các bài học? Tại sao khi làm việc với nhánh từ xa lại ta lại không thích hợp nhất (merge)?

Trong cộng đồng phát triển phần mềm có rất nhiều tranh luận về ưu, nhược, khuyết của việc sử dụng tái bố trí (rebase) hay hợp nhất (merge). Dưới đây là một vài ưu / nhược cơ bản của rebase:

Ưu điểm:

Rebase làm cây commit của bạn trông gọn gàng hơn nhiều vì mọi thứ được xếp theo đường thẳng
Nhược điểm:

Rebase sửa đổi lịch sử của cây commit.
Ví dụ, commit C1 có thể bố trí lên sau C3. Thế là C1' biểu hiện như là nó xuất hiện sau C3 trong khi thực tế nó được hoàn thành trước đó.

Một số nhà phát triển thích lưu giữ lịch sử nên họ ưa thích merge hơn. Những người khác (như tôi chẳng hạn) thì thiên về rebase hơn vì muốn có cây commit gọn gàng. Rốt cuộc cũng chỉ phụ thuộc vào sở thích cá nhân thôi :D

# Practice

thay đổi nhánh origin bằng merge