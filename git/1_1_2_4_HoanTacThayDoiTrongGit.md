# Hoàn tác trong Git
Có rất nhiều cách để hoàn tác thay đổi trong Git. Và cũng tương tự như commit, hủy thay đổi trong Git có cả thành phần bậc thấp (tạm thời lưu trữ một số tệp hoặc đoạn độc lập) và thành phần bậc cao (cách mà các thay đổi thực sự bị hủy). Ứng dụng của chúng tôi tập trung vào cái sau.

Có 2 cách cơ bản để hủy thay đổi trong Git -- một là dùng git reset, hai là dùng git revert. Chúng ta sẽ xem xét từng cái trong hộp thoại sau

## Git Reset
git reset hoàn tác bằng cách chuyển tham chiếu của nhánh ngược lên commit cũ hơn. Bạn có thể hiểu nó như kiểu "viết lại lịch sử;" git reset sẽ dịch chuyển nhánh lên trên như thể commit chưa bao giờ được tạo ra vậy.

Cùng xem thử nó trông thế nào nào: `git reset HEAD~1`

Hay! Git chuyển tham chiếu của main trở lại C1; bây giờ kho lưu trữ trông như thể commit C2 chưa bao giờ xảy ra vậy.

## Git Revert
Trong khi git reset hoạt động rất tốt tại nhánh cục bộ trên máy cá nhân, cách thức "viết lại lịch sử" chẳng hề có tác dụng lên nhánh ở từ xa mà người khác sử dụng.

Để có thể hoàn tác và chia sẻ hoàn tác đó với người khác, thì ta cần sử dụng git revert. Xem thử cách thức nó hoạt động nào `git revert HEAD`

Lạ nhỉ, một commit mới được thả vào bên dưới commit mà ta muốn hoàn tác. Đó là bởi vì commit mới C2' này có chứa những thay đổi hoàn toàn ngược lại với những thay đổi trong commit C2.

Dùng revert thì bạn có thể đẩy thay đổi mình lên và chia sẻ với người khác.

# Practice

`git reset [name]`/`git reset [hashcode]`/`git reset [name][^...]`/`git reset [name]~[...]` sẽ chuyển nhánh hiện tại về commit đang được tham chiếu và các commit sau commit được tham chiếu sẽ không chứa commit được tham chiếu nữa (chú ý các commit sau sẽ chứa commit trước). nên thường dùng trong local do các nhánh remote vẫn không thế thay đổi được [do không thể làm việc trực tiếp trên nhánh remote](/git/1_1_0_1_NhanhTuXa.md/#practice)


`git revert [name]`/`git revert [hashcode]`/`git revert [name][^...]`/`git revert [name]~[...]` sẽ tạo thành commit mới giống như commit được tham chiếu


