# Tham số Git fetch
Chúng ta vừa tìm hiểu về tham số của git push, sự tuyệt vời của tham số <vị trí>, và thậm chí cả refspecs (<nguồn>:<đích>). Liệu ta có thể áp dụng điều này vào git fetch không nhỉ?

Đoán chuẩn rồi đấy! Tham số cho lệnh git fetch thực ra rất, rất giống với git push. Chúng có chung khái niệm nhưng được áp dụng cho hướng ngược lại (vì bây giờ ta tải xuống commit chứ không phải tải lên).

Hãy lần lượt đi qua từng khái niệm một...

## Tham số <vị trí>
Nếu bạn chỉ định vị trí cho git fetch như câu lệnh dưới:

git fetch origin foo

Git sẽ lênh nhánh foo trên kho chứa từ xa, lấy toàn bộ các commit chưa có trên kho chứa cục bộ và thả chúng xuống nhánh o/foo ở kho chứa cục bộ.

Hãy xem một ví dụ (vẫn là câu lệnh trên nhưng mà trực quan hơn).

Thông qua chỉ định vị trí...`git fetch origin foo`

Ta chỉ tải xuống commit ở trên nhánh foo và đặt chúng ở nhánh o/foo.

Có thể bạn sẽ thắc mắc -- tại sao Git lại thả các commit xuống nhánh o/foo thay vì nhánh foo ở kho chứa cục bộ? Tôi tưởng tham số <vị trí> tồn tại ở cả kho chứa cục bộ và kho chứa từ xa mà?

Chà trong trường hợp này Git ứng xử có một chút ngoại lệ đặc biệt, vì có thể bạn đang làm việc trên nhánh foo ở kho chứa cục bộ mà bạn không muốn nó bị làm rối!! Điều này liên kết đến bài học trước về git fetch -- nó không cập nhật nhánh cục bộ không liên kết nhánh từ xa của bạn (nhánh không có tiền tố origin/), nó chỉ tải xuống các commit (mà bạn có thể xem xét hoặc hợp nhất sau).

"Nếu vậy, thì điều gì sẽ xảy ra nếu tôi chỉ định cả nguồn và đích với <nguồn>:<đích>?"

Nếu bạn nhất quyết muốn tải commit trực tiếp xuống nhánh cục bộ, thì bạn có thể chỉ định điều này bằng cách dùng refspec hai chấm. Bạn không thể nạp commit vào nhánh mà bạn đang đứng, nhưng Git sẽ cho phép bạn làm điều này:

Đây là cách duy nhất -- <nguồn> là vị trí trên kho chứa từ xa và <đích> là vị trí cục bộ để đặt các commit. Điều này hoàn toàn ngược lại với git push, và đó là tất nhiên thôi vì ta đang chuyển giao dữ liệu theo hướng ngược lại!

Thực tế là, các nhà phát triển rất hiếm khi làm điều này. Tôi giới thiệu về nó chủ yếu là vì muốn giải thích rõ hơn việc fetch và push là khá tương đồng, chỉ là theo hướng ngược lại.

Lấy một ví dụ điên rồ...`git fetch origin C2:bar`

Wao! Thấy chứ, Git diễn giải C2 thành một vị trí trên kho chứa từ xa sau đó tải xuống các commit lên nhánh bar ở kho chứa cục bộ.

Nếu như đích đến chưa hề tồn tại trước khi tôi chạy lệnh thì sao? Cùng xem lại ví dụ vừa rồi nhưng lần này nhánh bar chưa hề tồn tại. `git fetch origin C2:bar`

Thấy chứ, nó Y HỆT với git push. Git tạo ra đích đến ở kho chứa cục bộ trước khi nạp, cũng giống như Git sẽ tạo ra đích đến trên kho chứa từ xa trước khi đẩy (trong trường hợp nó không tồn tại).

Không có tham số?

Nếu lệnh git fetch không nhận được bất kỳ tham số nào, nó sẽ tải xuống tất cả các commit có trên kho chứa từ xa lên tất cả các nhánh từ xa ở kho chứa cục bộ...`git fetch`

Khá là đơn giản, nhưng mà cũng nên xem qua thử.

# Practice

`git fetch [origin] [name]`;`git fetch [origin] [nguồn]:[đích]` tương tự như `git push`