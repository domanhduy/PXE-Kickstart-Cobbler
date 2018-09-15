# 4.Cài đặt kickstart - preseed với server có nhiều NIC, nhiều ổ cứng

# 4.1.Cài đặt kickstart - preseed với server có nhiều NIC
\- Đối với Ubuntu 16.04:  
Ta phải chỉ định NIC boot OS.  
\- Đối với Centos 7:  
Centos7 tự động chọn interface để boot là "interface chọn lúc chọn boot từ PXE".

## 4.2.Cài đặt kickstart - preseed với server có nhiều ổ cứng
\- Đối với cả Ubuntu 16.04 và Centos 7, ta phải chỉ đỉnh ổ cứng nào cần được phân vùng. Hệ điều hành sẽ tự động boot với phân vùng `/boot` của ổ cứng đó.  
