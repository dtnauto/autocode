# Nhánh Git từ xa
Giờ bạn đã thấy cách thức hoạt động của git clone, cùng xem xét kỹ hơn những gì đã xảy ra.

Điều đầu tiên mà có thể bạn để ý là một nhánh mới xuất hiện trong kho chứa cục bộ của ta là o/main. Loại nhánh này được gọi là nhánh từ xa (remote); nhánh từ xa có những thuộc tính đặc biệt vì chúng phục vụ một mục đích duy nhất.

Nhánh từ xa phản ánh trạng thái (state) của kho chứa từ xa (kể từ lần cuối cùng bạn tương tác với kho chứa từ xa). Chúng giúp bạn hiểu về sự khác biệt giữa công việc trên kho chứa cục bộ với kho chứa từ xa -- một bước quan trọng trước khi chia sẻ công việc của bạn với người khác.

Nhánh từ xa có một thuộc tính đặc biệt đó là khi bạn chuyển sang chúng, bạn sẽ vào trạng thái tách rời HEAD. Mục đích của Git là để bạn không thể làm việc trực tiếp trên nhánh từ xa; bạn phải làm việc ở nơi khác và chia sẻ thành quả lên kho chứa từ xa (sau đó nhánh từ xa sẽ được cập nhật).

Nói rõ một chút: Các nhánh từ xa nằm trên kho lưu trữ cục bộ của bạn, không phải trên kho lưu trữ từ xa.

## o/ là gì vậy?
Có thể bạn sẽ thắc mắc về ký tự o/ ở đầu tên nhánh từ xa có ý nghĩa gì. Chà, tên nhánh từ xa cũng có (ràng buộc) quy tắc đặt tên -- chúng được hiển thị dưới dạng:

<tên kho chứa từ xa>/<tên nhánh>

Do đó, đối với o/main thì main là tên nhánh còn o là tên kho chứa từ xa.

Thực tế thì hầu hết các nhà phát triển đặt tên kho chứa từ xa là origin chứ không phải o. Nó trở thành thông lệ đến nỗi Git đặt tên origin cho kho chứa từ xa khi bạn dùng git clone để sao chép một kho chứa.

Đáng tiếc là origin không khớp trong giao diện của chúng tôi, nên chúng tôi đành phải viết tắt là o :( Nhưng hãy nhớ rằng khi dùng Git thật sự thì chắc hẳn tên của kho chứa từ xa sẽ là origin!

Lý thuyết hơi nhiều rồi, đi vào thực hành thôi.

Hãy thử chuyển sang nhánh từ xa xem điều gì xảy ra. `git checkout o/main``git commit`

Như bạn thấy, Git đưa ta vào trạng thái tách rời HEAD và không cập nhật nhánh o/main khi ta thêm một commit. Đó là bởi vì o/main chỉ cập nhật khi kho chứa từ xa cập nhật.

Để hoàn thành cấp độ này, commit một lần trên main và một lần nữa sau khi chuyển sang o/main. Điều này sẽ giúp ta hiểu cách nhánh từ xa hành xử, chúng chỉ cập nhật để phản ánh trạng thái của kho chứa từ xa.

# Practice

Nhánh từ xa có một thuộc tính đặc biệt đó là khi bạn chuyển sang chúng, bạn sẽ vào trạng thái tách rời HEAD. Mục đích của Git là để bạn không thể làm việc trực tiếp trên nhánh từ xa; bạn phải làm việc ở nơi khác và chia sẻ thành quả lên kho chứa từ xa (sau đó nhánh từ xa sẽ được cập nhật).

Do Git đưa ta vào trạng thái tách rời HEAD và không cập nhật nhánh o/main khi ta thêm một commit. Đó là bởi vì o/main chỉ cập nhật khi kho chứa từ xa cập nhật.




