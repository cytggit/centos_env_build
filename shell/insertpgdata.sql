-- ----------------------------
-- 添加扩展
-- ----------------------------
create extension hstore;
create extension postgis;
create extension pgrouting;

-- ----------------------------
-- polygon_background
-- ----------------------------
DROP TABLE IF EXISTS "public"."polygon_background";
CREATE TABLE "public"."polygon_background" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"feature_id" varchar(32) COLLATE "default" NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"high" float4,
"stime" timestamp(6),
"etime" timestamp(6),
"url" text COLLATE "default",
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."polygon_background" ADD PRIMARY KEY ("fid");
/* Records */

-- ----------------------------
-- polygon
-- ----------------------------
DROP TABLE IF EXISTS "public"."polygon";
CREATE TABLE "public"."polygon" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"feature_id" varchar(32) COLLATE "default" NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"high" float4,
"stime" timestamp(6),
"etime" timestamp(6),
"url" text COLLATE "default",
"geom" "public".geometry(Polygon,4326) NOT NULL,
"penup" varchar(255) COLLATE "default")
WITH (OIDS=FALSE);
ALTER TABLE "public"."polygon" ADD PRIMARY KEY ("fid");
/* Records */

-- ----------------------------
-- point
-- ----------------------------
DROP TABLE IF EXISTS "public"."point";
CREATE TABLE "public"."point" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"feature_id" varchar(32) COLLATE "default" NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"node" int2,
"cnodeu" int4,
"cnoded" int4,
"stime" timestamp(6),
"etime" timestamp(6),
"url" text COLLATE "default",
"geom" "public".geometry(Point,4326) NOT NULL,
"angle" varchar(10) COLLATE "default")
WITH (OIDS=FALSE);
ALTER TABLE "public"."point" ADD PRIMARY KEY ("fid");
/* Records */

-- ----------------------------
-- polyline
-- ----------------------------
DROP TABLE IF EXISTS "public"."polyline";
CREATE TABLE "public"."polyline" (
"fid" varchar COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"feature_id" varchar(32) COLLATE "default" NOT NULL,
"floor_id" varchar(16) COLLATE "default" NOT NULL,
"name" text COLLATE "default",
"length" float8,
"oneway" int2,
"high" float4,
"stime" timestamp(6),
"etime" timestamp(6),
"source" int4,
"target" int4,
"geom" "public".geometry(Linestring,4326),
"id" int4,
"reverse_cost" float8,
"x1" float8,
"y1" float8,
"x2" float8,
"y2" float8)
WITH (OIDS=FALSE);
ALTER TABLE "public"."polyline" ADD PRIMARY KEY ("fid");

SELECT pgr_createTopology('polyline',0.00001, 'geom', 'id');
CREATE INDEX source_idx ON polyline("source");
CREATE INDEX target_idx ON polyline("target");
update polyline set length =st_length(geom);
UPDATE polyline SET reverse_cost =length;
UPDATE polyline SET x1 =ST_x(ST_PointN(geom, 1));
UPDATE polyline SET y1 =ST_y(ST_PointN(geom, 1));
UPDATE polyline SET x2 =ST_x(ST_PointN(geom, ST_NumPoints(geom)));
UPDATE polyline SET y2 =ST_y(ST_PointN(geom, ST_NumPoints(geom)));
/* Records */

-- ----------------------------
-- region
-- ----------------------------
DROP TABLE IF EXISTS "public"."region";
CREATE TABLE "public"."region" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"floor_id" varchar(32) COLLATE "default",
"name" text COLLATE "default",
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."region" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- priority
-- ----------------------------
DROP TABLE IF EXISTS "public"."priority";
CREATE TABLE "public"."priority" (
"feature_id" varchar COLLATE "default" NOT NULL,
"level" int4)
WITH (OIDS=FALSE);
ALTER TABLE "public"."priority" ADD PRIMARY KEY ("feature_id");
/* Records */
INSERT INTO "public"."priority" VALUES ('999999', '1');
INSERT INTO "public"."priority" VALUES ('10020401', '101');
INSERT INTO "public"."priority" VALUES ('10020511', '102');
INSERT INTO "public"."priority" VALUES ('10030501', '10201');
INSERT INTO "public"."priority" VALUES ('10030502', '10201');
INSERT INTO "public"."priority" VALUES ('10030503', '10201');
INSERT INTO "public"."priority" VALUES ('10030504', '10201');
INSERT INTO "public"."priority" VALUES ('10030505', '1020099');
INSERT INTO "public"."priority" VALUES ('10030506', '10201');
INSERT INTO "public"."priority" VALUES ('10030507', '10201');
INSERT INTO "public"."priority" VALUES ('10030508', '10201');
INSERT INTO "public"."priority" VALUES ('10030509', '10201');
INSERT INTO "public"."priority" VALUES ('10030510', '10201');
INSERT INTO "public"."priority" VALUES ('10030511', '10201');
INSERT INTO "public"."priority" VALUES ('10030512', '10201');
INSERT INTO "public"."priority" VALUES ('10030513', '10201');
INSERT INTO "public"."priority" VALUES ('10030514', '10201');
INSERT INTO "public"."priority" VALUES ('10030515', '10201');
INSERT INTO "public"."priority" VALUES ('10030516', '10201');
INSERT INTO "public"."priority" VALUES ('10030517', '10202');
INSERT INTO "public"."priority" VALUES ('10030518', '10201');
INSERT INTO "public"."priority" VALUES ('10030519', '10203');
INSERT INTO "public"."priority" VALUES ('10030520', '10204');
INSERT INTO "public"."priority" VALUES ('10030599', '10201');
INSERT INTO "public"."priority" VALUES ('10030602', '1020001');
INSERT INTO "public"."priority" VALUES ('10030603', '1020099');
INSERT INTO "public"."priority" VALUES ('10030604', '1020002');
INSERT INTO "public"."priority" VALUES ('10030605', '1020002');
INSERT INTO "public"."priority" VALUES ('10030606', '1020099');
INSERT INTO "public"."priority" VALUES ('10030607', '1020099');
INSERT INTO "public"."priority" VALUES ('10030608', '1020099');
INSERT INTO "public"."priority" VALUES ('10030609', '1020099');
INSERT INTO "public"."priority" VALUES ('10030610', '1020099');

