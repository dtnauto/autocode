## Mô tả của Git
Bởi gì thẻ đóng vai trò như là "mỏ neo" trên cây lịch sử rất tốt rồi, Git cũng có lệnh để mô tả tương quan của bạn đến vị trí "mỏ neo" (thẻ) gần nhất. Và đó là git describe!

git describe có thể giúp bạn định hướng sau khi dịch chuyển qua lại nhiều lần trên cây lịch sử; đặc biệt là sau khi sử dụng git bisect (công cụ tìm kiếm lỗi của Git) hoặc khi sử dụng máy của đồng nghiệp mới đi nghỉ mát về.


Cú pháp sử dụng Git describe như sau:

git describe <thamchiếu>

Trong đó <thamchiếu> là bất kỳ thứ gì mà Git có thể dùng để xác định commit. Nếu bạn không chỉ định tham chiếu, Git sẽ dùng vị trí hiện tại của bạn (HEAD).

Đầu ra của câu lệnh sẽ như sau:

<thẻ>_<sốLượngCommit>_g<mãBăm>

Trong đó <thẻ> là thẻ tổ tiên gần nhất, <sốLượngCommit> là số lượng commit tính từ tham chiếu đến thẻ, và <mãBăm> là mã băm của commit được mô tả.

Cùng xem nhanh một ví dụ trên cây lịch sử phía dưới: `git tag v2 C3`

Câu lệnh git describe main sẽ cho kết quả:

v1_2_gC2

Trong khi git describe side sẽ cho kết quả:

v2_1_gC4

# Practice

`git describe []` dùng để mô tả thẻ tổ tiên gần nhất với commit được đang được tham chiếu 