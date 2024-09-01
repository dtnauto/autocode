### Toán tử "~"
Giả sử bạn muốn leo lên nhiều cấp trong Git. Dùng ^ vài lần thì tù lắm, nên Git đã có dấu ngã (~) cho việc đó.

Theo sau toán tử ngã (~) là số lượng cha ông mà bạn muốn leo lên (không bắt buộc). Xem thử làm thật thì thế nào nào.

Hãy chỉ định số lượng commit với ~. `git checkout HEAD~4`

BÙUM! Quá chuẩn luôn -- tham chiếu tương đối tuyệt vời.

## Branch forcing
Giờ thì bạn là cao thủ về tham chiếu tương đối rồi, làm thật thôi chứ nhỉ.

Tôi thì hay thường dùng tham chiếu tương đối để dịch chuyển nhánh. Bạn có thể trực tiếp gán lại nhánh cho commit với cú pháp -f. Kiểu như thế này:

git branch -f main HEAD~3

dịch chuyển (ép buộc) nhánh main lên 3 commit phía trên HEAD.

Xem thử cái lệnh trên hoạt động sao nào. `git branch -f main HEAD~3`

Đóóóó! Tham chiếu tương đối cho chúng ta một cách chuẩn xác để trỏ tới C1 và ép nhánh bằng (-f) để dịch chuyển nhanh chóng nhánh tới đó.

# Practice

`git checkout [name]~1` nhánh HEAD sẽ trỏ tới commit cha của commit mà nhánh [name] đang trỏ đến

`git checkout [name]~2` nhánh HEAD sẽ trỏ tới commit ông của commit mà nhánh [name] đang trỏ đến

`git checkout [name]~[...]` số [...] đứng sau toán tử "~" là số commit mà nhánh HEAD sẽ nhảy về

## Branch forcing

`git branch -f [name] [name2]~[...]` `git branch -f [name] [name2][^...]` `git branch -f [name] [hashcode]` là dịch chuyển ép buộc/force nhánh [name] trỏ đến commit khác. Có thể coi việc này tương tự như việc tạo nhánh mới/đổi tên nhánh/... do các nhánh chỉ trỏ tới commit cuối cùng của nhánh đó khi được tạo nên nó mới dùng lệnh branch

