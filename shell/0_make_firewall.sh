#!/bin/sh

# ===============开启端口==============
firewall-cmd --permanent --add-port=5432/tcp
firewall-cmd --permanent --add-port=3306/tcp
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=5672/tcp
firewall-cmd --permanent --add-port=15672/tcp
firewall-cmd --permanent --add-port=6379/tcp
firewall-cmd --permanent --add-port=27017/tcp
firewall-cmd --permanent --add-port=28017/tcp
firewall-cmd --permanent --add-port=8089/tcp
firewall-cmd --permanent --add-port=8090/tcp
firewall-cmd --permanent --add-port=8091/tcp
firewall-cmd --permanent --add-port=3333/udp
firewall-cmd --permanent --add-port=3334/udp
firewall-cmd --permanent --add-port=3335/udp
firewall-cmd --permanent --add-port=5555/udp
firewall-cmd --reload

# 域名可用-在线部署
echo "nameserver 8.8.8.8" > /etc/resolv.conf
