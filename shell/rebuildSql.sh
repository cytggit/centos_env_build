#!/bin/bash
HOST=127.0.0.1   #ip （127.0.0.1表示本机地址）
USERNAME=root   #数据库用户名
PASSWORD=123456   #数据库密码
DATABASE=ycbison   #数据库名
BACKUP_PATH=/mnt/bkdata   #备份目录
logfile=/mnt/bkdata/data.log   #记录日志

#如果不存在备份目录就创建
if [ ! -d $BACKUP_PATH ]
then
   mkdir $BACKUP_PATH
fi

#进入备份目录
cd $BACKUP_PATH
echo "========ACTION=======">>$logfile
 
#将两个月内的表数据导出
mysqldump -h$HOST -u$USER -p$PASSWORD $DATABASE $1 --where="timestamp>unix_timestamp(DATE_SUB(NOW(),INTERVAL 2 MONTH))*1000" > /mnt/bkdata/$1.sql

if [ $? = 0 ]
then
    echo `date +"%Y-%m-%d %H:%M:%S"`"：leading out Successful!">>$logfile
else
    echo `date +"%Y-%m-%d %H:%M:%S"`"：leading out fail!">>$logfile
exit 1 #0:正常退出  1:非正常退出
fi

#执行导出的sql文件
mysql -h$HOST -u$USER -p$PASSWORD $DATABASE < /mnt/bkdata/$1.sql

if [ $? = 0 ]
then
    echo `date +"%Y-%m-%d %H:%M:%S"`"：leading in Successful!">>$logfile
else
    echo `date +"%Y-%m-%d %H:%M:%S"`"：leading in fail!">>$logfile
exit 1
fi

#重建表索引
mysql -h$HOST -u$USER -p$PASSWORD $DATABASE << EOF
alter table $1 drop id;
alter table $1 add id int(11) not null first;
alter table $1 modify column id int( 11 ) not null auto_increment,add primary key(id);
exit
EOF

if [ $? = 0 ]
then
    echo `date +"%Y-%m-%d %H:%M:%S"`"：rebuild index Successful!">>$logfile
else
    echo `date +"%Y-%m-%d %H:%M:%S"`"：rebuild index fail!">>$logfile
exit 1
fi
