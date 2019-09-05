#!/bin/sh

# ===============安装软件==============
# -----app-pgrouting-----
source /etc/profile
cd /mnt/app
tar -xf pgrouting-2.4.1.tar.gz
cd pgrouting-2.4.1
mkdir build 
cd build
cmake ..
make
make install