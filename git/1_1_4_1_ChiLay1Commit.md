# Commit xếp chồng cục bộ
Có tình huống thế này thường hay xảy ra trong quá trình phát triển: Tôi đang cố dò lỗi nhưng mà nó lại khá khó tìm. Để hỗ trợ cho việc này, tôi thêm vào vài dòng lệnh gỡ lỗi và lệnh in.

Mấy lệnh gỡ lỗi và in này nằm yên trong commit của chúng. Cuối cùng thì tôi cũng tìm ra lỗi, gỡ xong, ngon rồi!

Bây giờ thì lại phải đưa bugFix trở về nhánh main. Nếu mà đơn giản dùng fast-forwarded lên main, thì main lại có tất cả các lệnh gỡ lỗi kia, chẳng muốn chút nào. Phải có cách khác chứ nhỉ...

Ta cần phải bảo Git chỉ sao chép 1 commit thôi. Điều này giống với cấp độ trước về điều chỉnh vị trí -- ta có thể dùng các câu lệnh tương tự:

- git rebase -i
- git cherry-pick

Để đạt được mục tiêu này.

# Practice
dùng debug

cherry-pick dễ dùng