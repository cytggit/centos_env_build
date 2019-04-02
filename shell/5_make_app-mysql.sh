#!/bin/sh

# ===============安装软件==============
# -----app-mysql-----
cd /mnt/app
tar -xf mysql-5.6.33-linux-glibc2.5-x86_64.tar.gz
cp -pir mysql-5.6.33-linux-glibc2.5-x86_64 /usr/local/mysql
groupadd mysql
useradd -g mysql mysql
cd /usr/local/mysql/
chown -R mysql:mysql ./
./scripts/mysql_install_db --user=mysql --datadir=/usr/local/mysql/data/
cp support-files/mysql.server /etc/init.d/mysqld
chmod 755 /etc/init.d/mysqld
chkconfig --add mysqld
chkconfig mysqld on
\cp /mnt/conf/my.cnf /etc/my.cnf
echo "export PATH=\$PATH:/usr/local/mysql/bin" >> /etc/profile
source /etc/profile
service mysqld start
mysqladmin -u root password 'Mote12345'
mysql -uroot -pMote12345 << EOF
use mysql;
grant all privileges on *.* to 'root'@'%' identified by 'Mote12345';
flush privileges;
create database bison;
create database beacon;
exit;
EOF
mysql -uroot -pMote12345 bison < /mnt/shell/bison.sql
mysql -uroot -pMote12345 beacon < /mnt/shell/beacon.sql