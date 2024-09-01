# Tham số git pull
Giờ thì bạn đã biết gần như là tất cả về tham số của git fetch và git push, thế thì hầu như chẳng còn gì mới cho git pull cả :)

Đó và vì nói cho cùng thì git pull về thực tế cũng chỉ là lệnh tắt cho tìm nạp và sau đó là hợp nhất những gì vừa mới được nạp. Bạn có thể coi nó như là chạy lệnh git fetch với cùng tham số được chỉ định và sau đó hợp nhất các commit vào nơi được chỉ định.

Điều này được áp dụng kể cả khi bạn sử dụng những tham số phức tạp đến độ điên rồ. Hãy xem qua một vài ví dụ:

Dưới đây là một vài câu lệnh tương đồng nhau trong Git:

git pull origin foo tương đương với:

git fetch origin foo; git merge o/foo

Và...

git pull origin bar:bugFix tương đương với:

git fetch origin bar:bugFix; git merge bugFix

Thấy chứ? git pull thực ra chỉ là lệnh tắt cho fetch + merge, và tất cả những gì git pull quan tâm là nơi mà các commit sẽ tới (tham số đích mà nó diễn giải được trong quá trình nạp).

Hãy xem qua một bản giới thiệu:

Nếu ta chỉ định vị trí để nạp, mọi thứ diễn ra như với git fetch nhưng giờ đây có thêm một bước đó là ta hợp nhất những gì mà ta đã nạp`git pull origin main`

Thấy chứ! Bằng cách chỉ định nhánh main ta tải các commit xuống nhánh o/main như thường lệ. Sau đó hợp nhất nhánh o/main vào nhánh cục bộ mà ta đang đứng, nhánh mà không phải nhánh cục bộ main. Nhờ vậy mà ta có thể chạy cùng một lệnh git pull (với cùng tham số) nhiều lần ở những vị trí khác nhau để áp dụng cùng cập nhật lên các nhánh khác nhau.

Điều này có hoạt động với đích và nguồn không? Đoán đúng rồi đấy! Cùng xem thử nào:`git pull origin main:foo`

Wao, quá NHIỀU trong một câu lệnh. Ta tạo ra một nhánh cục bộ là foo, tải commit xuống từ nhánh từ xa main xuống nhánh foo đó, và sau đó hợp nhất commit vào nhánh bar mà ta đang đứng. Đủ thứ luôn!!!

# Practice

dùng mã băm ở nguồn để không fetch các nhánh origin