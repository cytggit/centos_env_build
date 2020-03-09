/*
Navicat MySQL Data Transfer

Source Server         : 10.109.75.149
Source Server Version : 50633
Source Host           : 10.109.75.149:3306
Source Database       : beacon

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2020-01-09 09:56:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bcon
-- ----------------------------
DROP TABLE IF EXISTS `bcon`;
CREATE TABLE `bcon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `lat` double(50,15) DEFAULT NULL,
  `lon` double(50,15) DEFAULT NULL,
  `avg_level` int(10) DEFAULT NULL,
  `mode` tinyint(2) DEFAULT NULL,
  `channel` int(10) DEFAULT NULL,
  `floor_id` int(10) DEFAULT NULL,
  `place_id` varchar(10) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '状态，0表示不正常 1表示正常',
  `building_id` int(8) DEFAULT '0' COMMENT '建筑物ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `beacon_mac` (`mac`),
  KEY `beacon_place_id` (`place_id`),
  KEY `beacon_floor_id` (`floor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fibit
-- ----------------------------
DROP TABLE IF EXISTS `fibit`;
CREATE TABLE `fibit` (
  `ID` varchar(32) NOT NULL,
  `TYPE` tinyint(4) DEFAULT '1' COMMENT '0胸卡1手环',
  `STATE` tinyint(4) DEFAULT '0' COMMENT '0表示正常1表示停用',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for uwb
-- ----------------------------
DROP TABLE IF EXISTS `uwb`;
CREATE TABLE `uwb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `building_id` varchar(255) DEFAULT NULL COMMENT '建筑物ID',
  `floor_id` int(11) DEFAULT NULL COMMENT '楼层ID',
  `longitude` double unsigned DEFAULT '0' COMMENT '初始经度，用于相对坐标与经纬度转换',
  `latitude` double DEFAULT '0' COMMENT '纬度',
  `x` double DEFAULT '0' COMMENT '初始点的X坐标',
  `y` double DEFAULT '0' COMMENT '初始点的Y坐标',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BUIDING_FLOOR_INDEX` (`building_id`,`floor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
