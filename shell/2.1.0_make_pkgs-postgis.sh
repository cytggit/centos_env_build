#!/bin/sh


# ===============安装依赖包==============
# -----pkgs-postgis-----
cd /mnt/packages/pkgs-postgis
rpm -i --nodeps --force perl-5.16.3-292.el7.x86_64.rpm
rpm -i perl-libs-5.16.3-292.el7.x86_64.rpm
rpm -i perl-Exporter-5.68-3.el7.noarch.rpm perl-Carp-1.26-244.el7.noarch.rpm
rpm -i perl-constant-1.27-2.el7.noarch.rpm
rpm -i perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm
rpm -i perl-Data-Dumper-2.145-3.el7.x86_64.rpm
rpm -i perl-PathTools-3.40-5.el7.x86_64.rpm
rpm -i perl-File-Path-2.09-2.el7.noarch.rpm
rpm -i perl-File-Spec-Native-1.003-1.el7.noarch.rpm
rpm -i perl-Text-ParseWords-3.29-4.el7.noarch.rpm
rpm -i perl-threads-1.87-4.el7.x86_64.rpm
rpm -i perl-threads-shared-1.43-6.el7.x86_64.rpm
rpm -i perl-Thread-Queue-3.02-2.el7.noarch.rpm
rpm -i perl-XML-Parser-2.41-10.el7.x86_64.rpm
rpm -i perl-XML-Dumper-0.81-17.el7.noarch.rpm
rpm -i perl-macros-5.16.3-292.el7.x86_64.rpm
rpm -i perl-Storable-2.45-3.el7.x86_64.rpm
rpm -i perl-Socket-2.010-4.el7.x86_64.rpm
rpm -i perl-Pod-Escapes-1.04-292.el7.noarch.rpm
rpm -i perl-Filter-1.49-3.el7.x86_64.rpm
rpm -i perl-File-Temp-0.23.01-3.el7.noarch.rpm
rpm -i perl-Time-HiRes-1.9725-3.el7.x86_64.rpm
rpm -i perl-Time-Local-1.2300-2.el7.noarch.rpm
rpm -i perl-HTTP-Tiny-0.033-3.el7.noarch.rpm
rpm -i perl-parent-0.225-244.el7.noarch.rpm
rpm -i perl-Pod-Simple-3.28-4.el7.noarch.rpm perl-Encode-2.51-7.el7.x86_64.rpm perl-Getopt-Long-2.40-2.el7.noarch.rpm perl-Pod-Usage-1.63-3.el7.noarch.rpm perl-podlators-2.5.1-3.el7.noarch.rpm perl-Pod-Perldoc-3.20-4.el7.noarch.rpm
rpm -i perl-Test-Harness-3.28-3.el7.noarch.rpm
rpm -i autoconf-2.69-11.el7.noarch.rpm
rpm -i automake-1.13.4-3.el7.noarch.rpm
rpm -i libtool-2.4.2-22.el7_3.x86_64.rpm

tar -xf gdal-2.1.2.tar.gz
tar -xf geos-3.6.1.tar.gz
tar -xf json-c-json-c-0.12.1-20160607.tar.gz
tar -xf proj.4-4.9.3.tar.gz
# proj
cd proj.4-4.9.3
./autogen.sh
./configure --prefix=/home/pgsql/plugin/proj
make
make install
echo "/home/pgsql/plugin/proj/lib" > /etc/ld.so.conf.d/proj-4.9.3.conf
# geos
cd ../geos-3.6.1
./autogen.sh
./configure --prefix=/home/pgsql/plugin/geos
make
make install
echo "/home/pgsql/plugin/geos/lib" > /etc/ld.so.conf.d/geos-3.6.1.conf
# gdal
cd ../gdal-2.1.2
./configure --prefix=/home/pgsql/plugin/gdal
make
make install
echo "/home/pgsql/plugin/gdal/lib" > /etc/ld.so.conf.d/gdal-2.1.2.conf
# json-c
cd ../json-c-json-c-0.12.1-20160607
./configure --prefix=/home/pgsql/plugin/json-c
make
make install
echo "/home/pgsql/plugin/json-c/lib" > /etc/ld.so.conf.d/json-c-0.12.1.conf
ldconfig
