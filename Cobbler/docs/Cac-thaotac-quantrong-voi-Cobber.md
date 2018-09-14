# 6.Các thao tác quan trọng với Cobbler

# MỤC LỤC
  - [6.1.Import các hệ điều hành vào Cobbler](#61import-các-hệ-điều-hành-vào-cobbler)
    - [6.1.1.Import](#611import)
    - [6.1.2.Chú ý:](#612chú-ý)
    - [6.1.3.Xóa những gì đã imported](#613xóa-những-gì-đã-imported)
  - [6.2.Tạo file kickstart](#62tạo-file-kickstart)
  - [6.3.Tạo profiles](#63tạo-profiles)


## 6.1.Import các hệ điều hành vào Cobbler
### 6.1.1.Import
\- Download file iso của các hệ điều hành về, ở đây tôi download **Ubuntu Server 16.04** và **Centos 7**. Thực hiện lệnh:  
```
wget http://releases.ubuntu.com/xenial/ubuntu-16.04.5-server-amd64.iso
wget http://centos-hn.viettelidc.com.vn/7/isos/x86_64/CentOS-7-x86_64-DVD-1804.iso
```

Sau khi download xong ta có 2 file `ubuntu-16.04.5-server-amd64.iso` và `CentOS-7-x86_64-DVD-1804.iso` .  
\- Thực hiện mount iso và import vào Cobbler. Thực hiện lệnh sau:  
- Ubuntu:  
```
mkdir /mnt/ubuntu1604
mount -o loop ubuntu-16.04.5-server-amd64.iso /mnt/ubuntu1604
cobbler import --arch=x86_64 --path=/mnt/ubuntu1604 --name=Ubuntu1604
```

- Centos:  
```
mkdir /mnt/centos7
mount -o loop CentOS-7-x86_64-DVD-1804.iso /mnt/centos7
cobbler import --arch=x86_64 --path=/mnt/centos7 --name=Centos7
```

Chú ý: Ngoài import bằng lệnh, ta có thể import bằng giao diện:  
<img src="../images/cac-thatac-quantrong-voi-cobber-1.png" />

\- Trong quá trình import, nếu có lỗi xảy ra thì thực hiện lệnh sau:  
```
cobbler signature update
```

\- Sau khi thực hiện import xong, ta thực hiện umount:  
```
umount /mnt/ubuntu1604
umount /mnt/centos7
```

\- Kiểm tra trên giao diện của Cobbler:  
<img src="../images/cac-thatac-quantrong-voi-cobber-2.png" />

<img src="../images/cac-thatac-quantrong-voi-cobber-3.png" />

Hoặc thực hiện lệnh để kiểm tra:  
```
cobbler distro report --name=Ubuntu1604-x86_64
cobbler profile report --name=Ubuntu1604-x86_64
```

<img src="../images/cac-thatac-quantrong-voi-cobber-4.png" />

<img src="../images/cac-thatac-quantrong-voi-cobber-5.png" />

### 6.1.2.Chú ý:  
\- Khi import file iso chứa OS vào Cobbler, cobbler sẽ tạo ra các distro, repo và profile tương ứng. Profile được tạo là sự kết hợp giữa distro và file kickstart template được cho sẵn bởi Cobbler (đối với Ubuntu sẽ dùng file kickstart `.seed` , Centos sẽ dùng file kickstart `.ks`).  
Repo được chứa `/var/www/cobbler/ks_mirror` .  
\- Khi thực hiện lệnh import:  
```
cobbler import --arch=x86_64 --path=/mnt/ubuntu1604 --name=Ubuntu1604
```

thì tên của distro tạo ra là sự kết hợp của tùy chọn `--name` và `--arch`. Mẫu tên sẽ là `<name>-<arch>`  .  
Trong trường hợp trên tên distro sẽ là `Ubuntu1604- x86_64`.   
###  6.1.3.Xóa những gì đã imported
\- Ta xóa distros, profiles, repo đã được tạo ra.
Chú ý: Xóa profiles trước khi xóa distros.  

## 6.2.Tạo file kickstart
\- Cách 1: Ta có thể tạo file trong thư mục `/var/lib/cobbler/kickstarts`.  
\- Cách 2: Ta sử dụng giao diện web.  
<img src="../images/cac-thatac-quantrong-voi-cobber-6.png" />

<img src="../images/cac-thatac-quantrong-voi-cobber-7.png" />

## 6.3.Tạo profiles
<img src="../images/cac-thatac-quantrong-voi-cobber-8.png" />

<img src="../images/cac-thatac-quantrong-voi-cobber-9.png" />

\- Trong đó các trường:  
- Name: tên profiles
- Owners: mặc định là admin, mình chưa tìm hiểu
- Distribution: Distro của hệ điều hành
- Enable PXE Menu: mặc định kích hoạt, mình chưa tìm hiểu
- Kickstart: file kickstart đi kèm
- Kernel  Options: cấu hình được ghi vào file `/var/lib/tftpboot/pxelinux.cfg/default` .  

Các trường khác, mình chưa tìm hiểu.  











