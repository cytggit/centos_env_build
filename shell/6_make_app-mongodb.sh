#!/bin/sh

# ===============安装软件==============
# -----app-mongodb-----
cd /mnt/app
tar -xf mongodb-linux-x86_64-3.2.6.tgz
mv mongodb-linux-x86_64-3.2.6 /usr/local/mongodb
echo "export PATH=\$PATH:/usr/local/mongodb/bin" >> /etc/profile
source /etc/profile
cd /usr/local/mongodb
mkdir -p data/db
mkdir log
mkdir conf
\cp /mnt/conf/mongodb.conf /usr/local/mongodb/conf/
mongod -f conf/mongodb.conf
cd /etc/rc.d/init.d/
cp /mnt/conf/mongodb .
chmod +x mongodb
chkconfig --add mongodb