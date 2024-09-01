# Tung hứng Commit #2
Nếu bạn vẫn chưa hoàn thành Tung hứng Commit #1 (cấp độ trước), hãy làm nó trước khi tiếp tục

Như bạn đã thấy ở cấp độ trước, ta dùng rebase -i để sắp xếp lại các commit. Một khi commit mà ta muốn sửa đã ở trên cùng, ta có thể dễ dàng --chỉnh sửa (amend) nó và sau đó sắp xếp lại trật tự lúc trước.

Nhưng mà vẫn tồn tại vấn đề khi mà ta sắp xếp quá nhiều, điều này có thể dẫn đến xung đột khi rebase. Thử dùng cách khác với git cherry-pick nào.

Hãy nhớ rằng cherry-pick sẽ thả commit ở bất cứ đâu xuống dưới HEAD (miễn là nó không phải cha ông hay tổ tiên gì của HEAD).

Hãy xem thử minh họa nhỏ sau: `git cherry-pick C2`

Hay! Tiếp tục nào

# Practice

`git cherry-pick []` sẽ tạo các commit sau commit đang được checkout
