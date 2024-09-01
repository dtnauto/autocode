# Git Rebase
Cách thứ 2 để kết hợp thành quả của 2 nhánh là rebase. Rebase về căn bản là chọn một loạt các commit, "sao chép" chúng, và ném chúng sang chỗ khác.

Nghe có vẻ phức tạp, lợi thế của rebase là có thể tạo ra cây lịch sử thẳng tuột. Lịch sử commit nhìn sẽ gọn gàng hơn nhiều.

Xem nó hoạt động thế nào nào...

Giờ ta lại có 2 nhánh; để ý rằng nhánh bugFix đang được chọn (thấy dấu hoa thị chứ?)

Ta muốn chuyển công việc từ bugFix trực tiếp sang main. Theo cách đó thì các chức năng nhìn có vẻ được phát triển tuần tự, trong khi thực tế chúng được phát triển song song.

Dùng lệnh git rebase để thử nào. `git rebase main`

Tuyệt vời! Giờ thành quả của nhánh bugFix nằm ngay trên main và ta có các commit nằm thẳng tuột.

Để ý rằng commit C3 vẫn nằm đâu đó (đã được làm mờ), và commit C3' là bản "sao chép" mà ta dán lên nhánh main.

Vấn đề duy nhất bây giờ là nhánh main vẫn chưa được cập nhật, làm luôn cho nóng nào...

Giờ thì ta đã chuyển sang nhánh main. Tiếp tục dán nó vào bugFix nào... `git rebase bugFix`

Đó! Bởi vì main là cha ông của bugFix, Git đơn giản chuyển tham chiếu của nhánh main tiến lên.

# Practice

`git checkout [name]` `git rebase [name2]` để tái bố trí commit_name2 đang được trỏ bởi nhánh [name2] với commit_name được trỏ bởi nhánh [name] thành commit_new0.1, commit_new0.2, commit_new0.3,...(số commit tùy thuộc vào số commit ở nhánh [name2]) và cuối cùng commit_new được trỏ trực tiếp bởi nhánh [name] mà không được trỏ bởi nhánh [name2]. Để commit_new được trỏ trực tiếp bởi nhánh [name2] thì cần làm thêm bước nữa tương tự `git checkout [name2]` `git rebase [name]` khi đó commit_new sẽ được trỏ bởi nhánh [name2] nhưng sẽ không tạo ra commit nào nữa do commit_new đã có cả commit_name và commit_name2

Chú ý: rebase sẽ đưa các commit ở nhánh rebase vào nhánh đang được checkout do đó rebase sẽ lưu lại lịch sử commit

Các trường hợp này đều tạo ra 1 commit_new giống nhau nhưng khác nhau bởi nhánh trỏ tới:
1. `git checkout [name]` `git rebase [name2]` chỉ được trỏ bởi nhánh [name]
2. `git checkout [name2]` `git rebase [name]` chỉ được trỏ bởi nhánh [name2]
3. `git checkout [name]` `git rebase [name2]` `git checkout [name2]` `git rebase [name]` chỉ được trỏ bởi nhánh [name] và nhánh [name2]

rebase đi với onto nghĩa là tái bố trí commit_rebase nào vào commit_checkout đang được checkout tạo thánh commit_new được trỏ bởi checkout. commit_checkout sẽ bị cắt, commit_new và commit_rebase sẽ ở cùng một luồng. dùng khi muốn tái bố trí commit của mình vào luồng khác

`git rebase [name2] [name]` = `git checkout [name]` `git rebase [name2]`
