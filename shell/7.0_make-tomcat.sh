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
tar -xf apache-tomcat-7.0.67.tar.gz

# -----tomcat-8090-----
cp -pr apache-tomcat-7.0.67 /opt/java/tomcat_8090
cd /opt/java/tomcat_8090
sed -i 's/<Connector port="8080" protocol="HTTP\/1.1"/<Connector port="8090" protocol="HTTP\/1.1"/g' conf/server.xml
./bin/startup.sh

# -----tomcat-8091-----
cp -pr apache-tomcat-7.0.67 /opt/java/tomcat_8091
cd /opt/java/tomcat_8091
sed -i 's/<Connector port="8080" protocol="HTTP\/1.1"/<Connector port="8091" protocol="HTTP\/1.1"/g' conf/server.xml
sed -i 's/<Server port="8005" shutdown="SHUTDOWN">/<Server port="8004" shutdown="SHUTDOWN">/g' conf/server.xml
sed -i 's/Connector port="8009"/Connector port="8012"/g' conf/server.xml
./bin/startup.sh

# -----开机启动-----
cp /mnt/conf/tomcat_8090 /mnt/conf/tomcat_8091 /etc/init.d/
cd  /etc/init.d/
chmod +x tomcat_8090 tomcat_8091
chkconfig --add tomcat_8090
chkconfig --add tomcat_8091