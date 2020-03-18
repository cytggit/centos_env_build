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
"building_id" int NOT NULL,
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
"building_id" int NOT NULL,
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
-- polygon_style
-- ----------------------------
DROP TABLE IF EXISTS "public"."polygon_style";
CREATE TABLE "public"."polygon_style" (
"feature_id" varchar(16) COLLATE "default" NOT NULL,
"fill_color" varchar(32) COLLATE "default",
"stroke_color" varchar(32) COLLATE "default",
"stroke_width" float4,
"zIndex" int2)
WITH (OIDS=FALSE);
ALTER TABLE "public"."polygon_style" ADD PRIMARY KEY ("feature_id");
/* Records */
INSERT INTO "public"."polygon_style" VALUES ('10010101', '207,227,208,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10010102', '207,227,208,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10010103', '255,255,250,1', '0,0,0,1', '0.2', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020101', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020301', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020401', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020511', '255,255,255,1', '128,128,128,0.6', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020601', '200,200,200,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020602', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020603', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020604', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020605', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10020606', '255,255,255,1', '255,255,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10030101', '250,224,204,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030102', '217,237,218,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030103', '195,229,233,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030104', '146,183,188,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030105', '211,211,180,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030106', '252,246,156,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030107', '255,213,219,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030108', '255,143,124,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030109', '199,161,149,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030110', '189,139,142,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030111', '210,190,113,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030112', '174,189,196,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030113', '199,214,225,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030114', '255,188,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030115', '199,214,225,0.4', '255,255,255,0.4', '0.8', '102');
INSERT INTO "public"."polygon_style" VALUES ('10030116', '199,214,225,0.4', '255,255,255,0.4', '0.8', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030117', '146,183,188,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030118', '245,138,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030119', '205,155,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030120', '205,155,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030121', '205,155,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030122', '210,190,113,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030123', '123,188,205,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030124', '205,155,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030125', '133,178,125,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030126', '133,168,135,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030127', '175,178,235,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030128', '205,165,165,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030130', '205,165,165,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030131', '245,178,155,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030132', '175,178,235,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030133', '252,246,156,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030134', '129,159,165,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030199', '159,129,165,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030201', '139,214,225,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030202', '199,144,205,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030203', '129,174,125,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030204', '139,214,225,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030205', '122,84,125,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030206', '139,174,135,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030207', '99,84,125,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030301', '159,184,125,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030302', '169,194,185,1', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030303', '204,204,204,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030304', '204,204,204,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030305', '204,204,204,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030501', '204,153,255,0.5', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030502', '233,242,239,0.5', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030503', '255,153,0,0.5', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030504', '255,255,204,0.5', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030505', '88,94,80,0.4', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030506', '220,220,255,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030507', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030508', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030509', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030510', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030511', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030512', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030513', '233,242,239,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030514', '220,220,255,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030515', '220,220,255,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030516', '220,220,255,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030517', '252,231,212,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030518', '252,231,212,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030519', '252,231,212,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030520', '252,231,212,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030599', '252,231,212,0.5', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030602', '255,178,190,1', '255,255,255,1', '0.8', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030603', '204,204,104,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030604', '180,180,180,0.5', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030605', '180,180,180,0.5', '255,255,255,1', '0.8', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030606', '224,224,224,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030607', '104,104,104,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030608', '224,224,224,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030609', '204,204,204,0.8', '255,255,255,1', '1', '104');
INSERT INTO "public"."polygon_style" VALUES ('10030610', '244,244,204,0.8', '255,255,255,1', '1', '105');
INSERT INTO "public"."polygon_style" VALUES ('10030611', '244,204,204,1', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030612', '204,204,244,1', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10030613', '204,204,204,0.8', '255,255,255,1', '1', '103');
INSERT INTO "public"."polygon_style" VALUES ('10050100', '0,204,255,0.8', '0,204,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10050200', '0,204,255,0.8', '0,204,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10050300', '0,204,255,0.8', '0,204,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10050400', '0,204,255,0.8', '0,204,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10050500', '0,204,255,0.8', '0,204,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('10050600', '0,204,255,0.8', '0,204,255,1', '1', '101');
INSERT INTO "public"."polygon_style" VALUES ('999999', '200,200,200,1', '128,128,128,0.6', '2', '100');

-- ----------------------------
-- point
-- ----------------------------
DROP TABLE IF EXISTS "public"."point";
CREATE TABLE "public"."point" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
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
"building_id" int NOT NULL,
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
-- building
-- ----------------------------
DROP TABLE IF EXISTS "public"."building_point";
CREATE TABLE "public"."building_point" (
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"name" text COLLATE "default",
"geom" "public".geometry(Point,4326) NOT NULL)
WITH (OIDS=FALSE);

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
INSERT INTO "public"."priority" VALUES ('10020101', '101');
INSERT INTO "public"."priority" VALUES ('10020401', '101');
INSERT INTO "public"."priority" VALUES ('10020511', '102');
INSERT INTO "public"."priority" VALUES ('10030101', '10101');
INSERT INTO "public"."priority" VALUES ('10030102', '10101');
INSERT INTO "public"."priority" VALUES ('10030103', '10101');
INSERT INTO "public"."priority" VALUES ('10030104', '10101');
INSERT INTO "public"."priority" VALUES ('10030105', '10101');
INSERT INTO "public"."priority" VALUES ('10030106', '10101');
INSERT INTO "public"."priority" VALUES ('10030107', '10101');
INSERT INTO "public"."priority" VALUES ('10030108', '10101');
INSERT INTO "public"."priority" VALUES ('10030109', '10101');
INSERT INTO "public"."priority" VALUES ('10030110', '10101');
INSERT INTO "public"."priority" VALUES ('10030111', '10101');
INSERT INTO "public"."priority" VALUES ('10030112', '10101');
INSERT INTO "public"."priority" VALUES ('10030113', '10101');
INSERT INTO "public"."priority" VALUES ('10030114', '10101');
INSERT INTO "public"."priority" VALUES ('10030115', '1020099');
INSERT INTO "public"."priority" VALUES ('10030116', '10101');
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
-- fence_Criminal
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_criminal";
CREATE TABLE "public"."fence_criminal" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"week_sel" varchar(16) COLLATE "default",
"stime" time,
"etime" time,
"geom" "public".geometry(Polygon,4326)  NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_criminal" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_Caller
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_caller";
CREATE TABLE "public"."fence_caller" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"week_sel" varchar(16) COLLATE "default",
"stime" time,
"etime" time,
"geom" "public".geometry(Polygon,4326)  NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_caller" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_region
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_region";
CREATE TABLE "public"."fence_region" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"week_sel" varchar(16) COLLATE "default",
"stime1" time,
"etime1" time,
"stime2" time,
"etime2" time,
"stime3" time,
"etime3" time,
"organ" int,
"work" int,
"mnum" varchar(16) COLLATE "default",
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_region" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_contractor
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_contractor";
CREATE TABLE "public"."fence_contractor" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"type" int,
"week_sel" varchar(16) COLLATE "default",
"stime1" time,
"etime1" time,
"stime2" time,
"etime2" time,
"stime3" time,
"etime3" time,
"is_open" int,
"contractor_uid" varchar(64) COLLATE "default" NOT NULL,
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_contractor" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_detain
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_detain";
CREATE TABLE "public"."fence_detain" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"week_sel" varchar(16) COLLATE "default",
"stime" time,
"etime" time,
"rentention_time" int,
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_detain" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_danger
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_danger";
CREATE TABLE "public"."fence_danger" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"week_sel" varchar(16) COLLATE "default",
"stime" time,
"etime" time,
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_danger" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_attendance
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_attendance";
CREATE TABLE "public"."fence_attendance" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(32) COLLATE "default",
"name" text COLLATE "default",
"stime" timestamp(6),
"etime" timestamp(6),
"geom" "public".geometry(Polygon,4326) NOT NULL)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_attendance" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_work
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_work";
CREATE TABLE "public"."fence_work" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"week_sel" varchar(16) COLLATE "default",
"stime" time,
"etime" time,
"geom" "public".geometry(Polygon,4326)  NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_work" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_fourcolor
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_fourcolor";
CREATE TABLE "public"."fence_fourcolor" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"color" varchar(16) COLLATE "default",
"geom" "public".geometry(Polygon,4326)  NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_fourcolor" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_configpot
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_configpot";
CREATE TABLE "public"."fence_configpot" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"remarks" text COLLATE "default",
"icon" varchar(255) COLLATE "default",
"geom" "public".geometry(Point,4326)  NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_configpot" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- fence_configarea
-- ----------------------------
DROP TABLE IF EXISTS "public"."fence_configarea";
CREATE TABLE "public"."fence_configarea" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"remarks" text COLLATE "default",
"color" varchar(16) COLLATE "default",
"geom" "public".geometry(Polygon,4326)  NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."fence_configarea" ADD PRIMARY KEY ("fid");

-- ----------------------------
-- inspection_point
-- ----------------------------
DROP TABLE IF EXISTS "public"."inspection_point";
CREATE TABLE "public"."inspection_point" (
"fid" varchar(32) COLLATE "default" NOT NULL,
"bid" varchar(16) COLLATE "default" NOT NULL,
"place_id" varchar(16) COLLATE "default" NOT NULL,
"building_id" int NOT NULL,
"floor_id" varchar(16) COLLATE "default",
"name" text COLLATE "default",
"scope" int,
"geom" "public".geometry(Point,4326) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."inspection_point" ADD PRIMARY KEY ("fid");


