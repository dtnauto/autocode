# Diagram

<a id="định nghĩa UML"></a>
UML (Unified Modeling Language - Ngôn ngữ mô hình thống nhất)

UML diagram:

- Structure diagrams (Biểu đồ cấu trúc hệ thống - là cái gì?):
    - Class diagram
    - ...
- Behavior diagrams (Biểu đồ hành vi của hệ thống - làm được gì?):
    - UseCase diagram
    - Statemachine diagram
    - Interaction diagram (Biểu đồ tương tác giữa các thành phần trong hệ thống - làm như thế nào?):
        - Sequence diagram
    - ...

# Relationship (Use-A)

## Dependency

Kí hiệu:

- --> : mũi tên nhọn nét đứt

Ý nghĩa:

- khi thay đổi phần tử độc lập thì có thể gây ra thay đổi ở phần tử phụ thuộc

Nhận biết: A-->B (A phụ thuộc vào B)

- classA sử dụng biến toàn cục kiểu classB hoặc trong classA sử dụng phương thức/thuộc tính **static
  ** classB

> Lưu ý : Phân biệt giữa Dependency và Association
> - Association là quan hệ cấu trúc
> - Dependency là qua hệ phi cấu trúc

## Association (Has-A)

Kí hiệu:

- — : đường thẳng không có mũi tên
- —> : đường thẳng có mũi tên

Ý nghĩa:

- Mô tả classA gọi tới object của classB (nếu không có mũi tên thì có nghĩa là mũi tên 2 chiều hoặc
  không quan trọng)

<table>
  <tr>
    <td>
      Association
      <table>
        <tr>
          <td>
            Aggregation
            <table>
              <tr>
                <td>
                Composition
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

### Aggregation

Kí hiệu:

- —<0> : đường thẳng và hình thoi trắng

Ý nghĩa: *tập hợp*

- obj của classA được tạo từ nhiều thành phần trong obj của classB và các obj đó ***độc lập với***
  objA => objB có thể là một phần của obj khác
- **weak bounding**

Nhận biết:

- objB được truyền vào parameter của method trong objA của classA

```java
class A {
    B mb;

    A(B b) {
        mb = b;
    }
}

class B {
    // B can exist independently of A
}
```

- ...

#### Composition

Kí hiệu:

- —<1> : đường thẳng và hình thoi đen

Ý nghĩa: *thành phần*

- obj của classA được tạo từ nhiều thành phần trong obj của classB và obj đó ***phụ thuộc vào***
  objA => objB là một phần của objA
- **strong bounding**

Nhận biết:

- objA chứa các obj là biến local có kiểu classB

```java
class A {
    B b;

    A() {
        b = new B();
    }
}

class B {
    // B cannot exist independently of A
}
```

- ...

> Chú ý: Với dạng mũi tên A<0>—>B hoặc A<1>—>B có nghĩa B là thành phần tạo nên A và A gọi tới obj
> trong B

## Inheritance (Is-A)

<table>
  <tr>
    <td>
      Inheritance (Is-A)
      <table>
        <tr>
          <td>
            Inheritance
          </td>
          <td>
            Implementation
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

### Inheritance-Extends

Kí hiệu:

- —l> : đường thẳng nối giữa hai class và kết thúc bằng một tam giác trắng

Ý nghĩa:

- mở rộng class

Nhận biết:

- biểu diễn mối quan hệ kế thừa giữa hai class với nhau hoặc giữa class và abstract class

### Implementation-Realization (Implements)

Kí hiệu:

- --l> : đường nét đứt nối giữa hai class và kết thúc bằng một tam giác trắng

Ý nghĩa:

- triển khai interface

Nhận biết:

- diểu diễn mối quan hệ giữa một class và một interface