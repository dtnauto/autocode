# Diverged Work
Cho đến giờ ta đã biết cách kéo (pull) commit từ nơi khác về và cách đẩy (push) lên những thay đổi của ta. Chúng nhìn có vẻ khá đơn giản, vậy tại sao người ta lại thấy lúng túng về chúng?

Khó khăn đến từ sự dị biệt của cây lịch sử trên kho chứa từ xa. Trước khi đi vào thảo luận chi tiết vấn đề này, hãy xem qua một ví dụ...

Tưởng tượng bạn sao chép một kho chứa vào thứ Hai và bắt đầu phát triển một tính năng mới. Đến thứ Sáu thì bạn đã sẵn sàng để xuất bản thành quả của mình -- nhưng không! Đồng nghiệp của bạn đã viết thêm hàng loạt mã trong một tuần vừa rồi và điều này làm cho chức năng của bạn trở nên lỗi thời. Và họ cũng đã xuất bản những commit này lên kho chứa từ xa chung, vậy giờ thành quả của bạn lại dựa trên phiên bản cũ của dự án mà nó không còn thích đáng nữa.

Trong trường hợp này, lệnh git push trở lên khá nhập nhằng. Nếu bạn dùng git push, liệu git nên thay đổi kho chứa từ xa trở về trạng thái ngày thứ Hai? Hay nó nên cố gắng thêm mã của bạn vào trong khi không xóa mã mới? Hay là nó sẽ bỏ qua hoàn toàn mã của bạn vì nó đã lỗi thời?

Vì có quá nhiều tình huống mơ hồ (dị biệt lịch sử), Git sẽ không cho phép bạn đẩy (push) thay đổi của mình. Nó sẽ ép bạn phải sát nhập trạng thái mới nhất của kho chứa từ xa vào thành phẩm của mình trước khi chia sẻ chúng.

Nói quá nhiều rồi! Đi vào hành động thôi `git push`

Thấy chứ? Không có gì xảy ra cả vì lệnh bị thất bại. git push thất bại vì commit mới nhất của bạn: C3 dựa trên commit C1 ở nhánh từ xa. Nhánh đó đã được cập nhật lên commit C2, nên Git từ chối lệnh đẩy của bạn

Vậy thì giải quyết tình huống này sao giờ? Đơn giản thôi, tất cả những gì bạn cần làm là khiến cho thành quả của mình dựa trên phiên bản mới nhất của nhánh từ xa.

Có vài cách để làm điều này, nhưng cách trực tiếp nhất là bố trí lại (dùng rebase) để di chuyển thành quả của bạn. Cùng xem cách nó hoạt động nào.

Nào bây giờ trước push ta dùng rebase thì...`git fetch``git rebase o/main``git push`

Bùùm! Ta đã cập nhật nhánh từ xa trong kho chứa cục bộ với git fetch, dịch chuyển thành quả của mình để phản ánh thay đổi mới của kho chứa từ xa, sau đó đẩy chúng lên với git push.

Có cách nào khác để cập nhật thành quả của mình khi kho chứa từ xa được cập nhật không? Tất nhiên rồi! Hãy xem xét điều tương tự với merge.

Mặc dù git merge không dịch chuyển commit của bạn (thay vì đó nó tạo ra một commit hợp nhất), đó là cách để nói với Git rằng bạn đã kết hợp tất cả thay đổi từ nhánh từ xa. Đó là bởi vì bây giờ nhánh từ xa đã trở thành một tổ tiên của nhánh cục bộ của bạn, nghĩa là commit của bạn có thể tham chiếu đến tất cả commit có ở nhánh từ xa.

Hãy xem qua bản biểu diễn sau...

Giờ nếu ta dùng merge thay vày rebase thì...`git fetch``git merge o/main``git push`

Bùùm! Ta đã cập nhật đại diện nhánh từ xa tại kho chứa cục bộ với git fetch, hợp nhất (merge) thành quả mới vào thành quả của ta (để phản ánh thay đổi ở nhánh từ xa), sau đó đẩy chúng lên với git push.

Tuyệt vời! Có cách nào để làm việc này mà không phải gõ nhiều lệnh thế không nhỉ?

Tất nhiên rồi -- bạn đã biết rằng git pull là lệnh tắt của fetch và merge. Tương tự như vậy, git pull --rebase là lệnh tắt của fetch và rebase!

Hãy xem thử cách lệnh tắt này hoạt động ra sao.`git pull --rebase``git push`

Giống hệt như trước! Chỉ là lệnh ngắn hơn.

Và giờ với lệnh pull thông thường.`git pull``git push`

Lại một lần nữa, chính xác y hệt như trước!

# Practice

2 cách cập nhật repo local theo repo remote nhanh:
- `git pull` là lệnh tắt của `fetch` và `merge`
- `git pull --rebase` là lệnh tắt của `fetch` và `rebase`

trước khi `git push` thì cần phải `pull` để tránh trường hợp xảy ra conflict trên repo remote. sẽ không thể `push` được commit lên repo remote nếu xảy ra conflict trên repo remote.