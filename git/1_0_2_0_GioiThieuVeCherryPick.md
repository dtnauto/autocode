# Di Chuyển Commit
Cho đến giờ thì ta đã nắm được cơ bản về Git -- commit, rẽ nhánh, và dịch chuyển qua lại trên cây mã nguồn. Chừng ấy khái niệm là đã đủ để tận dụng đến 90% sức mạnh của Git và đáp ứng đủ nhu cầu chính cho nhà phát triển phần mềm.

Tuy nhiên 10% còn lại thì lại khá hữu ích trong các quy trình làm việc phức tạp (hoặc khi bạn vướng phải tình huống khó khăn). Khái niệm tiếp theo chúng ta sẽ đề cập đến là "di chuyển commit" -- đó là cách để nhà phát triển nói rằng "Tôi muốn lấy bản ghi ở đây và cả bản ghi ở đó" một cách chính xác, trôi chảy và linh hoạt.

Nghe thì có vẻ phức tạp, nhưng thực ra khái niệm này khá đơn giản.

## Git Cherry-pick

Lệnh đầu tiên của loạt bài này là git cherry-pick, dạng lệnh là:

`git cherry-pick <Commit1> <Commit2> <...>`

Đó là cách rất trực tiếp để copy một loạt commit xuống dưới vị trí hiện tại của bạn (HEAD). Cá nhân tôi thì rất thích cherry-pick bởi tính tiện dụng và dễ hiểu của nó.

Hãy xem qua một ví dụ!

Ở đây ta có một kho chứa mà ta muốn sao chép thành quả công việc từ nhánh side sang nhánh main. Có thể dùng rebase để làm việc này (kỹ thuật mà ta đã học), nhưng hãy xem thử cherry-pick làm điều này ra sao.`git cherry-pick C2 C4`

Thế thôi! Chúng ta chỉ cần các commit C2 và C4, vì vậy Git sẽ lấy chúng và đặt chúng dưới nhánh hiện tại. Thật đơn giản!

# Practice

`git checkout [name]``git cherry-pick [hashcode] [name2] [name2][^...] [name2]~[...]` lấy các commit đang được tham chiếu rebase lần lượt tạo thành các commit_new1, commit_new2,... và được trỏ lần lượt bởi nhánh [name]. Tóm lại là rebase các commit được tham chiếu tạo thành commit_new và được trỏ trực tiếp bởi nhánh [name]