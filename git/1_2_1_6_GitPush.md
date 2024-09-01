# Git Push
Được rồi, ta đã biết cách nạp thay đổi từ kho chứa từ xa và kết hợp chúng vào các nhánh cục bộ. Khá là tuyệt rồi... nhưng nếu tôi muốn chia sẻ tác phẩm tuyệt vời của tôi với mọi người thì sao?

Chà, cách tải lên thì phải ngược với tải xuống rồi. Vậy thì đối nghịch của git pull (kéo) là gì? git push (đẩy)!

git push có trách nhiệm tải lên thay đổi của bạn vào nhánh từ xa được chỉ định và cập nhật nhánh đó để kết hợp với commit đẩy lên của bạn. Một khi lệnh git push hoàn thành, tất cả bạn bè của bạn có thể tải xuống thay đổi của nhánh từ xa đó đó.

Bạn có thể xem git push là câu lệnh để "xuất bản" thành quả công việc của bạn. Lệnh này có nhiều tính năng tinh tế mà ta sẽ tìm hiểu nhanh thôi, nhưng giờ hãy cứ bắt đầu với từng bước nhỏ đã...

lưu ý --git push mà không có tham số hành xử tùy biến phụ thuộc vào cài đặt của Git là push.default. Giá trị mặc định cho cài đặt này phụ thuộc vào phiên bản Git mà bạn đang sử dụng, còn ở bài học của chúng ta thì ta sẽ sử dụng giá trị upstream (ngược dòng). Bây giờ thì đó chưa phải là vấn đề gì lớn, nhưng chúng tôi khuyến nghị bạn kiểm tra cài đặt của mình trước khi đẩy lên dự án của bạn.

Ở đây ta có một vài thay đổi mà kho chứa từ xa không có. Hãy tải chúng lên! `git push`

Đó -- kho chứa từ xa đã nhận được commit C2, nhánh main ở kho chứa từ xa đã được cập nhật lên C2, và phản chiếu nhánh từ xa của ta (o/main) cũng được cập nhật luôn. Mọi thứ đã đồng bộ!

# Practice

`git push` cập nhật repository remote theo repository local. Hành động này gồm 2 bước ngược lại so với git pull cập nhật repo `git merge [local/...]` và cập nhật commit `git fetch` (remote thay đổi thì local cũng phải thay đổi chứ) 