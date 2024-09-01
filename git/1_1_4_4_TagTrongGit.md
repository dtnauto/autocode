# Tag trong Git
Qua các bài học trước, bạn đã biết được rằng rất dễ dàng để di chuyển qua lại giữa các nhánh và chúng thường tham chiếu đến các commit khác nhau trong quá trình ta làm việc trên chúng. Nhánh dễ dàng chỉnh sửa, thường tạm thời và luôn thay đổi.

Nếu như vậy thì bạn có thể sẽ thắc mắc liệu có cách nào để đánh dấu vĩnh viễn một thời điểm nào đó trong lịch sử làm việc không? Khi mà dự án càng ngày càng mở rộng và merge thì diễn ra liên tục, vậy thì có cách nào để đánh dấu những commit đó một cách cố định hơn nhánh không?

Tất nhiên là có chứ! Git có các tag (thẻ) để hỗ trợ vấn đề này -- chúng (một phần chứ không hoàn toàn) đánh dấu vĩnh viễn một số commit nhất định là "cột mốc" mà sau này bạn có thể tham chiếu đến như với nhánh.

Quan trọng hơn là, khi ta commit thì chúng không hề bị di chuyển. Bạn không thể "check out" một tag rồi làm việc trên đó -- tag giống như là mỏ neo để chỉ định một điểm cụ thể nào đó trên cây lịch sử.

Cùng xem tag thực tế là như thế nào nào.

Hãy thử tạo một thẻ ở commit C1 chỉ định rằng đây là phiên bản thứ nhất của ta. `git tag v1 C1`

Đó! Đơn giản như đan rổ. Ta tạo ra thẻ v1 và tham chiếu đến commit C1. Nếu bạn không chỉ định commit, git sẽ gắn thẻ vào commit mà HEAD đang trỏ tới

# Practice

`git tag [tag] [hashcode]` gắn thẻ tag vào commit có mã băm hashcode

`git checkout [tag]` có thể checkout bằng thẻ tag như bình thường

