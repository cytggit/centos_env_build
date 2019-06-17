#!/bin/sh

# ===============postgrseql数据导入==============
su postgres << EOF
psql -d mote_basemap -U postgres -f /mnt/shell/pgr_fromatob.sql;
psql -d mote_basemap -U postgres -f /mnt/shell/pgr_fromatob_withfloor.sql;
psql -d mote_basemap -U postgres -f /mnt/shell/pgr_pointinpolygon.sql;
exit;
EOF