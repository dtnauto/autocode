# Nhánh và gộp nhánh
Tuyệt! Ta đã biết làm sao để commit và tạo nhánh. Giờ ta cần học cách để tập hợp thành quả của 2 nhánh khác biệt lại với nhau. Đây sẽ là cách để ta phân tách để phát triển chức năng, rồi sau đó hợp nhất nó trở lại.

Cách đầu tiên để hợp nhất thành quả cần xem xét đến là lệnh git merge. Merge trong Git là tạo ra một commit đặc biệt mà có 2 người cha độc nhất. Một commit mà có 2 cha căn bản nghĩa là "Tôi muốn có thành quả của ông này và ông kia nữa, và tất cả ông cha của họ."

Trực quan thì dễ hiểu hơn, sang trang tiếp theo nào.

Ở đây ta có 2 nhánh; mỗi nhánh có 1 commit độc nhất. Có nghĩa là chẳng nhánh nào có đủ "thành quả" trong kho chứa của ta cả. Sửa nó bằng merge nào.

Ta sẽ merge nhánh bugFix vào main. `get merge bugFix`

Wao! Thấy chứ? Trước tiên, main giờ đã trỏ đến commit có 2 cha. Nếu bạn lần theo mũi tên lên trên từ main, bạn sẽ gặp tất cả các commit lên đến commit gốc. Có nghĩa là main giờ đã chứa tất cả thành quả trong kho.

Đồng thời, bạn thấy màu commit thay đổi chứ? Để bạn dễ học hơn, tôi đã phối hợp một số bảng màu. Mỗi nhánh có một màu duy nhất. Mỗi commit mang màu pha trộn của tất cả nhánh chứa nó.

Vì vậy, ở đây chúng ta thấy rằng màu nhánh main được pha trộn vào tất cả các commit, nhưng màu bugFix thì không. Hãy sửa nó nào...

Hãy gộp nhánh main vào bugFix nào: `git checkout bugFix` `git merge main`

Vì bugFix là bậc cha ông của main, Git chẳng phải làm gì cả; nó đơn giản chỉ chuyển bugFix vào commit mà main đang trỏ tới.

Giờ thì tất cả commit đã có cùng màu, nghĩa là mỗi nhánh đã chứa tất cả thành quả trong kho! Ồ hố!

# Practice

`git checkout [name]` `git merge [name2]` để gộp commit_name2 đang được trỏ bởi nhánh [name2] với commit_name được trỏ bởi nhánh [name] thành commit_new và commit_new được trỏ trực tiếp bởi nhánh [name] mà không được trỏ bởi nhánh [name2]. Để commit_new được trỏ trực tiếp bởi nhánh [name2] thì cần làm thêm bước nữa tương tự `git checkout [name2]` `git merge [name]` khi đó commit_new sẽ được trỏ bởi nhánh [name2] nhưng sẽ không tạo ra commit nào nữa do commit_new đã có cả commit_name và commit_name2

Chú ý: merge chỉ đưa commit ở nhánh merge vào nhánh đang được checkout do đó merge không lưu lịch sử commit

Các trường hợp này đều tạo ra 1 commit_new giống nhau nhưng khác nhau bởi nhánh trỏ tới:
1. `git checkout [name]` `git merge [name2]` chỉ được trỏ bởi nhánh [name]
2. `git checkout [name2]` `git merge [name]` chỉ được trỏ bởi nhánh [name2]
3. `git checkout [name]` `git merge [name2]` `git checkout [name2]` `git merge [name]` chỉ được trỏ bởi nhánh [name] và nhánh [name2]


merge đi với into nghĩa là gộp commit_merge nào vào commit_checkout đang được checkout tạo thánh commit_new được trỏ bởi checkout. commit_new và commit checkout sẽ ở cùng một luồng, commit_merge sẽ đi vào luồng đang checkout. dùng khi muốn gộp commit khác vào luồng của mình