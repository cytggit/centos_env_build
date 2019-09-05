#!/bin/sh

#配置采用密码登录
source /etc/profile
cd /usr/local/mongodb
sed -i "s/#auth/auth/g" conf/mongodb.conf
mongod -f conf/mongodb.conf

# -----开机启动-mongodb-----
echo "配置开机启动"
cd /etc/rc.d/init.d/
cp /mnt/conf/mongodb .
chmod +x mongodb
chkconfig --add mongodb
chkconfig mongodb on
