# Nhánh Git
Nhánh trong Git cũng nhẹ đến không ngờ. Chúng chỉ đơn giản là các con trỏ đến commit -- không hơn. Đó là lý do các con chiên Git hay niệm chú:

rẽ nhánh sớm, rẽ nhánh thường xuyên
Bởi vì chẳng tốn bao nhiêu bộ nhớ cho việc rẽ nhánh cả và nó dễ dàng phân chia công việc hơn là có một cái nhánh to tổ chảng.

Khi bạn trộn lẫn commit và nhánh, bạn sẽ thấy chúng kết hợp với nhau thế nào. Hãy nhớ về cơ bản nhánh muốn nói "Tôi muốn thành quả trong commit này và tất cả cha ông của nó"

Nào hãy xem nhánh trong Git hoạt động thế nào.

Giờ chúng ta tạo một nhánh mới tên là newImage. `git branch newImage`

Đó, rẽ nhánh là thế đó! Nhánh newImage giờ đã tham chiếu đến commit C1.

Nào cùng thử thêm nội dung vào nhánh mới này nào. Hãy bấm nút bên dưới. `git commit`

Ồ không! Nhánh main đã di chuyển nhưng nhánh newImage thì không! Đó là do ta không "nằm trên" nhánh mới, đó là tại sao dấu hoa thị (*) nằm trên nhánh main.

Nào cùng bảo Git chuyển ta sang nhánh khác với lệnh

git checkout [name]

Lệnh này sẽ chuyển ta sang nhánh mới trước khi commit. `git checkout newImage` `git commmit`

Đó! Thay đổi của ta đã được lưu sang nhánh mới.


Note: Ở phiên bản Git 2.23, một câu lệnh mới được giới thiệu mang tên git switch, mục đích là để thay thế cho lệnh git checkout, vì lệnh cũ có quá nhiều tham số, mỗi tham số truyền vào sẽ thực hiện nhiều thứ khác nhau. Bài học này vẫn sẽ sử dụng checkout thay vì switch, vì lệnh switch hiện vẫn đang trong giai đoạn thử nghiệm và cú pháp có thể thay đổi trong tương lai. Mặc dù vậy, bạn vẫn có thể thử dùng câu lệnh switch ở ứng dụng này, và tìm hiểu thêm tại đây.

Được rồi! Bạn đã sẵn sàng để tập rẽ nhánh rồi. Khi cửa sổ này đóng lại, tạo một nhánh mới tên là bugFix và chuyển sang nhánh đó.

Tiện thể, có đường tắt đấy: nếu bạn muốn tạo nhánh mới VÀ đồng thời chuyển sang luôn, bạn chỉ cần gõ git checkout -b [yourbranchname].

# Practice

## Branch
nhánh có thể coi như là các con trỏ trỏ tới commit. nhánh [name] thường trỏ tới commit cuối cùng của nhánh đó; trừ trường [hợp dịch chuyển ép buộc](/git/1_0_1_2_ThamChieuTuongDoi.md/#branch-forcing-1) (tuy nhiên nó cũng có thể coi là commit cuối cùng tương tự như [hoàn tác reset](/git/1_0_1_3_HoanTacThayDoiTrongGit.md/#hoàn-tác-trong-git))

`git branch [name]` dùng để tạo nhánh [name] mới (trỏ tới commit tạo nhánh mới đó).

`git commit` sẽ tạo ra commit trên nhánh đang được trỏ bởi nhánh hiện tại ([nhánh HEAD]())

`git checkout [name]` dùng để chuyển sang nhánh [name]

`git branch [name]` + `git checkout [name]` = `git checkout -b [name]`
