#!/bin/sh

# ===============安装依赖包==============
# -----pkgs-rabbitmq-----
cd /mnt/packages/pkgs-rabbitmq/
rpm -i erlang-20.0.1-1.el6.x86_64.rpm
rpm -i socat-1.7.3.2-2.el7.x86_64.rpm