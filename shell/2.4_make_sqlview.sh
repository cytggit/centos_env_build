#!/bin/sh

# ===============postgrseql数据导入==============
su postgres << EOF
psql -d prison -U postgres -f /mnt/shell/pgr_fromatob.sql;
psql -d prison -U postgres -f /mnt/shell/pgr_fromatob_withfloor.sql;
psql -d prison -U postgres -f /mnt/shell/pgr_pointinpolygon.sql;
exit;
EOF