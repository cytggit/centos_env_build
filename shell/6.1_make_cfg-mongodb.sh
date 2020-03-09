#!/bin/sh

#配置mongodb的数据据
source /etc/profile
mongo << EOF
# 创建root用户，并为root用户赋予相应的权限
use location;
db.createUser(
 {
   user: "root",
   pwd: "Mote12345",
   roles: [
      { role: "readWrite", db: "location" },
      { role: "dbAdmin", db: "location" },
	  { role: "userAdmin", db: "location" }
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
EOF
