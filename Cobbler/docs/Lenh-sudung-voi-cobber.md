# 7.Lệnh sử dụng với Cobbler

# MỤC LỤC
  - [7.1.Distro](#71distro)
  - [7.2.Profile](#72profile)
  - [7.3.User](#73user)


## 7.1.Distro
\- Các câu lệnh sử dụng quản lý distro:  
- cobbler distro add : thêm distro
- cobbler distro copy : copy từ một distro ra một distro mới.
- cobbler distro edit : sửa thông tin distro
- cobbler distro find : tìm kiếm thông tin về distro
- cobbler distro list : liệt kê danh sách các distro
- cobbler distro remove : xóa distro nào đó khỏi hệ thống cobbler
- cobbler distro rename : đổi tên cobbler
- cobbler distro report : Hiển thị các thông tin chi tiết về distro

\- Ví dụ 1: Thêm distro:  
```
cobbler distro add --name=<string> --kernel=path --initrd=path [options]
```

Trong đó `--name` là tên của distro (Centos 7, Ubuntu 16.04, ...), `--kernel` là đường dẫn chỉ tới vị trí kernel, `--initrd` là đường dẫn chỉ tới vị trí của initrd.  
Một số tùy chọn tham khảo thêm tại: http://cobbler.github.io/manuals/2.8.0/3/1/1_-_Distros.html

\- VD2: Liệt kê các distro đang có trong hệ thống:  
```
cobbler distro list
```

\- VD3: Xem thông tin chi tiết distro:  
```
cobbler distro report Centos7-x86_64
```

\- Để thao tác với distro trên giao diện web, truy cập vào tab Distro sẽ hiển thì giao diện như sau:  
<img src="../images/Lenh-sudung-voi-cobbler-1.png" />

## 7.2.Profile
\- Các câu lệnh quản lý profile như sau:  
- cobbler profile --help
- cobbler profile add
- cobbler profile copy
- cobbler profile dumpvars
- cobbler profile edit
- cobbler profile find
- cobbler profile getks
- cobbler profile list
- cobbler profile remove
- cobbler profile rename
- cobbler profile report

\- VD1: Liệt kê các profiles đang có trong hệ thống:  
```
cobbler profile list
```

\- VD2: Hiển thị nội dung file kickstart của profile:  
```
cobbler profile getks --name CentOS7-x86_64
```

## 7.3.User














