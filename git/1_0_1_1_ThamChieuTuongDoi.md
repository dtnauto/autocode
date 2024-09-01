# Tham chiếu tương đối

Dịch chuyển trong Git bằng cách chỉ định mã băm (hash) của commit cỏ vẻ hơi buồn tẻ. Trong đời thực thì sẽ không có mô tả Git trực quan ngay bên cạnh terminal của bạn đâu, nên nếu bạn muốn nhìn mã băm của commit thì phải dùng git log thôi.

Hơn nữa, mã băm thực tế thường dài hơn rất nhiều. Ví dụ, mã băm của commit được giới thiệu trong phần trước là fed2da64c0efc5293610bdd892f82a58e8cbc5d8. Đọc mà xoắn hết cả lưỡi...

Được cái là Git cũng khá thông minh về mã băm. Chỉ cần cung cấp kí tự mã băm đủ để phân biệt với các commit khác. Cho nên tôi có thể đơn giản chỉ cần gõ fed2 thay vì cái chuỗi dài ngoằng phía trên.

Như tôi đã nói, xác định commit bằng mã băm chẳng hề thuận tiện tẹo nào, đó là tại sao Git có những tham chiếu tương đối. Chúng rất tuyệt vời!

Với tham chiếu tương đối, bạn có thể bắt đầu từ những nơi có thể ghi nhớ được (như là nhánh bugFix hoặc HEAD) và làm việc trên đó.

Những commit tương đối (relative commits) rất mạnh mẽ, nhưng chúng tôi sẽ chỉ giới thiệu 2 loại đơn giản sau:

- Dịch chuyển lên 1 commit mỗi lần với ^
- Dịch chuyển lên nhiều commit mỗi lần với ~<số>

### Toán tử "^"
Xem thử cái dấu mũ (^) trước nào. Mỗi lần bạn nối nó với một cái tên tham chiếu, bạn đang ra lệnh cho Git tìm kiếm cha của một commit cụ thể.

Cho nên main^ nghĩa là "cha đầu tiên của main".

main^^ là ông nội (tổ tiên thế hệ 2) của main

Thử nhảy sang commit trước main nào `git checkout main^`

BÙUM! Đã xong. Đơn giản hơn gõ mã băm nhiều.

Bạn cũng có thể dùng HEAD như là tham chiếu tương đối. Thử dùng nó để leo commit vài lần nào. `git checkout C3` `git checkout HEAD^` `git checkout HEAD^^`

Game là dễ! Du hành ngược thời gian với HEAD^

# Practice

`git checkout [name]^` nhánh HEAD sẽ trỏ tới commit cha của commit mà nhánh [name] đang trỏ đến

`git checkout [name]^^` nhánh HEAD sẽ trỏ tới commit ông của commit mà nhánh [name] đang trỏ đến

số lượng toán tử "^" là số commit mà nhánh HEAD sẽ nhảy về


