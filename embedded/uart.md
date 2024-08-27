
 
# Các khái niệm trong Uart
- Baud rate: số bit truyền nhận trong 1s
- Frame: Quy định về khung truyền 8bit hay 9 bit

# Các khái niệm trong Uart

- Baud rate: số bit truyền nhận trong 1s
- Frame: Quy định về khung truyền 8bit hay 9bit
    - **Start bit**: là bit 0
    - **Data**: là các bit dữ liệu
    - Parity bit: là bit kiểm tra chẵn lẻ
    - **Stop bit**: là bit 1

## Ring Buffer
- Là kiểu bộ đệm FIFO dựa trên array-base
- Bộ đệm này được thực hiện trên một mảng (có kích thước thường là 12 con trỏ) kèm theo 2 con trỏ Write và Read:
- Khi nhận lệnh Write thì:
    ```C
    if (pWrite +1 == pRead){
        //bộ đệm đang đầy không thể ghi thêm
    }
    else {
        //con trỏ pWrite sẽ ghi data vào bộ đệm (hay array) sau đó con trỏ pWrite sẽ tăng lên 1 đơn vị 
        pWrite++
        if (pWrite == buf.length()){
            //con trỏ đang ở cuối mảng nên nó sẽ được gán lại vị trí đầu tiên
            pWrite == buf.first
        }
       
    }
- Khi nhận lệnh Read thì:
    ```C
    if (pRead == pWrite){
        //bộ đệm đang trống nên không có gì để đọc
    }
    else {
        //con trỏ pRead sẽ đọc data vào bộ đệm (hay array) ra sau đó con trỏ pRead sẽ tăng lên 1 đơn vị 
        pRead++
        if (pRead == buf.length()){
            //con trỏ đang ở cuối mảng nên nó sẽ được gán lại vị trí đầu tiên
            pRead == buf.first
        }
    }
    ```
