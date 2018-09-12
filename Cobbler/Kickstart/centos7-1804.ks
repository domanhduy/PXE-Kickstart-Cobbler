#Generic Kickstart template for Centos 7
#Platform: x86 and x86-64

#System language
lang en_US

#System keyboard
keyboard us

#System timezone
timezone Asia/Ho_Chi_Minh

#Root password
rootpw welcome123

#System authorization infomation
auth  --useshadow  --enablemd5 

#System bootloader configuration
bootloader --location=mbr
#Partition clearing information
clearpart --all
#Basic disk partition
part / --fstype ext4 --size 5 --grow --asprimary
part swap --size 1024
part /boot --fstype ext4 --size 1024

#Use text mode install
text

# Firewall configuration
firewall --enabled
# SELinux configuration
selinux --disabled

#Network information
#network --bootproto=dhcp --device=eth0 --onboot=on

# config repo source.list
url --url http://172.16.69.21/cblr/links/Centos7-x86_64

# Do not configure the X Window System
skipx

#Reboot after installation
reboot

#Install packages
%packages --ignoremissing

%end

#Run command when system installation is complete
%post
yum update -y
cd /root
mkdir test
%end
