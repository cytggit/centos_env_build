#!/bin/sh

# ===============部署工程==============
# -----webapps-8090-----
cd /opt/java/tomcat_8090/webapps
# geoserver
cp /mnt/webapps/geoserver.tar .
tar -xf geoserver.tar
# geoserver 配置数据库连接
sed -i 's/<entry key="host">114.215.83.3<\/entry>/<entry key="host">192.168.1.198<\/entry>/g' geoserver/data/workspaces/mote/mote/datastore.xml

# LocateServer
# cp /mnt/webapps/LocateServer.war .

# 重启tomcat
pid_8090=$(ps -ef |grep tomcat_8090|grep -v grep|awk '{print $2}')
if [ $pid_8090 ]
    then
		echo "tomcat_8090进程id存在，重启中...."
		kill -9 $pid_8090  # 杀掉进程
		sleep 5
		sh ../bin/startup.sh
	else
		echo "tomcat_8090进程id不存在，启动中...."
		sh ../bin/startup.sh
fi

# -----webapps-8091-----
# cd /opt/java/tomcat_8091/webapps
# ConfigServer
# cp /mnt/webapps/ConfigServer.war .

# LocateDCServer
# cp /mnt/webapps/LocateDCServer.war .

# bison
# cp /mnt/webapps/bison.war .

# 重启tomcat
# pid_8091=$(ps -ef |grep tomcat_8091|grep -v grep|awk '{print $2}')
# if [ $pid_8091 ]
    # then
		# echo "tomcat_8091进程id存在，重启中...."
		# kill -9 $pid_8091  # 杀掉进程
		# sleep 5
		# sh ../bin/startup.sh
	# else
		# echo "tomcat_8091进程id不存在，启动中...."
		# sh ../bin/startup.sh
# fi