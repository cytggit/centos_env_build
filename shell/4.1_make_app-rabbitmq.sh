#!/bin/sh

# ===============安装软件==============
# -----app-rabbitmq-----
cd /mnt/app
rpm -i rabbitmq-server-3.7.5-1.el6.noarch.rpm
cp /usr/share/doc/rabbitmq-server-3.7.5/rabbitmq.config.example /etc/rabbitmq/
service rabbitmq-server start
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user test 123456
rabbitmqctl set_user_tags rabbitadmin administrator