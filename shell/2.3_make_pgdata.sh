#!/bin/sh

# ===============postgrseql数据导入==============
source /etc/profile
su postgres << EOF
createdb mote_basemap;
psql -d mote_basemap -U postgres -f /mnt/shell/insertpgdata.sql;
exit;
EOF