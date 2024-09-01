# Git Commits
Một commit trong một Git repository (kho chứa) lưu trữ một ảnh chụp của tất cả các file trong thư mục của bạn. Như kiểu copy và paste cỡ bự, thậm chí còn tốt hơn thế!

Thế nhưng Git muốn giữ cho các commit nhẹ hết mức có thể, cho nên Git không copy tất cả thư mục một cách mù quáng mỗi khi bạn commit. Nó có thể (khi khả dĩ) nén commit như một tập hợp các thay đổi, hay là một "bản so sánh", giữa một phiên bản kho chứa Git với phiên bản tiếp theo.

Đồng thời Git cũng lưu trữ lịch sử commit nào được tạo ra lúc nào. Đó là tại sao hầu hết các commit có commit tổ tiên phía trên nó -- chúng tôi đã hình tượng hóa mối quan hệ này bằng các mũi tên. Trong cộng tác nhóm thì việc gìn giữ lịch sử là rất có ích!

Có vẻ là hơi nhiều lý thuyết rồi, bây giờ bạn chỉ cần hiểu các commit là các lát cắt của dự án. Các commit rất nhẹ nên việc chuyển qua lại giữa chúng thì nhanh vô cùng!

Thử thực hành chút nào. Ở bên phải chúng ta có mô tả một kho Git (nhỏ). Hiện tại đang có 2 commit, một là commit khởi nguyên C0, và một commit sau đó C1 có thể đã có một vài thay đổi.

Bấm nút bên dưới để tạo một commit mới. `git commit`

Đúng rồi! Tuyệt vời. Bạn vừa tạo thay đổi cho kho chứa và lưu vào commit. Cái commit bạn vừa tạo nó có cha, là C1 đấy, có thể hiểu commit vừa được tạo dựa trên commit cũ hơn là C1.

# Practice
dùng `git commit` để commit hay để lưu lại một sự thay đổi.

các commit sau luôn chứa các commit trước