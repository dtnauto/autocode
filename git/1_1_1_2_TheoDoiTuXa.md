## Theo dõi nhánh từ xa
Trong những bài học vừa qua có một điểu có vẻ như là "ma thuật" đó là Git lại biết được nhánh main có liên kết đến nhánh o/main. Dù các nhánh này có tên giống nhau và có vẻ hợp lý để kết nối nhánh main trên remote với nhánh main trên local, nhưng điều này được thể hiện rõ ràng qua hai tình huống sau:

- Trong quá trình thực hiện thao tác kéo, các commit được tải xuống nhánh o/main và sau đó hợp nhất vào nhánh main. Mục tiêu hợp nhất dược ngầm định bởi kết nối này.
- Trong quá trình thực hiện thao tác đẩy, thảnh quả trên nhánh main được đẩy lên nhánh main từ xa (sau đó được biểu thị bằng nhánh o/main ở kho chứa cục bộ). Đích đến của lệnh đẩy được xác định bằng kết nối giữa nhánh main và nhánh o/main.

## Theo dõi từ xa
Nói tóm lại, kết nối giữa nhánh main và nhánh o/main đơn giản được giải thích bằng thuộc tính "theo dõi từ xa" ("remote tracking") của các nhánh. Nhánh main được thiết lập để theo dõi nhánh o/main -- Điều này có nghĩa là có điểm đến ngụ ý cho việc hợp nhất (merge) và đẩy lên (push) của nhánh main.

Có thể bạn sẽ thắc mắc rằng tại sao thuộc tính này được thiết lập lên nhánh main trong khi bạn chẳng hề chạy một câu lệnh nào chỉ định điều này. Chà, khi bạn dùng Git để nhân bản kho chứa, thì thuộc tính này đã được tự động thiết lập cho bạn rồi.

Trong quá trình thực hiện nhân bản, Git tạo ra nhánh từ xa trên kho chứa cục bộ cho tất cả các nhánh trên kho chứa từ xa (các nhánh như o/main). Sau đó nó sẽ tạo một nhánh cục bộ theo dõi nhánh hoạt động hiện tại của kho chứa từ xa, đa phần các trường hợp là nhánh main.

Một khi quá trình nhân bản hoàn thành, bạn sẽ chỉ có một nhánh cục bộ (để bạn không thấy quá tải) nhưng bạn có thể thấy tất cả các nhánh trên kho chứa từ xa (phòng trường hợp bạn thấy tò mò). Đây là phương án tối ưu!

Điều này giải thích việc sau khi nhân bản bạn có thể thấy dòng lệnh sau xuất hiện:

local branch "main" set to track remote branch "o/main"

## Tôi có thể tự chỉ định chứ?
Tất nhiên là được chứ! Bạn có thế khiến bất kỳ nhánh nào theo dõi nhánh o/main, và nếu bạn làm vậy, nhánh đó sẽ được được chỉ định đích của lệnh đẩy và mục tiêu hợp nhất giống như nhánh main. Điều này có nghĩa là bạn có thể chạy lệnh git push trên nhánh có tên là totallyNotMain và thành quả của bạn sẽ được đẩy lên nhánh main ở kho chứa từ xa!

Có 2 cách để thiết lập thuộc tính này. Cách đầu tiên là chuyển sang một nhánh mới từ một nhánh từ xa bằng cách thực hiện

git checkout -b totallyNotMain o/main

Tạo ra một nhánh mới totallyNotMain và thiết lập cho nó theo dõi nhánh o/main.

Nói vậy là đủ rồi, hãy xem thử một mô tả nào! Ta sẽ chuyển sang một nhánh tên là foo và thiết lập cho nó theo dõi nhánh main trên kho chứa từ xa.`git checkout -b foo o/main``git pull`

Như bạn đã thấy, chúng tôi đã sử dụng mục tiêu ngầm o / main để cập nhật nhánh foo. Để ý rằng nhánh main không được cập nhật!!

Điều này cũng được áp dụng cho lệnh git push.`git checkout -b foo o/main``git commit``git push`

Bùùm. Ta đã đẩy thành quả lên nhánh main ở kho chứa tù xa mặc dù nhánh của ta có tên hoàn toàn khác biệt

### Cách thứ #2
Cách khác để thiết lập theo dõi trên một nhánh đó là sử dụng lệnh git branch -u. Thực hiện

git branch -u o/main foo

sẽ thiết lập nhánh foo theo dõi nhánh o/main. Nếu nhánh foo đang được HEAD trỏ tới bạn có thể bỏ tham số này:

git branch -u o/main

Hãy xem thử cách này để thiết lập theo dõi...`git branch -u o/main foo``git commit``git push`

Y hệt như trước, nhưng biểu hiện rõ ràng hơn. Tuyệt!

# Practice

khi `git clone` thì các nhánh local sẽ tracking các nhánh remote tương ứng và việc này được thiết lập một cách tự động

`git branch -u [origin/name] [name]` để tracking sang nhánh remote khác. khi này nhánh local [name] sẽ chuyển sang tracking nhánh remote [origin/name]. Nếu để trống [name] thì mặc định là nhánh HEAD

`git checkout -b [name] [origin/name]` dùng để tạo, checkout nhánh [name] và tracking nhánh remote [origin/name]