#!/bin/bash
reset_terminal=$(tput sgr0) #定义一个高亮输出的变量
#OS type
os_type=$(uname -o)
echo -e '\E[32m' "OS type:" $reset_terminal $os_type

#OS release version
#os_version=$(cat /etc/issue | grep "CentOS")
os_version=$(cat /etc/redhat-release)
echo -e '\E[32m' "OS release version:" $reset_terminal $os_version

#architecture cpu指令集
architecture=$(uname -m)
echo -e '\E[32m' "architecture:" $reset_terminal $architecture

#Kernel release
kernel_release=$(uname -r)
echo -e '\E[32m' "Kernel release:" $reset_terminal $kernel_release

#hostname
hostname=$(uname -n)
#hostname=$(set | grep HOSTNAME)  $HOSTNAME
echo -e '\E[32m' "hostname:" $reset_terminal $hostname

#internal ip
internal_ip=$(hostname -I)
echo -e '\E[32m' "internal_ip:" $reset_terminal $internal_ip

#external ip
external_ip=$(curl -s http://ipecho.net/plain)
echo -e '\E[32m' "external_ip:" $reset_terminal $external_ip

#DNS
name_server=$(cat /etc/resolv.conf | grep "nameserver" | awk '{print $NF}')
echo -e '\E[32m' "DNS:" $reset_terminal $name_server

#Disk used
disk_used=$(df -h | grep -v "Filesystem" | awk '{print $1 " "  $5}')
echo -e '\E[32m' "Disk used" $reset_terminal $disk_used
