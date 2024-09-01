# Git Remotes (Kho lưu trữ từ xa)
Thực ra thì kho chứa từ xa cũng không khó hiểu lắm đâu. Giờ đây, đâu đâu cũng thấy điện toán đám mây nên ai ai cũng tưởng git remote nó là cái gì đó ma thuật lắm, nhưng chúng thực ra chỉ là những bản sao chép kho chứa của bạn lên máy tính khác. Bạn có thể giao tiếp với chúng qua internet, từ đó mà chuyển giao commit qua lại.

Vì lẽ đó mà kho chứa từ xa có những đặc tính tuyệt vời:

- Trước hết, có tác dụng như là bản sao dự phòng! Bạn đã biết rằng kho cục bộ có thể khôi phục trở lại trạng thái trước đó, nhưng tất cả thông tin đó chỉ được lưu trữ cục bộ. Bằng cách sao chép toàn bộ kho chứa của bạn lên máy tính ở xa, một khi dữ liệu trong máy tính bị mất, bạn vẫn có thể tiếp tục làm việc như chưa có gì xảy ra.

- Quan trọng hơn nữa, kho chứa từ xa khiến lập trình có tính cộng đồng hơn! Bây giờ bản sao dự án của bạn đã được lưu trữ ở nơi khác, bạn bè của bạn có thể đóng góp (hoặc kéo về cập nhật mới nhất) dự án của bạn rất dễ dàng.

Trực quan hóa các kho lưu trữ từ xa bằng cách sử dụng các trang web đang trở nên phổ biến hơn (như GitHub), nhưng các kho lưu trữ từ xa luôn luôn là trụ cột của các công cụ này, vì vậy điều quan trọng là phải hiểu khái niệm này!

# Câu lệnh của chúng tôi để tạo kho lưu trữ từ xa
Cho đến bây giờ, Học Nhánh Git đã tập trung dạy về làm việc trên kho chứa cục bộ (rẽ nhánh branch, hợp nhánh merge, dịch chuyển nhánh rebase,...). Nhưng bây giờ ta lại muốn học về làm việc trên kho lưu trữ từ xa, ta cần một câu lệnh để cài đặt môi trường cho những bài học này. Đó là git clone.

Về mặt kỹ thuật, thì git clone thực tế là câu lệnh dùng để tạo một bản sao chép cục bộ của kho chứa từ xa (ví dụ từ GitHub chẳng hạn). Nhưng trong Học Nhánh Git ta sẽ dùng câu lệnh này hơi khác biệt một chút -- git clone sẽ tạo ra một bản sao chép lên kho lưu trữ từ xa dựa trên kho chứa cục bộ của bạn. Điều này hoàn toàn ngược lại với câu lệnh thực tế, nhưng nó giúp ta nhân bản và làm việc với kho lưu trữ từ xa, nên ta sẽ dùng nó trong quá trình học.

Nào cùng khởi động bằng cách nhìn xem kho lưu trữ từ xa trông như thế nào (trong mô tả của chúng tôi). `git clone`

Nó đây rồi! Giờ ta đã có kho lưu trữ dự án từ xa. Nhìn nó cũng khá tương tự chỉ là được minh họa khác biệt một chút -- đến các cấp độ sau ta sẽ tìm hiểu thêm về cách thức trao đổi nội dung giữa các kho chứa này.

# Practice

`git clone []` tạo một bản sao chép cục bộ của kho chứa từ xa (ví dụ từ GitHub chẳng hạn)
> nghĩa là tạo một repository local theo repository remote