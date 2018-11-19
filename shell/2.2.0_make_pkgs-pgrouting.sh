#!/bin/sh

# ===============安装依赖包==============
# -----pkgs-pgrouting-----
cd /mnt/packages/pkgs-pgrouting/
rpm -i boost-atomic-1.53.0-27.el7.x86_64.rpm
rpm -i boost-system-1.53.0-27.el7.x86_64.rpm
rpm -i boost-chrono-1.53.0-27.el7.x86_64.rpm
rpm -i boost-context-1.53.0-27.el7.x86_64.rpm
rpm -i boost-date-time-1.53.0-27.el7.x86_64.rpm
rpm -i boost-filesystem-1.53.0-27.el7.x86_64.rpm
rpm -i boost-regex-1.53.0-27.el7.x86_64.rpm
rpm -i boost-graph-1.53.0-27.el7.x86_64.rpm
rpm -i boost-iostreams-1.53.0-27.el7.x86_64.rpm
rpm -i boost-thread-1.53.0-27.el7.x86_64.rpm
rpm -i boost-locale-1.53.0-27.el7.x86_64.rpm
rpm -i boost-math-1.53.0-27.el7.x86_64.rpm
rpm -i boost-program-options-1.53.0-27.el7.x86_64.rpm
rpm -i boost-python-1.53.0-27.el7.x86_64.rpm
rpm -i boost-random-1.53.0-27.el7.x86_64.rpm
rpm -i boost-serialization-1.53.0-27.el7.x86_64.rpm
rpm -i boost-signals-1.53.0-27.el7.x86_64.rpm
rpm -i boost-test-1.53.0-27.el7.x86_64.rpm
rpm -i boost-timer-1.53.0-27.el7.x86_64.rpm
rpm -i boost-wave-1.53.0-27.el7.x86_64.rpm
rpm -i boost-1.53.0-27.el7.x86_64.rpm
rpm -i boost-devel-1.53.0-27.el7.x86_64.rpm
rpm -i jbigkit-libs-2.0-11.el7.x86_64.rpm
rpm -i libjpeg-turbo-1.2.90-5.el7.x86_64.rpm
rpm -i libtiff-4.0.3-27.el7_3.x86_64.rpm
rpm -i libwebp-0.3.0-7.el7.x86_64.rpm
rpm -i python-babel-0.9.6-8.el7.noarch.rpm
rpm -i python-backports-1.0-8.el7.x86_64.rpm
rpm -i python-ipaddress-1.0.16-2.el7.noarch.rpm
rpm -i python-backports-ssl_match_hostname-3.5.0.1-1.el7.noarch.rpm
rpm -i python-pillow-2.0.0-19.gitd1c6db8.el7.x86_64.rpm
rpm -i python-docutils-0.11-0.3.20130715svn7687.el7.noarch.rpm
rpm -i python-markupsafe-0.11-10.el7.x86_64.rpm
rpm -i python-jinja2-2.7.2-2.el7.noarch.rpm
rpm -i python-setuptools-0.9.8-7.el7.noarch.rpm
rpm -i python-pygments-1.4-10.el7.noarch.rpm
rpm -i python-sphinx-1.1.3-11.el7.noarch.rpm

tar -xf cmake-3.11.0-rc4-Linux-x86_64.tar.gz
tar -xf gmp-6.1.1.tar
tar -xf mpfr-3.1.5.tar
tar -xf mpc-1.0.3.tar.gz
tar -xf CGAL-4.9.tar
# cmake --只需配置环境变量
source /etc/profile
# gmp
cd gmp-6.1.1
./configure
make
make check
make install
# mpfr
cd ../mpfr-3.1.5
./configure --with-gmp-include=/usr/local/include --with-gmp-lib=/usr/local/lib
make
make check
make install
# mpc
cd ../mpc-1.0.3
./configure
make
make install
# cgal
cd ../CGAL-4.9
cmake .
make
make install