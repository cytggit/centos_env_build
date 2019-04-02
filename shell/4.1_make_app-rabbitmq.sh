#!/bin/sh

# ===============安装软件==============
# -----app-rabbitmq-----
cd /mnt/app
rpm -i rabbitmq-server-3.7.5-1.el6.noarch.rpm
cp /usr/share/doc/rabbitmq-server-3.7.5/rabbitmq.config.example /etc/rabbitmq/rabbitmq.config
service rabbitmq-server start
sed -i 's/\%\% {tcp_listeners\, \[5672\]}/ {tcp_listeners\, \[5672\]}/g' /etc/rabbitmq/rabbitmq.config
sed -i 's/\%\% {loopback_users\, \[\]}\,/ {loopback_users\, \[\]}\,/g' /etc/rabbitmq/rabbitmq.config
sed -i '/{loopback_users\, \[\]}\,/a\   {log_levels\, \[{connection\, warning}\, {channel\, warning}\]}' /etc/rabbitmq/rabbitmq.config
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user test 123456
rabbitmqctl set_permissions -p "/" test '.*' '.*' '.*'
rabbitmqctl set_user_tags test administrator
service rabbitmq-server restart
chkconfig rabbitmq-server on