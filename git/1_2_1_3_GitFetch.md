# Git Fetch
Làm việc với git remote về căn bản là chuyển giao dữ liệu qua và lại giữa các kho chứa. Miễn là ta có thể chia sẻ qua lại các commit, ta có thể chia sẻ bất kỳ cập nhật gì được theo dõi bở Git (và từ đó chia sẻ thành quả, tập tin mới, ý tưởng mới, thư tình, các kiểu con đà điểu.).

Ở bài học này ta sẽ học cách lấy dữ liệu về từ một kho chứa từ xa -- lệnh đó là git fetch.

Bạn sẽ nhận thấy rằng khi ta cập nhật đại điện kho chứa từ xa, nhánh từ xa của ta cũng được cập nhật để phản ánh đại diện đó. Điều này liên quan đến bài học trước về nhánh từ xa.

Trước khi đi vào chi tiết về git fetch, hãy xem cách nó hoạt động! Ở đây ta có một kho chứa từ xa trong đó chứa 2 commit mà kho chứa cục bộ của ta không có.

Đó! Commit C2 và C3 đã được tải xuống kho chứa cục bộ của ta, và nhánh từ xa o/main của ta đã được cập nhật để phản ánh điều này.

## 
Fetch làm gì
git fetch thực hiện 2 bước chính, và chỉ 2 bước chính. Nó:

- tải xuống commit có trên kho chứa từ xa mà kho chứa cục bộ của ta không có, và...
- cập nhật nơi mà nhánh từ xa của ta trỏ tới (ví dụ nhánh o/main)

Về căn bản thì git fetch đưa đại diện cục bộ của kho chứa từ xa của ta về trạng thái đồng bộ với trạng thái thực tế của kho chứa từ xa (ngay lúc này).

Nếu bạn còn nhớ thì trong bài học trước, chúng tôi có đề cập rằng nhánh từ xa phản ánh trạng thái của kho chứa từ xa kể từ lần cuối bạn tương tác với các nhánh từ xa đó. git fetch chính là cách để tương tác với các nhánh từ xa! Hy vọng chúng tôi đã làm sáng tỏ sự liên kết giữa nhánh từ xa và git fetch.

git fetch thường tương tác với kho chứa từ xa bằng Internet (thông qua các giao thức như http:// hoặc git://).

## Fetch không làm gì
Tuy nhiên, git fetch không hề thay đổi trạng thái kho chứa cục bộ của bạn. Nó sẽ không cập nhật nhánh main hay thay đổi bất kỳ điều gì trong hệ thống tập tin hiện tại của bạn.

Điều này rất quan trọng, vì nhiều nhà phát triển nghĩ rằng git fetch sẽ làm kho chứa cục bộ của họ phản ánh trạng thái của kho chứa từ xa. Nó có thể tải xuống tất cả dữ liệu cần thiết, nhưng nó thực tế không thay đổi bất cứ thứ gì trên tập tin cục bộ của bạn. Ta sẽ học lệnh để làm điều đó sau :D

Nói tóm lại, bạn có thể coi git fetch thuần túy như một bước tải xuống.

# Practice

`git fetch` chỉ đưa đại diện local của repository remote về trạng thái đồng bộ với trạng thái thực tế của repository remote (ngay lúc này) mà không hề thay đổi trạng thái repository local
> nghĩa là chỉ cập nhật commit nhánh local trong repository local theo nhánh remote trong repository remote mà *không* cập nhật repository local theo repository remote