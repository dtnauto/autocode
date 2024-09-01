# Dịch chuyển trong Git
Trước khi học thêm vài chức năng nâng cao trong Git, ta cần phải biết cách dịch chuyển qua lại các commit có trong kho chứa.

Một khi bạn đã thành thạo với chuyển dịch, khả năng sử dụng các lệnh Git của bạn đã được nâng cao!

## HEAD
Đầu tiên hãy bàn về 'HEAD'. HEAD là cái tên biểu tượng cho commit hiện tại đang được trỏ đến -- về căn bản nó là commit mà bạn đang làm việc.

HEAD luôn luôn trỏ đến commit gần nhất được phản ánh trong cây làm việc. Hầu hết các lệnh Git mà làm thay đổi nội dung cây làm việc thường bắt đầu với HEAD.

Bình thường HEAD trỏ tới tên nhánh (ví dụ bugFix). Khi bạn commit, trạng thái của bugFix được thay đổi và thay đổi này được trông thấy thông qua HEAD.

Xem thử thực tế nào. Ở đây ta sẽ làm rõ HEAD trước và sau khi commit.

Thấy chứ? HEAD đã ẩn dưới nhánh main suốt. `git checkout C1` `git checkout main` `git commit` `git checkout C2`

Thấy chứ? HEAD đã ẩn dưới nhánh main suốt.

### Tháo HEAD
Tháo HEAD đơn giản nghĩa là dán nó vào một commit thay vì một nhánh. Lúc trước thì nó trông như thế này:

HEAD -> main -> C1 `git checkout C1`

Và bây giờ thì nó thế này

HEAD -> C1

Để hoàn thành cấp độ này, hãy tháo HEAD khỏi bugFix và dán nó vào commit.

Chỉ rõ commit bằng mã băm (hash) của nó. Mã băm của mỗi commit nằm trong trong vòng tròn biểu thị commit đó.

# Practice

## Tham chiếu tuyệt đối
Mỗi commit sẽ có duy nhất [hashcode]. có thể coi đây là tham chiếu tuyệt đối của commit
> hashcode~commit

nhánh [name] sẽ trỏ tới commit cuối cùng của chính nó [nhánh [name]](/git/1012ReNhanhVoiGit.md/#branch)
> [name] -> hashcode~commit

nhánh HEAD là nhánh trỏ trực tiếp hoặc gián tiếp qua nhánh [name] tới commit hiện tại
> HEAD -> hashcode~commit
>
> HEAD -> [name] -> hashcode~commit

tháo HEAD nghĩa là checkout trực tiếp tới commit bằng mã băm `git checkout [hashcode]` và có thể coi việc checkout là hành động thay đổi con trỏ của nhánh HEAD

các thao tác với commit có thể thông qua hashcode, nhánh HEAD, nhánh [name]