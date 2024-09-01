# Sự kỳ quặc của <nguồn>
Git lợi dụng tham số <nguồn> theo 2 cách khá dị. Hai cách lợi dụng này bắt nguồn từ thực tế là bạn có thể "không chỉ định" nguồn cho cả git push và git fetch. Bạn có thể làm điều này bằng cách để trống tham số như sau:

- git push origin :side
- git fetch origin :bugFix

Hãy xem thử 2 câu lệnh này làm việc gì...

Nếu ta đẩy "không gì cả" lên một nhánh từ xa thì nó sẽ làm gì? Nó xóa nhánh đó!`git push origin :foo`

Đó, ta đã xóa thành công nhánh foo trên kho chứa từ xa bằng cách đẩy "không gì cả" lên nó. Khá là hợp lý...

Cuối cùng, nạp "không gì cả" vào một kho chứa cục bộ thực tế sẽ tạo ra một nhánh mới`git fetch origin :bar`

Khá là quái và dị. Nhưng mà đó là những gì Git làm!

# Practice

`git push origin :[name]` dùng push nhánh [name] từ commit trỏ bởi nhánh [nguồn] lên repository remote [origin] do không có nhánh [nguồn] nên Git sẽ xóa nhánh [name] trên repository remote [origin]

`git fetch origin :[name]` dùng cập nhật nhánh [name] từ commit trỏ bởi nhánh [nguồn] trên repository remote [origin] vào repository local do không có nhánh [nguồn] nên Git sẽ tạo nhánh [name] trên repository local. hành động này tương tự với việc `git branch [name]`
