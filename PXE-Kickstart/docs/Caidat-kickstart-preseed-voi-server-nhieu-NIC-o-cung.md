# 4.Cài đặt kickstart - preseed với server có nhiều NIC, nhiều ổ cứng

# 4.1.Cài đặt kickstart - preseed với server có nhiều NIC
\- Đối với Ubuntu 16.04:  
Ta phải chỉ định NIC boot OS.  
\- Đối với Centos 7:  
Centos7 tự động chọn interface để boot là "interface chọn lúc chọn boot từ PXE".

## 4.2.Cài đặt kickstart - preseed với server có nhiều ổ cứng
\- Đối với cả Ubuntu 16.04 và Centos 7, ta phải chỉ đỉnh ổ cứng nào cần được phân vùng. Và chỉ định ổ cứng để boot .  
\- Vấn đề này, mình chưa tìm hiểu kĩ phần cấu hình, nhưng mình luôn chỉ đỉnh phân vùng ổ cứng đầu tiên, và không chỉ định boot từ ổ cứng nào. Lúc đó hệ điều hành tự động sẽ boot từ ổ cứng đầu tiên.  

