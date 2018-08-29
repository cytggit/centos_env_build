#!/bin/sh

# ===============安装软件==============
# -----app-postgres-----
# install
cd /mnt/app
tar -xf postgresql-9.6.8.tar.gz
cd postgresql-9.6.8
./configure --prefix=/usr/local/postgresql --with-ossp-uuid
make
make install
cd contrib/hstore/
make clean
make
make install
echo "/usr/local/postgresql/lib" > /etc/ld.so.conf.d/postgresql.conf
ldconfig
# 配置
useradd postgres -m
echo postgres:postgres | chpasswd
mkdir -p /pgdata
chown -R postgres /pgdata
cd /usr/local/postgresql/bin
su postgres
./initdb -D "/pgdata" -U postgres
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /pgdata/postgresql.conf
sed -i "s/#port = 5432/port = 5432/g" /pgdata/postgresql.conf
echo "host    all             all             0.0.0.0/0            md5" >> /pgdata/pg_hba.conf
exit
# 开机启动
cp -pir /mnt/app/postgresql-9.6.8/contrib/start-scripts/linux /etc/init.d/postgresql
chmod +x /etc/init.d/postgresql
sed -i 's/prefix=\/usr\/local\/pgsql/prefix=\/usr\/local\/postgresql/g' /etc/init.d/postgresql
sed -i 's/PGDATA="\/usr\/local\/pgsql\/data"/PGDATA="\/pgdata"/g' /etc/init.d/postgresql
chkconfig --add postgresql
# 更改密码
service postgresql start
su postgres
psql -f /mnt/shell/changepgpsword.sql
exit
service postgresql restart