-- ----------------------------
-- poi_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."poi_collection";
CREATE TABLE "public"."poi_collection" (
"id" text COLLATE "default" NOT NULL,
"poi_id" varchar COLLATE "default",
"l_id" text COLLATE "default",
"user_id" text COLLATE "default",
"place_id" varchar(16) COLLATE "default",
"floor_id" varchar(16) COLLATE "default",
"geom" "public".geometry(Point,4326))
WITH (OIDS=FALSE);
ALTER TABLE "public"."poi_collection" ADD PRIMARY KEY ("id");

-- ----------------------------
-- electronic_fence
-- ----------------------------
DROP TABLE IF EXISTS "public"."electronic_fence";
CREATE TABLE "public"."electronic_fence" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default",
"floor_id" varchar(32) COLLATE "default",
"type_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"stime" timestamp(6),
"etime" timestamp(6),
"geom" "public".geometry(Polygon,4326),
"fence_id" varchar COLLATE "default")
WITH (OIDS=FALSE);
ALTER TABLE "public"."electronic_fence" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- camerainfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."camerainfo";
CREATE TABLE "public"."camerainfo" (
"fid" varchar COLLATE "default" NOT NULL,
"camera_ip" text COLLATE "default",
"camera_name" text COLLATE "default",
"class_id" int4,
"organ" varchar COLLATE "default",
"nvr_ip" text COLLATE "default",
"remark" text COLLATE "default",
"place_id" varchar COLLATE "default",
"floor_id" varchar COLLATE "default",
"geom" "public".geometry(Point,4326))
WITH (OIDS=FALSE);
ALTER TABLE "public"."camerainfo" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- attendance_fence
-- ----------------------------
DROP TABLE IF EXISTS "public"."attendance_fence";
CREATE TABLE "public"."attendance_fence" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default",
"floor_id" varchar(32) COLLATE "default",
"name" text COLLATE "default",
"stime" timestamp(6),
"etime" timestamp(6),
"fence_id" varchar COLLATE "default",
"geom" "public".geometry(Polygon,4326))
WITH (OIDS=FALSE);
ALTER TABLE "public"."attendance_fence" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- asset_init_locate
-- ----------------------------
DROP TABLE IF EXISTS "public"."asset_init_locate";
CREATE TABLE "public"."asset_init_locate" (
"fid" varchar COLLATE "default" NOT NULL,
"l_id" text COLLATE "default",
"asset_name" text COLLATE "default",
"abbreviation" text COLLATE "default",
"class_id" int4,
"grade" int4,
"fence_num" varchar COLLATE "default",
"place_id" varchar COLLATE "default",
"floor_id" varchar COLLATE "default",
"init_geom" "public".geometry(Point,4326),
"asset_version" varchar(255) COLLATE "default")
WITH (OIDS=FALSE);
ALTER TABLE "public"."asset_init_locate" ADD PRIMARY KEY ("fid");


-- ----------------------------
-- detain
-- ----------------------------
DROP TABLE IF EXISTS "public"."detain";
CREATE TABLE "public"."detain" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"floor_id" varchar(32) COLLATE "default",
"name" text COLLATE "default",
"rentention_time" int4,
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."detain" ADD PRIMARY KEY ("fid");


-- ----------------------------
-- danger
-- ----------------------------
DROP TABLE IF EXISTS "public"."danger";
CREATE TABLE "public"."danger" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"floor_id" varchar(32) COLLATE "default",
"name" text COLLATE "default",
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."danger" ADD PRIMARY KEY ("fid");



