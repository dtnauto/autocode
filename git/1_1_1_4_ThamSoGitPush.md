# Chi tiết về tham số <vị trí>
Nhớ lại học trước, khi chỉ định tham số <vị trí> là main cho lệnh git push, ta cũng đã chỉ định nguồn và đích cho các commit.

Có thể bạn sẽ thắng mắc -- Nếu như ta muốn nguồn và đích khác đi thì sao? Nếu như ta muốn đẩy commit từ nhánh cục bộ foo lên nhánh từ xa bar thì sao?

Chà đáng tiếc là điều này là bất khả thi tron Git... đùa thôi! Tất nhiên là làm được chứ :)... Git có nhiều và rất nhiều lựa chọn linh động (có lẽ là quá nhiều)

Hãy xem cách nó hoạt động...

Để chỉ định <vị trí> cho cả nguồn và đích, chỉ cần sử dụng dấu hai chấm : để kết nối cả hai:

git push origin <nguồn>:<đích>

Giá trị thực của tham số này là một refspec, "refspec" là một từ tự tạo, nghĩa là một vị trí Git có thể nhận ra (chẳng hạn như nhánh foo hoặc HEAD ~ 1).

Một khi bạn đã chỉ định các nguồn và đích độc lập, bạn có thể thao tác với kho chứa từ xa một cách khá thú vị và chính xác, hãy xem bản demo!

Nhớ rằng, nguồn là bất kỳ vị trí nào mà Git hiểu:`git push origin foo^:main`

Wao! Lệnh này khá phức tạp, nhưng mà hợp lý -- Git diễn giải foo^ thành một vị trí, tải lên tất cả các commit từ đó trở về trước mà chưa có trên nhánh đích rồi cập nhật nó.

Nếu như đích đến mà bạn muốn không tồn tại thì sao? Chẳng sao cả! Đơn giản hãy gõ tên nhánh và Git sẽ tạo nhánh đó trên kho chứa từ xa cho bạn.`git push origin main:newBranch`

Tuyệt vời, thấy Git thú vị không :D

# Practice

`git push [origin] [nguồn]:[đích]` dùng push nhánh [đích] từ commit trỏ bởi nhánh [nguồn] lên repository remote [origin] mà không cần phải checkout sang nhánh [name]