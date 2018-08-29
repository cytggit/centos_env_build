#!/bin/sh

# ===============安装依赖包==============
# -----pkgs-postgis-----
# -----环境变量-----
echo "PGHOME=/usr/local/postgresql/" >> /etc/profile
echo "export PGHOME"  >> /etc/profile
echo "export PGDATA=/pgdata/data" >> /etc/profile
echo "export LD_LIBRARY_PATH=/home/pgsql/plugin/geos/lib:/home/pgsql/plugin/proj4/lib:/home/pgsql/plugin/json-c/lib:/home/pgsql/plugin/gdal/lib:$PGHOME/lib:/lib64:/usr/lib64:/usr/local/lib64:/lib:/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH" >> /etc/profile
echo "export PATH=\$PATH:\$HOME/.local/bin:\$HOME/bin:\$PGHOME/bin" >> /etc/profile
echo "export MANPATH=\$PGHOME/share/man:\$MANPATH" >>/etc/profile
echo "export PATH=\$PATH:/mnt/packages/pkgs-pgrouting/cmake-3.11.0-rc4-Linux-x86_64/bin" >> /etc/profile

source /etc/profile
