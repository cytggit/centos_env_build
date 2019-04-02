#!/bin/sh

# ===============安装软件==============
# -----安装-mongodb-----
echo "安装mongodb"
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

# -----配置-mongodb-----
echo "配置mongodb"
mongo << EOF
# 为admin用户添加了最高权限以及密码认证
use admin;
db.createUser({user: "admin",pwd: "Mote12345",roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]});
# 创建root用户，并为root用户赋予相应的权限
use location;
db.createUser(
 {
   user: "root",
   pwd: "Mote12345",
   roles: [
      { role: "readWrite", db: "location" },
      { role: "dbAdmin", db: "location" }
   ]
 }
);
# 为person_collection数据集建立索引
db.person_collection.ensureIndex({"deviceId":1});
db.person_collection.ensureIndex({"beginTime":1},{expireAfterSeconds:5184000});
# 为asset_collection数据集建立索引
db.asset_collection.ensureIndex({"deviceId":1});
db.asset_collection.ensureIndex({"beginTime":1},{expireAfterSeconds:5184000});
# 停止服务
use admin;
db.shutdownServer();
exit;
EOF
sed -i "s/#auth/auth/g" conf/mongodb.conf
mongod -f conf/mongodb.conf

# -----开机启动-mongodb-----
echo "配置开机启动"
cd /etc/rc.d/init.d/
cp /mnt/conf/mongodb .
chmod +x mongodb
chkconfig --add mongodb
chkconfig mongodb on