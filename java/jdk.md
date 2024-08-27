### Java Development Kit - JDK
JDK cung cấp công cụ phát triển (môi trường phát triển: viết chương trình java) và môi trường thực thi [(JRE)](#java-runtime-enviromement---jre) để xây dựng ứng dụng - .java program

JDK:
- .java (java program) là chương trình mã nguồn mở
- Javac (java compiler) là trình biên dịch của java (.java => .class)
- .jdb (java debug) là trình gỡ lỗi của java
- ...
> JDK = công cụ phát triển + JRE
#### Java Runtime Enviromement - JRE
JRE cung cấp môi trường thực thi (thư viện, tài nguyên, thành phần phụ thuộc,...) và ***khởi động*** máy ảo Java [(JVM)](#java-virtual-machine---jvm)

JRE:
- .jar (java archiver - so sánh với file aar(android archiver)) là file nén (.class;...) gọi là file thư viện (libraries)
- orther libraries: util, math,... và các thư viện runtime khác
> JRE = thư viện + JVM
##### Java Virtual Machine - JVM
JVM cung cấp máy ảo thực thi chương trình Java (java program) tuần tự (thông dịch: bytecode [(read class loader)] .class => machine code)
- JIT (Just-in-Time) trình biên dịch???
> JVM = JVM