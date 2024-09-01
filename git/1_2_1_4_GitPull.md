# Git Pull
Ta đã biết cách dùng git fetch để nạp các commit từ kho chứa từ xa, giờ hãy cập nhật công việc của chúng ta để phản ánh những thay đổi đó!

Thực ra thì có nhiều cách đề làm điều này -- một khi bạn đã có các commit này ở kho chứa cục bộ, bạn có thể hợp nhất chúng như với các commit ở các nhánh khác. Nghĩa là bạn có thể sử dụng các câu lệnh sau:

- git cherry-pick o/main
- git rebase o/main
- git merge o/main
- vân vân và mây mây

Thực tế thì, quá trình nạp commit từ kho chứa từ xa và hợp nhất chúng phổ biết đến nỗi Git cung cấp một câu lệnh để làm cả 2 điều này một lúc! Đó là git pull.

Trước tiên hãy xem quá trình nạp và hợp nhất được thực hiện một cách tuần tự. `git fetch``git merge o/main`

Bùùm -- ta tải xuống commit C3 với lệnh git fetch rồi sau đó hợp nhất nó với lệnh git merge o/main. Giờ thì nhánh main đã phản ánh trạng thái mới từ kho chứa từ xa (trong trường hợp này là origin)

Nếu thay vì dó ta dùng git pull thì điều gì xảy ra? `git pull`

Cũng như nhau! Điều đó có nghĩa là git pull về cơ bản là cách làm tắt cho việc thực hiện tuần tự git fetch sau đó là hợp nhất các nhánh từ xa được nạp.

# Practice

`git pull` cập nhật repository local theo repository remote. Hành động này gồm 2 bước cập nhật commit `git fetch` và cập nhật repo `git merge [origin/...]`

> `git pull` tương đương với việc `git fetch` và `git merge`