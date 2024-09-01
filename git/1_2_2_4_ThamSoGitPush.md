# Tham số đẩy
Tuyệt! Bạn đã biết đến theo dõi từ xa, giờ thì ta có thể tìm hiểu sâu hơn về cách hoạt động của đẩy (git push), tìm nạp (git fetch) và kéo (git pull). Ta sẽ giải quyết từng câu lệnh một nhưng về căn bản chúng khá là giống nhau.

Trước hết hãy xem qua git push. Trong bài học về theo dõi từ xa bạn đã biết rằng Git sử dụng thuộc tính (nhánh từ xa mà nó "theo dõi") của nhánh hiện tại để xác định kho và nhánh từ xa để đẩy. Git làm việc này mà không cần tham số chỉ định, nhưng lệnh git push có thể thêm tham số dưới dạng sau:

git push <tên kho chứa từ xa> <vị trí>

Tham số <vị trí> là gì vậy? Chúng ta sẽ đi sâu vào chi tiết sau, hãy xem ví dụ trước. Câu lệnh:

git push origin main

được dịch lại là:

Chuyển sang nhánh "main" trong kho lưu trữ cục bộ, nhận tất cả các commit và tìm nhánh "main" trong kho chứa từ xa tên là "origin". Thêm tất cả các commit không có trong nhánh đó và báo cho tôi biết khi nào hoàn tất.

Bằng cách chỉ định main trong tham số "vị trí", ta báo với Git nơi mà commit xuất phát và nơi chúng sẽ đến. Về căn bản nó là "địa điểm" để đồng bộ hóa 2 kho chứa.

Lưu ý rằng ta đã thông báo cho Git tất cả thông tin cần thiết (thông qua chỉ định 2 tham số), nó sẽ không quan tâm nhánh mà ta đang đứng!

Hãy xem xét một ví dụ về việc xác định tham số. Lưu ý vị trí nhánh mà ta đang đứng.`git checkout C0``git push origin main`

Được rồi! Bằng cách chỉ định các tham số, nhánh main trong kho lưu trữ từ xa đã được cập nhật.

Giả sử ta không chỉ định các tham số thì sao? Điều gì sẽ xảy ra?`git checkout C0``git push`

Lệnh thất bại (như bạn có thể thấy, không có gì xảy ra)! Bởi vì HEAD không trỏ đến nhánh nào có theo dõi từ xa.

# Practice

`git push [origin] [name]` dùng push nhánh [name] lên repository remote [origin] mà không cần phải checkout sang nhánh [name]