# Git Rebase Tương tác
Khi bạn biết rõ mình muốn những commit nào (và mã băm tương ứng của chúng) thì Git cherry-pick là công cụ tuyệt vời -- nó đơn giản đến bất ngờ.

Nhưng mà lỡ như bạn không biết mình cần commit nào thì sao? May mà Git cũng có công cụ cho việc này! Ta có thể dùng rebase tương tác cho việc này -- đó là cách tốt nhất để cân nhắc lựa chọn các commit mà bạn muốn rebase.

Hãy đi sâu vào chi tiết nào...

Rebase tương tác nghĩa là dùng lệnh rebase với tùy chọn -i.

Nếu lệnh của bạn có bao hàm tùy chọn này, Git sẽ mở một giao diện người dùng để cho bạn biết những commit nào sẽ được sao chép xuống dưới mục tiêu rebase. Nó cũng đồng thời thể hiện mã băm và thông điệp của commit, điều này thật tuyệt bởi nhờ đó ta có thể phân biệt được chúng.

Với Git "thật", cửa sổ UI (giao diện người dùng) sẽ được mở thông qua một tệp nhờ công cụ chỉnh sửa văn bản như là vim. Vì mục đích học tập, tôi đã xây dựng một hộp thoại nhỏ mà nó hành xử cũng tương tự như vậy.

Khi bấm nút, một cửa sổ rebase tương tác sẽ xuất hiện. Bạn có thể sắp xếp lại một số commit (hoặc có thể xóa bớt) và xem thử kết quả! `git rebase -i HEAD~4`

BÙÙM! Git sao chép chính xác các commit mà bạn chọn thông qua UI.

# Practice

`git rebase -i [hasecode]`/`git rebase -i [name]`/`git rebase -i [name][^...]`/`git rebase -i [name]~[...]` tương tự như rebase nhưng sẽ được lựa chọn các commit được tham chiếu