#!/bin/sh

# ===============安装软件==============
# -----app-postgis-----
cd /mnt/app
tar -xf postgis-2.4.4dev.tar.gz
cd postgis-2.4.4dev
./configure --prefix=/home/pgsql/plugin/postgis --with-pgconfig=/usr/local/postgresql/bin/pg_config --with-geosconfig=/home/pgsql/plugin/geos/bin/geos-config --with-gdalconfig=/home/pgsql/plugin/gdal/bin/gdal-config --with-projdir=/home/pgsql/plugin/proj
make
make install
cd extensions/postgis
make clean
make 
make install
cd ../postgis_topology
make clean
make 
make install
cd ../postgis_sfcgal
make clean
make
make install
cd ../address_standardizer
make clean
make
make install
cd ../postgis_tiger_geocoder
make clean
make
make install