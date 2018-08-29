#!/bin/sh

# ===============postgrseql数据导入==============
su postgres
createdb mote_basemap
psql -d mote_basemap -U postgres -f /mnt/shell/insertpgdata.sql
psql -d mote_basemap -U postgres -f /mnt/shell/pgr_fromatob.sql
psql -d mote_basemap -U postgres -f /mnt/shell/pgr_fromatob_withfloor.sql
psql -d mote_basemap -U postgres -f /mnt/shell/pgr_pointinpolygon.sql
exit