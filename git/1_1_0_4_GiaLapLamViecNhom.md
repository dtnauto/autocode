# Mô phỏng hợp tác
Bây giờ khó đây -- để chuẩn bị cho những bài học tới, chúng tôi cần chỉ bạn cách kéo về những cập nhật có trên kho chứa từ xa.

Có nghĩa là ta cần "giả vờ" kho chứa từ xa được cập nhật bởi đồng nghiệp / bạn / cộng tác viên của bạn, có khi là một nhánh xác định hoặc là một số commit.

Để làm điều này, chúng tôi sẽ giới thiệu cho bạn một lệnh tự tạo git fakeTeamwork! Cái tên nói lên tất cả, cùng xem thử bản giới thiệu...

Hành xử mặc định của fakeTeamwork đơn giản là tạo ra một commit ở trên nhánh main từ xa. git fakeTeamwork

Đó -- kho chứa từ xa đã được cập nhật thêm một commit, và ta chưa tải commit đó xuống vì ta chưa hề chạy lệnh git fetch.

Bạn cũng có thể chỉ định số lượng commit bằng cách thêm con số đằng sau câu lệnh. git fakeTeamwork foo 3

Chỉ với một câu lệnh ta có thể giả lập tạo ra 3 commit trên nhánh foo từ xa của ta.

# Practice

.