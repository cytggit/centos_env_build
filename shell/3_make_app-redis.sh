#!/bin/sh

# ===============安装软件==============
# -----app-redis-----
cd /mnt/app
tar -xf redis-4.0.2.tar.gz
cd redis-4.0.2
make
cd src
make install PREFIX=/usr/local/redis
mkdir /usr/local/redis/etc
cp ../redis.conf /usr/local/redis/etc/
sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
sed -i 's/# requirepass foobared/requirepass Mote12345/g' /usr/local/redis/etc/redis.conf
sed -i '/127.0.0.1/s/^/\#/' /usr/local/redis/etc/redis.conf
echo "export PATH=\$PATH:/usr/local/redis/bin" >> /etc/profile
source /etc/profile
redis-server /usr/local/redis/etc/redis.conf
cd /etc/rc.d/init.d/
cp /mnt/conf/redis .
chmod +x redis
chkconfig --add redis
chkconfig redis on