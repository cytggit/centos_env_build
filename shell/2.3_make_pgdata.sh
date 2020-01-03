#!/bin/sh

# ===============postgrseql数据导入==============
source /etc/profile
su postgres << EOF
createdb prison;
psql -d prison -U postgres -f /mnt/shell/insertpgdata.sql;
exit;
EOF