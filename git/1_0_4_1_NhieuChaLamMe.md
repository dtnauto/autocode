# Tìm về cội nguồn
Cũng giống ký hiệu ~, ta cũng có thể thêm số theo sau ký hiệu ^.

Nhưng mà không giống như (~) con số theo sau là số lượng thế hệ commit, con số theo sau ^ chỉ định commit cha từ commit merge. Hãy nhớ rằng commit merge có nhiều cha, cho nên chọn cha nào cũng khá là mơ hồ.

Thông thường thì sẽ chọn cha "đầu tiên" từ commit merge, nhưng nếu sau dấu ^ có một con số thì cách hành xử sẽ khác đi.

Không nói dông dài nữa, làm thử một ví dụ nào.

Ở đây ta có 1 commit merge. Nếu ta dùng lệnh main^ mà không bổ nghĩa cho nó, ta sẽ đi ngược lên commit cha đầu tiên của merge commit.

(Trong hình minh họa bên trái thì commit cha đầu tiên được xếp thẳng hàng ngay phía trên của commit merge.) `git checkout main^`

Dễ dàng -- đó là cách mà ta thường làm.

Nào bây giờ hãy chỉ định commit cha thứ hai thử... `git checkout main^2`

Thấy chứ? Ta đã leo lên commit cha khác lúc trước.

Dùng bổ ngữ ^ và ~ cho ta khả năng di chuyển trên cây lịch sử:
`git checkout HEAD~``git checkout HEAD^2``git checkout HEAD~2`

Nhanh như chớp!

Thâm chí còn ghê gớm hơn khi ta kết hợp chúng với nhau! Hãy xem thử:`git checkout HEAD~^2~2`

Cùng con đường như lúc trước, nhưng chỉ cần 1 dòng lệnh.

# Practice

## Toán tử "^"

`git checkout [name]^[...]` nhánh HEAD sẽ trỏ tới commit cha thứ [...] đứng sau toán tử "^" của commit mà nhánh [name] đang trỏ đến

`git checkout [name]~[...][^...]^[...]` checkout đến commit được tham chiếu tương đối bằng cách kết hợp này