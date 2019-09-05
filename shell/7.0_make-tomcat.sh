#!/bin/sh

# ===============安装TOMCAT==============
# -----common-----
cd /mnt/app/
tar -xf jdk-8u181-linux-x64.tar.gz
mkdir /opt/java
mv jdk1.8.0_181 /opt/java/
echo "export JAVA_HOME=/opt/java/jdk1.8.0_181" >> /etc/profile
echo "export CLASSPATH=.:\$JAVA_HOME/lib/tools.jar:\$JAVA_HOME/lib/dt.jar" >> /etc/profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
tar -xf apache-tomcat-8.5.35.tar.gz

# -----tomcat-8090-----
cp -pr apache-tomcat-8.5.35 /opt/java/tomcat_8090
cd /opt/java/tomcat_8090
sed -i 's/<Connector port="8080" protocol="HTTP\/1.1"/<Connector port="8090" protocol="HTTP\/1.1"/g' conf/server.xml
./bin/startup.sh

# -----tomcat-8091-----
cd /mnt/app/
cp -pr apache-tomcat-8.5.35 /opt/java/tomcat_8091
cd /opt/java/tomcat_8091
sed -i 's/<Connector port="8080" protocol="HTTP\/1.1"/<Connector port="8091" protocol="HTTP\/1.1"/g' conf/server.xml
sed -i 's/<Server port="8005" shutdown="SHUTDOWN">/<Server port="8004" shutdown="SHUTDOWN">/g' conf/server.xml
sed -i 's/Connector port="8009"/Connector port="8012"/g' conf/server.xml
./bin/startup.sh

# -----tomcat-8089-----
cd /mnt/app/
cp -pr apache-tomcat-8.5.35 /opt/java/tomcat_8089
cd /opt/java/tomcat_8089
sed -i 's/<Connector port="8080" protocol="HTTP\/1.1"/<Connector port="8089" protocol="HTTP\/1.1"/g' conf/server.xml
sed -i 's/<Server port="8005" shutdown="SHUTDOWN">/<Server port="8003" shutdown="SHUTDOWN">/g' conf/server.xml
sed -i 's/Connector port="8009"/Connector port="8013"/g' conf/server.xml
./bin/startup.sh

# -----开机启动-----
cp /mnt/conf/tomcat_8089 /mnt/conf/tomcat_8090 /mnt/conf/tomcat_8091 /etc/init.d/
cd  /etc/init.d/
chmod +x tomcat_8089 tomcat_8090 tomcat_8091
chkconfig --add tomcat_8089
chkconfig tomcat_8089 on
chkconfig --add tomcat_8090
chkconfig tomcat_8090 on
chkconfig --add tomcat_8091
chkconfig tomcat_8091 on