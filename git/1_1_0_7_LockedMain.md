# Kết nối remote bị từ chối!
Nếu bạn làm việc trong một nhóm cộng tác lớn, có khả năng nhánh main bị khóa và yêu cầu một số quy trình Pull Request để hợp nhất các thay đổi. Nếu bạn commit trực tiếp với nhánh cục bộ và thử push, bạn sẽ được chào đón bằng một thông báo tương tự như sau:

> ! [remote rejected] main -> main (TF402455: Pushes to this branch are not permitted; you must use a pull request to update this branch.)

## Tại sao bị từ chối?
Remote từ chối push các commit trực tiếp đến main vì chính sách của main yêu cầu các pull request được sử dụng thay thế.

Bạn định tạo một nhánh sau đó đẩy nhánh lên rồi thực hiện pull request theo đúng quy trình, tuy nhiên bạn lại lỡ tay commit trực tiếp vào nhánh main. Bây giờ bạn bị mắc kẹt và không thể đẩy các thay đổi của mình lên.

## Giải pháp
Tạo một nhánh khác được gọi là feature và push nhánh đó đến remote. Đồng thời đặt lại nhánh main của bạn để đồng bộ với remote, nếu không bạn có thể gặp sự cố vào lần tiếp theo khi bạn thực hiện pull và commit của người khác xung đột với của bạn.

# Practice

Nếu lỡ tay commit vào nhánh đang bị khóa thì sẽ không thể push lên được. Khi đó cần thực hiện 2 việc:
1. tạo và checkout sang nhánh mới. Khi này commit sẽ được trỏ bởi nhánh mới. Lúc này cần push commit này lên để tránh mất sự thay đổi
2. Sau khi push commit thì cần checkout sang nhánh bị khóa và reset lại để tránh conflict trong lần pull tiếp theo. Chú ý không reset trươc khi commit nếu không muốn đánh mất sự thay đổi