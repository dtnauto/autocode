



# Structure of C

## Keyword

Keyword là hệ thống các từ vựng trong 1 ngôn ngữ ví dụ

| Ngôn ngữ | Số lượng |
|----------|----------|
| C++      | 90       |
| Java     | 50       |
| C        | 32       |
| Python   | 33       |

Số keywork biểu thị độ phức tạp của ngôn ngữ

cin, cout, main, endl, std,... không phải là keyword mà được gọi là identifies (từ nhận dạng).

Từ nhận dạng và từ khóa được người dùng đặt tên theo quy tắc nào đó

Các toán từ không phải standard vd:

- <<: insertion line operation - chèn bất cứ thứ gì ở bên phải nó vào luồng (insert into stream) đó.
  VD: cout << đưa ra màn hình
- \>>: extraction operator - nhận bất cứ thứ gì từ luồng đó vào trong một biến (take and store in
  variable). cin >> bien - đưa gì vào trong biến này
- ::(double colon) : range resolution operator - toán từ phân giải phạm vi

## Preprocessor Directives

Tiền xử lý được compiler nhìn thấy trước sourcecode.

Tiền xử lý được bắt đầu với "#"

Các nhóm tiền xử lý bao gồm:

- nhóm thư viện

```cpp 
#include <iostream>
#include "myfile.h"
```

> Compiler sẽ biên thay thế preprocessor này thành tệp được đề cập đến

- biên dịch có điều kiện

```cpp
#if
#elif
#else
#endif
```

>

- định nghĩa

```cpp
#ifdef
#ifndef
#define
#undef
```

>

- chỉ thị lỗi

```cpp
#line
#error
#pragma
```

>

## Comments

comment không được đưa vào trình biên dịch do bộ tiền xử lý sẽ loại bỏ hết các comment

chú thích dùng để giải thích, ghi chú , chú thích,...

có 2 loại comment:

- single line

```cpp
// this is comment
```

- multi line

```cpp
/* 
this is 
comments
*/
```

## main function

mỗi chương trình c++ phải có chính xác 1 main() function (main phải viết bằng chữ thường)

đây là điểm bắt đầu để thực thi 1 chương trình

`void main()` sẽ không trả về

`int main()` sẽ trả về một số nguyên cho hệ điều hành => dùng để kiểm trả chương trình đã thực thi đúng chưa

có 2 dạng chương trình main thường gặp

| Có tham số                    | Không có tham số                                                                                                                                                                         |
|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `int main(){}`                | `int main(int agrc, char *argv[]){}`                                                                                                                                                     |
| vd này không càn truyền gì cả | vd này cần truyền 2 đối số được gọi trong command<br/> - đối số thứ nhất là argument count: số lượng đối số truyền vào<br/> - đối số thứ hai là argument vecto: param thực tế truyền vào |

main là một hàm đặc biệt và các hàm khác sẽ được thực thi trong hàm main

## Namespaces
