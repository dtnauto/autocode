# Tung hứng Commit
Có một tình huống xảy ra khá thường xuyên. Bạn có vài thay đổi trên (newImage) và một vài thay đổi khác trên (caption) và chúng lại liên quan đến nhau, nên chúng nằm chồng lên nhau trong kho của bạn (một lại nối một).

Tréo ngoe là bạn lại phải điều chỉnh một chút ở commit trước. Giả sử như tay thiết kế muốn ta đổi chiều của newImage một chút, mặc dù commit ấy đã xưa lắm rồi!!

Để khắc phục khó khăn này ta có thể làm như sau:

- Ta sẽ dùng git rebase -i sắp xếp lại commit để cái ta cần sửa sẽ nằm trên cùng
- Ta sẽ dùng git commit --amend tạo ra một điều chỉnh nhỏ
- Sau đó ta sẽ lại sắp xếp lại commit như trước bằng cách dùng git rebase -i
- Cuối cùng, ta sẽ chuyển main tới phần đã cập nhật để hoàn thành cấp độ (dùng cách nào tùy bạn)

Có nhiều cách để hoàn thành mục tiêu (Tôi thấy bạn hấp háy sang cherry-pick rồi đấy), rồi ta sẽ thấy chúng nhiều hơn, nhưng giờ hãy cứ tập trung vào kỹ thuật này đã. Sau cùng thì, hãy để ý các dấu nháy đơn (') -- Vì ta đã chuyển commit 2 lần, nên chúng có thêm một dấu nháy đơn và một dấu nữa cho commit mà ta đã sửa đổi, thế là ta có trạng thái cuối cùng của cây lịch sử

Nói cách khác, khi tôi so sánh kết quả, tôi chỉ so sánh cấu trúc của cây lịch sử. Sự khác biệt về số lượng ' không được bao gồm trong so sánh. Miễn là cấu trúc nhánh main của bạn giống với cấu trúc đích, tôi sẽ vẫn để bạn qua bài.

# Practice

`git commit --amend` dùng để sửa lại commit. tạo thành commit mới sau commit trước đó chứ không phải sau commit đã commit. thường dùng để add thêm file, sửa message,...