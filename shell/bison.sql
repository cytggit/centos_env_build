/*
Navicat MySQL Data Transfer

Source Server         : 114_mysql
Source Server Version : 50623
Source Host           : 114.215.83.3:3306
Source Database       : ycbison

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2019-09-06 14:39:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acl_account
-- ----------------------------
DROP TABLE IF EXISTS `acl_account`;
CREATE TABLE `acl_account` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `empID` varchar(64) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(200) DEFAULT NULL,
  `department` varchar(32) DEFAULT NULL,
  `POSITION` varchar(32) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_account
-- ----------------------------

-- ----------------------------
-- Table structure for acl_accountbingding
-- ----------------------------
DROP TABLE IF EXISTS `acl_accountbingding`;
CREATE TABLE `acl_accountbingding` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `empID` varchar(64) DEFAULT NULL,
  `persionId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_accountbingding
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert`;
CREATE TABLE `acl_alert` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(50) DEFAULT NULL,
  `device_name` varchar(30) DEFAULT NULL,
  `device_class` varchar(20) DEFAULT NULL,
  `device_version` varchar(50) DEFAULT NULL,
  `alert_data` datetime DEFAULT NULL,
  `alert_class` varchar(40) DEFAULT NULL,
  `alert_descripe` varchar(255) DEFAULT NULL,
  `alert_x` double(20,10) DEFAULT NULL,
  `alert_y` double(20,10) DEFAULT NULL,
  `alert_floor` varchar(10) DEFAULT NULL,
  `alert_builder` varchar(10) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT '0',
  `company_id` varchar(5) NOT NULL,
  `alert_level` varchar(5) DEFAULT NULL,
  `organ_id` varchar(10) DEFAULT NULL,
  `organ_name` varchar(50) DEFAULT NULL,
  `fence_num` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `company_id` (`company_id`),
  KEY `device_id` (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert
-- ----------------------------
INSERT INTO `acl_alert` VALUES ('1', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:34:58', '0', '人员越过围栏', '112.2049859097', '36.0078493348', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('2', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:36:06', '0', '人员越过围栏', '108.4272206097', '37.6476268388', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('3', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:37:20', '0', '人员越过围栏', '112.8079576713', '35.7283696592', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('4', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:39:12', '0', '人员越过围栏', '119.7153466227', '32.1598936895', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('5', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:40:32', '0', '人员越过围栏', '116.0741418945', '34.1263438353', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('6', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:41:41', '0', '人员越过围栏', '113.9812060803', '35.1701377287', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('7', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:42:50', '0', '人员越过围栏', '115.6434729808', '34.3462220938', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('8', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:44:04', '0', '人员越过围栏', '119.8298009615', '32.0948396658', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('9', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:45:14', '0', '人员越过围栏', '116.7806178799', '33.7599151660', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('10', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:46:20', '0', '人员越过围栏', '119.5121929181', '32.2747178187', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('11', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:47:28', '0', '人员越过围栏', '119.3689289816', '32.3553009275', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('12', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:48:38', '0', '人员越过围栏', '110.2506429380', '36.8798438392', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('13', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:49:46', '0', '人员越过围栏', '104.9885782037', '38.9792691319', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('14', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:50:52', '0', '人员越过围栏', '114.7533415107', '34.7922864585', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('15', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:52:02', '0', '人员越过围栏', '114.8279925988', '34.7553030741', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('16', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:53:12', '0', '人员越过围栏', '117.5887266810', '33.3319585275', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('17', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:54:22', '0', '人员越过围栏', '116.2178944629', '34.0523685988', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('18', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:55:28', '0', '人员越过围栏', '114.4107572456', '34.9609590328', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('19', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:56:37', '0', '人员越过围栏', '109.7296776505', '37.1036678346', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('20', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:57:41', '0', '人员越过围栏', '111.3274555416', '36.4057651340', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('21', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:58:48', '0', '人员越过围栏', '110.0317676071', '36.9743226567', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('22', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 14:59:55', '0', '人员越过围栏', '114.5751771579', '34.8802122656', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('23', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:01:28', '0', '人员越过围栏', '112.4451263498', '35.8971367605', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('24', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:02:39', '0', '人员越过围栏', '109.2365738078', '37.3122196508', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('25', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:03:49', '0', '人员越过围栏', '112.7468242563', '35.7569269206', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('26', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:04:56', '0', '人员越过围栏', '112.9715863226', '35.6516627906', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('27', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:06:07', '0', '人员越过围栏', '111.7978260448', '36.1937822336', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('28', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:07:10', '0', '人员越过围栏', '119.9683882013', '32.0159153968', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('29', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:08:16', '0', '人员越过围栏', '116.8528744693', '33.7220618714', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('30', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:09:25', '0', '人员越过围栏', '113.0859329035', '35.5978293065', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('31', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:10:33', '0', '人员越过围栏', '114.0837003503', '35.1204715651', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('32', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:11:41', '0', '人员越过围栏', '111.4771448878', '36.3386266694', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('33', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:12:47', '0', '人员越过围栏', '110.7381111386', '36.6671626685', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('34', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:13:52', '0', '人员越过围栏', '113.3787861476', '35.4591541601', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('35', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:15:03', '0', '人员越过围栏', '115.0712797300', '34.6342478385', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('36', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:16:09', '0', '人员越过围栏', '116.0051729565', '34.1617625787', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('37', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:17:19', '0', '人员越过围栏', '109.7908937989', '37.0775521011', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('38', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:18:28', '0', '人员越过围栏', '109.7267572898', '37.1049132907', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('39', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:19:37', '0', '人员越过围栏', '113.4714879654', '35.4150047826', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('40', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:20:44', '0', '人员越过围栏', '110.2858951069', '36.8645744798', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('41', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:21:55', '0', '人员越过围栏', '118.3918882937', '32.8971349079', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('42', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:23:00', '0', '人员越过围栏', '121.4083025277', '31.1786709189', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('43', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:30:58', '0', '人员越过围栏', '121.4273241432', '31.1674009379', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('44', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:31:59', '0', '人员越过围栏', '121.4895167235', '31.1304573350', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('45', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:37:03', '0', '人员越过围栏', '121.4291277877', '31.1663303372', '22', '2', '0', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('46', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:40:13', '0', '人员越过围栏', '121.4293072001', '31.1662216001', '22', '2', '1', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('47', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:41:39', '0', '人员越过围栏', '121.4345940704', '31.1630872433', '22', '2', '1', '1', '1', '153', '测试', '2019062715396');
INSERT INTO `acl_alert` VALUES ('48', 'E29A9DB13C4B', '袁金龙', '1', '1000001', '2019-07-03 15:44:16', '0', '人员越过围栏', '121.4218200817', '31.1706584964', '22', '2', '1', '1', '1', '153', '测试', '2019062715396');

-- ----------------------------
-- Table structure for acl_alert_battery
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_battery`;
CREATE TABLE `acl_alert_battery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `sex` varchar(33) DEFAULT NULL,
  `organ_id` varchar(33) DEFAULT NULL,
  `organ_name` varchar(33) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `company_id` varchar(255) NOT NULL,
  `checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_battery
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert_danger
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_danger`;
CREATE TABLE `acl_alert_danger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `danger_name` varchar(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_danger
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert_health
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_health`;
CREATE TABLE `acl_alert_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `sex` varchar(33) DEFAULT NULL,
  `organ_id` varchar(33) DEFAULT NULL,
  `organ_name` varchar(33) DEFAULT NULL,
  `hr` int(11) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `spb` int(11) DEFAULT NULL,
  `dpb` int(11) DEFAULT NULL,
  `sos` int(11) DEFAULT NULL,
  `steps` int(11) DEFAULT NULL,
  `calorie` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `alert_class` tinyint(4) DEFAULT NULL,
  `company_id` varchar(255) NOT NULL,
  `checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_health
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert_retain
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_retain`;
CREATE TABLE `acl_alert_retain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_retain
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert_sos
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_sos`;
CREATE TABLE `acl_alert_sos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `sex` varchar(33) DEFAULT NULL,
  `organ_id` varchar(33) DEFAULT NULL,
  `organ_name` varchar(33) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_sos
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert_static
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_static`;
CREATE TABLE `acl_alert_static` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `organ_id` varchar(32) DEFAULT NULL,
  `organ_name` varchar(32) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `timestamp` bigint(32) DEFAULT NULL,
  `company_id` varchar(32) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `static_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_static
-- ----------------------------

-- ----------------------------
-- Table structure for acl_alert_took
-- ----------------------------
DROP TABLE IF EXISTS `acl_alert_took`;
CREATE TABLE `acl_alert_took` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `sex` varchar(33) DEFAULT NULL,
  `organ_id` varchar(33) DEFAULT NULL,
  `organ_name` varchar(33) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `company_id` varchar(255) NOT NULL,
  `checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_took
-- ----------------------------

-- ----------------------------
-- Table structure for acl_app_sign
-- ----------------------------
DROP TABLE IF EXISTS `acl_app_sign`;
CREATE TABLE `acl_app_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_time` bigint(64) DEFAULT NULL COMMENT '开始时间',
  `end_time` bigint(64) DEFAULT NULL COMMENT '结束时间',
  `sign_number` int(11) DEFAULT NULL COMMENT '已签人数',
  `no_sign_number` int(11) DEFAULT NULL COMMENT '未签人数',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `state` varchar(18) DEFAULT NULL COMMENT '状态',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_app_sign
-- ----------------------------

-- ----------------------------
-- Table structure for acl_app_sign_info
-- ----------------------------
DROP TABLE IF EXISTS `acl_app_sign_info`;
CREATE TABLE `acl_app_sign_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personinfo_id` varchar(32) DEFAULT NULL COMMENT 'personinfo_id，外键',
  `sign_time` bigint(64) DEFAULT NULL COMMENT '签到时间',
  `sign_state` int(11) DEFAULT NULL COMMENT '签到状况(0未签，1已签)',
  `app_sign_id` int(11) DEFAULT NULL COMMENT 'app_sign外键',
  `sign_content` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_app_sign_info
-- ----------------------------

-- ----------------------------
-- Table structure for acl_area
-- ----------------------------
DROP TABLE IF EXISTS `acl_area`;
CREATE TABLE `acl_area` (
  `area_id` int(11) NOT NULL DEFAULT '0',
  `building` varchar(24) DEFAULT NULL,
  `step` varchar(24) DEFAULT NULL,
  `area_name` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_area
-- ----------------------------

-- ----------------------------
-- Table structure for acl_asset_classify
-- ----------------------------
DROP TABLE IF EXISTS `acl_asset_classify`;
CREATE TABLE `acl_asset_classify` (
  `class_id` varchar(20) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `pid` varchar(20) DEFAULT NULL,
  KEY `类型名称` (`class_name`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_asset_classify
-- ----------------------------
INSERT INTO `acl_asset_classify` VALUES ('1', '土地、房屋及构筑物', '0');
INSERT INTO `acl_asset_classify` VALUES ('1010000', '土地、海域及无居民海岛', '1');
INSERT INTO `acl_asset_classify` VALUES ('1020000', '房屋', '1');
INSERT INTO `acl_asset_classify` VALUES ('1030000', '构筑物', '1');
INSERT INTO `acl_asset_classify` VALUES ('2', '通用设备', '0');
INSERT INTO `acl_asset_classify` VALUES ('2010000', '计算机设备及软件', '2');
INSERT INTO `acl_asset_classify` VALUES ('2020000', '办公设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2030000', '车辆', '2');
INSERT INTO `acl_asset_classify` VALUES ('2040000', '图书档案设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2100000', '机械设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2200000', '电气设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2300000', '雷达、无线电和卫星导航设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2310000', '通信设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2320000', '广播、电视、电影设备', '2');
INSERT INTO `acl_asset_classify` VALUES ('2400000', '仪器仪表', '2');
INSERT INTO `acl_asset_classify` VALUES ('2410000', '电子和通信测量仪器', '2');
INSERT INTO `acl_asset_classify` VALUES ('2420000', '计量标准器具及量具、衡器', '2');
INSERT INTO `acl_asset_classify` VALUES ('3', '专用设备', '0');
INSERT INTO `acl_asset_classify` VALUES ('3010000', '探矿、采矿、选矿和造块设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3020000', '石油天然气开采专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3030000', '石油和化学工业专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3040000', '炼焦和金属冶炼轧制设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3050000', '电气工业专业设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3060000', '非金属矿物制品工业专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3070000', '核工业专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3080000', '航空航天工业专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3100000', '工程机械', '3');
INSERT INTO `acl_asset_classify` VALUES ('3110000', '农业和林业机械', '3');
INSERT INTO `acl_asset_classify` VALUES ('3130000', '木材采集和加工设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3140000', '食品加工专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3150000', '饮料加工设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3160000', '烟草加工设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3170000', '粮油作物和饲料加工设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3180000', '纺织设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3190000', '缝纫、服饰、制革和毛皮加工设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3200000', '造纸和印刷机械', '3');
INSERT INTO `acl_asset_classify` VALUES ('3210000', '化学药品和中药专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3220000', '医疗设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3230000', '电工、电子专用生产设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3240000', '安全生产设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3250000', '邮政专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3260000', '环境污染防治设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3270000', '公安专用设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3280000', '水工机械', '3');
INSERT INTO `acl_asset_classify` VALUES ('3390000', '殡葬设备及用品', '3');
INSERT INTO `acl_asset_classify` VALUES ('3500000', '铁路运输设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3510000', '水上交通运输设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3520000', '航空器及其配套设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3600000', '专用仪器仪表', '3');
INSERT INTO `acl_asset_classify` VALUES ('3700000', '文艺设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3710000', '体育设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('3720000', '娱乐设备', '3');
INSERT INTO `acl_asset_classify` VALUES ('4', '文物和陈列品', '0');
INSERT INTO `acl_asset_classify` VALUES ('4010000', '文物', '4');
INSERT INTO `acl_asset_classify` VALUES ('4020000', '陈列品', '4');
INSERT INTO `acl_asset_classify` VALUES ('5', '图书、档案', '0');
INSERT INTO `acl_asset_classify` VALUES ('5010000', '图书、档案', '5');
INSERT INTO `acl_asset_classify` VALUES ('6', '家具、用具、装具及动植物', '0');
INSERT INTO `acl_asset_classify` VALUES ('6010000', '家具用具', '6');
INSERT INTO `acl_asset_classify` VALUES ('6020000', '被服装具', '6');
INSERT INTO `acl_asset_classify` VALUES ('6030000', '特种用途动物', '6');
INSERT INTO `acl_asset_classify` VALUES ('6040000', '特种用途植物', '6');

-- ----------------------------
-- Table structure for acl_assets
-- ----------------------------
DROP TABLE IF EXISTS `acl_assets`;
CREATE TABLE `acl_assets` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `asset_id` varchar(20) NOT NULL,
  `asset_name` varchar(24) NOT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `class_id` varchar(20) DEFAULT NULL,
  `abbreviation` varchar(24) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `organ_id` varchar(24) DEFAULT NULL,
  `organ_name` varchar(30) DEFAULT NULL,
  `grade` varchar(24) DEFAULT NULL,
  `x` double(50,10) DEFAULT NULL,
  `y` double(50,10) DEFAULT NULL,
  `init_floor` varchar(10) DEFAULT NULL,
  `init_building` varchar(10) DEFAULT NULL,
  `factory_name` varchar(40) DEFAULT NULL,
  `buy_price` varchar(20) DEFAULT NULL,
  `buy_date` varchar(30) DEFAULT NULL,
  `agency` varchar(30) DEFAULT NULL,
  `agency_phone` varchar(20) DEFAULT NULL,
  `person` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  `fence_num` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `资产id` (`asset_id`),
  KEY `cid` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_assets
-- ----------------------------

-- ----------------------------
-- Table structure for acl_battery
-- ----------------------------
DROP TABLE IF EXISTS `acl_battery`;
CREATE TABLE `acl_battery` (
  `device_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `sex` varchar(33) DEFAULT NULL,
  `organ_id` varchar(33) DEFAULT NULL,
  `organ_name` varchar(33) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `company_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_battery
-- ----------------------------

-- ----------------------------
-- Table structure for acl_blood
-- ----------------------------
DROP TABLE IF EXISTS `acl_blood`;
CREATE TABLE `acl_blood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL,
  `spb` int(11) DEFAULT NULL,
  `dpb` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_blood
-- ----------------------------

-- ----------------------------
-- Table structure for acl_bracelet
-- ----------------------------
DROP TABLE IF EXISTS `acl_bracelet`;
CREATE TABLE `acl_bracelet` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `braceletId` varchar(100) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `STATUS` varchar(4) DEFAULT NULL,
  `bindType` varchar(4) DEFAULT NULL,
  `bindObj` varchar(100) DEFAULT NULL,
  `bindObjmc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_bracelet
-- ----------------------------
INSERT INTO `acl_bracelet` VALUES ('1', 'amin', 'dsflfksdfk', null, null, null, null);
INSERT INTO `acl_bracelet` VALUES ('2', 'ads', 'daa', null, null, null, null);
INSERT INTO `acl_bracelet` VALUES ('3', 'da', 'da', null, null, null, null);

-- ----------------------------
-- Table structure for acl_camera
-- ----------------------------
DROP TABLE IF EXISTS `acl_camera`;
CREATE TABLE `acl_camera` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `camera_ip` varchar(50) DEFAULT NULL,
  `camera_name` varchar(50) DEFAULT NULL,
  `nvr_ip` varchar(30) DEFAULT NULL,
  `organ_id` varchar(20) DEFAULT NULL,
  `organ_name` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `y` double(50,10) DEFAULT NULL,
  `x` double(50,10) DEFAULT NULL,
  `init_floor` varchar(10) DEFAULT NULL,
  `init_building` varchar(10) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_camera
-- ----------------------------

-- ----------------------------
-- Table structure for acl_consumer_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_consumer_role`;
CREATE TABLE `acl_consumer_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_consumer_role
-- ----------------------------
INSERT INTO `acl_consumer_role` VALUES ('1', '水手');
INSERT INTO `acl_consumer_role` VALUES ('2', '和尚');
INSERT INTO `acl_consumer_role` VALUES ('3', '大师');

-- ----------------------------
-- Table structure for acl_danger
-- ----------------------------
DROP TABLE IF EXISTS `acl_danger`;
CREATE TABLE `acl_danger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_danger
-- ----------------------------

-- ----------------------------
-- Table structure for acl_deploy
-- ----------------------------
DROP TABLE IF EXISTS `acl_deploy`;
CREATE TABLE `acl_deploy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for acl_detain
-- ----------------------------
DROP TABLE IF EXISTS `acl_detain`;
CREATE TABLE `acl_detain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_detain
-- ----------------------------

-- ----------------------------
-- Table structure for acl_detain_person
-- ----------------------------
DROP TABLE IF EXISTS `acl_detain_person`;
CREATE TABLE `acl_detain_person` (
  `detain_id` int(11) NOT NULL,
  `person_id` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_detain_person
-- ----------------------------

-- ----------------------------
-- Table structure for acl_heart
-- ----------------------------
DROP TABLE IF EXISTS `acl_heart`;
CREATE TABLE `acl_heart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL,
  `hr` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deviceId` (`device_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_heart
-- ----------------------------

-- ----------------------------
-- Table structure for acl_image
-- ----------------------------
DROP TABLE IF EXISTS `acl_image`;
CREATE TABLE `acl_image` (
  `imageId` int(11) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(200) DEFAULT NULL,
  `building` varchar(8) DEFAULT NULL,
  `lc` varchar(8) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_image
-- ----------------------------

-- ----------------------------
-- Table structure for acl_log
-- ----------------------------
DROP TABLE IF EXISTS `acl_log`;
CREATE TABLE `acl_log` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `operater` varchar(20) NOT NULL,
  `time` datetime NOT NULL COMMENT '创建日期',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '日志内容',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '用户所做的操作',
  `company_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21276 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of acl_log
-- ----------------------------

-- ----------------------------
-- Table structure for acl_menu
-- ----------------------------
DROP TABLE IF EXISTS `acl_menu`;
CREATE TABLE `acl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_name` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `url` varchar(200) DEFAULT '' COMMENT 'url',
  `perm_token` varchar(100) NOT NULL COMMENT '权限字符串',
  `parent_id` varchar(20) NOT NULL COMMENT '父id',
  `level` varchar(10) NOT NULL COMMENT 'level',
  `leaf` tinyint(1) NOT NULL COMMENT '是否叶子',
  `sequence` double DEFAULT NULL COMMENT '排序号',
  `memo` varchar(200) DEFAULT '' COMMENT '备注',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_menu
-- ----------------------------
INSERT INTO `acl_menu` VALUES ('1', '系统管理', '', '', 'manage:system:open', '-1', '0', '0', '2', '', '1');
INSERT INTO `acl_menu` VALUES ('2', '帐号管理', 'icon-lock', '', 'system:security:open', '1', '1', '0', '4', '', '1');
INSERT INTO `acl_menu` VALUES ('3', '用户管理', 'icon-users', 'security/user', 'security:user:open', '2', '2', '1', '5', '管理用户信息', '1');
INSERT INTO `acl_menu` VALUES ('4', '角色管理', 'icon-user', 'security/role', 'security:role:open', '2', '2', '1', '6', '管理角色信息', '1');
INSERT INTO `acl_menu` VALUES ('5', '菜单管理', 'fa fa-bars', 'develop/menu', 'develop:menu:open', '6', '2', '1', '11', '管理菜单信息', '0');
INSERT INTO `acl_menu` VALUES ('6', '开发人员工具', 'icon-wrench', '', 'system:develop:open', '1', '1', '0', '10', '', '0');
INSERT INTO `acl_menu` VALUES ('7', '许可管理', 'icon-key', 'develop/permission', 'develop:permission:open', '6', '2', '1', '12', '管理权限信息', '0');
INSERT INTO `acl_menu` VALUES ('18', '根节点', '', '', 'manage:news:open', '-1', '0', '1', '0', '', '0');
INSERT INTO `acl_menu` VALUES ('19', '信息管理', '', '', 'manage:news:open', '-1', '0', '1', '1', '', '1');
INSERT INTO `acl_menu` VALUES ('21', '变量管理', 'glyphicon glyphicon-font', '', 'system:param:open', '1', '1', '0', '7', '', '1');
INSERT INTO `acl_menu` VALUES ('22', '自定义变量管理', 'fa fa-child', 'system/customParam', 'system:customParam:open', '21', '2', '1', '9', '自定义变量管理', '0');
INSERT INTO `acl_menu` VALUES ('23', '系统变量管理', 'icon-settings', 'system/sysParam', 'system:sysParam:open', '21', '2', '1', '8', '系统变量管理', '1');
INSERT INTO `acl_menu` VALUES ('225', '区域配置', 'fa fa-map-marker', 'configure/deploy', 'fansai:deploy:open', '331', '2', '1', '33', '', '1');
INSERT INTO `acl_menu` VALUES ('243', '词汇管理', 'fa fa-desktop', '', 'system:keyWord:open', '1', '1', '0', '13', '词汇管理', '0');
INSERT INTO `acl_menu` VALUES ('244', '关键词链接管理', 'fa fa-eraser', 'keyWord/keyWordLink', 'system:keyWordLink:open', '243', '2', '1', '14', '关键词链接管理', '0');
INSERT INTO `acl_menu` VALUES ('245', '关键字屏蔽管理', 'fa fa-shield', 'keyWord/keyWordShield', 'system:keyWordShield:open', '243', '2', '1', '15', '关键字屏蔽管理', '0');
INSERT INTO `acl_menu` VALUES ('246', '字典管理', 'fa fa-desktop', 'system/dict', 'system:dictWord:open', '1', '1', '1', '16', '字典管理', '0');
INSERT INTO `acl_menu` VALUES ('254', '懋特', '', '', 'fansai:manage:close', '-1', '0', '1', '58', '', '1');
INSERT INTO `acl_menu` VALUES ('256', '电子签到', 'fa fa-list-ul', '', 'fansai:signIn:open', '1', '1', '0', '17', '', '1');
INSERT INTO `acl_menu` VALUES ('257', '签到查询', 'fa fa-search', 'signIn/query', 'fansai:signQuery:open', '256', '2', '1', '18', '', '1');
INSERT INTO `acl_menu` VALUES ('258', '签到设置', 'fa fa-cog', 'signIn/set', 'fansai:signSet:open', '256', '2', '1', '19', '', '1');
INSERT INTO `acl_menu` VALUES ('259', '单位管理', 'fa fa-bank ', '', 'fansai:unit:open', '1', '1', '0', '22', '', '1');
INSERT INTO `acl_menu` VALUES ('260', '公司信息', 'fa fa-institution', 'company', 'fansai:comInfo:open', '259', '2', '1', '23', '', '1');
INSERT INTO `acl_menu` VALUES ('261', '部门岗位', 'fa fa-cubes', 'system/organ', 'fansai:organ:open', '259', '2', '1', '24', '', '1');
INSERT INTO `acl_menu` VALUES ('262', '数据管理', 'fa fa-database', '', 'fansai:dataManage:open', '1', '1', '0', '25', '', '1');
INSERT INTO `acl_menu` VALUES ('263', '地图显示', 'fa fa-map-marker', 'design/resource', 'fansai:mapInfo:open', '271', '2', '1', '32', '', '1');
INSERT INTO `acl_menu` VALUES ('264', '人员信息', 'icon-user', 'personInfo', 'fansai:manInfo:open', '262', '2', '1', '26', '', '1');
INSERT INTO `acl_menu` VALUES ('265', '资产信息', 'fa fa-jpy', 'asset', 'fansai:assetInfo:open', '262', '2', '1', '27', '', '1');
INSERT INTO `acl_menu` VALUES ('266', '手环信息', 'fa fa-life-ring', 'shgl', 'fansai:ringInfo:open', '262', '2', '1', '28', '', '0');
INSERT INTO `acl_menu` VALUES ('267', '告警信息', 'fa fa-bell', 'accounts', 'fansai:account:close', '-1', '0', '1', '60', '', '1');
INSERT INTO `acl_menu` VALUES ('268', '操作日志', 'fa fa-edit', 'log', 'system:log:open', '1', '1', '1', '38', '', '1');
INSERT INTO `acl_menu` VALUES ('269', '版本记录', 'fa fa-bookmark', 'history', 'fansai:version:close', '-1', '0', '1', '59', '', '1');
INSERT INTO `acl_menu` VALUES ('271', '地图信息', 'fa fa-map', '', 'fansai:mapcontrol:open', '1', '1', '0', '31', '', '1');
INSERT INTO `acl_menu` VALUES ('272', '历史监控', 'fa fa-map-marker', 'flex/mapHistoryOfCheck', 'fansai:mapHistoryOfCheck:close', '271', '2', '1', '34', '', '1');
INSERT INTO `acl_menu` VALUES ('274', '位置报警', 'fa fa-volume-control-phone', 'alert', 'system:sos:open', '313', '2', '1', '49', '', '1');
INSERT INTO `acl_menu` VALUES ('275', '所有位置', 'fa fa-map-pin', 'flex/mapLocation', 'system:system:close', '271', '2', '1', '35', '显示所有位置', '1');
INSERT INTO `acl_menu` VALUES ('300', '设备管理', 'fa fa-suitcase', '', 'system:system:open', '1', '1', '0', '39', '设备管理', '1');
INSERT INTO `acl_menu` VALUES ('301', '设备升级', 'fa fa-cloud-upload', 'deviceManage', 'system:device:open', '300', '2', '1', '40', '管理设备信息并对设备进行升级', '1');
INSERT INTO `acl_menu` VALUES ('302', '固件管理', 'fa fa-calculator', 'firmwareManage', 'system:firmware:open', '300', '2', '1', '41', '管理设备固件版本', '0');
INSERT INTO `acl_menu` VALUES ('303', '应用管理', 'fa fa-mobile', 'applicationManage', 'system:application:open', '300', '2', '1', '42', '管理设备应用版本', '0');
INSERT INTO `acl_menu` VALUES ('304', '电子围栏', 'fa fa-map-pin', 'design/fence', 'fansai:fenceInfo:open', '271', '2', '1', '36', '', '1');
INSERT INTO `acl_menu` VALUES ('305', '人数统计', 'icon-user', 'signIn/count', 'fansai:signCount:open', '256', '2', '1', '20', '', '1');
INSERT INTO `acl_menu` VALUES ('306', '比较统计', 'icon-pencil', 'signIn/count/compare', 'fansai:signCount:compare:open', '256', '2', '1', '21', '', '1');
INSERT INTO `acl_menu` VALUES ('307', 'NVR信息', 'fa fa-shield', 'nvr', 'fansai:NVR:open', '262', '2', '1', '29', '', '1');
INSERT INTO `acl_menu` VALUES ('308', '相机信息', 'icon-camera', 'camera', 'fansai:cameraMessage', '262', '2', '1', '30', '', '1');
INSERT INTO `acl_menu` VALUES ('309', '视频联动', 'fa fa-camera-retro', '', 'fansai:video:open', '1', '1', '0', '44', '', '1');
INSERT INTO `acl_menu` VALUES ('310', '视频监控', 'fa fa-youtube-play', 'video/control', 'fansai:video:control', '309', '2', '1', '45', '', '1');
INSERT INTO `acl_menu` VALUES ('311', '视频联动', 'fa fa-camera-retro', 'video/linkage', 'fansai:video:linkage', '309', '2', '1', '46', '', '1');
INSERT INTO `acl_menu` VALUES ('312', '历史轨迹', 'icon-users', 'orbit', 'system:orbit:open', '1', '1', '1', '47', '', '1');
INSERT INTO `acl_menu` VALUES ('313', '告警信息', 'icon-users', '', 'fansai:sMessage:open', '1', '1', '0', '48', '', '1');
INSERT INTO `acl_menu` VALUES ('314', '健康报警', 'fa fa-child', 'health', 'fansai:health:open', '313', '2', '1', '50', '', '1');
INSERT INTO `acl_menu` VALUES ('315', '人员分布', 'fa fa-map-pin', 'scatter', 'fansai:scatter:open', '271', '2', '1', '37', '', '1');
INSERT INTO `acl_menu` VALUES ('316', '健康统计', 'fa fa-line-chart', '', 'fansai:stats:open', '1', '1', '0', '54', '', '1');
INSERT INTO `acl_menu` VALUES ('317', '心率统计', 'fa fa-plus-square', 'stats/heart', 'fansai:heart:open', '316', '2', '1', '55', '', '1');
INSERT INTO `acl_menu` VALUES ('318', 'SOS报警', 'fa fa-bell', 'sos', 'fansai:sos:alert', '313', '2', '1', '51', '', '1');
INSERT INTO `acl_menu` VALUES ('319', '电量报警', 'fa fa-battery-quarter', 'battery', 'fansai:battery:open', '313', '2', '1', '52', '', '1');
INSERT INTO `acl_menu` VALUES ('320', '拆卸报警', 'fa fa-unlock', 'took', 'fansai:took:open', '313', '2', '1', '53', '', '1');
INSERT INTO `acl_menu` VALUES ('321', '设备电量', 'fa fa-suitcase', 'powerManage', 'fansai:power:open', '300', '2', '1', '43', '', '1');
INSERT INTO `acl_menu` VALUES ('322', '运动统计', 'fa fa-map-pin', 'stats/step', 'fansai:step:open', '316', '2', '1', '56', '', '1');
INSERT INTO `acl_menu` VALUES ('323', '血压统计', 'fa fa-plus-square', 'stats/blood', 'fansai:blood:open', '316', '2', '1', '57', '', '1');
INSERT INTO `acl_menu` VALUES ('324', '位置看板', 'fa fa-bar-chart-o', 'server/site', 'fansai:server:site', '329', '2', '1', '3', '', '1');
INSERT INTO `acl_menu` VALUES ('325', '智能床垫', 'fa fa-plus-square', 'stats/mattess', 'fansai:mattess:open', '316', '2', '1', '58', '', '1');
INSERT INTO `acl_menu` VALUES ('326', '睡眠统计', 'fa fa-line-chart', 'stats/rest', 'fansai:rest:open', '316', '2', '1', '59', '', '1');
INSERT INTO `acl_menu` VALUES ('327', '滞留配置', 'fa fa-map-marker', 'configure/detain', 'fansai:detain:open', '331', '2', '1', '60', '', '1');
INSERT INTO `acl_menu` VALUES ('328', '滞留报警', 'fa fa-bell', 'retain', 'fansai:retain:alert', '313', '2', '1', '61', '', '1');
INSERT INTO `acl_menu` VALUES ('329', '服务中心', 'fa fa-bar-chart-o', '', 'fansai:server:open', '1', '1', '0', '3', '', '1');
INSERT INTO `acl_menu` VALUES ('330', '报警看板', 'fa fa-bar-chart-o', 'server/alarm', 'fansai:server:alarm', '329', '2', '1', '62', '', '1');
INSERT INTO `acl_menu` VALUES ('331', '配置管理', 'fa fa-map-marker', '', 'fansai:configure:open', '1', '1', '0', '63', '', '1');
INSERT INTO `acl_menu` VALUES ('332', '看板配置', 'fa fa-map-marker', 'configure/board', 'fansai:board:open', '331', '2', '1', '64', '', '0');
INSERT INTO `acl_menu` VALUES ('333', '资产盘点', 'fa fa-cubes', 'asset/show', 'fansai:asset:show', '262', '2', '1', '65', '', '0');
INSERT INTO `acl_menu` VALUES ('334', '丢失报警', 'fa fa-bell', 'lose', 'fansai:lose:alert', '313', '2', '1', '51', '', '1');
INSERT INTO `acl_menu` VALUES ('335', '劳动强度', 'fa fa-map-pin', 'stats/work', 'fansai:work:open', '316', '2', '1', '66', '', '1');
INSERT INTO `acl_menu` VALUES ('336', '静止报警', 'fa fa-unlock', 'static', 'fansai:static:open', '313', '2', '1', '67', '', '1');
INSERT INTO `acl_menu` VALUES ('337', '网关状态', 'fa fa-suitcase', 'gateway', 'fansai:gateway:open', '300', '2', '1', '68', '', '1');
INSERT INTO `acl_menu` VALUES ('338', '危险区域', 'fa fa-map-pin', 'configure/danger', 'fansai:dangerZone:open', '331', '2', '1', '69', '', '1');
INSERT INTO `acl_menu` VALUES ('339', '危险报警', 'fa fa-child', 'danger', 'fansai:danger:open', '313', '2', '1', '70', '', '1');

-- ----------------------------
-- Table structure for acl_nvr
-- ----------------------------
DROP TABLE IF EXISTS `acl_nvr`;
CREATE TABLE `acl_nvr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_nvr
-- ----------------------------
INSERT INTO `acl_nvr` VALUES ('1', '192.168.1.236', '8080', 'admin', 'Mote12345', '1');
INSERT INTO `acl_nvr` VALUES ('10', '192.168.1.238', '80', 'admin', 'Mote12345', '1');
INSERT INTO `acl_nvr` VALUES ('15', '114.215.83.1', '8080', 'hah', '123', '1');

-- ----------------------------
-- Table structure for acl_permission
-- ----------------------------
DROP TABLE IF EXISTS `acl_permission`;
CREATE TABLE `acl_permission` (
  `perm_token` varchar(100) NOT NULL COMMENT '权限字符串',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `parent_id` varchar(20) DEFAULT NULL COMMENT 'acl_menu主键',
  `level` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`perm_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_permission
-- ----------------------------
INSERT INTO `acl_permission` VALUES ('fansai:asset:show', '资产盘点', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:assetInfo:open', '资产信息查看', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:assetInfoAdd:open', '资产信息添加', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:assetInfoDelete:open', '资产信息删除', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:assetInfoUpdate:open', '资产信息修改', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:battery:open', '电量报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:blood:open', '血压统计', '316', '3');
INSERT INTO `acl_permission` VALUES ('fansai:board:open', '看板配置', '331', '3');
INSERT INTO `acl_permission` VALUES ('fansai:cameraMessage', '相机信息', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:comInfo:open', '公司信息查看', '259', '3');
INSERT INTO `acl_permission` VALUES ('fansai:comInfoEdit:open', '公司信息编辑', '259', '3');
INSERT INTO `acl_permission` VALUES ('fansai:danger:open', '危险报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:dangerZone:open', '危险区域', '331', '3');
INSERT INTO `acl_permission` VALUES ('fansai:deploy:open', '区域配置', '331', '3');
INSERT INTO `acl_permission` VALUES ('fansai:detain:open', '滞留配置', '331', '3');
INSERT INTO `acl_permission` VALUES ('fansai:fenceInfo:open', '电子围栏', '271', '3');
INSERT INTO `acl_permission` VALUES ('fansai:gateway:open', '网关状态', '300', '3');
INSERT INTO `acl_permission` VALUES ('fansai:health:open', '健康报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:heart:open', '心率统计', '316', '3');
INSERT INTO `acl_permission` VALUES ('fansai:lose:alert', '丢失报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:manInfo:open', '人员信息查看', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:manInfoAdd:open', '人员信息添加', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:manInfoDelete:open', '人员信息删除', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:manInfoUpdate:open', '人员信息修改', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:mapInfo:open', '地图显示', '271', '3');
INSERT INTO `acl_permission` VALUES ('fansai:mattess:open', '智能床垫', '316', '3');
INSERT INTO `acl_permission` VALUES ('fansai:NVR:open', 'NVR信息', '262', '3');
INSERT INTO `acl_permission` VALUES ('fansai:organ:open', '部门查看', '259', '3');
INSERT INTO `acl_permission` VALUES ('fansai:organAdd:open', '部门添加', '259', '3');
INSERT INTO `acl_permission` VALUES ('fansai:organDelete:open', '部门删除', '259', '3');
INSERT INTO `acl_permission` VALUES ('fansai:organUpdate:open', '部门修改', '259', '3');
INSERT INTO `acl_permission` VALUES ('fansai:power:open', '设备电量', '300', '3');
INSERT INTO `acl_permission` VALUES ('fansai:rest:open', '睡眠统计', '316', '3');
INSERT INTO `acl_permission` VALUES ('fansai:retain:alert', '滞留报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:scatter:open', '人员分布', '271', '3');
INSERT INTO `acl_permission` VALUES ('fansai:server:alarm', '报警看板', '329', '3');
INSERT INTO `acl_permission` VALUES ('fansai:server:site', '位置看板', '329', '3');
INSERT INTO `acl_permission` VALUES ('fansai:signCount:compare:open', '比较统计', '256', '3');
INSERT INTO `acl_permission` VALUES ('fansai:signCount:open', '人数统计', '256', '3');
INSERT INTO `acl_permission` VALUES ('fansai:signQuery:open', '签到查询', '256', '3');
INSERT INTO `acl_permission` VALUES ('fansai:signSet:open', '设置签到', '256', '3');
INSERT INTO `acl_permission` VALUES ('fansai:sos:alert', 'SOS报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:static:open', '静止报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:step:open', '运动统计', '316', '3');
INSERT INTO `acl_permission` VALUES ('fansai:took:open', '拆卸报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('fansai:video:control', '视频监控', '309', '3');
INSERT INTO `acl_permission` VALUES ('fansai:video:linkage', '视频联动', '309', '3');
INSERT INTO `acl_permission` VALUES ('fansai:work:open', '劳动强度', '316', '3');
INSERT INTO `acl_permission` VALUES ('security:role:open', '角色查看', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:roleAdd:open', '角色添加', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:roleDelete:open', '角色删除', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:roleUpdate:open', '角色修改', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:user:open', '用户查看', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:userAdd:open', '用户添加', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:userDelete:open', '用户删除', '2', '3');
INSERT INTO `acl_permission` VALUES ('security:userUpdate:open', '用户修改', '2', '3');
INSERT INTO `acl_permission` VALUES ('system:log:open', '操作日志', '1', '2');
INSERT INTO `acl_permission` VALUES ('system:orbit:open', '历史轨迹', '1', '2');
INSERT INTO `acl_permission` VALUES ('system:sos:open', '位置报警', '313', '3');
INSERT INTO `acl_permission` VALUES ('system:sysParam:open', '系统变量查看', '21', '3');
INSERT INTO `acl_permission` VALUES ('system:sysParamEdit:open', '系统变量编辑', '21', '3');

-- ----------------------------
-- Table structure for acl_personinfo
-- ----------------------------
DROP TABLE IF EXISTS `acl_personinfo`;
CREATE TABLE `acl_personinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(20) DEFAULT NULL,
  `person_name` varchar(30) DEFAULT NULL,
  `person_sex` varchar(10) DEFAULT NULL,
  `organ_id` varchar(10) DEFAULT NULL,
  `organ_name` varchar(30) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `person_liable` varchar(20) DEFAULT NULL,
  `person_liable_phone` varchar(20) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  `person` varchar(255) DEFAULT NULL,
  `min_hr` int(11) DEFAULT NULL,
  `max_hr` int(11) DEFAULT NULL,
  `max_spb` int(11) DEFAULT NULL,
  `min_spb` int(11) DEFAULT NULL,
  `max_dpb` int(11) DEFAULT NULL,
  `min_dpb` int(11) DEFAULT NULL,
  `fence_num` varchar(33) DEFAULT NULL,
  `head_url` varchar(100) DEFAULT NULL,
  `sleep_uuid` varchar(33) DEFAULT '' COMMENT '智能床垫编号',
  `rest_start_time` varchar(30) DEFAULT NULL,
  `rest_stop_time` varchar(30) DEFAULT NULL,
  `is_core` tinyint(4) DEFAULT NULL,
  `static_start_time` varchar(30) DEFAULT NULL COMMENT '静止检测开始时间',
  `static_stop_time` varchar(30) DEFAULT NULL COMMENT '静止检测结束时间',
  `static_duration` int(11) DEFAULT NULL COMMENT '静止时长（分钟）',
  `is_check` int(11) DEFAULT '1' COMMENT '是否开启手环心率检测  0 关闭   1 开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_personinfo
-- ----------------------------
INSERT INTO `acl_personinfo` VALUES ('299', 'EC4A80B9EABC', 'LKJ', '1000001', '1', '懋特物联', '2019-09-02', '13663578506', 'aaaaa', null, null, '1', null, '50', '130', '140', '90', '90', '60', null, '/bison/img/head.jpg', null, '22:00', '07:00', '1', '08:00', '17:00', '60', '1');

-- ----------------------------
-- Table structure for acl_rest
-- ----------------------------
DROP TABLE IF EXISTS `acl_rest`;
CREATE TABLE `acl_rest` (
  `device_id` varchar(255) NOT NULL,
  `rest_start_time` bigint(255) DEFAULT NULL,
  `rest_stop_time` bigint(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `body_move` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_rest
-- ----------------------------
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557873055966', '1557932408712', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557932408712', '1557934208776', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557934208776', '1557936017531', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557936017531', '1557937820312', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557937820312', '1557939626947', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557939626947', '1557941430744', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557941430744', '1557943235963', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557943235963', '1557945046677', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557945046677', '1557946854278', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557946854278', '1557948660405', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557948660405', '1557950462795', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557950462795', '1557952267874', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557952267874', '1557954068359', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557954068359', '1557955874670', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557955874670', '1557957675479', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557957675479', '1557959492801', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1557959492801', '1558018804325', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558018804325', '1558020605146', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558020605146', '1558022408161', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558022408161', '1558024214488', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558024214488', '1558026025211', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558026025211', '1558027834817', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558021726364', '1558028199239', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558027834817', '1558029646652', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558029646652', '1558031447475', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558028199239', '1558032083649', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558031447475', '1558033261490', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558032083649', '1558034088105', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558033261490', '1558035070032', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558035070032', '1558036870855', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558036870855', '1558038674969', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558038674969', '1558040475772', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558040475772', '1558042277710', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558042277710', '1558044078528', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558044078528', '1558045880435', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558045880435', '1558105204720', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558105204720', '1558107013247', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558107013247', '1558108814055', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558108814055', '1558110632470', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558110632470', '1558112437688', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558112437688', '1558114238510', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558114238510', '1558116042631', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558116042631', '1558117843444', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558117843444', '1558119651041', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558119651041', '1558121451722', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558034088105', '1558121923245', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558121451722', '1558123256926', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558123256926', '1558125059947', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558125059947', '1558126860783', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558126860783', '1558128662694', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558128662694', '1558130474508', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558130474508', '1558132276435', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558121923245', '1558132297088', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558132276435', '1558191601196', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558132297088', '1558192485951', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558191601196', '1558193403084', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558192485951', '1558195048086', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558193403084', '1558195206103', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558195206103', '1558197006930', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558197006930', '1558198809936', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558198809936', '1558200610775', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558200610775', '1558202411609', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558195048086', '1558202941075', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558202411609', '1558204214621', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558204214621', '1558206017644', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558202941075', '1558207268904', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558206017644', '1558207821764', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558207821764', '1558209632486', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558207268904', '1558209828752', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558209632486', '1558211438805', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558211438805', '1558213240717', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558209828752', '1558214219249', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558213240717', '1558215043748', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558215043748', '1558216844554', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558216844554', '1558218646474', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558218646474', '1558278006329', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558278006329', '1558279809341', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558279809341', '1558281611261', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558281611261', '1558283412055', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558283412055', '1558285213974', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558285213974', '1558287017006', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558287017006', '1558288822226', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558288822226', '1558290626331', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558290626331', '1558292428247', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558292428247', '1558294236749', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558294236749', '1558296055165', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558296055165', '1558297855987', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558297855987', '1558299656807', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558299656807', '1558301457621', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1558214219249', '1558302031068', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558301457621', '1558303259557', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558303259557', '1558305063668', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558305063668', '1558364401540', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558364401540', '1558366215559', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558366215559', '1558368020778', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558368020778', '1558369828196', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558369828196', '1558371630115', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558371630115', '1558373437521', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558373437521', '1558375239452', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558375239452', '1558377043558', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558377043558', '1558378846573', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558378846573', '1558380647387', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558380647387', '1558382455893', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558382455893', '1558384257808', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558384257808', '1558386058626', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558386058626', '1558387862737', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558387862737', '1558389671252', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558389671252', '1558391475355', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558391475355', '1558450807719', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558450807719', '1558452608450', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558452608450', '1558454421502', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558454421502', '1558456223263', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558456223263', '1558458028584', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558458028584', '1558459853503', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558459853503', '1558461670812', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558461670812', '1558463471632', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558463471632', '1558465294431', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558465294431', '1558467098565', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558467098565', '1558468923585', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558468923585', '1558470727700', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558470727700', '1558472538406', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558472538406', '1558474355725', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558474355725', '1558476159841', '0', '0');
INSERT INTO `acl_rest` VALUES ('D8FDB038781D', '1558476159841', '1558477968359', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1559318158716', '1559340252139', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1559340252139', '1559413717756', '0', '0');
INSERT INTO `acl_rest` VALUES ('F8C814E8784E', '1559413717756', '1559416302905', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559637454130', '1559639464360', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559638769653', '1559640749350', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559638934661', '1559640782378', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559639007329', '1559640832413', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559639188063', '1559640998580', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559639266608', '1559641081929', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559639345521', '1559641164760', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559639255177', '1559641176071', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559639424569', '1559641225301', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559639407236', '1559641230031', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559639325733', '1559641367308', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559639310225', '1559641369265', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559639433589', '1559641371452', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559639497960', '1559641380655', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559639104206', '1559641402655', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559639132633', '1559641436779', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559639533487', '1559641457477', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559639342190', '1559641471584', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559639655653', '1559641477884', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559639231573', '1559641532279', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559639499464', '1559641541641', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559639619312', '1559641557530', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559639788764', '1559641712770', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559639940535', '1559641744237', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559639957256', '1559641763230', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559639850389', '1559641768863', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559639903023', '1559641822640', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559639776543', '1559641823572', '2', '4');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559639795277', '1559641835862', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559639739384', '1559642007522', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559639838252', '1559642030547', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559639464360', '1559642045831', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559639675392', '1559642097467', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559640194974', '1559642139473', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559640122404', '1559642213140', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559639912089', '1559642239466', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559640556414', '1559642436460', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559640212327', '1559642613423', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559640832413', '1559642644479', '2', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559639891779', '1559642682764', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559640749350', '1559642689492', '2', '3');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559640782378', '1559642719180', '2', '1');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559640998580', '1559643036057', '2', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559641230031', '1559643052338', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559641164760', '1559643108538', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559641081929', '1559643185464', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559641176071', '1559643219512', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559641225301', '1559643226346', '2', '4');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559641436779', '1559643253720', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559641367308', '1559643285631', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559641380655', '1559643305383', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559641471584', '1559643336183', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559641457477', '1559643375837', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559641557530', '1559643418587', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559641371452', '1559643425112', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559641477884', '1559643455260', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559641541641', '1559643460427', '1', '3');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559641532279', '1559643471416', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559641402655', '1559643561899', '2', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559641712770', '1559643633175', '2', '3');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559641744237', '1559643656171', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559641768863', '1559643690502', '1', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559641823572', '1559643752095', '2', '2');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559641822640', '1559643764109', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559641369265', '1559643910339', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559641763230', '1559643919271', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559641835862', '1559643939907', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559642030547', '1559643966484', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559642213140', '1559644016309', '1', '4');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559642239466', '1559644051360', '2', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559642139473', '1559644077447', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559642097467', '1559644151186', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559642045831', '1559644162378', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559642436460', '1559644252503', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559642613423', '1559644419495', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559642007522', '1559644425135', '1', '1');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559642644479', '1559644449435', '2', '2');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559642682764', '1559644499867', '1', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559642719180', '1559644522063', '2', '3');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559643052338', '1559644867454', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559642689492', '1559644874254', '2', '2');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559643108538', '1559644922443', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559643219512', '1559645021436', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559643185464', '1559645083043', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559643036057', '1559645126960', '2', '2');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559643336183', '1559645179766', '2', '1');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559643285631', '1559645208584', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559643305383', '1559645223639', '2', '1');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559643425112', '1559645265431', '2', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559643455260', '1559645274620', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559643253720', '1559645310431', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559643418587', '1559645352420', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559643561899', '1559645364458', '2', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559643460427', '1559645451618', '2', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559643656171', '1559645468689', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559643226346', '1559645488896', '2', '1');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559643375837', '1559645539367', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559643752095', '1559645590086', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559643690502', '1559645637514', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559643633175', '1559645694558', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559643764109', '1559645706370', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559643919271', '1559645721003', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559643939907', '1559645741738', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559643966484', '1559645914615', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559644151186', '1559645969687', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559643471416', '1559646005911', '2', '1');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559644016309', '1559646062320', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559644252503', '1559646068774', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559644162378', '1559646207260', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559643910339', '1559646218084', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559644077447', '1559646219280', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559644419495', '1559646234436', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559644522063', '1559646323771', '1', '1');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559644425135', '1559646356795', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559644449435', '1559646365688', '2', '3');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559644051360', '1559646598683', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559644922443', '1559646749548', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559644499867', '1559646804604', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559644874254', '1559646812140', '1', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559645126960', '1559647046375', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559644867454', '1559647058644', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559645223639', '1559647093903', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559645208584', '1559647129952', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559645451618', '1559653189096', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559646068774', '1559653272191', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559646749548', '1559653309362', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559645265431', '1559653311455', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559645021436', '1559653312930', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559646207260', '1559653430615', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559646812140', '1559653432860', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559645179766', '1559653435107', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559645310431', '1559653445941', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559645706370', '1559653463627', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559646365688', '1559653506309', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559646218084', '1559653551525', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559646598683', '1559653553737', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559646062320', '1559653558307', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559646356795', '1559653561223', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559645364458', '1559653565730', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559645488896', '1559653581218', '1', '3');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559646219280', '1559653639491', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559645274620', '1559653652760', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559645083043', '1559653671378', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559645590086', '1559653672577', '1', '4');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559647093903', '1559653673502', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559647046375', '1559653703331', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559646005911', '1559653764859', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559645539367', '1559653793633', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559645969687', '1559653827443', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559647058644', '1559653929979', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559645914615', '1559654029830', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559645637514', '1559654035538', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559645721003', '1559654037726', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559646234436', '1559654166221', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559646804604', '1559654204937', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559645468689', '1559654326950', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559647129952', '1559654520381', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559645694558', '1559654761586', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559646323771', '1559654762541', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559645741738', '1559654768137', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559645352420', '1559655058577', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559653309362', '1559655112052', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559653463627', '1559655266270', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559653189096', '1559655289717', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559653506309', '1559655331364', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559653445941', '1559655368628', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559653581218', '1559655382005', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559653671378', '1559655472871', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559653561223', '1559655479701', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559653430615', '1559655512564', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559653551525', '1559655549196', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559653272191', '1559655554462', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559653764859', '1559655565501', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559653565730', '1559655613800', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559653432860', '1559655615286', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559653673502', '1559655618184', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559653793633', '1559655619584', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559653558307', '1559655623966', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559653703331', '1559655624978', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559653639491', '1559655637312', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559653312930', '1559655743612', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559653652760', '1559655815229', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559653929979', '1559655852771', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559653827443', '1559655871015', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559654037726', '1559655925376', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559654029830', '1559655950403', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559654035538', '1559656046425', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559654326950', '1559656127532', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559653553737', '1559656154126', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559653311455', '1559656169515', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559653435107', '1559656223603', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559654204937', '1559656246555', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559653672577', '1559656630083', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559654166221', '1559656751076', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559654768137', '1559656753255', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559654761586', '1559656922642', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559655112052', '1559657080340', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559655289717', '1559657134023', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559655058577', '1559657417525', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559655368628', '1559657419854', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559655266270', '1559657422126', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559655554462', '1559657463845', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559655331364', '1559657556226', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559655382005', '1559657584882', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559654520381', '1559657615645', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559655623966', '1559657650786', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559655549196', '1559657714573', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559655479701', '1559657760874', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559655619584', '1559657780517', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559656046425', '1559657846645', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559655624978', '1559657879517', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559655637312', '1559657881861', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559655743612', '1559657919234', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559654762541', '1559657945585', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559655472871', '1559658044577', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559655618184', '1559658046886', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559656169515', '1559658110633', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559655613800', '1559658176613', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559655815229', '1559658244874', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559656127532', '1559658310777', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559655565501', '1559658313045', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559655512564', '1559658317453', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559655615286', '1559658374576', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559655925376', '1559658440252', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559656246555', '1559658464159', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559655852771', '1559658560870', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559656223603', '1559658681801', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559656751076', '1559658704642', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559656154126', '1559658732434', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559656753255', '1559658752398', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559656922642', '1559658833650', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559655871015', '1559658930591', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559657080340', '1559659014232', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559657134023', '1559659175674', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559657417525', '1559659265556', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559657419854', '1559659289102', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559657463845', '1559659465901', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559657584882', '1559659469652', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559657615645', '1559659493809', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559657422126', '1559659529195', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559657760874', '1559659621375', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559657714573', '1559659674250', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559657780517', '1559659740160', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559657556226', '1559659771063', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559657650786', '1559659799632', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559658044577', '1559659849101', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559655950403', '1559659892287', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559658110633', '1559660012981', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559657919234', '1559660013934', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559657846645', '1559660019440', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559658176613', '1559660133912', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559656630083', '1559660135029', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559658244874', '1559660152635', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559658374576', '1559660182303', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559657945585', '1559660196365', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559657879517', '1559660257874', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559658313045', '1559660271488', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559658310777', '1559660336536', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559658317453', '1559660361382', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559658440252', '1559660427612', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559658046886', '1559660491075', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559658560870', '1559660507889', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559658681801', '1559660600329', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559657881861', '1559660620944', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559658464159', '1559660624609', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559658752398', '1559660686832', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559658704642', '1559660955315', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559658930591', '1559660983911', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559659175674', '1559661016855', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559658732434', '1559661278546', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559659289102', '1559661384295', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559659014232', '1559661582322', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559659529195', '1559661643818', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559659469652', '1559661683499', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559659771063', '1559661707578', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559659465901', '1559661745058', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559659849101', '1559661806530', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559658833650', '1559661852894', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559660013934', '1559661872644', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559659799632', '1559661907750', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559660012981', '1559661912361', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559659493809', '1559662091983', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559659265556', '1559662093140', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559660257874', '1559662094105', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559660133912', '1559662169286', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559660019440', '1559662259222', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559660152635', '1559662287703', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559660182303', '1559662334825', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559660336536', '1559662380300', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559660427612', '1559662400547', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559660600329', '1559662404487', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559660361382', '1559662461616', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559660620944', '1559662534875', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559660624609', '1559662576821', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559660271488', '1559662579040', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559660196365', '1559662617766', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559659892287', '1559662642773', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559660686832', '1559662721139', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559659740160', '1559662771822', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559659674250', '1559662817950', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559660955315', '1559662833541', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559659621375', '1559662892674', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559660135029', '1559662933166', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559660507889', '1559662994577', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559660491075', '1559662996866', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559661582322', '1559663425857', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559661016855', '1559663458849', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559661707578', '1559663522489', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559661278546', '1559663524817', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559661643818', '1559663559997', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559661852894', '1559663720608', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559661745058', '1559663857077', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559662094105', '1559663953865', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559662169286', '1559664088076', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559662091983', '1559664116560', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559662404487', '1559664281568', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559662259222', '1559664347665', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559661912361', '1559664380600', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559662576821', '1559664382841', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559661384295', '1559664385091', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559662461616', '1559664415892', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559662579040', '1559664448877', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559662380300', '1559664474303', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559661806530', '1559664483408', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559661683499', '1559664501007', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559661872644', '1559664505347', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559662534875', '1559664533976', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559662093140', '1559664596492', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559662642773', '1559664621946', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559662721139', '1559664654988', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559660983911', '1559664743204', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559662892674', '1559664758269', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559662817950', '1559664809499', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559662287703', '1559664833187', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559662791478', '1559664847161', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559662771822', '1559664857457', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559662617766', '1559664868393', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559661907750', '1559664959567', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559662933166', '1559664974237', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559662400547', '1559664978474', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559662334825', '1559664984978', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559662833541', '1559665000305', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559662994577', '1559665078248', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559663425857', '1559665238209', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559662996866', '1559665323828', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559663522489', '1559665352346', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559663458849', '1559665485440', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559663559997', '1559665563499', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559663524817', '1559665590037', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559663720608', '1559665648070', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559664088076', '1559665924256', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559663857077', '1559665958444', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559664116560', '1559666034405', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559664347665', '1559666190540', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559664385091', '1559666201575', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559664448877', '1559666269711', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559664483408', '1559666294511', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559664415892', '1559666300598', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559664382841', '1559666315978', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559664380600', '1559666320366', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559664501007', '1559666439167', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559664281568', '1559666486467', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559664743204', '1559666562472', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559664533976', '1559666593919', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559664654988', '1559666612816', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559664505347', '1559666630571', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559664809499', '1559666632755', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559664857457', '1559666657489', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559663953865', '1559666664387', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559664621946', '1559666692879', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559664868393', '1559666725905', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559664978474', '1559666824865', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559664959567', '1559666890859', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559664833187', '1559666954514', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559665000305', '1559666982191', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559664596492', '1559667154887', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559664974237', '1559667157060', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559665078248', '1559667159278', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559665238209', '1559667218562', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559665323828', '1559667317550', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559665590037', '1559667449667', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559664984978', '1559667451822', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559665352346', '1559667456318', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559664474303', '1559667647622', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559665485440', '1559667779621', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559665958444', '1559667814939', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559665648070', '1559668109650', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559665563499', '1559668114118', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559666201575', '1559668213099', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559666320366', '1559668258210', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559666269711', '1559668260453', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559664847161', '1559668340553', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559666439167', '1559668342882', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559666486467', '1559668459800', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559666692879', '1559668505609', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559666593919', '1559668508036', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559666294511', '1559668509422', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559666664387', '1559668515967', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559666315978', '1559668549710', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559666562472', '1559668551970', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559666300598', '1559668582850', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559665924256', '1559668585019', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559664758269', '1559668626008', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559666612816', '1559668655722', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559666824865', '1559668793134', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559666190540', '1559668870956', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559666657489', '1559668872476', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559666954514', '1559668994418', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559666034405', '1559669028547', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559666630571', '1559669084699', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559667218562', '1559669104225', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559666982191', '1559669109938', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559667157060', '1559669113302', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559667317550', '1559669162806', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559666890859', '1559669215608', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559666632755', '1559669285919', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559667451822', '1559669315470', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559667159278', '1559669354145', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559666725905', '1559669403429', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559667449667', '1559669473015', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559667456318', '1559669585127', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559667154887', '1559669599183', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559667647622', '1559669643185', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559667814939', '1559669712820', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559667779621', '1559669884358', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559668114118', '1559669952527', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559668109650', '1559670146166', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559668340553', '1559670157334', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559668213099', '1559670247310', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559668342882', '1559670291590', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559668258210', '1559670329833', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559668505609', '1559670358271', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559668549710', '1559670370524', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559668260453', '1559670447498', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559668508036', '1559670452221', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559668655722', '1559670473958', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559668551970', '1559670502661', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559668515967', '1559670506871', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559668626008', '1559670656549', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559668870956', '1559670694018', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559668459800', '1559670744578', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559668509422', '1559670758601', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559668994418', '1559670810548', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559669084699', '1559670889866', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559668585019', '1559670909482', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559668872476', '1559670914712', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559669109938', '1559670934905', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559669028547', '1559670964489', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559668582850', '1559671006279', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559669113302', '1559671032655', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559669285919', '1559671087785', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559668793134', '1559671096549', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559669403429', '1559671204297', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559669354145', '1559671272532', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559669585127', '1559671389959', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559669104225', '1559671426608', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559669315470', '1559671447241', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559669643185', '1559671472777', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559669599183', '1559671499198', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559669215608', '1559671516906', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559669473015', '1559671545512', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559669712820', '1559671633391', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559669162806', '1559671824658', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559669952527', '1559671833312', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559670157334', '1559671979530', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559670146166', '1559672086552', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559670291590', '1559672107114', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559670247310', '1559672172456', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559670370524', '1559672185568', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559670329833', '1559672275788', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559670506871', '1559672307439', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559669884358', '1559672311988', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559670447498', '1559672371191', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559670502661', '1559672432232', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559670656549', '1559672462641', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559670694018', '1559672513462', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559670358271', '1559672517742', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559670473958', '1559672539904', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559670758601', '1559672569275', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559670452221', '1559672668123', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559670744578', '1559672692647', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559670934905', '1559672764963', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559670909482', '1559672830992', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559671096549', '1559672916008', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559670889866', '1559672922491', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559670914712', '1559672956620', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559671032655', '1559672976186', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559671087785', '1559673008308', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559670964489', '1559673021567', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559671006279', '1559673067845', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559670810548', '1559673158212', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559671272532', '1559673199827', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559671426608', '1559673231531', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559671204297', '1559673253660', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559671516906', '1559673331779', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559671545512', '1559673358873', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559671447241', '1559673367008', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559671499198', '1559673422204', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559671633391', '1559673437363', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559671472777', '1559673472460', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559671389959', '1559673549602', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559671824658', '1559673649668', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559671833312', '1559673749784', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559671979530', '1559673803651', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559672107114', '1559673924354', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559672172456', '1559673975259', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559672275788', '1559674117328', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559672185568', '1559674258754', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559672311988', '1559674260897', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559672086552', '1559674287321', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559672432232', '1559674381914', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559672517742', '1559674412585', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559672830992', '1559674643685', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559672539904', '1559674676557', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559672668123', '1559674700925', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559672371191', '1559674709545', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559672764963', '1559674879085', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559672922491', '1559674907596', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559672462641', '1559674909929', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559673158212', '1559674973633', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559672307439', '1559675039605', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559673253660', '1559675107873', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559672513462', '1559675138548', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559673199827', '1559675204699', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559673021567', '1559675206865', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559673437363', '1559675239857', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559673008308', '1559675369576', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559672976186', '1559675409236', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559673472460', '1559675435556', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559672692647', '1559675440065', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559673749784', '1559675600548', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559673649668', '1559675666548', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559673549602', '1559675786803', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559673975259', '1559675823203', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559673367008', '1559675852841', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559673358873', '1559675861769', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559673231531', '1559675864214', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559673803651', '1559675980598', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559672956620', '1559676062541', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559673924354', '1559676081837', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559674117328', '1559676090590', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559673331779', '1559676150052', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559672569275', '1559676171942', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559673422204', '1559676185161', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559674412585', '1559676229365', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559674260897', '1559676273182', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559674258754', '1559676392568', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559674381914', '1559676449027', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559674700925', '1559676504202', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559674676557', '1559676585571', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559672916008', '1559676590664', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559674287321', '1559676603102', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559674643685', '1559676680221', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559673067845', '1559676706614', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559674909929', '1559676715288', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559674907596', '1559676722231', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559674879085', '1559676730890', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559674709545', '1559676752838', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559674973633', '1559676931695', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559675138548', '1559676950701', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559675107873', '1559676955863', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559675039605', '1559676981493', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559675204699', '1559677036600', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559675369576', '1559677266400', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559675239857', '1559677278473', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559675440065', '1559677280699', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559675409236', '1559677432520', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559675206865', '1559677439024', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559675600548', '1559677523799', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559675666548', '1559677604221', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559675786803', '1559677705441', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559675823203', '1559677751660', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559675852841', '1559677753926', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559675435556', '1559677848556', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559675861769', '1559677877213', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559676081837', '1559677881986', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559675864214', '1559677903366', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559676171942', '1559677972632', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559676062541', '1559678002393', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559676273182', '1559678075231', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559676229365', '1559678171724', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559675980598', '1559678332331', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559676185161', '1559678336833', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559676585571', '1559678401327', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559676392568', '1559678504274', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559676715288', '1559678517144', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559676706614', '1559678543681', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559676730890', '1559678553572', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559676590664', '1559678598543', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559676603102', '1559678617162', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559676449027', '1559678618432', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559676150052', '1559678695387', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559676504202', '1559678737851', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559676981493', '1559678783386', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559676722231', '1559678785584', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559676090590', '1559678793095', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559677036600', '1559678836817', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559676950701', '1559678920687', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559676752838', '1559678966227', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559676680221', '1559679009923', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559676955863', '1559679016403', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559677278473', '1559679080200', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559677280699', '1559679225592', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559677266400', '1559679432343', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559677523799', '1559679445595', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559676931695', '1559679463431', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559677432520', '1559679501383', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559677439024', '1559679504953', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559677705441', '1559679522395', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559677753926', '1559679668741', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559677848556', '1559679775490', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559677972632', '1559679784335', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559677877213', '1559679795489', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559677881986', '1559679803127', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559677751660', '1559679908604', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559678002393', '1559680121629', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559677604221', '1559680286588', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559678332331', '1559680354848', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559678517144', '1559680460497', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559678617162', '1559680550600', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559678075231', '1559680555067', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559677903366', '1559680583617', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559678553572', '1559680649581', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559678966227', '1559680781560', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559678598543', '1559680847548', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559679016403', '1559680849817', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559678543681', '1559680852078', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559678836817', '1559681113897', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559679080200', '1559681212972', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559678171724', '1559681245856', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559679504953', '1559681347108', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559678504274', '1559681476912', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559679784335', '1559681591475', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559679501383', '1559681595035', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559678401327', '1559681595925', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559678920687', '1559681599418', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559678783386', '1559681627993', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559679009923', '1559681632421', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559678737851', '1559681639600', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559678618432', '1559681716816', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559679225592', '1559681875116', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559679668741', '1559681877333', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559679522395', '1559681879641', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559678785584', '1559681894005', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559678695387', '1559681936539', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559679445595', '1559682007067', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559680121629', '1559682134727', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559679795489', '1559682299519', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559678336833', '1559682301799', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559679775490', '1559682365559', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559680550600', '1559682370179', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559679432343', '1559682464551', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559680555067', '1559682466912', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559680649581', '1559682603299', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559680460497', '1559682664906', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559679463431', '1559682827599', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559680286588', '1559682893591', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559680852078', '1559682904728', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559680354848', '1559682906932', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559679908604', '1559682926558', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559679803127', '1559682928931', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559680847548', '1559682992651', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559680781560', '1559683025559', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559680583617', '1559683096127', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559681212972', '1559683131308', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559680849817', '1559683190580', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559681476912', '1559683324961', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559681113897', '1559683355578', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559681595035', '1559683421618', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559681716816', '1559683520673', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559681639600', '1559683593299', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559681591475', '1559683594840', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559678793095', '1559683706909', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559681875116', '1559683759831', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559681879641', '1559683762033', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559681936539', '1559683836722', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559681894005', '1559683850228', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559681599418', '1559683854452', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559682007067', '1559683957763', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559681877333', '1559684069836', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559681627993', '1559684076563', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559681632421', '1559684213251', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559682365559', '1559684342627', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559682466912', '1559684373558', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559682370179', '1559684404267', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559682301799', '1559684435168', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559681245856', '1559684437295', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559681595925', '1559684439428', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559681347108', '1559684444240', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559682299519', '1559684536423', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559682464551', '1559684555004', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559682134727', '1559684566054', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559682904728', '1559684713190', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559682906932', '1559684760836', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559682603299', '1559684800347', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559682926558', '1559684802474', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559682893591', '1559684875956', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559683190580', '1559684998443', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559682992651', '1559685021468', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559682928931', '1559685038247', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559682664906', '1559685044631', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559682827599', '1559685045514', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559683355578', '1559685175110', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559683421618', '1559685310844', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559683593299', '1559685407758', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559683520673', '1559685462561', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559683324961', '1559685484554', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559683131308', '1559685529605', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559683762033', '1559685586855', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559683096127', '1559685647406', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559683706909', '1559685651774', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559683759831', '1559685680278', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559683850228', '1559685694664', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559683594840', '1559685700950', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559683025559', '1559685773689', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559683836722', '1559685899054', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559683957763', '1559685902655', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559684069836', '1559686019214', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559684076563', '1559686021395', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559684213251', '1559686028288', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559683854452', '1559686110461', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559684373558', '1559686175347', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559684404267', '1559686228362', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559684444240', '1559686244565', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559684342627', '1559686285266', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559684555004', '1559686376389', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559684439428', '1559686412945', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559684435168', '1559686498841', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559684760836', '1559686565670', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559684437295', '1559686619813', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559684566054', '1559686787680', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559684998443', '1559686822880', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559684875956', '1559686985592', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559684713190', '1559687084551', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559684536423', '1559687091309', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559685044631', '1559687119880', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559685038247', '1559687218881', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559685484554', '1559687287060', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559685310844', '1559687348611', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559685021468', '1559687381592', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559684802474', '1559687383872', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559685586855', '1559687434531', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559685680278', '1559687487382', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559684800347', '1559687579660', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559685045514', '1559687612623', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559685647406', '1559687614919', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559685773689', '1559687645651', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559685651774', '1559687749071', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559685529605', '1559687914072', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559685462561', '1559687944755', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559685902655', '1559687947119', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559685700950', '1559688008623', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559685694664', '1559688109985', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559686028288', '1559688175900', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559685407758', '1559688208919', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559686228362', '1559688229028', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559686175347', '1559688260964', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559686110461', '1559688263093', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559686376389', '1559688327150', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559686244565', '1559688334608', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559686412945', '1559688536539', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559686285266', '1559688637775', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559686619813', '1559688640063', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559686021395', '1559688642299', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559686019214', '1559688871103', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559686985592', '1559688877718', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559686498841', '1559689040519', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559686787680', '1559689097582', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559687348611', '1559689163614', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559687084551', '1559689229582', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559687434531', '1559689394576', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559687381592', '1559689462882', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559687612623', '1559689465082', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559685175110', '1559689487095', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559687914072', '1559689757565', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559687579660', '1559689792932', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559685899054', '1559689799502', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559687287060', '1559689832554', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559688109985', '1559689924854', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559687487382', '1559689927122', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559688008623', '1559690026033', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559687944755', '1559690153653', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559687749071', '1559690219585', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559688175900', '1559690252545', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559688327150', '1559690285485', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559687218881', '1559690323121', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559688334608', '1559690386901', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559688263093', '1559690453001', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559687091309', '1559690516585', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559688229028', '1559690518929', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559686822880', '1559690551873', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559688536539', '1559690688209', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559688871103', '1559690714585', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559688877718', '1559690716785', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559687614919', '1559690756501', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559688640063', '1559690780545', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559687383872', '1559690813623', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559687947119', '1559690846573', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559687119880', '1559690912633', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559687645651', '1559690945648', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559688642299', '1559690978572', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559688637775', '1559691082134', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559689394576', '1559691211914', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559688208919', '1559691247101', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559689487095', '1559691310861', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559689097582', '1559691407624', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559689040519', '1559691517733', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559689757565', '1559691605604', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559689462882', '1559691638524', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559689832554', '1559691803535', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559688260964', '1559691902612', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559689927122', '1559692034563', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559689924854', '1559692036920', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559689229582', '1559692043512', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559690219585', '1559692102863', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559690252545', '1559692133507', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559690153653', '1559692397724', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559690026033', '1559692430615', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559690453001', '1559692463603', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559690516585', '1559692534070', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559690386901', '1559692562515', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559689465082', '1559692569252', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559689792932', '1559692580310', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559690551873', '1559692597736', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559690716785', '1559692600112', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559689799502', '1559692663883', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559690756501', '1559692795891', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559690688209', '1559692806923', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559690518929', '1559692859527', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559691082134', '1559693026871', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559690846573', '1559693029129', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559689163614', '1559693092911', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559690912633', '1559693132576', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559690780545', '1559693189546', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559690813623', '1559693196273', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559690714585', '1559693323923', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559691517733', '1559693326157', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559690285485', '1559693361283', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559691211914', '1559693453493', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559691407624', '1559693552586', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559691247101', '1559693560294', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559691605604', '1559693587933', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559691638524', '1559693618706', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559690323121', '1559693755133', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559691803535', '1559693785882', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559692043512', '1559693924475', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559690978572', '1559694005698', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559692102863', '1559694132314', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559692397724', '1559694215089', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559692430615', '1559694236015', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559692463603', '1559694273505', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559692133507', '1559694339425', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559692036920', '1559694471377', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559692562515', '1559694478025', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559692580310', '1559694506713', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559691310861', '1559694603349', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559692795891', '1559694704685', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559692034563', '1559694768477', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559692859527', '1559694801369', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559692534070', '1559694805898', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559693132576', '1559694935609', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559693092911', '1559694999340', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559691902612', '1559695032396', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559693189546', '1559695065392', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559690945648', '1559695067684', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559692663883', '1559695142614', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559692597736', '1559695166724', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559693029129', '1559695168945', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559693326157', '1559695267938', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559693587933', '1559695461524', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559692569252', '1559695593400', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559693026871', '1559695604488', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559693755133', '1559695628709', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559693618706', '1559695659360', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559693196273', '1559695760708', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559693361283', '1559695795956', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559693924475', '1559695824448', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559693785882', '1559695923448', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559693323923', '1559696088476', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559694215089', '1559696220429', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559694339425', '1559696222736', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559692806923', '1559696290848', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559693453493', '1559696293096', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559694005698', '1559696354659', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559694471377', '1559696392148', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559694236015', '1559696552668', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559694704685', '1559696583351', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559694768477', '1559696585619', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559693552586', '1559696656150', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559694132314', '1559696686975', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559692600112', '1559696715447', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559694999340', '1559697014707', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559695166724', '1559697078427', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559694805898', '1559697245719', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559695267938', '1559697247935', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559695604488', '1559697428353', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559694506713', '1559697527751', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559695067684', '1559697624639', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559695760708', '1559697655296', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559694801369', '1559697688286', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559695659360', '1559697791803', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559695168945', '1559697796286', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559695142614', '1559697952262', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559694935609', '1559697954571', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559695593400', '1559698051335', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559695461524', '1559698084370', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559696293096', '1559698117402', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559695065392', '1559698150370', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559696715447', '1559713154060', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559697688286', '1559713156335', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559697954571', '1559713158500', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559695824448', '1559713288287', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559698084370', '1559713318979', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559694603349', '1559713321268', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559696552668', '1559713352067', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559696088476', '1559713391716', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559694478025', '1559713411492', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559697655296', '1559713418053', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559695795956', '1559713453288', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559697078427', '1559713484015', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559694273505', '1559713486298', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559696686975', '1559713549947', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559693560294', '1559713583027', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559698051335', '1559713585316', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559696585619', '1559713618296', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559697791803', '1559713624875', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559697014707', '1559713651376', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559697796286', '1559713681994', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559695628709', '1559713719524', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559696656150', '1559713750215', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559696222736', '1559713882246', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559697952262', '1559713912958', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559697245719', '1559713946006', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559696220429', '1559713985735', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559696354659', '1559714056134', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559698150370', '1559714077994', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559697247935', '1559714113334', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559697527751', '1559714115503', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559698117402', '1559714465174', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559696583351', '1559714531174', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559695032396', '1559714606006', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559695923448', '1559715023837', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559697624639', '1559715059186', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559713288287', '1559715096505', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559713318979', '1559715127352', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559696290848', '1559715155837', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559696392148', '1559715224185', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559713154060', '1559715254889', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559713453288', '1559715386889', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559713391716', '1559715389226', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559713486298', '1559715419821', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559713618296', '1559715424414', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559713583027', '1559715477249', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559713156335', '1559715563046', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559713585316', '1559715584877', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559713719524', '1559715617849', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559713624875', '1559715650889', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559713681994', '1559715749878', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559713352067', '1559715785218', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559713882246', '1559715947909', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559713985735', '1559715985456', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559713321268', '1559716018445', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559713750215', '1559716051398', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559714056134', '1559716117417', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559697428353', '1559716145841', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559714077994', '1559716148117', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559713158500', '1559716150377', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559714465174', '1559716412149', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559713418053', '1559716418836', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559714606006', '1559716537558', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559713946006', '1559716544214', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559713651376', '1559716581653', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559713549947', '1559716673925', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559713484015', '1559716678422', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559714115503', '1559716805841', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559713912958', '1559716876418', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559713411492', '1559716904901', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559715127352', '1559716942410', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559715155837', '1559717015029', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559715059186', '1559717105189', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559715224185', '1559717138167', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559715096505', '1559717171189', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559715419821', '1559717300929', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559715563046', '1559717501217', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559715477249', '1559717564861', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559715023837', '1559717600181', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559715386889', '1559717663793', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559715389226', '1559717684911', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559715650889', '1559717691373', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559715785218', '1559717712425', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559715584877', '1559717729772', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559715424414', '1559717762909', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559716018445', '1559717927872', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559715985456', '1559717963163', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559714531174', '1559717998381', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559716051398', '1559718029278', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559715749878', '1559718073175', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559715254889', '1559718158900', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559716150377', '1559718361389', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559716581653', '1559718554960', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559716148117', '1559718587968', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559716904901', '1559718719940', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559716678422', '1559718788211', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559716805841', '1559718851920', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559715947909', '1559718932309', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559716145841', '1559718950969', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559716412149', '1559719019220', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559716544214', '1559719049892', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559716876418', '1559719082912', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559716673925', '1559719118122', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559716537558', '1559719148965', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559714113334', '1559719214824', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559717138167', '1559719346920', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559717105189', '1559719415120', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559717501217', '1559719481172', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559717600181', '1559719487800', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559716418836', '1559719511892', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559717712425', '1559719551572', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559717762909', '1559719577961', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559716942410', '1559719613228', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559717927872', '1559719778192', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559717564861', '1559719874946', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559718073175', '1559719973855', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559717015029', '1559720042172', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559717300929', '1559720072843', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559715617849', '1559720171924', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559718158900', '1559720174231', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559717663793', '1559720204971', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559717963163', '1559720336911', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559717171189', '1559720768203', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559717729772', '1559720963875', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559718932309', '1559720999203', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559718950969', '1559721001432', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559718554960', '1559721034344', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559719214824', '1559721058630', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559718788211', '1559721109204', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559717998381', '1559721128895', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559719049892', '1559721230171', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559719082912', '1559721359895', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559716117417', '1559721425867', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559719346920', '1559721461191', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559719551572', '1559721524935', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559719481172', '1559721527183', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559718361389', '1559721529432', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559718719940', '1559721562412', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559719118122', '1559721623871', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559718851920', '1559721659427', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559719415120', '1559721689963', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559719613228', '1559721714204', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559719577961', '1559721722895', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559718029278', '1559721758184', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559719874946', '1559721826415', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559717684911', '1559721920935', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559719973855', '1559721956195', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559720072843', '1559721958422', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559719487800', '1559721986798', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559720204971', '1559722077231', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559719148965', '1559722154195', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559719019220', '1559722158582', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559717691373', '1559722253194', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559720174231', '1559722316827', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559719778192', '1559722354384', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559719511892', '1559722418221', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559720768203', '1559722580906', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559720336911', '1559722649183', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559721034344', '1559722943914', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559721109204', '1559722946235', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559721128895', '1559723108946', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559718587968', '1559723276166', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559721230171', '1559723408234', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559721001432', '1559723434683', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559721527183', '1559723448935', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559721461191', '1559723570866', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559720999203', '1559723674394', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559721529432', '1559723676690', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559721722895', '1559723735962', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559720171924', '1559723768906', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559721826415', '1559723801938', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559721920935', '1559723834878', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559721058630', '1559723837138', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559720042172', '1559723900858', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559722154195', '1559723966926', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559721956195', '1559723969160', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559721958422', '1559724002289', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559721562412', '1559724068255', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559721986798', '1559724098749', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559722077231', '1559724105596', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559720963875', '1559724125426', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559721623871', '1559724167268', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559721689963', '1559724230849', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559721425867', '1559724263849', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559721659427', '1559724329838', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559721524935', '1559724365186', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559722580906', '1559724431250', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559722158582', '1559724466398', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559723408234', '1559725658907', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559723801938', '1559725665553', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559722649183', '1559725667765', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559721714204', '1559725671033', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559723276166', '1559725678713', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559722943914', '1559728874714', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559722316827', '1559730202407', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559730202407', '1559732547588', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559732547588', '1559735559332', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559735559332', '1559737740657', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559737740657', '1559739741553', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559739741553', '1559744121677', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559744121677', '1559747167615', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559747167615', '1559750150706', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559750150706', '1559753436394', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559753436394', '1559755645201', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559755645201', '1559757671429', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559757671429', '1559760052845', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559760052845', '1559763031583', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559763031583', '1559765336106', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559765336106', '1559767246773', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559767246773', '1559769895502', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559769895502', '1559772532210', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559772532210', '1559774718974', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559774718974', '1559777308366', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559777308366', '1559779171793', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559779171793', '1559782847918', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559782847918', '1559785160040', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559785160040', '1559787807750', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559787807750', '1559795901541', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559795901541', '1559797874951', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559797874951', '1559807097416', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559807097416', '1559810662511', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559810662511', '1559813242048', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559813242048', '1559816219725', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559816219725', '1559821203818', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559821203818', '1559825487248', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559825487248', '1559828198669', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559828198669', '1559831191786', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559831191786', '1559834480761', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559834480761', '1559837038221', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559837038221', '1559845870069', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559845870069', '1559849810194', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559849810194', '1559856244075', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559856244075', '1559858879619', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559858879619', '1559862094925', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559862094925', '1559864522569', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559864522569', '1559866391438', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559866391438', '1559869568184', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559724431250', '1559871281969', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559869568184', '1559871903483', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559871903483', '1559874855833', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559874855833', '1559876996440', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559876996440', '1559878827906', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559878827906', '1559880746264', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559880746264', '1559884319060', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559884319060', '1559887758719', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559887758719', '1559889961974', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559889961974', '1559892064084', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559892064084', '1559895505955', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559895505955', '1559902806549', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559902806549', '1559905014224', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559905014224', '1559907010650', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559907010650', '1559908984080', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559908984080', '1559910895858', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559910895858', '1559912865935', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559912865935', '1559915663232', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559915663232', '1559918132690', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559918132690', '1559919988355', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559919988355', '1559922425946', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559922425946', '1559924549996', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559924549996', '1559927037114', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559927037114', '1559929458173', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559929458173', '1559931693315', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559931693315', '1559933977992', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559933977992', '1559935812737', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559935812737', '1559938050155', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559938050155', '1559940192888', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559940192888', '1559942446794', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559942446794', '1559945913926', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559945913926', '1559949660488', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559949660488', '1559951500741', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559951500741', '1559953561035', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559953561035', '1559955885266', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559955885266', '1559957820189', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559957820189', '1559960152113', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559871281969', '1559961517274', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559960152113', '1559963062740', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559963062740', '1559965136267', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559965136267', '1559967180093', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559967180093', '1559969229320', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559969229320', '1559973096971', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559973096971', '1559978915985', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559978915985', '1559984750368', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559984750368', '1559987360653', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559987360653', '1559989161326', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559989161326', '1559991018142', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559991018142', '1559993045411', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1559993045411', '1560035008905', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560035008905', '1560039611242', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560039611242', '1560042731900', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560042731900', '1560045979075', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560045979075', '1560048018498', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560048018498', '1560050233866', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560050233866', '1560054341232', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560054341232', '1560067599592', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560067599592', '1560069473941', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560069473941', '1560071315409', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560071315409', '1560074343649', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560074343649', '1560076541485', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560076541485', '1560078698556', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560078698556', '1560080711578', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560080711578', '1560083199802', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560083199802', '1560087440260', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560087440260', '1560091491509', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560091491509', '1560114624291', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560114624291', '1560121894107', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1559724365186', '1560126941951', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560126941951', '1560128910917', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560128910917', '1560131644414', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1559725665553', '1560132905094', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1559723837138', '1560132909466', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560131644414', '1560133616681', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560132905094', '1560136743943', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560133616681', '1560145867351', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560136743943', '1560148611915', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560148611915', '1560150509402', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560121894107', '1560152031841', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560150509402', '1560153548714', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560152031841', '1560154286836', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560145867351', '1560154642140', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560154286836', '1560156387794', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560154642140', '1560156621085', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560153548714', '1560157702354', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1559725671033', '1560160546887', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1559721359895', '1560160548015', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560157702354', '1560160549155', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1559725667765', '1560160552495', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1559723768906', '1560160556823', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1559723448935', '1560160579907', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1559961517274', '1560160598603', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1559723966926', '1560160601903', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1559723969160', '1560160641555', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560156621085', '1560160673403', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1559723834878', '1560160683408', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1559723735962', '1560160685640', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1559724466398', '1560160687795', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1559728874714', '1560160703095', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1559724230849', '1560160710832', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1559723900858', '1560160715167', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1559723108946', '1560160721894', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560132909466', '1560160739436', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1559724068255', '1560160799984', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1559725678713', '1560160804376', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1559724098749', '1560160827416', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1559723674394', '1560160840686', '1', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1559724002289', '1560160883496', '2', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1559724167268', '1560160904472', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1559724125426', '1560160940752', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1559725658907', '1560160955056', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1559723676690', '1560161047445', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1559723434683', '1560161068305', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1559723570866', '1560161228933', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1559724105596', '1560161291645', '2', '4');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1559724263849', '1560161409333', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1559724329838', '1560161506134', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1559722253194', '1560161534774', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1559722946235', '1560161556742', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560156387794', '1560161851538', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1559722354384', '1560161945043', '1', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560160546887', '1560162419113', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1559722418221', '1560162460929', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560160556823', '1560162478489', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560160715167', '1560162521429', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560160673403', '1560162572061', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560160904472', '1560162714941', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560160739436', '1560162740358', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560160799984', '1560162887582', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560161047445', '1560163046111', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560160549155', '1560163135227', '1', '4');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560160940752', '1560163288099', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560161556742', '1560163412428', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560160687795', '1560163602749', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560160721894', '1560163676389', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560160552495', '1560163728157', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560160703095', '1560163730325', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560160601903', '1560163734737', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560161534774', '1560163736937', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560160685640', '1560163738080', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560160548015', '1560163742477', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560160955056', '1560163747957', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560160710832', '1560163750189', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560160804376', '1560163753477', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560161945043', '1560163777657', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560162521429', '1560164433195', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560162460929', '1560164537736', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560162478489', '1560164550915', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560162740358', '1560164747824', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560162887582', '1560164813824', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560162572061', '1560164981041', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560163412428', '1560165352782', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560163676389', '1560165584899', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560163288099', '1560165657491', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560163602749', '1560165737819', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560163046111', '1560165756539', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560163135227', '1560165972140', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560163777657', '1560165999600', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560164433195', '1560166340605', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560164537736', '1560166351565', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560164550915', '1560166578194', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560164813824', '1560166629894', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560164747824', '1560166651854', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560164981041', '1560166786135', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560165584899', '1560167441781', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560165657491', '1560167610001', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560165352782', '1560167695809', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560165756539', '1560167768450', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560165737819', '1560167804730', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560166351565', '1560168159979', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560165999600', '1560168230387', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560166340605', '1560168262300', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560165972140', '1560168374528', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560166629894', '1560168437236', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560166651854', '1560168554936', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560166578194', '1560168704537', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560166786135', '1560168829925', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560167441781', '1560169528412', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560162714941', '1560169544892', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560167768450', '1560169615312', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560168159979', '1560170000249', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560168230387', '1560170142197', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560168262300', '1560170178537', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560167610001', '1560170193910', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560168437236', '1560170238986', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560167695809', '1560170354486', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560168554936', '1560170599795', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560168704537', '1560170679063', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560168829925', '1560170878124', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560167804730', '1560171104700', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560169615312', '1560171522682', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560169528412', '1560171854899', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560170000249', '1560171909847', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560170142197', '1560171993488', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560170238986', '1560172041868', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560170178537', '1560172240964', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560170354486', '1560172361993', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560170599795', '1560172412597', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560170679063', '1560172522625', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560170878124', '1560172930642', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560171104700', '1560173158331', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560171522682', '1560173509276', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560163747957', '1560173626976', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560171854899', '1560173683065', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560171909847', '1560173838157', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560172041868', '1560173868945', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560171993488', '1560173992186', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560172240964', '1560174075774', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560172361993', '1560174181382', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560172412597', '1560174363931', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560172522625', '1560174658800', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560172930642', '1560174890848', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560170193910', '1560175066905', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560173158331', '1560175235193', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560173838157', '1560175639963', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560173992186', '1560175898500', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560173868945', '1560176027152', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560174075774', '1560176144840', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560173509276', '1560176198777', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560174363931', '1560176286789', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560174658800', '1560176735566', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560174890848', '1560176900535', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560174181382', '1560176921483', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560173683065', '1560177255920', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560175235193', '1560177271280', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560175639963', '1560177553977', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560175898500', '1560177744257', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560168374528', '1560177797025', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560176027152', '1560178088514', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560176286789', '1560178142443', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560175066905', '1560178396584', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560176144840', '1560178623140', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560176735566', '1560178666080', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1559686565670', '1560178920121', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560176900535', '1560179109326', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560176921483', '1560179132446', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560177271280', '1560179317286', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560177553977', '1560179359095', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560177255920', '1560179652791', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560177744257', '1560179781432', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560178088514', '1560180107049', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560178623140', '1560180451346', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560178142443', '1560180610834', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560178666080', '1560180706543', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560178920121', '1560180721983', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560179109326', '1560181077260', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560178396584', '1560181093732', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560179132446', '1560181156440', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560179359095', '1560181165240', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560176198777', '1560181693225', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560179781432', '1560181808706', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560179317286', '1560181876914', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560180107049', '1560181913246', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560180451346', '1560182305992', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560179652791', '1560182343320', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560180706543', '1560182585308', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560180610834', '1560182595209', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560180721983', '1560182652397', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560177797025', '1560182945054', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560181077260', '1560183045094', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560181093732', '1560183145207', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560181165240', '1560183337695', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560181156440', '1560183355288', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560181693225', '1560183648985', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560181913246', '1560183713913', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560181808706', '1560183718293', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560181876914', '1560183731432', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560182343320', '1560184162718', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560182585308', '1560184391435', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560182595209', '1560184478435', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560182305992', '1560184554255', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560182652397', '1560184566323', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560182945054', '1560184765532', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560183045094', '1560184960192', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560183355288', '1560185168049', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560183337695', '1560185234118', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560183713913', '1560185520086', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560183648985', '1560185534365', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560183731432', '1560185542074', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560173626976', '1560185547622', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560183718293', '1560185598194', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560184162718', '1560186055837', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560183145207', '1560186093207', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560184391435', '1560186293376', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560184478435', '1560186320908', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560184566323', '1560186376976', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560184554255', '1560186463905', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560185234118', '1560187040250', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560184960192', '1560187075478', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560185168049', '1560187203091', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560185520086', '1560187321847', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560185534365', '1560187418696', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560185598194', '1560187813545', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560186055837', '1560187994013', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560185542074', '1560188116062', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560186376976', '1560188178758', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560184765532', '1560188245890', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560186463905', '1560188295370', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560186320908', '1560188315210', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560185547622', '1560188408699', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560186293376', '1560188572547', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560187040250', '1560188847564', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560187075478', '1560188900413', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560187203091', '1560189007101', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560187321847', '1560189124761', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560186093207', '1560189258941', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560162419113', '1560189279861', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560187418696', '1560189362410', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560187994013', '1560189922243', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560188178758', '1560189981664', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560187813545', '1560190080684', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560188295370', '1560190184052', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560188116062', '1560190187352', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560188315210', '1560190292961', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560188572547', '1560190464529', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560188408699', '1560190481030', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560188847564', '1560190648270', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560188245890', '1560190759378', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560188900413', '1560190798966', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560189124761', '1560190929807', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560189007101', '1560190976035', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560189362410', '1560191179584', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560189922243', '1560191737209', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560189981664', '1560191788978', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560190080684', '1560191912178', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560190184052', '1560192095826', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560163730325', '1560192111266', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560190187352', '1560192120046', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560190292961', '1560192206955', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560190464529', '1560192357635', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560190648270', '1560192450023', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560190481030', '1560192588660', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560190929807', '1560192731640', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560190798966', '1560192759141', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560190759378', '1560192802041', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560190976035', '1560193490635', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560191788978', '1560193602835', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560191737209', '1560193718340', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560191912178', '1560193809620', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560191179584', '1560194001029', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560192206955', '1560194010909', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560192120046', '1560194120917', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560192357635', '1560194238597', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560192450023', '1560194252946', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560192095826', '1560194498254', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560192588660', '1560194534562', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560192731640', '1560194536726', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560192759141', '1560194565303', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560192802041', '1560194718183', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560193490635', '1560195335317', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560193602835', '1560195406777', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560193718340', '1560195649926', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560193809620', '1560195720305', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560194010909', '1560195817114', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560194252946', '1560196053611', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560194238597', '1560196143860', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560194001029', '1560196151539', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560194536726', '1560196337460', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560194565303', '1560196366048', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560194498254', '1560196372636', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560194534562', '1560196624505', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560195406777', '1560197208611', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560195335317', '1560197350479', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560194718183', '1560197358199', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560195720305', '1560197521000', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560194120917', '1560197603496', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560169544892', '1560197633156', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560160641555', '1560197635476', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560195649926', '1560197678336', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560195817114', '1560197759705', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560196053611', '1560197866377', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560196143860', '1560198101842', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560196151539', '1560198170022', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560196366048', '1560198291002', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560196372636', '1560198361370', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560196337460', '1560198414230', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560196624505', '1560199088465', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560197350479', '1560199261173', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560197521000', '1560199361317', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560197208611', '1560199376702', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560197603496', '1560199525178', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560189258941', '1560199543859', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560197866377', '1560199670366', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560189279861', '1560199676967', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560197678336', '1560199696766', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560197358199', '1560199723178', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560197759705', '1560199900267', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560198101842', '1560200129083', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560198170022', '1560200224821', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560198361370', '1560200283060', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560198291002', '1560200372200', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560198414230', '1560200701065', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560199361317', '1560201172971', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560199376702', '1560201302763', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560199261173', '1560201356652', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560199696766', '1560201640400', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560199670366', '1560201736149', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560199900267', '1560201761429', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560200224821', '1560202034234', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560200283060', '1560202126686', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560200129083', '1560202180554', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560199088465', '1560202485279', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560199723178', '1560202578740', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560200701065', '1560202613947', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560199525178', '1560202690988', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560200372200', '1560202724020', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560201172971', '1560203005556', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560201302763', '1560203111165', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560201356652', '1560203267374', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560201640400', '1560203628130', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560201761429', '1560203848167', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560202126686', '1560204041744', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560202034234', '1560204119844', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560201736149', '1560204134164', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560202180554', '1560204351993', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560202613947', '1560204423433', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560202724020', '1560204571950', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560202485279', '1560204974587', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560203111165', '1560205019615', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560203267374', '1560205179163', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560203005556', '1560205203335', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560202578740', '1560205334252', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560203628130', '1560205433224', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560203848167', '1560205689509', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560202690988', '1560205941418', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560204134164', '1560205953506', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560204119844', '1560206044826', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560204423433', '1560206242843', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560204041744', '1560206377011', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560204571950', '1560206427591', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560204351993', '1560206766469', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560205019615', '1560206824700', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560205179163', '1560207024957', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560205203335', '1560207032577', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560205334252', '1560207387894', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560205689509', '1560207537463', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560205433224', '1560207574883', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560205953506', '1560207755327', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560206044826', '1560207975308', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560206242843', '1560208058924', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560205941418', '1560208195257', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560206427591', '1560208307465', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560206377011', '1560208682618', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560206766469', '1560208828931', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560207032577', '1560208936647', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560207024957', '1560209098408', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560207387894', '1560209310684', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560207537463', '1560209395385', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560207755327', '1560209557093', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560207574883', '1560209656102', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560163750189', '1560209997091', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560208307465', '1560210286375', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560197633156', '1560210331460', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560208195257', '1560210350212', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560208058924', '1560210360136', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560204974587', '1560210464624', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560199543859', '1560210477804', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560208682618', '1560210505296', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560160579907', '1560210536104', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560161506134', '1560210907882', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560209098408', '1560210916669', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560163728157', '1560210953042', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560160883496', '1560210993742', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560163738080', '1560210995930', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560160683408', '1560210997050', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560197635476', '1560211014641', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560161851538', '1560211025630', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560208828931', '1560211069650', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560160827416', '1560211129038', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560209310684', '1560211134538', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560207975308', '1560211270972', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560163736937', '1560211274219', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560163742477', '1560211300593', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560161228933', '1560211399635', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560163753477', '1560211400695', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560209395385', '1560211410575', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560163734737', '1560211547043', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560192111266', '1560211714184', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560161409333', '1560211728492', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1559721758184', '1560211732912', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560161291645', '1560211775784', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560160598603', '1560211783540', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560209997091', '1560211797832', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560160840686', '1560211803344', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560209656102', '1560211818712', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560208936647', '1560211934173', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560199676967', '1560211935313', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560161068305', '1560212026642', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560209557093', '1560212115698', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560210350212', '1560212247710', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560210360136', '1560212265290', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560210286375', '1560212328038', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560210477804', '1560212440284', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560210331460', '1560212513899', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560210464624', '1560212536995', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560210916669', '1560212747321', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560211069650', '1560212874792', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560211014641', '1560212931834', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560210993742', '1560212998932', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560210907882', '1560213012172', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560210997050', '1560213014372', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560211274219', '1560213140832', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560211134538', '1560213183873', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560211300593', '1560213221101', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560211399635', '1560213227733', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560210953042', '1560213291549', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560210505296', '1560213322309', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560211410575', '1560213330062', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560211400695', '1560213336687', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560211129038', '1560213501646', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560211547043', '1560213616018', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560211270972', '1560213632546', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560210536104', '1560213658906', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560211797832', '1560213771026', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560211818712', '1560213929515', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560212026642', '1560213945983', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560211803344', '1560213991063', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560211714184', '1560214003203', '2', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560212115698', '1560214133024', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560212328038', '1560214204618', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560211935313', '1560214217766', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560212440284', '1560214268292', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560212536995', '1560214441001', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560210995930', '1560214804038', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560211025630', '1560214818298', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560212931834', '1560214822718', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560213221101', '1560215060275', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560212247710', '1560215097687', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560212513899', '1560215103215', '2', '4');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560213291549', '1560215141743', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560212747321', '1560215161495', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560212874792', '1560215165895', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560213336687', '1560215194515', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560211775784', '1560215337512', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560213501646', '1560215415644', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560211728492', '1560215423352', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560212265290', '1560215460704', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560213658906', '1560215492592', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560213012172', '1560215524518', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560211934173', '1560215549861', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560211783540', '1560215562028', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560213616018', '1560215613762', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560213014372', '1560215648901', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560213183873', '1560215654293', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560213771026', '1560215734561', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560214822718', '1560216692712', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560215141743', '1560217193110', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560214441001', '1560218766211', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560216692712', '1560219072020', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560213991063', '1560219278697', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560215648901', '1560219396465', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560215194515', '1560220688922', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560215460704', '1560220795691', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560212998932', '1560220822099', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560215562028', '1560220871591', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560215103215', '1560220973879', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560214268292', '1560220991459', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560215337512', '1560221017859', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560217193110', '1560221023331', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560219278697', '1560221570085', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560219072020', '1560222575481', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560220871591', '1560222725101', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560221023331', '1560222881258', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560220822099', '1560222903198', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560220973879', '1560222914250', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560221017859', '1560222931830', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560220688922', '1560223036350', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560214003203', '1560223058326', '2', '1');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560220795691', '1560223372975', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560214804038', '1560223501636', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560221570085', '1560224171622', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560222881258', '1560224753591', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560222914250', '1560224845820', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560222725101', '1560224933849', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560223036350', '1560225215410', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560223501636', '1560225681847', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560222903198', '1560225726927', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560223058326', '1560225839148', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560224171622', '1560226335313', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560223372975', '1560226414438', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560224753591', '1560226634434', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560224933849', '1560226898423', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560225215410', '1560227092016', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560225681847', '1560227915927', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560226335313', '1560228338360', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560226634434', '1560228534136', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560226898423', '1560228809121', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560227915927', '1560229760600', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560227092016', '1560229853012', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560228338360', '1560230156621', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560228809121', '1560230610915', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560228534136', '1560230785823', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560224845820', '1560230973896', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560230156621', '1560239834463', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560229853012', '1560239837783', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560215492592', '1560239838851', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560214818298', '1560239840011', '2', '3');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560215097687', '1560239841063', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560222931830', '1560239845471', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560230785823', '1560239847711', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560215613762', '1560239852043', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560213632546', '1560239855403', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560230973896', '1560239931231', '1', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560219396465', '1560239933467', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560222575481', '1560239955491', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560218766211', '1560239958873', '2', '1');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560230610915', '1560239986283', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560215060275', '1560239987324', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560215415644', '1560239989612', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560229760600', '1560239992876', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560215734561', '1560240087491', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560226414438', '1560240122712', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560213140832', '1560240123841', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560214204618', '1560240127032', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560225839148', '1560240158978', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560225726927', '1560240240332', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560213330062', '1560241161074', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560213929515', '1560241374463', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560215654293', '1560241392083', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560239852043', '1560241729705', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560211732912', '1560241884845', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560241374463', '1560243340214', '2', '1');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560239987324', '1560243901163', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560241884845', '1560244235564', '2', '2');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560215161495', '1560245282779', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560240123841', '1560245304799', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560239955491', '1560245308079', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560239855403', '1560245430191', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560241392083', '1560245451111', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560239841063', '1560245497212', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560240122712', '1560245636980', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560240127032', '1560245720681', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560243901163', '1560245796561', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560240158978', '1560245902101', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560239834463', '1560245998949', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560220991459', '1560246012101', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560239837783', '1560246035217', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560239847711', '1560246277210', '2', '1');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560245998949', '1560248015204', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560246035217', '1560248186872', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560246277210', '1560248462941', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560245304799', '1560248911698', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560214217766', '1560248924910', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560245308079', '1560248996359', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560239992876', '1560249663053', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560245636980', '1560249847833', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560248015204', '1560249927061', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560248186872', '1560250038082', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560248462941', '1560250417611', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560245430191', '1560280744357', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560250417611', '1560284251096', '1', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560280744357', '1560292633056', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560246012101', '1560297082481', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560213322309', '1560297800815', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560249847833', '1560297804223', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560284251096', '1560297808575', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560214133024', '1560297864595', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560239989612', '1560297874515', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560215549861', '1560298081204', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560250038082', '1560298085600', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560239958873', '1560298106480', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560249927061', '1560298164820', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560213945983', '1560298395829', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560245282779', '1560298481577', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560239840011', '1560298569618', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560215524518', '1560298658706', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560215165895', '1560298676246', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560241161074', '1560298741194', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560239845471', '1560298742346', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560245902101', '1560298743486', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560213227733', '1560298744567', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560243340214', '1560298746706', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560239986283', '1560298747894', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560248924910', '1560298751087', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560297082481', '1560298923835', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560239931231', '1560299064591', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560292633056', '1560299065703', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560245497212', '1560299212071', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560239933467', '1560299294468', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560215423352', '1560299356088', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560245796561', '1560299529897', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560248996359', '1560299604697', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560240240332', '1560299726773', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560297808575', '1560299810394', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560297874515', '1560299875294', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560297864595', '1560299879694', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560298106480', '1560299963322', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560240087491', '1560300058982', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560245720681', '1560300100758', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560241729705', '1560300106242', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560298085600', '1560300116191', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560298081204', '1560300234919', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560298658706', '1560300594664', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560298751087', '1560300599024', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560298164820', '1560300619924', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560298746706', '1560300627664', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560298481577', '1560300646364', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560298741194', '1560300710124', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560297804223', '1560300727712', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560298676246', '1560300743192', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560239838851', '1560300746465', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560298747894', '1560300822333', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560298395829', '1560300824505', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560245451111', '1560300832241', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560249663053', '1560300920221', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560298923835', '1560301109498', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560299294468', '1560301120402', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560299212071', '1560301224898', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560299529897', '1560301493315', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560299726773', '1560301642658', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560299810394', '1560301717784', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560299879694', '1560301824127', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560298744567', '1560301940735', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560300106242', '1560302018089', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560298743486', '1560302937584', '2', '1');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560299875294', '1560303284141', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560300710124', '1560303314608', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560300743192', '1560303315740', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560300234919', '1560303338029', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560300627664', '1560303351229', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560300646364', '1560303554698', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560300727712', '1560303560198', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560301642658', '1560303562426', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560301493315', '1560303618581', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560298569618', '1560303625107', '2', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560301717784', '1560303702186', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560301940735', '1560303811908', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560302018089', '1560303845960', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560301224898', '1560303979129', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560300619924', '1560303987909', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560301824127', '1560304050844', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560299065703', '1560304221110', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560303315740', '1560305235535', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560303314608', '1560305317996', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560303562426', '1560305400572', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560303560198', '1560305422488', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560303618581', '1560305443427', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560303338029', '1560305524841', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560303554698', '1560305527052', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560303351229', '1560305566605', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560300599024', '1560305619453', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560299064591', '1560305622771', '2', '1');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560303702186', '1560305623821', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560303811908', '1560305696441', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560299356088', '1560305711844', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560299604697', '1560305736049', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560303625107', '1560305742601', '2', '1');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560299963322', '1560305746961', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560303845960', '1560305803101', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560303987909', '1560305817441', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560300116191', '1560305840520', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560301120402', '1560305872441', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560303979129', '1560305924118', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560244235564', '1560305937318', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560300824505', '1560306056198', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560300822333', '1560306061586', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560301109498', '1560306090198', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560300594664', '1560306116585', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560298742346', '1560306123226', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560304221110', '1560306380596', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560300058982', '1560306791985', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560303284141', '1560306860193', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560304050844', '1560307041682', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560305235535', '1560307191333', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560305527052', '1560307379399', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560305422488', '1560307410159', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560305566605', '1560307414627', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560305317996', '1560307442007', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560305696441', '1560307497255', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560305742601', '1560307588401', '2', '4');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560305736049', '1560307611516', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560305746961', '1560307642329', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560305872441', '1560307690696', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560305924118', '1560307729229', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560305840520', '1560307739036', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560305803101', '1560307768884', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560305817441', '1560307783124', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560305622771', '1560307790825', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560305623821', '1560307851313', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560305443427', '1560307993324', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560306116585', '1560308007553', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560306123226', '1560308017361', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560305400572', '1560308083413', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560306056198', '1560308268202', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560305619453', '1560308512391', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560305524841', '1560308528907', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560306061586', '1560308702687', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560306860193', '1560308709314', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560306380596', '1560308716967', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560306791985', '1560308935896', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560307642329', '1560309469402', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560307414627', '1560309515522', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560307497255', '1560309531002', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560307611516', '1560309596991', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560307191333', '1560309601343', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560307768884', '1560309638751', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560307790825', '1560309719043', '2', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560307783124', '1560309762033', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560307690696', '1560309807039', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560307410159', '1560309820271', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560308007553', '1560309821359', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560307851313', '1560309843351', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560307993324', '1560309844451', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560307739036', '1560309950048', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560307729229', '1560309969820', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560306090198', '1560310032560', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560308268202', '1560310247049', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560308083413', '1560310292149', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560308512391', '1560310332905', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560308528907', '1560310355997', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560307588401', '1560310409865', '2', '4');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560308716967', '1560310518786', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560307379399', '1560310519894', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560305711844', '1560310529794', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560308709314', '1560310612282', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560308017361', '1560310716782', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560307041682', '1560310792711', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560308935896', '1560310793818', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560307442007', '1560310966512', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560308702687', '1560311112839', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560305937318', '1560311253608', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560309469402', '1560311273368', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560309515522', '1560311407605', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560309638751', '1560311467025', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560309601343', '1560311477966', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560309843351', '1560311645232', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560309596991', '1560311672714', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560309821359', '1560311679273', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560309820271', '1560311696905', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560309807039', '1560311709110', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560309844451', '1560311733293', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560309719043', '1560311755202', '2', '1');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560309969820', '1560311825569', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560309531002', '1560311989533', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560310292149', '1560312099614', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560310032560', '1560312114875', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560310332905', '1560312207287', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560310247049', '1560312298535', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560309950048', '1560312312847', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560310519894', '1560312320563', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560310529794', '1560312344748', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560310409865', '1560312389876', '2', '4');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560310355997', '1560312417504', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560310716782', '1560312557124', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560310518786', '1560312596627', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560310612282', '1560312621985', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560310792711', '1560312763961', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560310966512', '1560312803529', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560310793818', '1560312877141', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560311112839', '1560312971825', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560311467025', '1560313276446', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560311407605', '1560313297335', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560311477966', '1560313298574', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560311645232', '1560313453523', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560311273368', '1560313536182', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560311709110', '1560313584502', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560311696905', '1560313593402', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560311679273', '1560313595516', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560311672714', '1560313636172', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560311733293', '1560313679020', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560311989533', '1560313821059', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560312114875', '1560314028837', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560311755202', '1560314044209', '2', '3');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560312320563', '1560314128917', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560312312847', '1560314163166', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560312207287', '1560314166346', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560312417504', '1560314313734', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560311825569', '1560314370894', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560312557124', '1560314383054', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560309762033', '1560314443542', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560312596627', '1560314484214', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560312298535', '1560314584291', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560312389876', '1560314606363', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560312803529', '1560314660251', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560312763961', '1560314703111', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560312877141', '1560314809918', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560313276446', '1560315078208', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560312621985', '1560315136568', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560313453523', '1560315259665', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560313297335', '1560315292745', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560313298574', '1560315358821', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560312971825', '1560315402753', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560313593402', '1560315414909', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560313636172', '1560315508333', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560313584502', '1560315587490', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560313595516', '1560315673299', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560313679020', '1560315893359', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560314128917', '1560315937307', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560314028837', '1560315975839', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560314163166', '1560316082575', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560313536182', '1560316201406', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560314313734', '1560316224456', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560314484214', '1560316289344', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560314383054', '1560316314652', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560314443542', '1560316323504', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560314370894', '1560316399304', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560314660251', '1560316466453', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560314606363', '1560316522493', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560314166346', '1560316597293', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560314703111', '1560316634794', '2', '2');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560312099614', '1560316796446', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560315136568', '1560316979151', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560315259665', '1560317066987', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560311253608', '1560317089103', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560315078208', '1560317156147', '2', '3');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560315414909', '1560317312295', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560315508333', '1560317324456', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560314809918', '1560317345296', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560315292745', '1560317366095', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560315587490', '1560317452037', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560314584291', '1560317680822', '1', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560315975839', '1560317782069', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560315893359', '1560317791947', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560315673299', '1560317806425', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560315358821', '1560317838208', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560316201406', '1560318019663', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560316289344', '1560318090026', '2', '4');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560316082575', '1560318121906', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560316224456', '1560318139635', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560315937307', '1560318172546', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560316466453', '1560318272622', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560316314652', '1560318278336', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560316597293', '1560318468411', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560316399304', '1560318487195', '2', '3');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560316323504', '1560318547650', '2', '2');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560316796446', '1560318760138', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560317066987', '1560318867668', '2', '2');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560316979151', '1560318930349', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560315402753', '1560319021989', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560317312295', '1560319139821', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560317324456', '1560319181177', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560313821059', '1560319188863', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560317156147', '1560319305721', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560312344748', '1560319377145', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560317366095', '1560319504603', '2', '4');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560317782069', '1560319584053', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560317791947', '1560319626794', '2', '1');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560317838208', '1560319641431', '2', '2');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560317345296', '1560319772247', '2', '4');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560318090026', '1560319901932', '1', '2');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560318121906', '1560319923806', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560318139635', '1560319940917', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560318172546', '1560319979822', '2', '1');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560318272622', '1560320082089', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560318278336', '1560320119848', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560317680822', '1560320154724', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560317806425', '1560320157105', '2', '3');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560318019663', '1560320235071', '2', '1');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560318487195', '1560320324327', '2', '1');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560317452037', '1560320356039', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560318468411', '1560320362538', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560318547650', '1560320366139', '2', '1');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560318760138', '1560320688203', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560316522493', '1560320755656', '2', '4');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560319021989', '1560320891990', '2', '1');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560316634794', '1560320910780', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560319139821', '1560320960191', '2', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560318930349', '1560321016620', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560318867668', '1560321101975', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560319188863', '1560321116032', '2', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560319181177', '1560321221628', '2', '2');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560319504603', '1560321340542', '2', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560319584053', '1560321466991', '2', '1');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560319641431', '1560321471349', '2', '4');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560314044209', '1560321976295', '2', '1');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560319772247', '1560322049915', '2', '2');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560320235071', '1560322093030', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560319923806', '1560322132626', '2', '3');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560320119848', '1560322191851', '2', '1');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560319901932', '1560322207570', '2', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560319979822', '1560322255632', '2', '3');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560319940917', '1560322302892', '2', '2');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560320157105', '1560322327382', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560320324327', '1560322408560', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560320082089', '1560322473428', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560320356039', '1560322485549', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560320362538', '1560322494537', '2', '2');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560320688203', '1560322570320', '2', '3');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560319305721', '1560322572544', '2', '1');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560320755656', '1560322775957', '2', '1');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560319377145', '1560322797938', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560319626794', '1560322802346', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560320910780', '1560322807878', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560320366139', '1560322812238', '2', '3');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560320891990', '1560322831025', '2', '2');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560320960191', '1560322933494', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560321101975', '1560322946602', '2', '4');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560320154724', '1560323063254', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560321116032', '1560323204031', '2', '2');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560321340542', '1560323264612', '2', '1');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560321466991', '1560323312931', '2', '3');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560317089103', '1560323336032', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560321221628', '1560323364678', '2', '3');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560321471349', '1560323488708', '2', '2');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560321976295', '1560323873643', '2', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560322093030', '1560323893484', '2', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560322132626', '1560323937472', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560322191851', '1560324017812', '2', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560322049915', '1560324036778', '2', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560322255632', '1560324056587', '2', '3');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560322207570', '1560324125854', '2', '3');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560322302892', '1560324199546', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560322327382', '1560324225694', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560322473428', '1560324301815', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560322408560', '1560324308469', '2', '4');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560322485549', '1560324371115', '2', '3');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560322494537', '1560324443723', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560322572544', '1560324456696', '2', '1');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560322570320', '1560324569124', '2', '4');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560322807878', '1560324615352', '2', '2');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560322797938', '1560324629604', '2', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560322831025', '1560324640437', '2', '1');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560322812238', '1560324734161', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560322946602', '1560324755001', '2', '2');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560322775957', '1560324797872', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560322802346', '1560324838521', '2', '3');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560323063254', '1560324874901', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560323204031', '1560325006881', '2', '4');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560322933494', '1560325032189', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560323312931', '1560325113638', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560323364678', '1560325165113', '2', '4');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560323264612', '1560325182877', '2', '2');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560323336032', '1560325231310', '2', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560323488708', '1560325408366', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560321016620', '1560325525092', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560323873643', '1560325786870', '2', '3');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560324036778', '1560325849715', '2', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560323937472', '1560325858438', '2', '3');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560323893484', '1560326270938', '2', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560324371115', '1560326311342', '2', '3');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560324308469', '1560326355330', '2', '1');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560324640437', '1560326450281', '2', '1');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560324443723', '1560326457175', '2', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560324199546', '1560326480791', '2', '1');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560324056587', '1560326489570', '2', '2');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560324734161', '1560326546809', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560324615352', '1560326583030', '2', '3');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560324125854', '1560326605519', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560324225694', '1560326619513', '2', '3');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560324797872', '1560326624020', '2', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560324456696', '1560326628885', '2', '3');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560324838521', '1560326701644', '2', '1');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560324874901', '1560326702695', '2', '2');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560324569124', '1560326757912', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560324017812', '1560326769634', '2', '3');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560325032189', '1560326834332', '2', '1');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560324755001', '1560326921294', '2', '4');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560325165113', '1560327070284', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560324301815', '1560327127512', '2', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560324629604', '1560327180344', '2', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560325231310', '1560327236842', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560325006881', '1560327267994', '2', '1');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560325408366', '1560327355327', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560325182877', '1560327400035', '2', '2');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560325113638', '1560327574102', '2', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560325786870', '1560327588362', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560325858438', '1560327810590', '2', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560325849715', '1560327838107', '2', '2');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560325525092', '1560327840448', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560326311342', '1560328133181', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560326355330', '1560328167144', '2', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560326450281', '1560328308904', '2', '2');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560326270938', '1560328388319', '2', '2');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560326624020', '1560328430335', '2', '3');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560326546809', '1560328467901', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560326628885', '1560328556613', '2', '1');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560326457175', '1560328589441', '2', '4');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560326769634', '1560328611433', '2', '4');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560326605519', '1560328657885', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560326834332', '1560328672165', '2', '4');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560326480791', '1560328798498', '2', '2');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560326701644', '1560328818312', '2', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560326489570', '1560328821081', '2', '2');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560326757912', '1560328835830', '2', '4');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560326921294', '1560328839122', '2', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560326619513', '1560328860035', '2', '2');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560326583030', '1560328986883', '2', '3');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560327267994', '1560329104227', '2', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560327070284', '1560329121377', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560327400035', '1560329213087', '2', '3');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560327355327', '1560329314454', '2', '2');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560327588362', '1560329389699', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560327127512', '1560329470961', '2', '1');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560326702695', '1560329803793', '2', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560327810590', '1560329843394', '2', '4');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560327840448', '1560330041783', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560328133181', '1560330085833', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560328167144', '1560330177963', '2', '3');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560328388319', '1560330249309', '2', '4');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560327838107', '1560330276050', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560328308904', '1560330307132', '2', '1');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560327574102', '1560330338839', '2', '3');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560328589441', '1560330479864', '2', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560328430335', '1560330505608', '2', '2');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560328467901', '1560330544277', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560328839122', '1560330673018', '2', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560328657885', '1560330684977', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560328835830', '1560330749908', '2', '2');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560328860035', '1560330785000', '2', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560328821081', '1560330800465', '2', '4');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560328798498', '1560330931313', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560329121377', '1560330945613', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560328818312', '1560330997301', '2', '3');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560329213087', '1560331234915', '2', '1');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560329389699', '1560331271203', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560328672165', '1560331509912', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560328611433', '1560331554992', '2', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560328986883', '1560331589128', '2', '1');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560329470961', '1560331733229', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560329843394', '1560331749648', '2', '3');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560328556613', '1560331814536', '2', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560330085833', '1560331925717', '2', '1');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560330177963', '1560331999445', '2', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560330338839', '1560332188615', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560330479864', '1560332339289', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560330544277', '1560332351374', '2', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560330041783', '1560332444891', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560330673018', '1560332503163', '2', '3');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560330505608', '1560332538423', '2', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560330684977', '1560332610931', '2', '4');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560330749908', '1560332845313', '2', '3');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560330997301', '1560333064121', '2', '2');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560330249309', '1560333126877', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560329803793', '1560333188449', '2', '1');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560329314454', '1560333191777', '2', '1');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560330276050', '1560333195160', '2', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560330931313', '1560333197249', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560331554992', '1560333365567', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560331733229', '1560333773643', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560330945613', '1560333792304', '2', '2');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560331814536', '1560333797831', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560331749648', '1560333849532', '1', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560330800465', '1560334729507', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560331925717', '1560334748195', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560333126877', '1560335209152', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560333797831', '1560335708510', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560332538423', '1560335719526', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560333773643', '1560335729430', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560333849532', '1560335730547', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560333064121', '1560335859267', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560332610931', '1560335874635', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560333792304', '1560335884507', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560332351374', '1560336136415', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560334729507', '1560336619321', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560334748195', '1560336719409', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560335209152', '1560337193507', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560335708510', '1560337544404', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560333365567', '1560337555412', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560335730547', '1560337630240', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560335719526', '1560337754549', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560335874635', '1560337790849', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560335729430', '1560337794149', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560335884507', '1560337883289', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560335859267', '1560338291274', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560336619321', '1560338634532', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560336719409', '1560338689480', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560336136415', '1560338912800', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560337193507', '1560339142718', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560337544404', '1560339352806', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560337630240', '1560339504654', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560337754549', '1560339689423', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560337883289', '1560339718003', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560337555412', '1560339809292', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560337790849', '1560339857732', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560337794149', '1560340105228', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560338291274', '1560340327437', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560338634532', '1560340456146', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560338689480', '1560340504534', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560339142718', '1560341059979', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560339352806', '1560341165608', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560339504654', '1560341334996', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560339857732', '1560341715586', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560339689423', '1560341794774', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560338912800', '1560341890510', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560340105228', '1560341946550', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560341165608', '1560342979469', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560341059979', '1560343008049', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560341334996', '1560343257746', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560341715586', '1560343587755', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560340504534', '1560343592156', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560340456146', '1560343752744', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560341946550', '1560343771424', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560341794774', '1560343808864', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560341890510', '1560344483186', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560339809292', '1560344733943', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560342979469', '1560344790031', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560343008049', '1560345361984', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560343771424', '1560345602921', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560343587755', '1560345630441', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560343808864', '1560345648001', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560343257746', '1560345821822', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560344483186', '1560346432356', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560343592156', '1560346645700', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560344790031', '1560346722754', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560343752744', '1560346781029', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560345361984', '1560347384955', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560345630441', '1560347755580', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560345648001', '1560347812800', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560345602921', '1560347937068', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560345821822', '1560348316586', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560346432356', '1560348447462', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560346722754', '1560348767579', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560346645700', '1560349259272', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560347384955', '1560349292305', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560344733943', '1560349591449', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560347755580', '1560349614610', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560346781029', '1560349769678', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560347812800', '1560350028147', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560347937068', '1560350098595', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560348316586', '1560350520980', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560348767579', '1560350929046', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560349259272', '1560351177690', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560349292305', '1560351273323', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560349614610', '1560351521968', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560349769678', '1560351611040', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560339718003', '1560351629808', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560349591449', '1560351758464', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560350098595', '1560352022485', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560350028147', '1560352058793', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560350520980', '1560352505347', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560348447462', '1560352573527', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560350929046', '1560352837572', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560351177690', '1560352997048', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560351273323', '1560353122412', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560351521968', '1560353378769', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560351671331', '1560353498426', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560340327437', '1560353536046', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560351611040', '1560353705434', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560352058793', '1560353948531', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560352022485', '1560354187260', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560352505347', '1560354445777', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560352837572', '1560354640441', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560351758464', '1560354752602', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560352997048', '1560355098039', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560353122412', '1560355321324', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560353498426', '1560355327513', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560353378769', '1560355521524', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560351629808', '1560355574373', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560353705434', '1560355842741', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560353536046', '1560355902117', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560353948531', '1560355936257', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560354187260', '1560355990089', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560354445777', '1560356419115', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560354640441', '1560356443323', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560355327513', '1560357141529', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560355098039', '1560357177053', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560355321324', '1560357304581', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560354752602', '1560357570790', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560355574373', '1560357577418', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560355521524', '1560357609298', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560355936257', '1560357799595', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560355842741', '1560357810607', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560355990089', '1560358054824', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560356443323', '1560358249500', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560356419115', '1560358335289', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560357141529', '1560358984745', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560357304581', '1560359337380', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560357609298', '1560359437548', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560357177053', '1560359519968', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560333197249', '1560359577176', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560357799595', '1560359752093', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560357810607', '1560359781785', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560358054824', '1560359876401', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560358249500', '1560360057910', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560358335289', '1560360237178', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560357577418', '1560360302078', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560357570790', '1560360537455', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560352573527', '1560360593604', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560358984745', '1560360832340', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560359337380', '1560361338266', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560359781785', '1560361591251', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560359437548', '1560361634131', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560360057910', '1560361858567', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560359752093', '1560361959788', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560359519968', '1560362158896', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560360302078', '1560362173136', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560359876401', '1560362185264', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560360237178', '1560362333753', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560360537455', '1560362601021', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560360832340', '1560362642617', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560361591251', '1560363442520', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560361634131', '1560363452460', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560361338266', '1560363695557', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560362185264', '1560364003522', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560362158896', '1560364108050', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560361959788', '1560364113550', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560362333753', '1560364267551', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560362173136', '1560364410539', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560362642617', '1560364451880', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560361858567', '1560364544748', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560362601021', '1560364796653', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560359577176', '1560365015541', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560363442520', '1560365382950', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560363695557', '1560365622729', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560363452460', '1560365788804', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560364003522', '1560365945000', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560364113550', '1560366035434', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560364108050', '1560366125437', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560364267551', '1560366195737', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560364451880', '1560366257828', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560364544748', '1560366358574', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560364410539', '1560366535730', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560364796653', '1560366638010', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560365622729', '1560367493821', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560365382950', '1560367690726', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560331271203', '1560367747886', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560366035434', '1560367928295', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560366257828', '1560368082565', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560366195737', '1560368095495', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560365945000', '1560368099903', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560366358574', '1560368172491', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560365788804', '1560368224159', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560366535730', '1560368447428', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560366125437', '1560368722476', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560366638010', '1560368897385', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560367690726', '1560369574963', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560332444891', '1560369771920', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560367493821', '1560369871980', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560367928295', '1560369970981', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560368172491', '1560369981928', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560368082565', '1560369999388', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560368099903', '1560370022640', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560368224159', '1560370038109', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560360593604', '1560370201957', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560368095495', '1560370522034', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560368447428', '1560370725570', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560365015541', '1560370979687', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560367747886', '1560371020368', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560368897385', '1560371108384', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560368722476', '1560371482361', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560369574963', '1560371629769', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560369981928', '1560371783725', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560369999388', '1560371821714', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560369871980', '1560371826618', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560369970981', '1560371870618', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560370022640', '1560371944362', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560370038109', '1560372000454', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560370522034', '1560372342531', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560371108384', '1560373039969', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560371020368', '1560373121297', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560370725570', '1560373226897', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560369771920', '1560373369946', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560371783725', '1560373587825', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560371821714', '1560373637504', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560371826618', '1560373662551', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560371629769', '1560373680123', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560372000454', '1560374016748', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560371482361', '1560374055208', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560371944362', '1560374157504', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560371870618', '1560374561238', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560373226897', '1560375064994', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560372342531', '1560375169515', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560373121297', '1560375278383', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560373587825', '1560375392831', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560373637504', '1560375447410', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560373680123', '1560375500579', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560373039969', '1560375599608', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560374016748', '1560375985733', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560373662551', '1560376021993', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560374157504', '1560376080261', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560374561238', '1560376702923', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560375064994', '1560376907439', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560373369946', '1560376967967', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560375169515', '1560377097768', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560370201957', '1560377212164', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560375447410', '1560377260863', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560375392831', '1560377315612', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560375599608', '1560377604901', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560375278383', '1560377835906', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560375985733', '1560377841358', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560376080261', '1560377884286', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560376021993', '1560377960174', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560375500579', '1560378053674', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560330307132', '1560378089967', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560376702923', '1560378659768', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560374055208', '1560379044753', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560377260863', '1560379064314', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560377097768', '1560379503515', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560377315612', '1560379600247', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560333188449', '1560379639875', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560376907439', '1560379680583', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560377960174', '1560379869780', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560377841358', '1560380021540', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560378053674', '1560380123836', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560377884286', '1560380194228', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560377604901', '1560380328445', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560378659768', '1560380546213', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560378089967', '1560380611142', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560379044753', '1560380884000', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560377212164', '1560380897107', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560379600247', '1560381408640', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560379503515', '1560381435072', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560379680583', '1560381481260', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560370979687', '1560381517568', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560379869780', '1560381690237', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560377835906', '1560381792597', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560380021540', '1560381895934', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560380123836', '1560381955354', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560379639875', '1560382003774', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560380194228', '1560382141242', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560355902117', '1560382144550', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560380328445', '1560382381039', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560380884000', '1560382735196', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560380546213', '1560383010241', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560381435072', '1560383332466', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560381408640', '1560383438134', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560381481260', '1560383600907', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560381895934', '1560383809944', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560331509912', '1560383815403', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560332503163', '1560383825311', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560331234915', '1560383852811', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560381955354', '1560383951831', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560376967967', '1560384605221', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560381690237', '1560384665742', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560331999445', '1560384672330', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560382381039', '1560384686662', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560332188615', '1560384689982', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560382735196', '1560384691122', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560332339289', '1560384692142', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560330785000', '1560384817538', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560382003774', '1560384914346', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560300746465', '1560384946227', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560300100758', '1560384947306', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560327180344', '1560385066075', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560300832241', '1560385110155', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560333191777', '1560385288391', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560383332466', '1560385362004', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560383010241', '1560385403744', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560383438134', '1560385498400', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560382141242', '1560385588628', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560383825311', '1560385666701', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560381517568', '1560385962537', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560382144550', '1560386100054', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560380897107', '1560386102314', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560329104227', '1560386182534', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560332845313', '1560386226590', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560383809944', '1560386251850', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560383600907', '1560386322243', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560333195160', '1560386380571', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560381792597', '1560386519167', '2', '1');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560383815403', '1560386531249', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560384692142', '1560386533439', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560331589128', '1560386538979', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560384691122', '1560386590690', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560384605221', '1560386597296', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560384689982', '1560386680868', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560384665742', '1560386719392', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560384914346', '1560386856892', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560380611142', '1560386970165', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560384817538', '1560386978967', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560385288391', '1560387114261', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560383951831', '1560387202289', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560384686662', '1560387234129', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560385403744', '1560387281471', '2', '1');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560385110155', '1560387316650', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560384672330', '1560387330990', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560385498400', '1560387352938', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560385362004', '1560387412372', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560385666701', '1560387531197', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560385066075', '1560387596066', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560327236842', '1560387957971', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560385588628', '1560387977751', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560386182534', '1560388001940', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560385962537', '1560388011832', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560386102314', '1560388099832', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560386380571', '1560388200033', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560384947306', '1560388237336', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560297800815', '1560388296696', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560300920221', '1560388304484', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560386251850', '1560388307728', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560386100054', '1560388311029', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560383852811', '1560388361657', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560386533439', '1560388392449', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560386322243', '1560388403437', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560248911698', '1560388430925', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560386597296', '1560388645445', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560384946227', '1560388663053', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560386519167', '1560388665343', '2', '4');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560386531249', '1560388704881', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560302937584', '1560388712555', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560386538979', '1560388919439', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560386978967', '1560388961130', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560387202289', '1560389029360', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560387234129', '1560389070059', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560386719392', '1560389126079', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560387330990', '1560389132826', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560386680868', '1560389197607', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560387412372', '1560389261451', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560387281471', '1560389269168', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560386590690', '1560389316408', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560386970165', '1560389368156', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560387531197', '1560389539796', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560386226590', '1560389599178', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560388430925', '1560390268018', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560388304484', '1560390275593', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560388237336', '1560390358087', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560388296696', '1560390397699', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560388361657', '1560390416467', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560388663053', '1560390558316', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560388704881', '1560390717784', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560388712555', '1560390732092', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560388392449', '1560390769125', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560388919439', '1560390969734', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560388307728', '1560390981944', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560388665343', '1560391031498', '2', '4');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560389126079', '1560391080874', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560388011832', '1560391121680', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560389316408', '1560391151242', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560388001940', '1560391166611', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560387596066', '1560391179948', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560389368156', '1560391194257', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560388403437', '1560391229382', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560386856892', '1560391249972', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560389261451', '1560391272979', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560388645445', '1560391278609', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560387316650', '1560391319225', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560389132826', '1560391372181', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560387352938', '1560391387731', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560389197607', '1560391401043', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560389269168', '1560391402928', '2', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560389539796', '1560391440217', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560388311029', '1560391448121', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560388099832', '1560391468997', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560389029360', '1560391514044', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560389599178', '1560391526204', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560388961130', '1560391602035', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560387114261', '1560391607634', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560387957971', '1560391630772', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560389070059', '1560391676844', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560388200033', '1560391789046', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560387977751', '1560392058518', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560390358087', '1560392166571', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560390275593', '1560392209414', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560390268018', '1560392329451', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560390416467', '1560392410651', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560390558316', '1560392424138', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560390397699', '1560392483463', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560390717784', '1560392519652', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560390769125', '1560392605422', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560390981944', '1560392784460', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560390732092', '1560392901417', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560391080874', '1560392908840', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560391031498', '1560392918816', '2', '2');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560390969734', '1560392990308', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560391166611', '1560393002450', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560391194257', '1560393016854', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560391229382', '1560393038630', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560391179948', '1560393058397', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560391401043', '1560393286274', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560391319225', '1560393330226', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560391630772', '1560393439252', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560391278609', '1560393498587', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560391468997', '1560393500743', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560391607634', '1560393542543', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560391789046', '1560393591059', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560391448121', '1560393641814', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560391387731', '1560393686724', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560391272979', '1560393742767', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560391402928', '1560393744992', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560391440217', '1560393834104', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560391372181', '1560393845124', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560391249972', '1560393846261', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560391151242', '1560393866176', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560391602035', '1560394025501', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560391514044', '1560394138050', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560392058518', '1560394356909', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560391526204', '1560394364498', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560392329451', '1560394412787', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560392483463', '1560394440199', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560391676844', '1560394455619', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560392519652', '1560394483182', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560392424138', '1560394489710', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560391121680', '1560394632805', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560392410651', '1560394643835', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560392209414', '1560394737318', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560392918816', '1560394799248', '2', '1');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560392908840', '1560394814391', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560392990308', '1560394868288', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560392901417', '1560394933260', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560392166571', '1560394969325', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560393038630', '1560395191485', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560392784460', '1560395297066', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560393591059', '1560395399516', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560393002450', '1560395400477', '2', '1');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560392605422', '1560395444474', '2', '3');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560393016854', '1560395534683', '1', '4');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560393742767', '1560395559989', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560393330226', '1560395614972', '2', '4');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560393286274', '1560395619363', '1', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560393866176', '1560395730875', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560393834104', '1560395736257', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560393542543', '1560395776959', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560393845124', '1560395876929', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560393686724', '1560395885662', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560393641814', '1560395921892', '2', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560394138050', '1560396210476', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560394025501', '1560396227649', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560393500743', '1560396247469', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560394455619', '1560396265383', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560393846261', '1560396355337', '2', '2');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560394489710', '1560396357546', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560394440199', '1560396387229', '2', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560393058397', '1560396566614', '2', '1');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560394737318', '1560396633918', '2', '3');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560394632805', '1560396671196', '2', '3');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560394483182', '1560396700786', '2', '2');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560394814391', '1560396712064', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560394643835', '1560396717415', '2', '3');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560394412787', '1560396729737', '2', '2');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560394969325', '1560396782442', '2', '3');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560394933260', '1560396806421', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560394364498', '1560396914865', '2', '4');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560394799248', '1560396955843', '2', '1');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560395297066', '1560397119016', '2', '3');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560395399516', '1560397214652', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560395191485', '1560397230312', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560395444474', '1560397249286', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560394868288', '1560397403945', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560393498587', '1560397493793', '2', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560395534683', '1560397522393', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560393744992', '1560397566371', '2', '4');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560395614972', '1560397589601', '2', '3');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560395559989', '1560397652947', '2', '3');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560395400477', '1560397695983', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560395876929', '1560397699374', '2', '4');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560395730875', '1560397707222', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560395885662', '1560397772136', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560395736257', '1560397797563', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560395619363', '1560397820931', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560394356909', '1560398040569', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560396227649', '1560398053330', '2', '4');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560396265383', '1560398077978', '2', '4');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560395921892', '1560398113776', '2', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560396210476', '1560398288127', '2', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560395776959', '1560398372716', '2', '1');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560396566614', '1560398410526', '2', '1');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560396671196', '1560398483174', '2', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560396633918', '1560398544164', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560396355337', '1560398556066', '2', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560396387229', '1560398613561', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560396729737', '1560398623008', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560396717415', '1560398712645', '2', '2');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560396782442', '1560398762262', '2', '1');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560396955843', '1560398894094', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560396700786', '1560398982071', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560396914865', '1560399021517', '2', '3');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560397214652', '1560399028762', '2', '4');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560393439252', '1560399049492', '2', '1');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560397230312', '1560399107704', '2', '2');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560397119016', '1560399159476', '2', '4');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560397249286', '1560399315100', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560397522393', '1560399324726', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560396357546', '1560399411122', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560397589601', '1560399422383', '2', '2');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560397566371', '1560399491130', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560397699374', '1560399500397', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560397695983', '1560399510259', '2', '4');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560397403945', '1560399514696', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560397707222', '1560399552273', '2', '1');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560397493793', '1560399626032', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560397820931', '1560399643333', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560397772136', '1560399662062', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560397652947', '1560399664875', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560397797563', '1560399714089', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560398053330', '1560399856155', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560398077978', '1560399890694', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560398040569', '1560399902848', '2', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560398288127', '1560400513984', '2', '1');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560398113776', '1560400713593', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560398623008', '1560400734838', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560398894094', '1560400783083', '2', '3');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560398982071', '1560400798201', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560399021517', '1560400827909', '2', '3');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560398544164', '1560400870823', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560398613561', '1560400908900', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560398556066', '1560401008318', '2', '3');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560396806421', '1560401023842', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560399324726', '1560401185642', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560399315100', '1560401203001', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560398483174', '1560401227494', '1', '4');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560399028762', '1560401287726', '2', '1');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560399491130', '1560401293600', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560399500397', '1560401302684', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560399422383', '1560401353635', '2', '4');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560399411122', '1560401393287', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560399514696', '1560401497767', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560399552273', '1560401498875', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560399664875', '1560401557706', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560399714089', '1560401619357', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560399643333', '1560401638094', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560399510259', '1560401652883', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560399856155', '1560401684756', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560398762262', '1560401707071', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560396712064', '1560401713471', '2', '1');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560396247469', '1560401848798', '2', '4');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560398712645', '1560401891133', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560399890694', '1560402151610', '2', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560399662062', '1560402175599', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560399159476', '1560402538403', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560400734838', '1560402591505', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560400783083', '1560402632093', '2', '1');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560400870823', '1560402748871', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560400908900', '1560402805700', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560400827909', '1560402806791', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560400798201', '1560402812311', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560400513984', '1560402820128', '2', '3');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560401023842', '1560402943406', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560401008318', '1560402994016', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560401203001', '1560403006107', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560401293600', '1560403094124', '1', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560401302684', '1560403104156', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560401287726', '1560403134628', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560401393287', '1560403221529', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560401227494', '1560403275411', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560401557706', '1560403385369', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560401619357', '1560403441611', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560401652883', '1560403460338', '2', '2');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560401638094', '1560403476036', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560399902848', '1560403515169', '2', '1');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560401353635', '1560403539558', '2', '1');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560399626032', '1560403572889', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560401498875', '1560403598998', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560401185642', '1560403640610', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560401684756', '1560403720939', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560401891133', '1560403802861', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560401848798', '1560403838737', '2', '1');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560402175599', '1560404017414', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560399107704', '1560404056611', '2', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560398372716', '1560404098135', '2', '3');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560400713593', '1560404111870', '1', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560402151610', '1560404360618', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560401707071', '1560404468717', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560402748871', '1560404552841', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560402591505', '1560404619915', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560402812311', '1560404639164', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560402820128', '1560404710036', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560402806791', '1560404717547', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560402632093', '1560404763321', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560402805700', '1560404816206', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560399049492', '1560404821035', '2', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560403006107', '1560404872574', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560403104156', '1560404906682', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560403094124', '1560404915489', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560402994016', '1560404943544', '2', '1');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560402943406', '1560404975367', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560403221529', '1560405203790', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560403441611', '1560405244443', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560402538403', '1560405363433', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560403275411', '1560405402943', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560403598998', '1560405462653', '2', '1');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560403460338', '1560405472216', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560403515169', '1560405566668', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560403476036', '1560405583630', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560403838737', '1560405698701', '2', '1');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560401713471', '1560405724500', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560403802861', '1560405791684', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560404017414', '1560405939778', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560403720939', '1560405970086', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560403640610', '1560406033845', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560404056611', '1560406047594', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560403385369', '1560406060905', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560404360618', '1560406160754', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560398410526', '1560406264222', '2', '2');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560404619915', '1560406425979', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560404639164', '1560406451503', '2', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560404552841', '1560406459888', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560404717547', '1560406606454', '1', '2');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560404468717', '1560406703408', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560404906682', '1560406712040', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560404111870', '1560406761327', '2', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560404710036', '1560406831967', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560404816206', '1560406843829', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560404975367', '1560406992736', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560405244443', '1560407050634', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560404821035', '1560407079809', '2', '4');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560404872574', '1560407083749', '2', '1');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560405363433', '1560407178226', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560405402943', '1560407235527', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560405472216', '1560407351569', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560404098135', '1560407410534', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560404943544', '1560407459161', '2', '1');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560403572889', '1560407476815', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560405583630', '1560407512961', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560405462653', '1560407525947', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560401497767', '1560407536966', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560403134628', '1560407566262', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560405203790', '1560407588725', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560405724500', '1560407609870', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560405566668', '1560407634881', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560405791684', '1560407651269', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560405698701', '1560407682158', '2', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560404763321', '1560407732564', '1', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560405970086', '1560407838184', '2', '4');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560404915489', '1560407843807', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560406060905', '1560407872504', '2', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560403539558', '1560407950941', '2', '3');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560406033845', '1560408216592', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560406459888', '1560408272713', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560406425979', '1560408388134', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560406451503', '1560408390726', '2', '1');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560406047594', '1560408608694', '2', '1');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560406160754', '1560408626875', '2', '1');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560405939778', '1560408671091', '2', '1');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560406831967', '1560408822718', '2', '3');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560406761327', '1560408834040', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560407050634', '1560408866929', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560406712040', '1560408972240', '2', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560407083749', '1560408976658', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560407351569', '1560409190041', '2', '2');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560407178226', '1560409412328', '2', '3');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560407410534', '1560409443282', '2', '1');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560407682158', '1560409483867', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560407651269', '1560409484870', '2', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560407609870', '1560409486028', '2', '4');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560407476815', '1560409494750', '2', '4');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560406992736', '1560409518990', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560406606454', '1560409591607', '2', '1');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560407536966', '1560409644815', '2', '4');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560407732564', '1560409655580', '2', '4');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560407566262', '1560409669659', '2', '1');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560407512961', '1560409722729', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560407525947', '1560409856667', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560407838184', '1560409928128', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560407872504', '1560409956808', '2', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560407235527', '1560409965788', '2', '4');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560408272713', '1560410074448', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560407843807', '1560410168193', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560408216592', '1560410175616', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560407588725', '1560410177096', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560407459161', '1560410213195', '2', '3');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560406264222', '1560410228624', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560407634881', '1560410246414', '2', '1');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560407950941', '1560410289145', '2', '2');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560408388134', '1560410311153', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560406703408', '1560410344266', '2', '4');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560408390726', '1560410355967', '2', '1');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560407079809', '1560410357079', '2', '3');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560408671091', '1560410475062', '2', '4');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560408608694', '1560410570501', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560408626875', '1560410652214', '2', '4');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560408834040', '1560410717036', '2', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560408866929', '1560410790730', '2', '3');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560408822718', '1560410832583', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560408972240', '1560410833415', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560408976658', '1560410847809', '2', '3');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560409190041', '1560411004144', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560409483867', '1560411284640', '2', '4');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560409484870', '1560411308622', '2', '4');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560409412328', '1560411308978', '2', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560409443282', '1560411407636', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560409494750', '1560411412249', '2', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560409486028', '1560411437343', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560409644815', '1560411550841', '2', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560409655580', '1560411571786', '2', '2');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560409518990', '1560411576189', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560409669659', '1560411585899', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560409591607', '1560411589137', '2', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560409722729', '1560411635445', '2', '1');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560409856667', '1560411667460', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560409956808', '1560411757417', '2', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560409965788', '1560411768377', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560409928128', '1560411814871', '2', '1');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560410074448', '1560411875310', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560410228624', '1560412049087', '2', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560410168193', '1560412097516', '2', '3');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560410177096', '1560412104059', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560410246414', '1560412152479', '2', '4');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560410213195', '1560412157947', '2', '2');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560410289145', '1560412227285', '2', '1');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560410475062', '1560412276708', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560410570501', '1560412532937', '2', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560410344266', '1560412634465', '2', '1');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560410847809', '1560412658257', '2', '4');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560406843829', '1560412701249', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560410832583', '1560412739155', '2', '3');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560410175616', '1560412781460', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560411004144', '1560412868350', '2', '3');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560410311153', '1560412887012', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560410652214', '1560412905591', '2', '2');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560410717036', '1560412930153', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560410355967', '1560413009465', '2', '4');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560410833415', '1560413033475', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560410790730', '1560413076976', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560411284640', '1560413091564', '2', '3');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560411407636', '1560413220503', '2', '4');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560411308622', '1560413283190', '2', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560411308978', '1560413308448', '2', '1');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560411585899', '1560413399137', '2', '1');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560411437343', '1560413403221', '2', '1');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560411589137', '1560413414213', '2', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560411550841', '1560413494441', '2', '3');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560410357079', '1560413554852', '2', '3');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560411757417', '1560413559284', '2', '3');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560411768377', '1560413622407', '2', '2');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560411875310', '1560413681377', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560411576189', '1560413695183', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560411814871', '1560413702285', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560411667460', '1560413776390', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560411412249', '1560414046514', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560412152479', '1560414052110', '2', '4');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560412227285', '1560414069634', '2', '1');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560412049087', '1560414086174', '2', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560412104059', '1560414144474', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560412276708', '1560414228307', '2', '2');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560411571786', '1560414256614', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560411635445', '1560414259118', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560412157947', '1560414273155', '2', '1');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560412532937', '1560414387503', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560412658257', '1560414608660', '2', '2');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560412739155', '1560414612532', '2', '1');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560412634465', '1560414614152', '2', '4');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560412781460', '1560414622250', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560412097516', '1560414632872', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560412701249', '1560414749715', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560412930153', '1560414814557', '2', '3');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560413033475', '1560414835722', '2', '1');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560413091564', '1560414893721', '2', '4');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560413009465', '1560414902361', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560413076976', '1560414979381', '2', '4');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560412887012', '1560415019981', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560412868350', '1560415200642', '2', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560413399137', '1560415206403', '2', '1');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560413220503', '1560415228292', '2', '3');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560412905591', '1560415252118', '2', '3');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560413308448', '1560415298278', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560413494441', '1560415413093', '2', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560413403221', '1560415460080', '2', '2');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560413681377', '1560415483341', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560413559284', '1560415598804', '2', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560413622407', '1560415684534', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560413414213', '1560415751877', '2', '1');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560413283190', '1560415783528', '2', '3');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560413695183', '1560415843880', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560413702285', '1560415993508', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560414228307', '1560416028748', '2', '3');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560414256614', '1560416092875', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560413776390', '1560416183105', '2', '1');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560414387503', '1560416273256', '2', '4');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560414069634', '1560416347061', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560414622250', '1560416431771', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560414632872', '1560416453306', '2', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560414608660', '1560416489594', '2', '2');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560414259118', '1560416619916', '2', '1');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560414893721', '1560416705826', '2', '4');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560414144474', '1560416747405', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560414979381', '1560416786875', '2', '2');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560414902361', '1560416828544', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560414835722', '1560416833076', '2', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560415019981', '1560416900250', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560414046514', '1560416927445', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560414814557', '1560417011305', '2', '3');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560414273155', '1560417109080', '2', '2');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560415298278', '1560417158811', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560415200642', '1560417218212', '2', '1');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560415483341', '1560417287173', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560415206403', '1560417342141', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560415252118', '1560417448250', '2', '3');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560415460080', '1560417500619', '2', '1');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560415684534', '1560417537881', '2', '1');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560414612532', '1560417601762', '2', '1');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560415228292', '1560417710690', '2', '1');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560414614152', '1560417748401', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560415783528', '1560417779182', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560415598804', '1560417807550', '2', '1');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560415413093', '1560417817146', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560415993508', '1560417832921', '2', '2');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560415751877', '1560417890432', '2', '2');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560413554852', '1560417915359', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560414052110', '1560417938540', '2', '3');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560416092875', '1560417992242', '2', '3');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560414749715', '1560418097305', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560416273256', '1560418166028', '2', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560416347061', '1560418175908', '2', '3');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560416431771', '1560418274968', '1', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560416453306', '1560418296916', '2', '3');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560416489594', '1560418410157', '2', '3');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560416183105', '1560418422337', '2', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560416786875', '1560418786474', '2', '4');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560417011305', '1560418832714', '2', '1');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560416828544', '1560418976767', '2', '4');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560416705826', '1560418977787', '2', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560416927445', '1560419039443', '2', '4');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560416619916', '1560419535520', '2', '1');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560417601762', '1560419623493', '2', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560417890432', '1560419744501', '2', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560417158811', '1560420158071', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560418097305', '1560420159279', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560418296916', '1560420160319', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560417500619', '1560420162511', '2', '2');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560418166028', '1560420164698', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560417992242', '1560420273587', '2', '1');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560417448250', '1560420289007', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560418274968', '1560420382507', '2', '1');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560418422337', '1560420393467', '2', '4');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560418410157', '1560420436416', '2', '3');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560417218212', '1560420438620', '2', '3');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560417710690', '1560420443000', '2', '4');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560416833076', '1560420452936', '2', '2');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560418175908', '1560420482628', '2', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560417342141', '1560420489228', '2', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560414086174', '1560420507900', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560417832921', '1560420528828', '2', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560417807550', '1560420562995', '2', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560417537881', '1560420633416', '2', '4');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560417748401', '1560420648765', '2', '4');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560417915359', '1560420661977', '2', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560416900250', '1560420689565', '2', '1');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560418786474', '1560420690609', '2', '4');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560417287173', '1560420704916', '2', '2');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560415843880', '1560420774205', '2', '2');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560416028748', '1560420777417', '2', '2');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560416747405', '1560420795097', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560417817146', '1560420884165', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560418976767', '1560420915085', '2', '4');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560418832714', '1560420970014', '2', '1');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560417938540', '1560421020586', '2', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560418977787', '1560421125106', '1', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560417109080', '1560421149294', '2', '4');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560417779182', '1560421202122', '2', '2');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560419039443', '1560421396823', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560419535520', '1560421667412', '2', '3');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560419744501', '1560421685060', '2', '1');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560420160319', '1560421994097', '1', '3');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560420158071', '1560422039221', '2', '4');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560420159279', '1560422148079', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560420162511', '1560422227278', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560420393467', '1560422232825', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560420289007', '1560422237286', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560420436416', '1560422246010', '2', '3');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560420164698', '1560422251578', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560420528828', '1560422329606', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560420489228', '1560422381307', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560420443000', '1560422418667', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560420273587', '1560422457167', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560420438620', '1560422461607', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560420562995', '1560422467138', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560420452936', '1560422473599', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560420382507', '1560422479198', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560420482628', '1560422481359', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560420648765', '1560422483654', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560420690609', '1560422507759', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560420689565', '1560422509995', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560420704916', '1560422618835', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560420633416', '1560422623295', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560420915085', '1560422734417', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560420795097', '1560422762928', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560420507900', '1560422810284', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560420884165', '1560422846584', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560421125106', '1560422955504', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560421202122', '1560423006053', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560420970014', '1560423073265', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560420777417', '1560423084173', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560420774205', '1560423113865', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560421149294', '1560423325150', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560421020586', '1560423383354', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560421396823', '1560423491202', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560421685060', '1560423511010', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560421667412', '1560423529738', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560421994097', '1560423839899', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560422039221', '1560423987335', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560419623493', '1560424020287', '2', '4');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560422227278', '1560424047748', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560422237286', '1560424056540', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560422232825', '1560424060975', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560422148079', '1560424125887', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560422251578', '1560424170957', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560422381307', '1560424182037', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560422473599', '1560424277696', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560422461607', '1560424300784', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560422509995', '1560424330516', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560422507759', '1560424333765', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560422329606', '1560424337105', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560422457167', '1560424371165', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560422479198', '1560424427292', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560422467138', '1560424444925', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560422618835', '1560424459193', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560422418667', '1560424531805', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560422734417', '1560424559266', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560422762928', '1560424606641', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560422481359', '1560424645046', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560422846584', '1560424652834', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560422483654', '1560424670474', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560422246010', '1560424709954', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560422955504', '1560424775934', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560423006053', '1560424809002', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560423084173', '1560424911283', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560422623295', '1560424969643', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560423113865', '1560424993811', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560423325150', '1560425288580', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560423491202', '1560425398540', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560423073265', '1560425498768', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560423529738', '1560425653837', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560423511010', '1560425680137', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560423839899', '1560425779165', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560423383354', '1560425885854', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560424060975', '1560425889194', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560424182037', '1560425988193', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560424047748', '1560426000247', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560424125887', '1560426043242', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560424056540', '1560426073982', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560424277696', '1560426082823', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560424170957', '1560426094902', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560424333765', '1560426156463', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560424337105', '1560426244483', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560424020287', '1560426267594', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560424427292', '1560426313771', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560424330516', '1560426334731', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560424459193', '1560426337951', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560424300784', '1560426341302', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560423987335', '1560426431471', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560424652834', '1560426482152', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560424531805', '1560426520560', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560424559266', '1560426537032', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560424775934', '1560426581079', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560424670474', '1560426599772', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560424444925', '1560426600860', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560424809002', '1560426616252', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560424645046', '1560426694400', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560424606641', '1560426695480', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560424993811', '1560426797820', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560424969643', '1560426864868', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560424371165', '1560426949556', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560424911283', '1560426999065', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560425288580', '1560427090365', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560424709954', '1560427113386', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560425398540', '1560427322486', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560425498768', '1560427326807', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560425680137', '1560427482006', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560425988193', '1560427805332', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560426094902', '1560427897752', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560426043242', '1560427961521', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560426156463', '1560427984660', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560426073982', '1560427994533', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560426082823', '1560427999940', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560425889194', '1560428080321', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560425779165', '1560428115561', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560426313771', '1560428134229', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560426337951', '1560428169421', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560426000247', '1560428187077', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560426334731', '1560428189248', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560426267594', '1560428237677', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560426431471', '1560428264037', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560425653837', '1560428271717', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560426341302', '1560428311310', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560426581079', '1560428383958', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560426616252', '1560428418057', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560426520560', '1560428440066', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560426537032', '1560428508266', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560426482152', '1560428531467', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560426244483', '1560428541246', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560426599772', '1560428566558', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560426797820', '1560428602858', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560426694400', '1560428660075', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560426600860', '1560428770042', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560426695480', '1560428786554', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560426864868', '1560428833795', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560426949556', '1560428862516', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560427113386', '1560428916423', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560427322486', '1560429238732', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560427090365', '1560429249681', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560426999065', '1560429287052', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560425885854', '1560429460809', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560427805332', '1560429607198', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560427482006', '1560429694066', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560427984660', '1560429875555', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560428080321', '1560429906374', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560427999940', '1560429924129', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560427961521', '1560429936074', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560427897752', '1560429938208', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560428169421', '1560429997634', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560427994533', '1560430038355', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560428115561', '1560430086767', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560428189248', '1560430109875', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560428264037', '1560430154956', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560428383958', '1560430187915', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560428271717', '1560430202255', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560428418057', '1560430235243', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560428187077', '1560430280403', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560428134229', '1560430314472', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560428311310', '1560430343084', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560428237677', '1560430344224', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560428602858', '1560430422221', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560428541246', '1560430434344', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560428440066', '1560430450832', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560428660075', '1560430486072', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560428566558', '1560430491532', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560428508266', '1560430549744', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560428531467', '1560430572928', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560428862516', '1560430742370', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560428770042', '1560430838004', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560428786554', '1560430863318', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560428833795', '1560431001966', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560429249681', '1560431050318', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560429238732', '1560431074499', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560428916423', '1560431080007', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560429287052', '1560431135026', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560429607198', '1560431411140', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560429694066', '1560431612464', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560429460809', '1560431671893', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560429906374', '1560431707099', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560429938208', '1560431740001', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560429875555', '1560431801661', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560429997634', '1560431821480', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560430038355', '1560431839029', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560430086767', '1560431887469', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560429936074', '1560431977610', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560430187915', '1560431997417', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560430235243', '1560432038117', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560430202255', '1560432158038', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560429924129', '1560432173446', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560430344224', '1560432182217', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560430422221', '1560432240538', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560430109875', '1560432269146', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560430450832', '1560432299934', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560430154956', '1560432318627', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560430314472', '1560432399988', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560427326807', '1560432446267', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560430549744', '1560432473746', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560430434344', '1560432517715', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560430491532', '1560432537508', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560430486072', '1560432560635', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560430280403', '1560432568415', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560430343084', '1560432598063', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560430838004', '1560432676096', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560430863318', '1560432717852', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560430572928', '1560432728992', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560431050318', '1560432858672', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560431001966', '1560432937873', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560431074499', '1560433029201', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560431135026', '1560433054421', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560430742370', '1560433097451', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560431080007', '1560433145829', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560431411140', '1560433214001', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560431740001', '1560433545126', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560431671893', '1560433614396', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560431707099', '1560433633067', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560431821480', '1560433659507', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560431887469', '1560433695827', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560431839029', '1560433763915', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560431612464', '1560433777176', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560432038117', '1560433843116', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560431801661', '1560433845383', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560431977610', '1560433900451', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560431997417', '1560433930104', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560432173446', '1560434018084', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560432158038', '1560434080824', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560432299934', '1560434137981', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560432269146', '1560434194101', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560432399988', '1560434278821', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560432182217', '1560434284261', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560432318627', '1560434286461', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560432560635', '1560434400949', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560432598063', '1560434410749', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560432240538', '1560434430670', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560432537508', '1560434452541', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560432568415', '1560434484482', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560432676096', '1560434502097', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560432728992', '1560434539598', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560432717852', '1560434628609', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560432858672', '1560434686870', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560432473746', '1560434778226', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560432937873', '1560434862875', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560432517715', '1560434930075', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560433145829', '1560434969615', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560433214001', '1560435020157', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560433029201', '1560435127964', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560433097451', '1560435223692', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560433545126', '1560435350193', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560433054421', '1560435468961', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560433659507', '1560435487722', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560433695827', '1560435508569', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560433633067', '1560435550401', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560433763915', '1560435681201', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560432446267', '1560435695571', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560433777176', '1560435700018', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560433900451', '1560435728610', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560433845383', '1560435761518', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560433930104', '1560435856178', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560433843116', '1560435885946', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560434018084', '1560435998055', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560433614396', '1560436005847', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560434278821', '1560436120155', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560434284261', '1560436131247', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560434194101', '1560436185103', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560434410749', '1560436224684', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560434137981', '1560436227972', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560434080824', '1560436260964', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560434452541', '1560436279632', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560434539598', '1560436341304', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560434400949', '1560436353435', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560434502097', '1560436446912', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560434286461', '1560436453525', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560434484482', '1560436456832', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560434430670', '1560436469992', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560434686870', '1560436491945', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560434628609', '1560436543673', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560434778226', '1560436655849', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560434930075', '1560436769162', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560434969615', '1560436787870', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560435020157', '1560436841762', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560435127964', '1560436963858', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560435350193', '1560437153343', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560435487722', '1560437315868', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560435468961', '1560437457696', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560435508569', '1560437468776', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560435550401', '1560437473136', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560435728610', '1560437552333', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560435761518', '1560437563372', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560434862875', '1560437583212', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560435700018', '1560437649161', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560435681201', '1560437745920', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560435885946', '1560437804341', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560436005847', '1560437847201', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560435223692', '1560437880181', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560435856178', '1560437893369', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560436120155', '1560437941790', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560206824700', '1560438005501', '2', '2');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560436131247', '1560438023181', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560436224684', '1560438061630', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560435998055', '1560438075950', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560436227972', '1560438104530', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560436341304', '1560438146377', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560436446912', '1560438277346', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560436456832', '1560438279466', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560436353435', '1560438320147', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560436543673', '1560438348759', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560436279632', '1560438349919', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560436453525', '1560438369687', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560435695571', '1560438475287', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560436469992', '1560438500616', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560436185103', '1560438501743', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560436769162', '1560438586356', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560436491945', '1560438662316', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560436260964', '1560438673324', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560436655849', '1560438743632', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560436841762', '1560438752512', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560436963858', '1560438807424', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560436787870', '1560438864672', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560437153343', '1560439359638', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560437552333', '1560439383928', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560437468776', '1560439391598', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560437457696', '1560439404710', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560437315868', '1560439470758', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560437649161', '1560439475186', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560437804341', '1560439605947', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560437473136', '1560439643415', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560437893369', '1560439729175', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560437583212', '1560439783169', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560437941790', '1560439806176', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560438005501', '1560439837043', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560438104530', '1560439945944', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560438146377', '1560439948158', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560438023181', '1560439952512', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560438061630', '1560439965672', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560437745920', '1560440057066', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560438277346', '1560440098845', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560438279466', '1560440102155', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560438348759', '1560440149534', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560438320147', '1560440157174', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560437563372', '1560440209963', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560437880181', '1560440229755', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560438075950', '1560440277115', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560438500616', '1560440301283', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560438349919', '1560440312242', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560437847201', '1560440344191', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560438369687', '1560440370543', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560438673324', '1560440524586', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560438743632', '1560440605986', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560438586356', '1560440622418', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560438807424', '1560440645539', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560438752512', '1560440674126', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560438501743', '1560440693866', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560438475287', '1560440808327', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4E721485F2C', '1560379064314', '1560440824765', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560438662316', '1560440942595', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560439383928', '1560441205405', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560439404710', '1560441226392', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560438864672', '1560441299000', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560439391598', '1560441307740', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560439359638', '1560441387981', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560439643415', '1560441469501', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560439605947', '1560441525477', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560439729175', '1560441529981', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560439475186', '1560441546469', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560439806176', '1560441612529', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560439470758', '1560441680606', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560439948158', '1560441748799', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560439783169', '1560441757694', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560439965672', '1560441778618', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560439837043', '1560441798345', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560439945944', '1560441824698', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560439952512', '1560441861033', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560440098845', '1560441901715', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560440157174', '1560441989782', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560440057066', '1560442001854', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560440102155', '1560442044734', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560440149534', '1560442067855', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560440301283', '1560442106409', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560440229755', '1560442116183', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560440277115', '1560442131643', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560440209963', '1560442154731', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560440312242', '1560442259232', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560440524586', '1560442347212', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560440344191', '1560442359331', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560440605986', '1560442457212', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560440622418', '1560442459421', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560440645539', '1560442494640', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560440693866', '1560442637676', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560440942595', '1560442744324', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560440674126', '1560443025858', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560440370543', '1560443049045', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560441226392', '1560443060026', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560441205405', '1560443145854', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560441299000', '1560443192054', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560440808327', '1560443238215', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560441546469', '1560443375723', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560441469501', '1560443413143', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560441612529', '1560443423003', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560441387981', '1560443432952', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560441525477', '1560443448311', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560441307740', '1560443465923', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560441680606', '1560443481319', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560441748799', '1560443552792', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560441529981', '1560443572580', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560441757694', '1560443601252', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560441778618', '1560443695860', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560441901715', '1560443703547', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560441824698', '1560443746469', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560441798345', '1560443748680', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560442001854', '1560443823449', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560441861033', '1560443826777', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560441989782', '1560443838857', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560442044734', '1560443864148', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560442106409', '1560443941109', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560442154731', '1560443976357', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560442067855', '1560444031337', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560442259232', '1560444078653', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560442131643', '1560444097345', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560442359331', '1560444245806', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560442116183', '1560444285482', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560442494640', '1560444416350', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560442457212', '1560444440590', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560442637676', '1560444458203', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560442459421', '1560444461435', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560442744324', '1560444549411', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560443025858', '1560444879401', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560442347212', '1560444930016', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560443145854', '1560444966308', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560443049045', '1560445133545', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560443192054', '1560445232565', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560443432952', '1560445238066', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560443413143', '1560445246837', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560443448311', '1560445251225', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560443481319', '1560445281937', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560443375723', '1560445321605', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560443552792', '1560445359086', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560443465923', '1560445387606', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560443572580', '1560445453622', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560443238215', '1560445470114', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560443060026', '1560445493142', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560443703547', '1560445506463', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560443601252', '1560445558122', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560443748680', '1560445577982', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560443423003', '1560445596551', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560443695860', '1560445628549', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560443826777', '1560445675823', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560443746469', '1560445712051', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560443941109', '1560445742871', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560443823449', '1560445760492', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560443838857', '1560445763819', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560443976357', '1560445804499', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560443864148', '1560445809959', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560444031337', '1560445868379', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560444078653', '1560445902419', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560444097345', '1560446005859', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560444285482', '1560446222516', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560444440590', '1560446276416', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560444458203', '1560446284156', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560444416350', '1560446333625', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560444549411', '1560446357873', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560444245806', '1560446438113', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560444461435', '1560446510746', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560444879401', '1560446687830', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560444930016', '1560446760410', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560445133545', '1560446962850', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560445238066', '1560447068407', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560445359086', '1560447169655', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560445387606', '1560447192656', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560445246837', '1560447194976', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560445281937', '1560447202647', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560445232565', '1560447203707', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560445453622', '1560447263095', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560445321605', '1560447276268', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560444966308', '1560447278536', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560445251225', '1560447282907', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560445493142', '1560447322516', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560445506463', '1560447423705', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560445628549', '1560447432477', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560445577982', '1560447473205', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560445558122', '1560447535913', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560445742871', '1560447554645', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560445675823', '1560447626122', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560445809959', '1560447627253', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560445712051', '1560447633861', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560445760492', '1560447794449', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560445763819', '1560447804316', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560445902419', '1560447829669', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560445868379', '1560447840562', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560445596551', '1560447859329', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560445804499', '1560447865909', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560446005859', '1560447924209', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560446284156', '1560448105698', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560446222516', '1560448132098', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560446276416', '1560448150778', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560446357873', '1560448163999', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560446510746', '1560448337808', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560446333625', '1560448382876', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560446687830', '1560448489644', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560446760410', '1560448616112', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560446962850', '1560448786653', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560447169655', '1560448986769', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560447192656', '1560449002217', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560447068407', '1560449005489', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560447282907', '1560449089170', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560447263095', '1560449113298', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560447276268', '1560449197998', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560447202647', '1560449199066', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560447423705', '1560449228826', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560447322516', '1560449254098', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560447194976', '1560449266218', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560447432477', '1560449325619', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560447554645', '1560449356328', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560447203707', '1560449368555', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560447626122', '1560449487303', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560447627253', '1560449541175', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560447633861', '1560449553283', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560447278536', '1560449561104', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560447473205', '1560449638003', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560447859329', '1560449677544', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560447865909', '1560449690744', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560447804316', '1560449727123', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560447829669', '1560449752344', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560447535913', '1560449781000', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560447794449', '1560449838232', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560448105698', '1560449906412', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560447840562', '1560449929413', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560448132098', '1560449939369', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560448163999', '1560449967981', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560448337808', '1560450215457', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560447924209', '1560450268305', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560448382876', '1560450302357', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560445470114', '1560450310099', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560448489644', '1560450323346', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560448150778', '1560450350794', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560448786653', '1560450735831', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560448986769', '1560450787432', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560449002217', '1560450803991', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560449089170', '1560450889779', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560449197998', '1560451006347', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560449005489', '1560451043840', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560449266218', '1560451092240', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560449325619', '1560451130728', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560449199066', '1560451143876', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560448616112', '1560451181288', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560449228826', '1560451267078', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560449356328', '1560451273717', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560449113298', '1560451286844', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560449487303', '1560451335298', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560449553283', '1560451358396', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560449368555', '1560451407965', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560449677544', '1560451522285', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560449727123', '1560451533322', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560449254098', '1560451544337', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560449541175', '1560451584926', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560449690744', '1560451599293', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560449752344', '1560451673014', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560449638003', '1560451691642', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560449781000', '1560451699402', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560449838232', '1560451758770', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560449929413', '1560451766482', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560449967981', '1560451772030', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560449561104', '1560451775270', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560449939369', '1560451895199', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560450215457', '1560452042567', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560449906412', '1560452068908', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560450302357', '1560452104159', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560450310099', '1560452239435', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560450323346', '1560452441884', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560450268305', '1560452548592', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560450787432', '1560452589194', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560450350794', '1560452643114', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560450889779', '1560452692641', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560450735831', '1560452768561', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560451043840', '1560452849981', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560451130728', '1560452937990', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560451006347', '1560452969886', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560451092240', '1560453012838', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560451267078', '1560453094186', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560451181288', '1560453097486', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560450803991', '1560453152499', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560451335298', '1560453166726', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560451358396', '1560453194254', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560451143876', '1560453218487', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560451286844', '1560453336215', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560451522285', '1560453361495', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560451273717', '1560453437304', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560451699402', '1560453507751', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560451599293', '1560453522100', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560451584926', '1560453558363', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560451758770', '1560453560484', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560451407965', '1560453577063', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560451775270', '1560453578171', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560451772030', '1560453582560', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560451544337', '1560453583660', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560451673014', '1560453592432', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560451766482', '1560453611104', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560451691642', '1560453654053', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560451533322', '1560453723388', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560451895199', '1560453749861', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560452042567', '1560453852130', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560452068908', '1560453869736', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560452104159', '1560453943329', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560452239435', '1560454252414', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560452441884', '1560454297494', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560452692641', '1560454498831', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560452589194', '1560454509830', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560452548592', '1560454552723', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560452768561', '1560454571511', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560453012838', '1560454815648', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560452643114', '1560454850827', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560452937990', '1560454868448', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560452969886', '1560454892616', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560453094186', '1560454914588', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560453166726', '1560455004816', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560452849981', '1560455014796', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560453194254', '1560455027908', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560453218487', '1560455036677', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560453152499', '1560455053189', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560453097486', '1560455139005', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560453336215', '1560455157704', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560453583660', '1560455384341', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560453577063', '1560455401973', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560453507751', '1560455426094', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560453361495', '1560455433762', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560453560484', '1560455482210', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560453437304', '1560455500830', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560453723388', '1560455549317', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560453592432', '1560455566969', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560453654053', '1560455574689', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560453582560', '1560455648331', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560453852130', '1560455668179', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560453749861', '1560455715407', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560453522100', '1560455732950', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560446438113', '1560455769327', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560453611104', '1560455811139', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560453869736', '1560455913415', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560453558363', '1560455962876', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560453943329', '1560456133436', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560453578171', '1560456155423', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560454297494', '1560456253273', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560454498831', '1560456301732', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560454509830', '1560456312673', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560454552723', '1560456390793', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560454252414', '1560456444780', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560454571511', '1560456493161', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560454850827', '1560456652570', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560454815648', '1560456784626', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560454868448', '1560456793358', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560454892616', '1560456814338', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560455014796', '1560456820839', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560454914588', '1560456857213', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560455036677', '1560456861626', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560455004816', '1560456870386', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560455157704', '1560457064026', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560455139005', '1560457076094', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560455053189', '1560457085995', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560455027908', '1560457111295', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560455433762', '1560457277460', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560455426094', '1560457345651', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560455549317', '1560457374247', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560455500830', '1560457399548', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560455482210', '1560457401740', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560455715407', '1560457548008', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560455574689', '1560457566716', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560455648331', '1560457574348', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560455668179', '1560457595248', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560455384341', '1560457596380', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560455732950', '1560457653617', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560455566969', '1560457680016', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560455913415', '1560457836293', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560455811139', '1560457904426', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560455401973', '1560457951781', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560456133436', '1560457962674', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560456301732', '1560458121070', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560456390793', '1560458225629', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560456493161', '1560458295958', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560455962876', '1560458302598', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560456155423', '1560458342251', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560456253273', '1560458355390', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560456312673', '1560458475306', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560456652570', '1560458531340', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560456444780', '1560458593007', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560456820839', '1560458622715', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560456857213', '1560458677695', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560456814338', '1560458684295', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560456793358', '1560458715077', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560457085995', '1560458887804', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560456861626', '1560458928444', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560456870386', '1560458947240', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560457064026', '1560458957172', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560457076094', '1560458998845', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560456784626', '1560459073721', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560457277460', '1560459155129', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560457374247', '1560459195849', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560457399548', '1560459211204', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560457345651', '1560459239769', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560457401740', '1560459273830', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560457548008', '1560459394865', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560457566716', '1560459401446', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560457595248', '1560459411398', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560457653617', '1560459456457', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560457596380', '1560459471886', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560457680016', '1560459501626', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560457836293', '1560459656684', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560457111295', '1560459677535', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560457574348', '1560459740195', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560457951781', '1560459776603', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560458121070', '1560459921671', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560457962674', '1560459925079', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560457904426', '1560460064820', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560458342251', '1560460160479', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560458355390', '1560460189076', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560458225629', '1560460194575', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560458295958', '1560460210988', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560458475306', '1560460278168', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560458302598', '1560460295824', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560458677695', '1560460497033', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560458684295', '1560460510253', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560458715077', '1560460523433', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560458622715', '1560460530064', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560458531340', '1560460615893', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560458887804', '1560460688513', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560458957172', '1560460758842', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560458998845', '1560460912838', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560455769327', '1560460918410', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560459073721', '1560460995399', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560459211204', '1560461021746', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560458947240', '1560461052574', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560458928444', '1560461065778', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560459155129', '1560461073479', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560459273830', '1560461089938', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560459195849', '1560461149355', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560459401446', '1560461225315', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560459411398', '1560461315435', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560459239769', '1560461328703', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560459501626', '1560461441991', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560459656684', '1560461473831', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560459471886', '1560461534332', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560459776603', '1560461591512', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560459394865', '1560461597080', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560459740195', '1560461637808', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560459921671', '1560461742268', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560459456457', '1560461865436', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560459925079', '1560461875317', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560459677535', '1560461880924', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560460064820', '1560461985357', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560460189076', '1560462027205', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560460160479', '1560462106413', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560460194575', '1560462148185', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560460278168', '1560462196542', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560460295824', '1560462238354', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560460497033', '1560462318639', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560460523433', '1560462327489', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560460530064', '1560462330742', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560460510253', '1560462336291', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560458593007', '1560462444023', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560460688513', '1560462500219', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560460210988', '1560462506758', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560460758842', '1560462566139', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560460912838', '1560462746575', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560461021746', '1560462834527', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560460615893', '1560462836716', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560460995399', '1560462866388', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560461073479', '1560462941344', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560461065778', '1560462989664', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560461225315', '1560463051253', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560461149355', '1560463112805', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560461089938', '1560463151305', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560461052574', '1560463213040', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560461315435', '1560463249283', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560461441991', '1560463277821', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560461473831', '1560463295481', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560460918410', '1560463332829', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560461534332', '1560463368001', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560461328703', '1560463424090', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560461637808', '1560463439482', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560461591512', '1560463655158', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560461597080', '1560463679354', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560461875317', '1560463706786', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560461985357', '1560463832266', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560462106413', '1560463922375', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560461865436', '1560463933462', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560461880924', '1560463955471', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560462196542', '1560463999504', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560462148185', '1560464120399', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560462330742', '1560464142399', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560461742268', '1560464146839', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560462238354', '1560464184219', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560462318639', '1560464284328', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560462500219', '1560464320668', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560462327489', '1560464388800', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560462566139', '1560464389908', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560462336291', '1560464404276', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560462027205', '1560464630833', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560462834527', '1560464635197', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560462866388', '1560464688033', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560462746575', '1560464704533', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560462989664', '1560464792465', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560462941344', '1560464822300', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560462444023', '1560464880613', '0', '0');
INSERT INTO `acl_rest` VALUES ('CCD9F604169D', '1560463051253', '1560464886014', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560462506758', '1560464939961', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560462836716', '1560464940994', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560463112805', '1560465025703', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560463295481', '1560465119210', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560463249283', '1560465181939', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560463368001', '1560465193971', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560463439482', '1560465242411', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560463424090', '1560465254499', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560463213040', '1560465257779', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560463332829', '1560465287519', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560463277821', '1560465356808', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560463151305', '1560465590016', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560463679354', '1560465636224', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560463655158', '1560465693464', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560463832266', '1560465752781', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560463706786', '1560465771425', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560463933462', '1560465878153', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560463999504', '1560465921081', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560464120399', '1560465928881', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560464142399', '1560465943195', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560464146839', '1560465951921', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560463922375', '1560465988217', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560464284328', '1560466086077', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560463955471', '1560466121289', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560464184219', '1560466127798', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560464389908', '1560466196098', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560464404276', '1560466225719', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560464320668', '1560466269798', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560464388800', '1560466313806', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560464635197', '1560466450182', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560464630833', '1560466490855', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560464688033', '1560466515155', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560464704533', '1560466544843', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560464792465', '1560466714171', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560464822300', '1560466754853', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560464939961', '1560466769183', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560464940994', '1560466801078', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560465025703', '1560466830712', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560465181939', '1560467054129', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560465119210', '1560467058488', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560465242411', '1560467070538', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560465254499', '1560467096976', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560465257779', '1560467101405', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560465193971', '1560467137657', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560465356808', '1560467186097', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560465590016', '1560467408293', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560465693464', '1560467610743', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560465752781', '1560467631651', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560465943195', '1560467748232', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560465287519', '1560467749331', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560464880613', '1560467760231', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560465636224', '1560467800953', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560465878153', '1560467821891', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560465921081', '1560467835099', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560465951921', '1560467871428', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560465928881', '1560467894507', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560466121289', '1560467928520', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560465771425', '1560467936308', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560466196098', '1560468002240', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560466225719', '1560468050696', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560466086077', '1560468125436', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560466127798', '1560468191496', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560466490855', '1560468318057', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560466269798', '1560468322485', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560466515155', '1560468341140', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560466450182', '1560468377393', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560465988217', '1560468418053', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560466313806', '1560468482953', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560466714171', '1560468558854', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560466769183', '1560468595182', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560466754853', '1560468624882', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560466830712', '1560468873519', '0', '0');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560467058488', '1560468877878', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560466801078', '1560468896527', '0', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560467101405', '1560468903188', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560467096976', '1560468921939', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560467070538', '1560469018659', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560467186097', '1560469067144', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560467054129', '1560469175996', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560467137657', '1560469203516', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560467408293', '1560469233136', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560467748232', '1560469555461', '0', '0');
INSERT INTO `acl_rest` VALUES ('D3DEBF28B4D7', '1560467631651', '1560469600569', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560467800953', '1560469620294', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560467835099', '1560469658829', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560467610743', '1560469703989', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560466544843', '1560469719378', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560467871428', '1560469783042', '0', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560468002240', '1560469821658', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560467821891', '1560469884330', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560467928520', '1560469886606', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560467760231', '1560469924028', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560467894507', '1560469936058', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560467749331', '1560469948138', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560468125436', '1560470049335', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560468318057', '1560470124167', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560422810284', '1560470139603', '0', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560420661977', '1560470167143', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560468322485', '1560470262844', '0', '0');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560468050696', '1560470313471', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560468482953', '1560470407924', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560468341140', '1560470418951', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560468624882', '1560470443158', '0', '0');
INSERT INTO `acl_rest` VALUES ('FE3F8CDC52C2', '1560468377393', '1560470456259', '0', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560468191496', '1560470505753', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560467936308', '1560470517880', '0', '0');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560468558854', '1560470526592', '0', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560468896527', '1560470774141', '2', '3');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560468873519', '1560471001906', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560468418053', '1560471285635', '2', '4');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560469018659', '1560471412171', '2', '2');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560469719378', '1560471642038', '1', '2');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560468595182', '1560471716820', '2', '2');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560469886606', '1560471724488', '2', '1');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560469936058', '1560471890589', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560469175996', '1560471941178', '2', '1');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560469620294', '1560471952197', '2', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560470049335', '1560471966774', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560469233136', '1560471976847', '2', '3');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560468903188', '1560472079785', '2', '4');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560469555461', '1560472237864', '2', '0');
INSERT INTO `acl_rest` VALUES ('C22EE357A419', '1560469821658', '1560472242626', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560468921939', '1560472273470', '2', '0');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560470505753', '1560472374875', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560469658829', '1560472379538', '2', '4');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560470517880', '1560472434643', '2', '3');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560469783042', '1560472498083', '2', '3');
INSERT INTO `acl_rest` VALUES ('C1B39C04C9C3', '1560470526592', '1560472537471', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560469884330', '1560472544011', '0', '0');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560470418951', '1560472580311', '2', '2');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560470774141', '1560472594854', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560469948138', '1560472600610', '2', '4');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560470124167', '1560472620943', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560469924028', '1560472702432', '0', '0');
INSERT INTO `acl_rest` VALUES ('DF7392E24843', '1560471001906', '1560472891018', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560469203516', '1560472900877', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560470262844', '1560472964209', '2', '0');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560470167143', '1560472991689', '2', '4');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560469703989', '1560473284877', '2', '4');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560470139603', '1560473311917', '2', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560469067144', '1560473356866', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560471642038', '1560473526323', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4C47C3DEBCC', '1560471285635', '1560473635175', '1', '2');
INSERT INTO `acl_rest` VALUES ('E50FE166CAE5', '1560468877878', '1560473637588', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560470443158', '1560473773518', '2', '1');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560471716820', '1560473778108', '2', '4');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560471724488', '1560473799083', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560470407924', '1560473895872', '2', '2');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560471952197', '1560474006980', '2', '1');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560471890589', '1560474016860', '2', '3');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560472079785', '1560474049929', '2', '1');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560472237864', '1560474110340', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560474016860', '1560477831304', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560472702432', '1560477856568', '2', '4');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560473356866', '1560477865754', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560471941178', '1560477866874', '2', '4');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560472273470', '1560477868059', '2', '4');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560474110340', '1560477873442', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560471976847', '1560477874320', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560473895872', '1560477892162', '2', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560472620943', '1560477903896', '2', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560474049929', '1560477963674', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560472544011', '1560478038454', '0', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560473284877', '1560478047251', '2', '4');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560472374875', '1560478147698', '2', '1');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560473526323', '1560478167171', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560472434643', '1560478172683', '2', '4');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560472580311', '1560478182543', '2', '3');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560472498083', '1560478184703', '2', '3');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560472900877', '1560478370672', '0', '0');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560472379538', '1560478444360', '2', '4');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560473799083', '1560478445936', '2', '2');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560473778108', '1560478486168', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560471412171', '1560478576388', '2', '1');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560473773518', '1560478645641', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560472600610', '1560478667649', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560472594854', '1560478821721', '2', '4');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560474006980', '1560479356207', '2', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560472964209', '1560479520144', '2', '1');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560477874320', '1560479796281', '2', '1');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560477892162', '1560479803981', '2', '2');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560477903896', '1560479829201', '2', '3');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560477963674', '1560479908461', '2', '1');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560477873442', '1560479945902', '2', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560478184703', '1560480021741', '2', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560478172683', '1560480060242', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560478038454', '1560480138442', '0', '0');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560477866874', '1560480143870', '2', '3');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560478182543', '1560480153710', '2', '1');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560477865754', '1560480162608', '2', '3');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560477868059', '1560480375959', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560478576388', '1560480393685', '2', '3');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560478370672', '1560480522473', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560478645641', '1560480566797', '2', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560478445936', '1560480621268', '1', '4');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560472991689', '1560480653108', '2', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560477856568', '1560480689368', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560478821721', '1560480732308', '2', '4');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560478167171', '1560480901744', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560477831304', '1560480975425', '2', '3');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560478486168', '1560480988958', '2', '0');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560478047251', '1560480999940', '2', '1');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560478444360', '1560481139334', '2', '2');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560478147698', '1560481215262', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560471966774', '1560481258612', '2', '1');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560479520144', '1560481414302', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560478667649', '1560481429722', '2', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560479356207', '1560481634303', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560479796281', '1560481841180', '2', '2');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560479908461', '1560481855432', '2', '3');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560480021741', '1560481902768', '2', '2');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560480143870', '1560482135012', '2', '3');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560480393685', '1560482216217', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560480522473', '1560482396828', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560480621268', '1560482521998', '2', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560479945902', '1560482576048', '2', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560480162608', '1560482617755', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560480060242', '1560482642302', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560480138442', '1560482677115', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560480689368', '1560482705735', '2', '4');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560479829201', '1560482766187', '2', '4');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560480375959', '1560482769535', '2', '4');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560479803981', '1560482776127', '2', '2');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560480901744', '1560482869595', '2', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560480975425', '1560482959951', '2', '3');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560480999940', '1560483047884', '2', '1');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560481258612', '1560483107468', '2', '2');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560480732308', '1560483109452', '2', '2');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560481429722', '1560483266725', '2', '4');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560480153710', '1560483282153', '2', '1');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560481414302', '1560483332733', '2', '3');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560481634303', '1560483494699', '2', '4');
INSERT INTO `acl_rest` VALUES ('C6F767E82801', '1560480653108', '1560483512234', '2', '3');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560480566797', '1560483611150', '2', '3');
INSERT INTO `acl_rest` VALUES ('E32233820D08', '1560481215262', '1560483615761', '2', '3');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560480988958', '1560483661877', '2', '2');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560481902768', '1560483711163', '2', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560473311917', '1560483730024', '2', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560481841180', '1560483824532', '2', '0');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560481855432', '1560483904453', '2', '1');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560481139334', '1560484084286', '2', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560482216217', '1560484208220', '2', '4');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560482396828', '1560484240791', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560482521998', '1560484336389', '2', '3');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560482135012', '1560484421316', '2', '3');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560482705735', '1560484510204', '2', '2');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560482677115', '1560484592423', '0', '0');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560482769535', '1560484644137', '2', '3');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560482869595', '1560484687946', '2', '2');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560482617755', '1560484688948', '2', '3');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560482642302', '1560484690298', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560482776127', '1560484797645', '2', '2');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560482576048', '1560484832425', '2', '2');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560483047884', '1560484926276', '2', '3');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560482959951', '1560485021479', '2', '4');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560482766187', '1560485042816', '2', '2');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560483107468', '1560485050983', '2', '0');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560483109452', '1560485150508', '2', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560483332733', '1560485162092', '2', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560483266725', '1560485225598', '2', '4');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560483661877', '1560485468945', '2', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560483494699', '1560485507166', '2', '3');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560483282153', '1560485508922', '2', '1');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560483730024', '1560485554197', '2', '4');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560483711163', '1560485601119', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560483611150', '1560485622971', '2', '4');
INSERT INTO `acl_rest` VALUES ('C0254C2CEF72', '1560483904453', '1560485722209', '2', '4');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560483824532', '1560485806797', '2', '3');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560484084286', '1560485888937', '2', '2');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560484208220', '1560486119375', '1', '2');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560484421316', '1560486224340', '2', '3');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560484510204', '1560486315674', '1', '4');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560484832425', '1560486633912', '2', '2');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560484240791', '1560486649665', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560484688948', '1560486668779', '2', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560484336389', '1560486734246', '2', '4');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560484592423', '1560486774973', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560484797645', '1560486798852', '2', '1');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560485162092', '1560486964950', '1', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560484687946', '1560487002224', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560485042816', '1560487003418', '2', '2');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560485150508', '1560487101310', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560485050983', '1560487205343', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560485468945', '1560487274132', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560485507166', '1560487391719', '2', '2');
INSERT INTO `acl_rest` VALUES ('EB77A5C517F7', '1560485508922', '1560487432488', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560485622971', '1560487520292', '0', '0');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560486119375', '1560487920340', '2', '2');
INSERT INTO `acl_rest` VALUES ('C387933E50E1', '1560485888937', '1560487970477', '2', '4');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560486224340', '1560488024902', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560485601119', '1560488037054', '0', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560485806797', '1560488058825', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560486315674', '1560488116132', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560486649665', '1560488589993', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560486734246', '1560488627048', '2', '4');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560486668779', '1560488664496', '0', '0');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560486964950', '1560488798984', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560486633912', '1560488873465', '2', '1');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560484926276', '1560488911965', '2', '3');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560486774973', '1560488919788', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560487003418', '1560489028783', '2', '2');
INSERT INTO `acl_rest` VALUES ('EED286C826DF', '1560487101310', '1560489062903', '0', '0');
INSERT INTO `acl_rest` VALUES ('D21CF74304A8', '1560487274132', '1560489077602', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560487205343', '1560489125412', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560484690298', '1560489180618', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560487002224', '1560489190162', '1', '2');
INSERT INTO `acl_rest` VALUES ('C12B7D96A901', '1560484644137', '1560489389003', '2', '2');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560485021479', '1560489441507', '0', '0');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560485554197', '1560489718395', '0', '0');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560487520292', '1560489758164', '0', '0');
INSERT INTO `acl_rest` VALUES ('F69A5D81EE16', '1560487391719', '1560489769563', '2', '1');
INSERT INTO `acl_rest` VALUES ('ED279DA73E1C', '1560487920340', '1560489774384', '1', '2');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560488058825', '1560489886134', '0', '0');
INSERT INTO `acl_rest` VALUES ('D099F84186E2', '1560488116132', '1560489921712', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83D74939BB9', '1560485225598', '1560490007580', '0', '0');
INSERT INTO `acl_rest` VALUES ('FB8F947FAD60', '1560488037054', '1560490405214', '0', '0');
INSERT INTO `acl_rest` VALUES ('E95A3C5067BF', '1560488589993', '1560490465312', '0', '0');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560488664496', '1560490468458', '0', '0');
INSERT INTO `acl_rest` VALUES ('EDFE4421FD2E', '1560488627048', '1560490524462', '2', '1');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560488919788', '1560490738462', '0', '0');
INSERT INTO `acl_rest` VALUES ('C83B5E020A0E', '1560486798852', '1560490873631', '0', '0');
INSERT INTO `acl_rest` VALUES ('E4996CF47AB3', '1560489125412', '1560490925566', '0', '0');
INSERT INTO `acl_rest` VALUES ('E92342AD1C05', '1560488873465', '1560490962507', '0', '0');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560489180618', '1560490982168', '0', '0');
INSERT INTO `acl_rest` VALUES ('F308B3D99765', '1560489028783', '1560490996140', '2', '2');
INSERT INTO `acl_rest` VALUES ('FCC5B71353D5', '1560488798984', '1560491051453', '0', '0');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560489190162', '1560491086880', '0', '0');
INSERT INTO `acl_rest` VALUES ('D2C1890237C7', '1560489441507', '1560491312310', '1', '3');
INSERT INTO `acl_rest` VALUES ('EF35169932D7', '1560488911965', '1560491323808', '0', '0');
INSERT INTO `acl_rest` VALUES ('E8E49E09CECA', '1560490738462', '1560495192937', '2', '1');
INSERT INTO `acl_rest` VALUES ('C52476358C7A', '1560491086880', '1560495195340', '2', '2');
INSERT INTO `acl_rest` VALUES ('D9C85F459996', '1560489758164', '1560495198142', '2', '3');
INSERT INTO `acl_rest` VALUES ('F425AABEF7A2', '1560489718395', '1560495201587', '2', '2');
INSERT INTO `acl_rest` VALUES ('DD439D909FCB', '1560490982168', '1560495209509', '2', '4');
INSERT INTO `acl_rest` VALUES ('E421159D6250', '1560490468458', '1560495210273', '2', '1');
INSERT INTO `acl_rest` VALUES ('E596E87F892A', '1560488024902', '1560495223458', '2', '0');
INSERT INTO `acl_rest` VALUES ('E0993112ED98', '1560489886134', '1560495254308', '2', '4');
INSERT INTO `acl_rest` VALUES ('F47A4F905CE1', '1560470313471', '1560495268675', '2', '4');

-- ----------------------------
-- Table structure for acl_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_role`;
CREATE TABLE `acl_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `description` varchar(100) DEFAULT NULL COMMENT '角色介绍',
  `company_id` varchar(20) DEFAULT NULL COMMENT '公司ID',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of acl_role
-- ----------------------------
INSERT INTO `acl_role` VALUES ('50', '超级管理员', '超级管理员', '1');

-- ----------------------------
-- Table structure for acl_role_organ
-- ----------------------------
DROP TABLE IF EXISTS `acl_role_organ`;
CREATE TABLE `acl_role_organ` (
  `role_id` varchar(20) NOT NULL,
  `organ_id` varchar(20) NOT NULL,
  `company_id` varchar(20) NOT NULL,
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_role_organ
-- ----------------------------
INSERT INTO `acl_role_organ` VALUES ('50', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '165', '1');

-- ----------------------------
-- Table structure for acl_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `acl_role_permission`;
CREATE TABLE `acl_role_permission` (
  `company_id` varchar(20) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `perm_token` varchar(100) NOT NULL,
  PRIMARY KEY (`role_name`,`perm_token`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_role_permission
-- ----------------------------
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:asset:show');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:board:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:comInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:comInfoEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:configure:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:danger:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:dangerZone:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:deploy:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:detain:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:gateway:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:lose:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:mattess:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:organ:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:organAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:organDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:organUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:static:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:unit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:video:control');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:video:linkage');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:video:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:work:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:role:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:roleAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:roleDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:roleUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:user:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:userAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:userDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'security:userUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:log:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:param:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:security:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:sysParam:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:sysParamEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'system:system:open');

-- ----------------------------
-- Table structure for acl_sign
-- ----------------------------
DROP TABLE IF EXISTS `acl_sign`;
CREATE TABLE `acl_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(20) DEFAULT NULL,
  `person_name` varchar(30) DEFAULT NULL,
  `person_sex` varchar(10) DEFAULT NULL,
  `organ_id` varchar(10) DEFAULT NULL,
  `organ_name` varchar(20) DEFAULT NULL,
  `sign_set_id` int(10) DEFAULT NULL,
  `sign_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sign_state` varchar(10) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sign
-- ----------------------------

-- ----------------------------
-- Table structure for acl_sign_set
-- ----------------------------
DROP TABLE IF EXISTS `acl_sign_set`;
CREATE TABLE `acl_sign_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_name` varchar(30) DEFAULT NULL,
  `begin_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `sign_circle` varchar(30) DEFAULT NULL,
  `fence_id` varchar(30) DEFAULT NULL,
  `sign_state` varchar(10) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sign_set
-- ----------------------------

-- ----------------------------
-- Table structure for acl_sign_set_person
-- ----------------------------
DROP TABLE IF EXISTS `acl_sign_set_person`;
CREATE TABLE `acl_sign_set_person` (
  `sign_set_id` int(11) DEFAULT NULL,
  `person_id` varchar(50) DEFAULT NULL,
  `company_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sign_set_person
-- ----------------------------

-- ----------------------------
-- Table structure for acl_site
-- ----------------------------
DROP TABLE IF EXISTS `acl_site`;
CREATE TABLE `acl_site` (
  `device_id` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `level_id` varchar(10) DEFAULT NULL,
  `place_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_site
-- ----------------------------

-- ----------------------------
-- Table structure for acl_sleep
-- ----------------------------
DROP TABLE IF EXISTS `acl_sleep`;
CREATE TABLE `acl_sleep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(33) NOT NULL,
  `heart` int(11) DEFAULT NULL COMMENT '心率',
  `breath` int(33) DEFAULT NULL COMMENT '呼吸率',
  `date` varchar(33) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sleep
-- ----------------------------

-- ----------------------------
-- Table structure for acl_sleep_avg
-- ----------------------------
DROP TABLE IF EXISTS `acl_sleep_avg`;
CREATE TABLE `acl_sleep_avg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(33) NOT NULL,
  `sleep_quality` int(11) DEFAULT NULL,
  `sleep_start_time` varchar(33) DEFAULT NULL,
  `sleep_stop_time` varchar(33) DEFAULT NULL,
  `heart` int(11) DEFAULT NULL,
  `breath` int(11) DEFAULT NULL,
  `body_move` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sleep_avg
-- ----------------------------

-- ----------------------------
-- Table structure for acl_sleep_move
-- ----------------------------
DROP TABLE IF EXISTS `acl_sleep_move`;
CREATE TABLE `acl_sleep_move` (
  `date` varchar(33) DEFAULT NULL,
  `move` varchar(33) DEFAULT NULL,
  `sleep_avg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sleep_move
-- ----------------------------

-- ----------------------------
-- Table structure for acl_sleep_status
-- ----------------------------
DROP TABLE IF EXISTS `acl_sleep_status`;
CREATE TABLE `acl_sleep_status` (
  `date` varchar(33) DEFAULT NULL,
  `status` varchar(33) DEFAULT NULL,
  `sleep_avg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sleep_status
-- ----------------------------

-- ----------------------------
-- Table structure for acl_step
-- ----------------------------
DROP TABLE IF EXISTS `acl_step`;
CREATE TABLE `acl_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL,
  `steps` int(11) NOT NULL,
  `kilometre` int(20) DEFAULT NULL,
  `calorie` int(20) DEFAULT NULL,
  `timestamp` bigint(20) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_step
-- ----------------------------

-- ----------------------------
-- Table structure for acl_tags
-- ----------------------------
DROP TABLE IF EXISTS `acl_tags`;
CREATE TABLE `acl_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(26) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_tags
-- ----------------------------
INSERT INTO `acl_tags` VALUES ('1', '二货');
INSERT INTO `acl_tags` VALUES ('2', '傻缺');
INSERT INTO `acl_tags` VALUES ('3', '敏而好学');

-- ----------------------------
-- Table structure for acl_user
-- ----------------------------
DROP TABLE IF EXISTS `acl_user`;
CREATE TABLE `acl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `company_id` varchar(20) DEFAULT NULL COMMENT '公司id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织机构id',
  `role_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of acl_user
-- ----------------------------
INSERT INTO `acl_user` VALUES ('94', 'super', 'super', '202CB962AC59075B964B07152D234B70', '1', '1', '超级管理员');

-- ----------------------------
-- Table structure for acl_user_area
-- ----------------------------
DROP TABLE IF EXISTS `acl_user_area`;
CREATE TABLE `acl_user_area` (
  `areaId` varchar(24) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_user_area
-- ----------------------------
INSERT INTO `acl_user_area` VALUES ('1', '1', 'a123', '25');
INSERT INTO `acl_user_area` VALUES ('2', '1', 'a123', '26');
INSERT INTO `acl_user_area` VALUES ('1', '1', 'afdasf', '27');
INSERT INTO `acl_user_area` VALUES ('2', '1', 'afdasf', '28');
INSERT INTO `acl_user_area` VALUES ('', '0', '', '29');
INSERT INTO `acl_user_area` VALUES ('2', '1', '111', '30');
INSERT INTO `acl_user_area` VALUES ('', '1', '111', '31');
INSERT INTO `acl_user_area` VALUES ('', '0', '', '32');

-- ----------------------------
-- Table structure for acl_user_manager
-- ----------------------------
DROP TABLE IF EXISTS `acl_user_manager`;
CREATE TABLE `acl_user_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(26) DEFAULT NULL,
  `user_role` varchar(26) DEFAULT NULL,
  `user_tag` varchar(26) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_user_manager
-- ----------------------------

-- ----------------------------
-- Table structure for acl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_user_role`;
CREATE TABLE `acl_user_role` (
  `login_name` varchar(50) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`login_name`,`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_user_role
-- ----------------------------
INSERT INTO `acl_user_role` VALUES ('super', '超级管理员', '1');

-- ----------------------------
-- Table structure for acl_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `acl_userinfo`;
CREATE TABLE `acl_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) DEFAULT NULL,
  `user_name` varchar(26) DEFAULT NULL,
  `user_role` varchar(26) DEFAULT NULL,
  `danger_area` varchar(64) DEFAULT NULL,
  `alert_area` varchar(64) DEFAULT NULL,
  `user_tag` varchar(64) DEFAULT NULL,
  `relation_id` varchar(24) DEFAULT NULL,
  `user_area` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_userinfo
-- ----------------------------
INSERT INTO `acl_userinfo` VALUES ('1', 'a123', 'a123', '水手', null, null, '敏而好学', null, null);
INSERT INTO `acl_userinfo` VALUES ('2', 'ass', 'da', '水手', null, null, '傻缺', null, null);
INSERT INTO `acl_userinfo` VALUES ('3', 'afdasf', 'dasda', '水手', null, null, '傻缺', null, null);
INSERT INTO `acl_userinfo` VALUES ('4', '111', '', '水手', null, null, '二货', null, null);
INSERT INTO `acl_userinfo` VALUES ('5', 'eqe', 'rewq', '水手', null, null, '傻缺', null, null);
INSERT INTO `acl_userinfo` VALUES ('6', 'cs001', 'csrw01', '水手', null, null, null, null, null);
INSERT INTO `acl_userinfo` VALUES ('7', '', 'ssssss', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for acl_work
-- ----------------------------
DROP TABLE IF EXISTS `acl_work`;
CREATE TABLE `acl_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `work` int(11) DEFAULT NULL,
  `strength` tinyint(4) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `company_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_work
-- ----------------------------

-- ----------------------------
-- Table structure for braceletrz
-- ----------------------------
DROP TABLE IF EXISTS `braceletrz`;
CREATE TABLE `braceletrz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `xgsj` datetime DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `bindObj` varchar(100) DEFAULT NULL,
  `cz` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of braceletrz
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `company_template_dir` varchar(50) DEFAULT NULL,
  `index_template` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '上海华东师范学院', 'huadongshifan', '11');

-- ----------------------------
-- Table structure for companyinfo
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo`;
CREATE TABLE `companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(30) DEFAULT NULL,
  `companySite` varchar(30) DEFAULT NULL,
  `companyLinker` varchar(10) DEFAULT NULL,
  `companyLinkMethod` varchar(30) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyinfo
-- ----------------------------
INSERT INTO `companyinfo` VALUES ('1', '懋特物联', '上海徐汇区', '陈骞', '82227000', 'http://47.103.35.78:8091/upload/小三班_20190603181827.png');

-- ----------------------------
-- Table structure for custom_param
-- ----------------------------
DROP TABLE IF EXISTS `custom_param`;
CREATE TABLE `custom_param` (
  `custom_param_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL COMMENT '公司id',
  `param_name` varchar(100) DEFAULT NULL COMMENT '变量名',
  `param_value` varchar(200) DEFAULT NULL COMMENT '变量值',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`custom_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_param
-- ----------------------------
INSERT INTO `custom_param` VALUES ('3', '1', '变量', '变量', '变量');
INSERT INTO `custom_param` VALUES ('4', '1', '1212', '21', '21');
INSERT INTO `custom_param` VALUES ('5', '1', '21212', '2121', '21212');
INSERT INTO `custom_param` VALUES ('6', '1', 'Linterval', '1000', '定位频率');
INSERT INTO `custom_param` VALUES ('7', '1', 'lo', '222', 'test');
INSERT INTO `custom_param` VALUES ('8', '1', '444', '444', '444');
INSERT INTO `custom_param` VALUES ('9', '1', '333', '333', '333');
INSERT INTO `custom_param` VALUES ('10', '1', '222', '222', '222');
INSERT INTO `custom_param` VALUES ('11', '1', '1', '1', '1');
INSERT INTO `custom_param` VALUES ('12', '1', '2', '2', '2');

-- ----------------------------
-- Table structure for dict_define
-- ----------------------------
DROP TABLE IF EXISTS `dict_define`;
CREATE TABLE `dict_define` (
  `dict_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL COMMENT '字典描述',
  PRIMARY KEY (`dict_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_define
-- ----------------------------
INSERT INTO `dict_define` VALUES ('newsParamType', '模块变量类型');
INSERT INTO `dict_define` VALUES ('templateType', '模板类型定义');
INSERT INTO `dict_define` VALUES ('useOrNot', '是否启用');
INSERT INTO `dict_define` VALUES ('viewOrNot', '显示类型');

-- ----------------------------
-- Table structure for dict_globalparam
-- ----------------------------
DROP TABLE IF EXISTS `dict_globalparam`;
CREATE TABLE `dict_globalparam` (
  `param_name` varchar(100) NOT NULL DEFAULT '' COMMENT '参数名称',
  `param_value` varchar(500) NOT NULL DEFAULT '' COMMENT '参数值',
  `param_description` varchar(200) DEFAULT '' COMMENT '参数说明',
  PRIMARY KEY (`param_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公共参数表';

-- ----------------------------
-- Records of dict_globalparam
-- ----------------------------
INSERT INTO `dict_globalparam` VALUES ('current_version', 'v2.3.0', '当前系统的最新版本');

-- ----------------------------
-- Table structure for dict_value
-- ----------------------------
DROP TABLE IF EXISTS `dict_value`;
CREATE TABLE `dict_value` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(50) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(20) NOT NULL COMMENT '字典code',
  `dict_value` varchar(50) DEFAULT NULL COMMENT '字典值',
  `state` tinyint(1) DEFAULT '1' COMMENT '状态',
  `sequence` double DEFAULT NULL COMMENT '排序号',
  `systemornot` varchar(50) DEFAULT NULL COMMENT '是否系统值',
  `company_id` varchar(50) DEFAULT NULL COMMENT '公司ID',
  PRIMARY KEY (`dict_name`,`dict_code`,`dict_id`),
  KEY `dict_id` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_value
-- ----------------------------
INSERT INTO `dict_value` VALUES ('1', 'newsParamType', '1', '单一变量', '1', '8', '1', null);
INSERT INTO `dict_value` VALUES ('2', 'newsParamType', '2', '数组变量', '1', '9', '1', null);
INSERT INTO `dict_value` VALUES ('3', 'templateType', '1', '首页模板', '1', '1', '1', null);
INSERT INTO `dict_value` VALUES ('4', 'templateType', '3', '列表页模板', '1', '3', '1', null);
INSERT INTO `dict_value` VALUES ('5', 'templateType', '4', '内容页模板', '1', '4', '1', null);
INSERT INTO `dict_value` VALUES ('6', 'templateType', '5', '单页模板', '1', '5', '1', null);
INSERT INTO `dict_value` VALUES ('7', 'templateType', '6', '模板片段', '1', '10', '1', null);
INSERT INTO `dict_value` VALUES ('8', 'useOrNot', '0', '停用', '1', '12', '1', null);
INSERT INTO `dict_value` VALUES ('9', 'useOrNot', '1', '在用', '1', '11', '1', null);
INSERT INTO `dict_value` VALUES ('10', 'viewOrNot', '0', '否', '1', '7', '1', null);
INSERT INTO `dict_value` VALUES ('11', 'viewOrNot', '1', '是', '1', '6', '1', null);

-- ----------------------------
-- Table structure for journey
-- ----------------------------
DROP TABLE IF EXISTS `journey`;
CREATE TABLE `journey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `touristId` varchar(45) DEFAULT NULL,
  `deviceId` varchar(45) DEFAULT NULL,
  `enterTime` datetime DEFAULT NULL,
  `leaveTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of journey
-- ----------------------------

-- ----------------------------
-- Table structure for key_word_link
-- ----------------------------
DROP TABLE IF EXISTS `key_word_link`;
CREATE TABLE `key_word_link` (
  `key_word_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL,
  `key_word` varchar(20) DEFAULT NULL,
  `key_word_link` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`key_word_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of key_word_link
-- ----------------------------

-- ----------------------------
-- Table structure for key_word_shield
-- ----------------------------
DROP TABLE IF EXISTS `key_word_shield`;
CREATE TABLE `key_word_shield` (
  `key_word_shield_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL,
  `key_word` varchar(20) DEFAULT NULL,
  `replace_word` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`key_word_shield_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of key_word_shield
-- ----------------------------
INSERT INTO `key_word_shield` VALUES ('2', '1', 'a', 'a');
INSERT INTO `key_word_shield` VALUES ('3', '2', 'b', 'b');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(45) DEFAULT NULL,
  `journeyId` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('3', '0000000006', '26', '303.512024428139', '305.46965397356', '0');
INSERT INTO `location` VALUES ('4', '0000000006', '26', '309.989937374921', '315.55840563652', '0');
INSERT INTO `location` VALUES ('5', '0000000006', '26', '317.219621707586', '326.81797186303', '0');
INSERT INTO `location` VALUES ('6', '0000000006', '26', '322.775533892788', '335.470792417767', '0');
INSERT INTO `location` VALUES ('7', '0000000006', '26', '329.845751534123', '346.482003987374', '0');
INSERT INTO `location` VALUES ('8', '0000000006', '26', '333.156679871458', '351.638469355718', '0');
INSERT INTO `location` VALUES ('9', '0000000006', '26', '343.203866013925', '367.286034665042', '0');
INSERT INTO `location` VALUES ('10', '0000000006', '26', '352.12869319149', '381.185629452592', '0');
INSERT INTO `location` VALUES ('11', '0000000006', '26', '363.908373333409', '385.36696420617', '0');
INSERT INTO `location` VALUES ('12', '0000000006', '26', '366.120868724435', '388.812721618917', '0');
INSERT INTO `location` VALUES ('13', '0000000006', '26', '370.736660704435', '396.00139170397', '0');
INSERT INTO `location` VALUES ('14', '0000000006', '26', '379.039134842835', '408.93172906086', '0');
INSERT INTO `location` VALUES ('15', '0000000006', '26', '384.820462401505', '417.935613259495', '0');
INSERT INTO `location` VALUES ('16', '0000000006', '26', '390.729754532526', '427.138790471589', '0');
INSERT INTO `location` VALUES ('17', '0000000006', '26', '401.406159437906', '443.766305942771', '0');
INSERT INTO `location` VALUES ('18', '0000000006', '26', '410.319102725967', '457.647392669009', '0');
INSERT INTO `location` VALUES ('19', '0000000006', '26', '416.018382252495', '466.523494628591', '0');
INSERT INTO `location` VALUES ('20', '0000000006', '26', '418.223756837654', '469.958162043274', '0');
INSERT INTO `location` VALUES ('21', '0000000006', '26', '424.858905533323', '480.291793876143', '0');
INSERT INTO `location` VALUES ('22', '0000000006', '26', '431.13614339883', '490.06801261738', '0');
INSERT INTO `location` VALUES ('23', '0000000006', '26', '436.41854060749', '498.294858834842', '0');
INSERT INTO `location` VALUES ('24', '0000000006', '26', '445.793334963954', '512.895235982652', '0');
INSERT INTO `location` VALUES ('25', '0000000006', '26', '460.197685358476', '535.328682555715', '0');
INSERT INTO `location` VALUES ('26', '0000000006', '26', '467.035406261334', '545.97780190886', '0');
INSERT INTO `location` VALUES ('27', '0000000006', '26', '473.779253474368', '556.480721652332', '0');
INSERT INTO `location` VALUES ('28', '0000000006', '26', '477.18367269122', '561.782790438621', '0');
INSERT INTO `location` VALUES ('29', '0000000006', '26', '483.945286460102', '572.313379953412', '0');
INSERT INTO `location` VALUES ('30', '0000000006', '26', '486.835348809266', '576.814385380733', '0');
INSERT INTO `location` VALUES ('31', '0000000006', '26', '493.458545678849', '587.129403347332', '0');
INSERT INTO `location` VALUES ('32', '0000000006', '26', '503.350373255061', '602.53501202548', '0');
INSERT INTO `location` VALUES ('33', '0000000006', '26', '512.134984383208', '596.894478086242', '0');
INSERT INTO `location` VALUES ('34', '0000000006', '26', '524.775560219508', '588.778057680596', '0');
INSERT INTO `location` VALUES ('35', '0000000006', '26', '534.799336656858', '582.341864846397', '0');
INSERT INTO `location` VALUES ('36', '0000000006', '26', '555.886527955755', '568.801935022581', '0');
INSERT INTO `location` VALUES ('37', '0000000006', '26', '560.654099235315', '565.740712708034', '0');
INSERT INTO `location` VALUES ('38', '0000000006', '26', '568.960565209006', '560.407192241818', '0');
INSERT INTO `location` VALUES ('39', '0000000006', '26', '580.799236042611', '552.805669117083', '0');
INSERT INTO `location` VALUES ('40', '0000000006', '26', '586.746273502125', '548.987120277644', '0');
INSERT INTO `location` VALUES ('41', '0000000006', '26', '595.214078119554', '543.550005459618', '0');
INSERT INTO `location` VALUES ('42', '0000000006', '26', '604.821175658244', '558.512173377888', '0');
INSERT INTO `location` VALUES ('43', '0000000006', '26', '608.705496955141', '564.561645370718', '0');
INSERT INTO `location` VALUES ('44', '0000000006', '26', '612.055638674243', '569.779181962735', '0');
INSERT INTO `location` VALUES ('45', '0000000006', '26', '620.884279040004', '583.528974666572', '0');
INSERT INTO `location` VALUES ('46', '0000000006', '26', '626.538478731891', '592.334868943457', '0');
INSERT INTO `location` VALUES ('47', '0000000006', '26', '628.52633192026', '595.430766854503', '0');
INSERT INTO `location` VALUES ('48', '0000000006', '26', '632.556168211843', '601.706865024109', '0');
INSERT INTO `location` VALUES ('49', '0000000006', '26', '635.963866515775', '607.014040685947', '0');
INSERT INTO `location` VALUES ('50', '0000000006', '26', '645.048494856611', '621.162511039583', '0');
INSERT INTO `location` VALUES ('51', '0000000006', '26', '653.346760630955', '634.086294257786', '0');
INSERT INTO `location` VALUES ('52', '0000000006', '26', '658.481502963051', '642.083181629905', '0');
INSERT INTO `location` VALUES ('53', '0000000006', '26', '665.903850880205', '653.642803611157', '0');
INSERT INTO `location` VALUES ('54', '0000000006', '26', '648.8879071633', '664.568615424936', '0');
INSERT INTO `location` VALUES ('55', '0000000006', '26', '635.855800867604', '672.936434647473', '0');
INSERT INTO `location` VALUES ('56', '0000000006', '26', '616.741066029338', '670.627895018464', '0');
INSERT INTO `location` VALUES ('57', '0000000006', '26', '609.885159517147', '666.989306010936', '0');
INSERT INTO `location` VALUES ('58', '0000000006', '26', '599.901413805524', '666.989306010936', '0');
INSERT INTO `location` VALUES ('59', '0000000006', '26', '582.450563677561', '666.989306010936', '0');
INSERT INTO `location` VALUES ('60', '0000000006', '26', '565.735309610583', '666.989306010936', '0');
INSERT INTO `location` VALUES ('61', '0000000006', '26', '556.570498612451', '673.298286317081', '0');
INSERT INTO `location` VALUES ('62', '0000000006', '26', '556.570498612451', '691.840072131414', '0');
INSERT INTO `location` VALUES ('63', '0000000006', '26', '556.570498612451', '698.809529741226', '0');
INSERT INTO `location` VALUES ('64', '0000000006', '26', '556.570498612451', '701.970674059984', '0');
INSERT INTO `location` VALUES ('65', '0000000006', '26', '556.570498612451', '714.018399327459', '0');
INSERT INTO `location` VALUES ('66', '0000000006', '26', '562.723427189954', '723.096356118728', '0');
INSERT INTO `location` VALUES ('67', '0000000006', '26', '554.30068987029', '730.115992618887', '0');
INSERT INTO `location` VALUES ('68', '0000000006', '26', '549.951225056256', '733.740902289698', '0');
INSERT INTO `location` VALUES ('69', '0000000006', '26', '532.644759370569', '748.164372190911', '0');
INSERT INTO `location` VALUES ('70', '0000000006', '26', '526.0583693936', '753.653569079275', '0');
INSERT INTO `location` VALUES ('71', '0000000006', '26', '520.567664377174', '747.065369526198', '0');
INSERT INTO `location` VALUES ('72', '0000000006', '26', '512.51543642705', '737.403644042205', '0');
INSERT INTO `location` VALUES ('73', '0000000006', '26', '504.964799641365', '728.343768899015', '0');
INSERT INTO `location` VALUES ('74', '0000000006', '26', '499.083119839719', '721.286445636406', '0');
INSERT INTO `location` VALUES ('75', '0000000006', '26', '482.001279081455', '700.790247914496', '0');
INSERT INTO `location` VALUES ('76', '0000000006', '26', '482.001279081455', '700.790247914496', '0');
INSERT INTO `location` VALUES ('77', '0000000006', '26', '468.434019628095', '684.511133957414', '0');
INSERT INTO `location` VALUES ('78', '0000000006', '26', '459.508494938579', '673.801555206682', '0');
INSERT INTO `location` VALUES ('79', '0000000006', '26', '450.998016167822', '663.589982691632', '0');
INSERT INTO `location` VALUES ('80', '0000000006', '26', '443.041869934856', '654.043543955725', '0');
INSERT INTO `location` VALUES ('81', '0000000006', '26', '440.323124058714', '650.78136900505', '0');
INSERT INTO `location` VALUES ('82', '0000000006', '26', '436.384045667361', '646.054938716077', '0');
INSERT INTO `location` VALUES ('83', '0000000006', '26', '429.487863098722', '637.780331578973', '0');
INSERT INTO `location` VALUES ('84', '0000000006', '26', '425.014617865592', '637.599031366073', '0');
INSERT INTO `location` VALUES ('85', '0000000006', '26', '417.396865350061', '643.947781371889', '0');
INSERT INTO `location` VALUES ('86', '0000000006', '26', '411.083122514537', '649.209750014481', '0');
INSERT INTO `location` VALUES ('87', '0000000006', '26', '390.475919284078', '666.38410444021', '0');
INSERT INTO `location` VALUES ('88', '0000000006', '26', '378.35949979909', '676.482111446732', '0');
INSERT INTO `location` VALUES ('89', '0000000006', '26', '362.253874222371', '680.559319094984', '0');
INSERT INTO `location` VALUES ('90', '0000000006', '26', '362.253874222371', '673.027796726437', '0');
INSERT INTO `location` VALUES ('91', '0000000006', '26', '362.253874222371', '666.02646817057', '0');
INSERT INTO `location` VALUES ('92', '0000000006', '26', '362.253874222371', '658.007770625405', '0');
INSERT INTO `location` VALUES ('93', '0000000006', '26', '362.253874222371', '643.286054650085', '0');
INSERT INTO `location` VALUES ('94', '0000000006', '26', '362.253874222371', '637.453965847377', '0');
INSERT INTO `location` VALUES ('95', '0000000006', '26', '362.253874222371', '626.073974543015', '0');
INSERT INTO `location` VALUES ('96', '0000000006', '26', '368.114028981743', '622.782601948125', '0');
INSERT INTO `location` VALUES ('97', '0000000006', '26', '377.797281434848', '613.855393138245', '0');
INSERT INTO `location` VALUES ('98', '0000000006', '26', '389.194093632601', '613.855393138245', '0');
INSERT INTO `location` VALUES ('99', '0000000006', '26', '409.150279213065', '613.855393138245', '0');
INSERT INTO `location` VALUES ('100', '0000000006', '26', '421.000615365659', '613.855393138245', '0');
INSERT INTO `location` VALUES ('101', '0000000006', '26', '405.34139082124', '613.855393138245', '0');
INSERT INTO `location` VALUES ('102', '0000000006', '26', '392.225804319461', '613.855393138245', '0');
INSERT INTO `location` VALUES ('103', '0000000006', '26', '374.108175916221', '613.855393138245', '0');
INSERT INTO `location` VALUES ('104', '0000000006', '26', '356.675912476467', '613.855393138245', '0');
INSERT INTO `location` VALUES ('105', '0000000006', '26', '339.949279495604', '613.855393138245', '0');
INSERT INTO `location` VALUES ('106', '0000000006', '26', '329.675477166982', '613.855393138245', '0');
INSERT INTO `location` VALUES ('107', '0000000006', '26', '314.741682426162', '613.855393138245', '0');
INSERT INTO `location` VALUES ('108', '0000000006', '26', '301.869217842906', '613.855393138245', '0');
INSERT INTO `location` VALUES ('109', '0000000006', '26', '298.46812087772', '613.855393138245', '0');
INSERT INTO `location` VALUES ('110', '0000000006', '26', '291.624587767846', '600.631265430009', '0');
INSERT INTO `location` VALUES ('111', '0000000006', '26', '291.624587767846', '582.696665224615', '0');
INSERT INTO `location` VALUES ('112', '0000000006', '26', '291.624587767846', '566.165712697428', '0');
INSERT INTO `location` VALUES ('113', '0000000006', '26', '291.624587767846', '549.589761682317', '0');
INSERT INTO `location` VALUES ('114', '0000000006', '26', '291.624587767846', '530.770676843585', '0');
INSERT INTO `location` VALUES ('115', '0000000006', '26', '291.624587767846', '519.044762311267', '0');
INSERT INTO `location` VALUES ('116', '0000000006', '26', '291.624587767846', '512.946987742089', '0');
INSERT INTO `location` VALUES ('117', '0000000006', '26', '291.624587767846', '504.548514699792', '0');
INSERT INTO `location` VALUES ('118', '0000000006', '26', '291.624587767846', '490.85874040471', '0');
INSERT INTO `location` VALUES ('119', '0000000006', '26', '291.624587767846', '478.597645381462', '0');
INSERT INTO `location` VALUES ('120', '0000000006', '26', '291.624587767846', '463.740028097291', '0');
INSERT INTO `location` VALUES ('121', '0000000006', '26', '291.624587767846', '450.221696468998', '0');
INSERT INTO `location` VALUES ('122', '0000000006', '26', '291.624587767846', '436.733318665294', '0');
INSERT INTO `location` VALUES ('123', '0000000006', '26', '291.624587767846', '423.458432974057', '0');
INSERT INTO `location` VALUES ('124', '0000000006', '22', '305.140146743351', '308.005304243955', '0');
INSERT INTO `location` VALUES ('125', '0000000006', '22', '314.30901549058', '322.284971257237', '0');
INSERT INTO `location` VALUES ('126', '0000000006', '22', '318.039641336465', '328.095076767414', '0');
INSERT INTO `location` VALUES ('127', '0000000006', '22', '326.455987479037', '341.202759263225', '0');
INSERT INTO `location` VALUES ('128', '0000000006', '22', '330.077815345132', '346.843421959252', '0');
INSERT INTO `location` VALUES ('129', '0000000006', '22', '340.576658827378', '363.194401898446', '0');
INSERT INTO `location` VALUES ('130', '0000000006', '22', '346.510804616316', '372.436286389365', '0');
INSERT INTO `location` VALUES ('131', '0000000006', '22', '359.007724830029', '391.899086464597', '0');
INSERT INTO `location` VALUES ('132', '0000000006', '22', '369.082705874897', '407.589939769627', '0');
INSERT INTO `location` VALUES ('133', '0000000006', '22', '374.600719508658', '416.183736827597', '0');
INSERT INTO `location` VALUES ('134', '0000000006', '22', '380.914100516341', '426.016245177652', '0');
INSERT INTO `location` VALUES ('135', '0000000006', '22', '373.252138450407', '414.083446270154', '0');
INSERT INTO `location` VALUES ('136', '0000000006', '22', '360.850708404009', '410.390901459656', '0');
INSERT INTO `location` VALUES ('137', '0000000006', '22', '356.10687369721', '413.436882696104', '0');
INSERT INTO `location` VALUES ('138', '0000000006', '22', '344.800561060318', '420.696582553698', '0');
INSERT INTO `location` VALUES ('139', '0000000006', '22', '334.753627226458', '427.1476445812', '0');
INSERT INTO `location` VALUES ('140', '0000000006', '22', '320.197301349795', '436.49415394174', '0');
INSERT INTO `location` VALUES ('141', '0000000006', '22', '316.519580238414', '438.855591510823', '0');
INSERT INTO `location` VALUES ('142', '0000000006', '22', '319.901678785864', '444.396780285735', '0');
INSERT INTO `location` VALUES ('143', '0000000006', '22', '330.954431464755', '462.505474700427', '0');
INSERT INTO `location` VALUES ('144', '0000000006', '22', '335.362836443362', '469.728151343347', '0');
INSERT INTO `location` VALUES ('145', '0000000006', '22', '346.501442286718', '487.977506529613', '0');
INSERT INTO `location` VALUES ('146', '0000000006', '22', '352.267329301407', '497.424265089411', '0');
INSERT INTO `location` VALUES ('147', '0000000006', '22', '362.184539942747', '513.672501358476', '0');
INSERT INTO `location` VALUES ('148', '0000000006', '22', '368.751767393642', '524.432166259613', '0');
INSERT INTO `location` VALUES ('149', '0000000006', '22', '374.701874772102', '534.180749203745', '0');
INSERT INTO `location` VALUES ('150', '0000000006', '22', '381.963688588679', '546.078415886537', '0');
INSERT INTO `location` VALUES ('151', '0000000006', '22', '389.757741003421', '558.848095760059', '0');
INSERT INTO `location` VALUES ('152', '0000000006', '22', '397.825797587076', '572.06670070296', '0');
INSERT INTO `location` VALUES ('153', '0000000006', '22', '407.896613282829', '588.566601609036', '0');
INSERT INTO `location` VALUES ('154', '0000000006', '22', '409.684436696131', '591.495749559731', '0');
INSERT INTO `location` VALUES ('155', '0000000006', '22', '409.684436696131', '596.650093516347', '0');
INSERT INTO `location` VALUES ('156', '0000000006', '22', '409.684436696131', '610.94243274025', '0');
INSERT INTO `location` VALUES ('157', '0000000006', '22', '409.684436696131', '631.798209768732', '0');
INSERT INTO `location` VALUES ('158', '0000000006', '22', '409.684436696131', '631.798209768732', '0');
INSERT INTO `location` VALUES ('159', '0000000006', '22', '409.684436696131', '639.841326661653', '0');
INSERT INTO `location` VALUES ('160', '0000000006', '22', '409.684436696131', '655.998299180542', '0');
INSERT INTO `location` VALUES ('161', '0000000006', '22', '409.684436696131', '676.865317429195', '0');
INSERT INTO `location` VALUES ('162', '0000000006', '22', '409.684436696131', '692.720993763081', '0');
INSERT INTO `location` VALUES ('163', '0000000006', '22', '409.684436696131', '717.227556605835', '0');
INSERT INTO `location` VALUES ('164', '0000000006', '22', '409.684436696131', '725.077642222646', '0');
INSERT INTO `location` VALUES ('165', '0000000006', '22', '409.684436696131', '734.156695041352', '0');
INSERT INTO `location` VALUES ('166', '0000000006', '22', '409.684436696131', '761.988072530844', '0');
INSERT INTO `location` VALUES ('167', '0000000006', '22', '409.684436696131', '761.988072530844', '0');
INSERT INTO `location` VALUES ('168', '0000000006', '22', '409.684436696131', '783.062304494449', '0');
INSERT INTO `location` VALUES ('169', '0000000006', '22', '409.684436696131', '789.50190200425', '0');
INSERT INTO `location` VALUES ('170', '0000000006', '22', '409.684436696131', '810.666180945479', '0');
INSERT INTO `location` VALUES ('171', '0000000006', '22', '409.684436696131', '824.68505852531', '0');
INSERT INTO `location` VALUES ('172', '0000000006', '22', '409.684436696131', '845.796097955678', '0');
INSERT INTO `location` VALUES ('173', '0000000006', '22', '409.684436696131', '855.466206429072', '0');
INSERT INTO `location` VALUES ('174', '0000000006', '22', '414.803391018665', '872.241442237061', '0');
INSERT INTO `location` VALUES ('175', '0000000006', '22', '418.463916129681', '872.241442237061', '0');
INSERT INTO `location` VALUES ('176', '0000000006', '22', '426.218850515332', '872.241442237061', '0');
INSERT INTO `location` VALUES ('177', '0000000006', '22', '429.736659832081', '872.241442237061', '0');
INSERT INTO `location` VALUES ('178', '0000000006', '22', '439.756892660182', '872.241442237061', '0');
INSERT INTO `location` VALUES ('179', '0000000006', '22', '452.458119651318', '872.241442237061', '0');
INSERT INTO `location` VALUES ('180', '0000000006', '22', '469.094032979586', '872.241442237061', '0');
INSERT INTO `location` VALUES ('181', '0000000006', '22', '477.265487055309', '872.241442237061', '0');
INSERT INTO `location` VALUES ('182', '0000000006', '22', '499.548729339397', '872.241442237061', '0');
INSERT INTO `location` VALUES ('183', '0000000006', '22', '510.025345051676', '872.241442237061', '0');
INSERT INTO `location` VALUES ('184', '0000000006', '22', '516.061996185469', '872.241442237061', '0');
INSERT INTO `location` VALUES ('185', '0000000006', '22', '524.605733254474', '872.241442237061', '0');
INSERT INTO `location` VALUES ('186', '0000000006', '22', '541.727365421845', '872.241442237061', '0');
INSERT INTO `location` VALUES ('187', '0000000006', '22', '548.67335534074', '872.241442237061', '0');
INSERT INTO `location` VALUES ('188', '0000000006', '22', '558.120541623809', '872.241442237061', '0');
INSERT INTO `location` VALUES ('189', '0000000006', '22', '573.369299624829', '872.241442237061', '0');
INSERT INTO `location` VALUES ('190', '0000000006', '22', '584.337818502929', '875.484782707191', '0');
INSERT INTO `location` VALUES ('191', '0000000006', '22', '584.337818502929', '890.077802659024', '0');
INSERT INTO `location` VALUES ('192', '0000000006', '22', '584.337818502929', '897.225568584178', '0');
INSERT INTO `location` VALUES ('193', '0000000006', '22', '584.337818502929', '913.857994094736', '0');
INSERT INTO `location` VALUES ('194', '0000000006', '22', '584.337818502929', '918.640186810179', '0');
INSERT INTO `location` VALUES ('195', '0000000006', '22', '584.337818502929', '925.237379313458', '0');
INSERT INTO `location` VALUES ('196', '0000000006', '22', '584.337818502929', '942.663734416489', '0');
INSERT INTO `location` VALUES ('197', '0000000006', '22', '584.337818502929', '968.746056241694', '0');
INSERT INTO `location` VALUES ('198', '0000000006', '22', '584.337818502929', '980.706860858028', '0');
INSERT INTO `location` VALUES ('199', '0000000006', '22', '584.337818502929', '997.598160648032', '0');
INSERT INTO `location` VALUES ('200', '0000000006', '22', '584.337818502929', '1008.81620041259', '0');
INSERT INTO `location` VALUES ('201', '0000000006', '22', '584.337818502929', '1012.78298722046', '0');
INSERT INTO `location` VALUES ('202', '0000000006', '22', '584.337818502929', '1028.67862872967', '0');
INSERT INTO `location` VALUES ('203', '0000000006', '22', '584.337818502929', '1043.28174455442', '0');
INSERT INTO `location` VALUES ('204', '0000000006', '22', '578.499757437284', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('205', '0000000006', '22', '568.864199101707', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('206', '0000000006', '22', '565.805642528009', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('207', '0000000006', '22', '560.653216605556', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('208', '0000000006', '22', '546.37192146924', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('209', '0000000006', '22', '530.76615341894', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('210', '0000000006', '22', '502.987099349281', '1052.05836683885', '0');
INSERT INTO `location` VALUES ('211', '0000000006', '22', '506.166515009959', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('212', '0000000006', '22', '510.112903576127', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('213', '0000000006', '22', '523.845742774444', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('214', '0000000006', '22', '543.378501064858', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('215', '0000000006', '22', '547.493376700921', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('216', '0000000006', '22', '554.937232275742', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('217', '0000000006', '22', '564.785881748205', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('218', '0000000006', '22', '585.85748097791', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('219', '0000000006', '22', '598.934181455072', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('220', '0000000006', '22', '612.798300094685', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('221', '0000000006', '22', '628.939002149288', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('222', '0000000006', '22', '650.800855407274', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('223', '0000000006', '22', '656.497391502621', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('224', '0000000006', '22', '672.727034715485', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('225', '0000000006', '22', '696.226786119413', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('226', '0000000006', '22', '699.629009068027', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('227', '0000000006', '22', '715.885267183898', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('228', '0000000006', '22', '726.851468371243', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('229', '0000000006', '22', '744.785526195091', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('230', '0000000006', '22', '760.006445272608', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('231', '0000000006', '22', '766.704037335251', '1043.66066835449', '0');
INSERT INTO `location` VALUES ('232', '0000000006', '22', '772.827153293664', '1037.89639672661', '0');
INSERT INTO `location` VALUES ('233', '0000000006', '22', '796.17680570345', '1037.89639672661', '0');
INSERT INTO `location` VALUES ('234', '0000000006', '22', '792.284625237124', '1031.55517895847', '0');
INSERT INTO `location` VALUES ('235', '0000000006', '22', '779.639565487175', '1031.55517895847', '0');
INSERT INTO `location` VALUES ('236', '0000000006', '22', '762.604940632606', '1025.49937208021', '0');
INSERT INTO `location` VALUES ('237', '0000000006', '22', '762.604940632606', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('238', '0000000006', '22', '774.716800447103', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('239', '0000000006', '22', '778.297507051859', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('240', '0000000006', '22', '788.128383069547', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('241', '0000000006', '22', '801.751576924013', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('242', '0000000006', '22', '825.21960363655', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('243', '0000000006', '22', '839.410968419878', '1012.06161396812', '0');
INSERT INTO `location` VALUES ('244', '0000000006', '23', '304.979002068604', '307.754336282717', '0');
INSERT INTO `location` VALUES ('245', '0000000006', '23', '315.696089570681', '324.445211144253', '0');
INSERT INTO `location` VALUES ('246', '0000000006', '23', '323.339704428615', '336.349435968287', '0');
INSERT INTO `location` VALUES ('247', '0000000006', '23', '329.142194229473', '345.386278406375', '0');
INSERT INTO `location` VALUES ('248', '0000000006', '23', '337.84780930076', '358.94447056627', '0');
INSERT INTO `location` VALUES ('249', '0000000006', '23', '342.655294259173', '366.431684776664', '0');
INSERT INTO `location` VALUES ('250', '0000000006', '23', '347.597160549114', '374.128185510829', '0');
INSERT INTO `location` VALUES ('251', '0000000006', '23', '349.436255562964', '389.195232206981', '0');
INSERT INTO `location` VALUES ('252', '0000000006', '23', '338.546893855978', '396.187210951275', '0');
INSERT INTO `location` VALUES ('253', '0000000006', '23', '325.447425808199', '404.598282657421', '0');
INSERT INTO `location` VALUES ('254', '0000000006', '23', '313.013749765439', '412.581854233397', '0');
INSERT INTO `location` VALUES ('255', '0000000006', '23', '293.92986799084', '424.835473804232', '0');
INSERT INTO `location` VALUES ('256', '0000000006', '23', '286.692388276867', '422.238753566227', '0');
INSERT INTO `location` VALUES ('257', '0000000006', '23', '277.873466736427', '408.504097036019', '0');
INSERT INTO `location` VALUES ('258', '0000000006', '23', '275.963298713543', '405.529186601791', '0');
INSERT INTO `location` VALUES ('259', '0000000006', '23', '263.261931780846', '385.747979627133', '0');
INSERT INTO `location` VALUES ('260', '0000000006', '23', '258.063713725192', '377.652234672817', '0');
INSERT INTO `location` VALUES ('261', '0000000006', '23', '264.489238117419', '370.55974336824', '0');
INSERT INTO `location` VALUES ('262', '0000000006', '23', '271.290382680222', '378.917003267963', '0');
INSERT INTO `location` VALUES ('263', '0000000006', '23', '281.24245161378', '391.146125270837', '0');
INSERT INTO `location` VALUES ('264', '0000000006', '23', '285.923123770416', '396.897744480984', '0');
INSERT INTO `location` VALUES ('265', '0000000006', '23', '294.881899815211', '407.906306216203', '0');
INSERT INTO `location` VALUES ('266', '0000000006', '23', '294.881899815211', '423.968152020069', '0');
INSERT INTO `location` VALUES ('267', '0000000006', '23', '294.881899815211', '440.828858698893', '0');
INSERT INTO `location` VALUES ('268', '0000000006', '23', '294.881899815211', '449.798665415904', '0');
INSERT INTO `location` VALUES ('269', '0000000006', '23', '294.881899815211', '463.084149233474', '0');
INSERT INTO `location` VALUES ('270', '0000000006', '23', '294.881899815211', '483.687150927668', '0');
INSERT INTO `location` VALUES ('271', '0000000006', '23', '294.881899815211', '497.37231337413', '0');
INSERT INTO `location` VALUES ('272', '0000000006', '23', '294.881899815211', '519.287226188637', '0');
INSERT INTO `location` VALUES ('273', '0000000006', '23', '294.881899815211', '530.581284807704', '0');
INSERT INTO `location` VALUES ('274', '0000000006', '23', '294.881899815211', '546.902349480603', '0');
INSERT INTO `location` VALUES ('275', '0000000006', '23', '294.881899815211', '552.840437029663', '0');
INSERT INTO `location` VALUES ('276', '0000000006', '23', '300.603805467877', '562.451118390018', '0');
INSERT INTO `location` VALUES ('277', '0000000006', '23', '315.421636331519', '562.451118390018', '0');
INSERT INTO `location` VALUES ('278', '0000000006', '23', '332.882003788529', '562.451118390018', '0');
INSERT INTO `location` VALUES ('279', '0000000006', '23', '341.912675874931', '562.451118390018', '0');
INSERT INTO `location` VALUES ('280', '0000000006', '23', '360.729791752686', '562.451118390018', '0');
INSERT INTO `location` VALUES ('281', '0000000006', '23', '360.729791752686', '562.451118390018', '0');
INSERT INTO `location` VALUES ('282', '0000000006', '23', '384.438045169441', '566.407976542809', '0');
INSERT INTO `location` VALUES ('283', '0000000006', '23', '384.505670891393', '577.219775509445', '0');
INSERT INTO `location` VALUES ('284', '0000000006', '23', '384.62642860648', '596.526159256709', '0');
INSERT INTO `location` VALUES ('285', '0000000006', '23', '384.675769845964', '604.414689636375', '0');
INSERT INTO `location` VALUES ('286', '0000000006', '23', '384.75554519413', '617.16893464804', '0');
INSERT INTO `location` VALUES ('287', '0000000006', '23', '384.83911070172', '630.529139057377', '0');
INSERT INTO `location` VALUES ('288', '0000000006', '23', '384.971563767441', '651.705340623261', '0');
INSERT INTO `location` VALUES ('289', '0000000006', '23', '385.061761863097', '666.12594345392', '0');
INSERT INTO `location` VALUES ('290', '0000000006', '23', '385.129469213399', '676.950792917965', '0');
INSERT INTO `location` VALUES ('291', '0000000006', '23', '385.215200373945', '690.657235470352', '0');
INSERT INTO `location` VALUES ('292', '0000000006', '23', '385.291236560767', '702.813674505448', '0');
INSERT INTO `location` VALUES ('293', '0000000006', '23', '385.385141903708', '717.826980988065', '0');
INSERT INTO `location` VALUES ('294', '0000000006', '23', '385.417542893362', '723.007154690375', '0');
INSERT INTO `location` VALUES ('295', '0000000006', '23', '385.457801527245', '736.383439637625', '0');
INSERT INTO `location` VALUES ('296', '0000000006', '23', '376.911018360541', '751.907878697288', '0');
INSERT INTO `location` VALUES ('297', '0000000006', '23', '363.399255429063', '751.907878697288', '0');
INSERT INTO `location` VALUES ('298', '0000000006', '23', '354.862019179989', '751.907878697288', '0');
INSERT INTO `location` VALUES ('299', '0000000006', '23', '340.797413104996', '743.008239922864', '0');
INSERT INTO `location` VALUES ('300', '0000000006', '23', '330.760132323085', '733.406291421028', '0');
INSERT INTO `location` VALUES ('301', '0000000006', '23', '334.62242401712', '718.157449502179', '0');
INSERT INTO `location` VALUES ('302', '0000000006', '23', '343.868191662922', '727.002214008012', '0');
INSERT INTO `location` VALUES ('303', '0000000006', '23', '352.75183717228', '735.500562170509', '0');
INSERT INTO `location` VALUES ('304', '0000000006', '23', '352.75183717228', '735.500562170509', '0');
INSERT INTO `location` VALUES ('305', '0000000006', '23', '364.835877796846', '747.060499397758', '0');
INSERT INTO `location` VALUES ('306', '0000000006', '23', '371.716600337815', '753.642794436558', '0');
INSERT INTO `location` VALUES ('307', '0000000006', '23', '381.702239747505', '763.195341331782', '0');
INSERT INTO `location` VALUES ('308', '0000000006', '23', '393.176919534042', '774.172346636241', '0');
INSERT INTO `location` VALUES ('309', '0000000006', '23', '402.242014238998', '779.705047378273', '0');
INSERT INTO `location` VALUES ('310', '0000000006', '23', '408.862902411647', '779.705047378273', '0');
INSERT INTO `location` VALUES ('311', '0000000006', '23', '426.673020755567', '776.847863909876', '0');
INSERT INTO `location` VALUES ('312', '0000000006', '23', '438.544964958046', '770.210648374761', '0');
INSERT INTO `location` VALUES ('313', '0000000006', '23', '448.369719181855', '787.784122270714', '0');
INSERT INTO `location` VALUES ('314', '0000000006', '23', '449.857945472354', '790.446102944386', '0');
INSERT INTO `location` VALUES ('315', '0000000006', '23', '429.129651402217', '797.181292775417', '0');
INSERT INTO `location` VALUES ('316', '0000000006', '23', '416.436913906225', '797.181292775417', '0');
INSERT INTO `location` VALUES ('317', '0000000006', '23', '401.595011322853', '797.181292775417', '0');
INSERT INTO `location` VALUES ('318', '0000000006', '23', '387.071616976616', '797.181292775417', '0');
INSERT INTO `location` VALUES ('319', '0000000006', '23', '387.071616976616', '797.181292775417', '0');
INSERT INTO `location` VALUES ('320', '0000000006', '23', '368.764901563619', '797.181292775417', '0');
INSERT INTO `location` VALUES ('321', '0000000006', '23', '360.949140133663', '797.181292775417', '0');
INSERT INTO `location` VALUES ('322', '0000000006', '23', '354.544331263845', '797.181292775417', '0');
INSERT INTO `location` VALUES ('323', '0000000006', '23', '344.92036603354', '797.181292775417', '0');
INSERT INTO `location` VALUES ('324', '0000000006', '23', '338.128919984541', '806.553791009452', '0');
INSERT INTO `location` VALUES ('325', '0000000006', '23', '338.128919984541', '812.414471709965', '0');
INSERT INTO `location` VALUES ('326', '0000000006', '23', '338.128919984541', '831.802082436955', '0');
INSERT INTO `location` VALUES ('327', '0000000006', '23', '338.128919984541', '843.70950835138', '0');
INSERT INTO `location` VALUES ('328', '0000000006', '23', '338.128919984541', '862.67575669601', '0');
INSERT INTO `location` VALUES ('329', '0000000006', '23', '338.128919984541', '871.933979239645', '0');
INSERT INTO `location` VALUES ('330', '0000000006', '23', '338.128919984541', '889.235192283619', '0');
INSERT INTO `location` VALUES ('331', '0000000006', '23', '338.128919984541', '901.726273171468', '0');
INSERT INTO `location` VALUES ('332', '0000000006', '23', '338.128919984541', '918.302003519474', '0');
INSERT INTO `location` VALUES ('333', '0000000006', '23', '338.128919984541', '942.689974153279', '0');
INSERT INTO `location` VALUES ('334', '0000000006', '23', '338.128919984541', '951.317005531727', '0');
INSERT INTO `location` VALUES ('335', '0000000006', '23', '338.128919984541', '964.789320103688', '0');
INSERT INTO `location` VALUES ('336', '0000000006', '23', '338.128919984541', '980.478757836953', '0');
INSERT INTO `location` VALUES ('337', '0000000006', '23', '338.128919984541', '987.386288059274', '0');
INSERT INTO `location` VALUES ('338', '0000000006', '23', '338.128919984541', '1005.28623690885', '0');
INSERT INTO `location` VALUES ('339', '0000000006', '23', '351.40655489252', '1011.73188083', '0');
INSERT INTO `location` VALUES ('340', '0000000006', '23', '364.960623973609', '1011.73188083', '0');
INSERT INTO `location` VALUES ('341', '0000000006', '23', '372.922967173253', '1011.73188083', '0');
INSERT INTO `location` VALUES ('342', '0000000006', '23', '393.937533223397', '1011.73188083', '0');
INSERT INTO `location` VALUES ('343', '0000000006', '23', '387.712364946586', '1011.73188083', '0');
INSERT INTO `location` VALUES ('344', '0000000006', '23', '377.138960499643', '1019.72769481629', '0');
INSERT INTO `location` VALUES ('345', '0000000006', '23', '377.138960499643', '1030.93520399402', '0');
INSERT INTO `location` VALUES ('346', '0000000006', '23', '377.138960499643', '1040.42029361646', '0');
INSERT INTO `location` VALUES ('347', '0000000006', '23', '377.138960499643', '1056.9725039451', '0');
INSERT INTO `location` VALUES ('348', '0000000006', '23', '377.138960499643', '1067.88700292129', '0');
INSERT INTO `location` VALUES ('349', '0000000006', '23', '377.138960499643', '1080.9192781901', '0');
INSERT INTO `location` VALUES ('350', '0000000006', '23', '377.138960499643', '1092.66121110493', '0');
INSERT INTO `location` VALUES ('351', '0000000006', '23', '377.138960499643', '1099.91837364189', '0');
INSERT INTO `location` VALUES ('352', '0000000006', '23', '377.138960499643', '1118.15812050281', '0');
INSERT INTO `location` VALUES ('353', '0000000006', '23', '377.138960499643', '1124.27829437387', '0');
INSERT INTO `location` VALUES ('354', '0000000006', '23', '377.138960499643', '1145.56195794312', '0');
INSERT INTO `location` VALUES ('355', '0000000006', '23', '377.138960499643', '1153.76623188039', '0');
INSERT INTO `location` VALUES ('356', '0000000006', '23', '377.138960499643', '1169.18126292653', '0');
INSERT INTO `location` VALUES ('357', '0000000006', '23', '377.138960499643', '1181.68219232057', '0');
INSERT INTO `location` VALUES ('358', '0000000006', '23', '377.138960499643', '1196.63900066433', '0');
INSERT INTO `location` VALUES ('359', '0000000006', '23', '377.138960499643', '1210.53196132286', '0');
INSERT INTO `location` VALUES ('360', '0000000006', '23', '377.138960499643', '1221.38360715132', '0');
INSERT INTO `location` VALUES ('361', '0000000006', '23', '377.138960499643', '1232.42912414819', '0');
INSERT INTO `location` VALUES ('362', '0000000006', '23', '377.138960499643', '1251.52954303809', '0');
INSERT INTO `location` VALUES ('363', '0000000006', '23', '377.138960499643', '1259.56099235253', '0');
INSERT INTO `location` VALUES ('364', '0000000006', '24', '304.622131072678', '307.198542636956', '0');
INSERT INTO `location` VALUES ('365', '0000000006', '24', '308.491396315416', '313.224566214736', '0');
INSERT INTO `location` VALUES ('366', '0000000006', '24', '315.225095925893', '323.711682003597', '0');
INSERT INTO `location` VALUES ('367', '0000000006', '24', '322.12869448909', '334.463399733837', '0');
INSERT INTO `location` VALUES ('368', '0000000006', '24', '332.755617059462', '351.013851034244', '0');
INSERT INTO `location` VALUES ('369', '0000000006', '24', '338.803652713001', '360.433108480054', '0');
INSERT INTO `location` VALUES ('370', '0000000006', '24', '346.506143668833', '372.429027393752', '0');
INSERT INTO `location` VALUES ('371', '0000000006', '24', '352.908837698345', '382.400632533916', '0');
INSERT INTO `location` VALUES ('372', '0000000006', '24', '361.407943998809', '395.637206338921', '0');
INSERT INTO `location` VALUES ('373', '0000000006', '24', '370.530769265147', '409.845164879392', '0');
INSERT INTO `location` VALUES ('374', '0000000006', '24', '377.321550918195', '420.421180682294', '0');
INSERT INTO `location` VALUES ('375', '0000000006', '24', '379.352467138614', '423.584145292102', '0');
INSERT INTO `location` VALUES ('376', '0000000006', '24', '379.352467138614', '423.584145292102', '0');
INSERT INTO `location` VALUES ('377', '0000000006', '24', '386.189718215163', '434.232532934124', '0');
INSERT INTO `location` VALUES ('378', '0000000006', '24', '390.838155999172', '441.472045846517', '0');
INSERT INTO `location` VALUES ('379', '0000000006', '24', '397.270313706524', '451.489537946146', '0');
INSERT INTO `location` VALUES ('380', '0000000006', '24', '394.777392015166', '460.630472949468', '0');
INSERT INTO `location` VALUES ('381', '0000000006', '24', '383.350250427371', '467.967756184227', '0');
INSERT INTO `location` VALUES ('382', '0000000006', '24', '371.56601341716', '475.534327752904', '0');
INSERT INTO `location` VALUES ('383', '0000000006', '24', '363.845981783668', '488.477382184793', '0');
INSERT INTO `location` VALUES ('384', '0000000006', '24', '370.603399184807', '499.001436244044', '0');
INSERT INTO `location` VALUES ('385', '0000000006', '24', '377.960874456599', '510.46002506629', '0');
INSERT INTO `location` VALUES ('386', '0000000006', '24', '380.459333118888', '514.351143886671', '0');
INSERT INTO `location` VALUES ('387', '0000000006', '24', '386.350086620214', '523.525448893673', '0');
INSERT INTO `location` VALUES ('388', '0000000006', '24', '393.365166247893', '534.45078809489', '0');
INSERT INTO `location` VALUES ('389', '0000000006', '24', '393.365166247893', '534.45078809489', '0');
INSERT INTO `location` VALUES ('390', '0000000006', '24', '399.660410156955', '544.255049587451', '0');
INSERT INTO `location` VALUES ('391', '0000000006', '24', '404.402292724985', '551.640094128307', '0');
INSERT INTO `location` VALUES ('392', '0000000006', '24', '412.496205187437', '564.245615920009', '0');
INSERT INTO `location` VALUES ('393', '0000000006', '24', '414.238318562052', '566.958796746859', '0');
INSERT INTO `location` VALUES ('394', '0000000006', '24', '425.254913601494', '584.116126960682', '0');
INSERT INTO `location` VALUES ('395', '0000000006', '24', '427.600039040107', '587.768443434063', '0');
INSERT INTO `location` VALUES ('396', '0000000006', '24', '436.354581194692', '601.402835011429', '0');
INSERT INTO `location` VALUES ('397', '0000000006', '24', '439.796234375394', '606.762892260639', '0');
INSERT INTO `location` VALUES ('398', '0000000006', '24', '443.296047557025', '612.21352834456', '0');
INSERT INTO `location` VALUES ('399', '0000000006', '24', '447.627242043021', '618.958964094033', '0');
INSERT INTO `location` VALUES ('400', '0000000006', '24', '458.520575689683', '635.924326062586', '0');
INSERT INTO `location` VALUES ('401', '0000000006', '24', '452.737133767604', '639.637831415438', '0');
INSERT INTO `location` VALUES ('402', '0000000006', '24', '443.197376910875', '645.763238850953', '0');
INSERT INTO `location` VALUES ('403', '0000000006', '24', '435.046382735695', '650.996932023359', '0');
INSERT INTO `location` VALUES ('404', '0000000006', '24', '419.904834219731', '660.719208519271', '0');
INSERT INTO `location` VALUES ('405', '0000000006', '24', '413.282623151059', '673.782611406245', '0');
INSERT INTO `location` VALUES ('406', '0000000006', '24', '412.870346324186', '677.321951232413', '0');
INSERT INTO `location` VALUES ('407', '0000000006', '24', '411.907545373416', '685.587464905774', '0');
INSERT INTO `location` VALUES ('408', '0000000006', '24', '410.599374603946', '696.81793094708', '0');
INSERT INTO `location` VALUES ('409', '0000000006', '24', '409.315298309703', '707.841549234142', '0');
INSERT INTO `location` VALUES ('410', '0000000006', '24', '407.136681579963', '726.544674064145', '0');
INSERT INTO `location` VALUES ('411', '0000000006', '24', '406.253496462669', '734.126696762882', '0');
INSERT INTO `location` VALUES ('412', '0000000006', '24', '404.860851415185', '746.082362856604', '0');
INSERT INTO `location` VALUES ('413', '0000000006', '24', '406.378180072691', '751.918713156966', '0');
INSERT INTO `location` VALUES ('414', '0000000006', '24', '408.842663070052', '765.449024350111', '0');
INSERT INTO `location` VALUES ('415', '0000000006', '24', '408.842663070052', '779.135745569094', '0');
INSERT INTO `location` VALUES ('416', '0000000006', '24', '408.842663070052', '783.688868863004', '0');
INSERT INTO `location` VALUES ('417', '0000000006', '24', '408.842663070052', '800.52451121617', '0');
INSERT INTO `location` VALUES ('418', '0000000006', '24', '408.842663070052', '810.7332607505', '0');
INSERT INTO `location` VALUES ('419', '0000000006', '24', '408.842663070052', '813.754638624805', '0');
INSERT INTO `location` VALUES ('420', '0000000006', '24', '408.842663070052', '829.398271278673', '0');
INSERT INTO `location` VALUES ('421', '0000000006', '24', '408.842663070052', '843.829834948954', '0');
INSERT INTO `location` VALUES ('422', '0000000006', '24', '424.764690813241', '843.829834948954', '0');
INSERT INTO `location` VALUES ('423', '0000000006', '24', '431.469874193292', '843.829834948954', '0');
INSERT INTO `location` VALUES ('424', '0000000006', '24', '446.373475898388', '843.829834948954', '0');
INSERT INTO `location` VALUES ('425', '0000000006', '24', '456.622738129557', '843.829834948954', '0');
INSERT INTO `location` VALUES ('426', '0000000006', '24', '445.278679627558', '843.829834948954', '0');
INSERT INTO `location` VALUES ('427', '0000000006', '24', '445.278679627558', '859.575279200412', '0');
INSERT INTO `location` VALUES ('428', '0000000006', '24', '445.278679627558', '875.366007457216', '0');
INSERT INTO `location` VALUES ('429', '0000000006', '24', '445.278679627558', '880.086543784672', '0');
INSERT INTO `location` VALUES ('430', '0000000006', '24', '445.278679627558', '893.411114449342', '0');
INSERT INTO `location` VALUES ('431', '0000000006', '24', '445.278679627558', '910.024855262795', '0');
INSERT INTO `location` VALUES ('432', '0000000006', '24', '452.418537969799', '910.024855262795', '0');
INSERT INTO `location` VALUES ('433', '0000000006', '24', '458.172730322793', '910.024855262795', '0');
INSERT INTO `location` VALUES ('434', '0000000006', '24', '461.706642965186', '900.564519616271', '0');
INSERT INTO `location` VALUES ('435', '0000000006', '24', '451.390183286374', '900.564519616271', '0');
INSERT INTO `location` VALUES ('436', '0000000006', '24', '434.309826243068', '900.564519616271', '0');
INSERT INTO `location` VALUES ('437', '0000000006', '24', '427.527605468971', '900.564519616271', '0');
INSERT INTO `location` VALUES ('438', '0000000006', '24', '415.80048477124', '900.564519616271', '0');
INSERT INTO `location` VALUES ('439', '0000000006', '24', '401.015529062231', '900.564519616271', '0');
INSERT INTO `location` VALUES ('440', '0000000006', '24', '392.477823258243', '897.446079359817', '0');
INSERT INTO `location` VALUES ('441', '0000000006', '24', '392.477823258243', '887.923678219047', '0');
INSERT INTO `location` VALUES ('442', '0000000006', '24', '392.477823258243', '872.324416215493', '0');
INSERT INTO `location` VALUES ('443', '0000000006', '24', '392.477823258243', '857.97301663082', '0');
INSERT INTO `location` VALUES ('444', '0000000006', '24', '392.477823258243', '832.170828864639', '0');
INSERT INTO `location` VALUES ('445', '0000000006', '24', '392.477823258243', '822.682643624217', '0');
INSERT INTO `location` VALUES ('446', '0000000006', '24', '392.477823258243', '817.900734934918', '0');
INSERT INTO `location` VALUES ('447', '0000000006', '24', '392.477823258243', '808.666010563457', '0');
INSERT INTO `location` VALUES ('448', '0000000006', '24', '392.477823258243', '801.389426911212', '0');
INSERT INTO `location` VALUES ('449', '0000000006', '24', '392.477823258243', '778.094188451729', '0');
INSERT INTO `location` VALUES ('450', '0000000006', '24', '392.477823258243', '770.506327178524', '0');
INSERT INTO `location` VALUES ('451', '0000000006', '24', '392.477823258243', '770.506327178524', '0');
INSERT INTO `location` VALUES ('452', '0000000006', '24', '392.477823258243', '756.037534178662', '0');
INSERT INTO `location` VALUES ('453', '0000000006', '24', '392.477823258243', '740.233610915913', '0');
INSERT INTO `location` VALUES ('454', '0000000006', '24', '392.477823258243', '735.135992940012', '0');
INSERT INTO `location` VALUES ('455', '0000000006', '24', '392.477823258243', '720.383740635784', '0');
INSERT INTO `location` VALUES ('456', '0000000006', '24', '392.477823258243', '707.23553493848', '0');
INSERT INTO `location` VALUES ('457', '0000000006', '24', '392.477823258243', '692.117532861148', '0');
INSERT INTO `location` VALUES ('458', '0000000006', '24', '392.477823258243', '680.979860527636', '0');
INSERT INTO `location` VALUES ('459', '0000000006', '24', '392.477823258243', '684.923322875946', '0');
INSERT INTO `location` VALUES ('460', '0000000006', '24', '392.477823258243', '705.87764161542', '0');
INSERT INTO `location` VALUES ('461', '0000000006', '24', '392.477823258243', '715.217918667671', '0');
INSERT INTO `location` VALUES ('462', '0000000006', '24', '392.477823258243', '725.908416195735', '0');
INSERT INTO `location` VALUES ('463', '0000000006', '24', '392.477823258243', '747.810985438953', '0');
INSERT INTO `location` VALUES ('464', '0000000006', '24', '392.477823258243', '757.56017367701', '0');
INSERT INTO `location` VALUES ('465', '0000000006', '24', '392.477823258243', '776.959638145947', '0');
INSERT INTO `location` VALUES ('466', '0000000006', '24', '392.477823258243', '779.542085082698', '0');
INSERT INTO `location` VALUES ('467', '0000000006', '24', '392.477823258243', '765.71774781119', '0');
INSERT INTO `location` VALUES ('468', '0000000006', '24', '392.477823258243', '743.578540227571', '0');
INSERT INTO `location` VALUES ('469', '0000000006', '24', '392.477823258243', '739.757086598276', '0');
INSERT INTO `location` VALUES ('470', '0000000006', '24', '392.477823258243', '727.814714558152', '0');
INSERT INTO `location` VALUES ('471', '0000000006', '24', '392.477823258243', '718.548423906284', '0');
INSERT INTO `location` VALUES ('472', '0000000006', '24', '392.477823258243', '697.026036932561', '0');
INSERT INTO `location` VALUES ('473', '0000000006', '24', '392.477823258243', '693.345881750536', '0');
INSERT INTO `location` VALUES ('474', '0000000006', '24', '392.477823258243', '690.137829440608', '0');
INSERT INTO `location` VALUES ('475', '0000000006', '24', '392.477823258243', '675.093277701837', '0');
INSERT INTO `location` VALUES ('476', '0000000006', '24', '392.477823258243', '663.031342350607', '0');
INSERT INTO `location` VALUES ('477', '0000000006', '24', '380.77395918882', '663.031342350607', '0');
INSERT INTO `location` VALUES ('478', '0000000006', '24', '372.828794788202', '663.031342350607', '0');
INSERT INTO `location` VALUES ('479', '0000000006', '24', '353.590440454758', '663.031342350607', '0');
INSERT INTO `location` VALUES ('480', '0000000006', '24', '353.590440454758', '651.958987625278', '0');
INSERT INTO `location` VALUES ('481', '0000000006', '24', '353.590440454758', '632.818985386946', '0');
INSERT INTO `location` VALUES ('482', '0000000006', '24', '353.590440454758', '619.623576614036', '0');
INSERT INTO `location` VALUES ('483', '0000000006', '24', '353.590440454758', '603.722569055119', '0');
INSERT INTO `location` VALUES ('484', '0000000006', '24', '353.590440454758', '600.512317546838', '0');
INSERT INTO `location` VALUES ('485', '0000000006', '25', '304.07753690107', '306.350387467292', '0');
INSERT INTO `location` VALUES ('486', '0000000006', '25', '310.827543282983', '316.862899547953', '0');
INSERT INTO `location` VALUES ('487', '0000000006', '25', '310.827543282983', '316.862899547953', '0');
INSERT INTO `location` VALUES ('488', '0000000006', '25', '316.083580775937', '325.048692940555', '0');
INSERT INTO `location` VALUES ('489', '0000000006', '25', '320.120753790525', '331.336217379243', '0');
INSERT INTO `location` VALUES ('490', '0000000006', '25', '332.617173825036', '350.798238471523', '0');
INSERT INTO `location` VALUES ('491', '0000000006', '25', '340.486487080642', '363.053967723534', '0');
INSERT INTO `location` VALUES ('492', '0000000006', '25', '340.405072472474', '379.056939051607', '0');
INSERT INTO `location` VALUES ('493', '0000000006', '25', '334.512187532865', '392.054002617269', '0');
INSERT INTO `location` VALUES ('494', '0000000006', '25', '330.555864626918', '400.779878113198', '0');
INSERT INTO `location` VALUES ('495', '0000000006', '25', '329.220434059559', '403.725239536232', '0');
INSERT INTO `location` VALUES ('496', '0000000006', '25', '329.220434059559', '403.725239536232', '0');
INSERT INTO `location` VALUES ('497', '0000000006', '25', '327.114878957849', '408.369150588013', '0');
INSERT INTO `location` VALUES ('498', '0000000006', '25', '322.713445607134', '418.076740270405', '0');
INSERT INTO `location` VALUES ('499', '0000000006', '25', '317.159371131923', '430.326539773112', '0');
INSERT INTO `location` VALUES ('500', '0000000006', '25', '309.564747341393', '447.076876692021', '0');
INSERT INTO `location` VALUES ('501', '0000000006', '25', '318.43385705304', '449.257559349695', '0');
INSERT INTO `location` VALUES ('502', '0000000006', '25', '332.783266945497', '449.257559349695', '0');
INSERT INTO `location` VALUES ('503', '0000000006', '25', '340.534249335748', '449.257559349695', '0');
INSERT INTO `location` VALUES ('504', '0000000006', '25', '345.077560497669', '449.257559349695', '0');
INSERT INTO `location` VALUES ('505', '0000000006', '25', '357.964836947608', '449.257559349695', '0');
INSERT INTO `location` VALUES ('506', '0000000006', '25', '361.931753637024', '449.257559349695', '0');
INSERT INTO `location` VALUES ('507', '0000000006', '25', '366.609782632195', '449.257559349695', '0');
INSERT INTO `location` VALUES ('508', '0000000006', '25', '386.373897156433', '449.257559349695', '0');
INSERT INTO `location` VALUES ('509', '0000000006', '25', '396.736885508277', '449.257559349695', '0');
INSERT INTO `location` VALUES ('510', '0000000006', '25', '403.52404880895', '433.20548155711', '0');
INSERT INTO `location` VALUES ('511', '0000000006', '25', '395.789654460491', '433.20548155711', '0');
INSERT INTO `location` VALUES ('512', '0000000006', '25', '380.586864067229', '433.20548155711', '0');
INSERT INTO `location` VALUES ('513', '0000000006', '25', '375.880673419206', '433.20548155711', '0');
INSERT INTO `location` VALUES ('514', '0000000006', '25', '359.445368952106', '433.20548155711', '0');
INSERT INTO `location` VALUES ('515', '0000000006', '25', '342.596346669353', '433.20548155711', '0');
INSERT INTO `location` VALUES ('516', '0000000006', '25', '326.126935192604', '433.20548155711', '0');
INSERT INTO `location` VALUES ('517', '0000000006', '25', '318.119906014751', '433.20548155711', '0');
INSERT INTO `location` VALUES ('518', '0000000006', '25', '311.845025092351', '433.20548155711', '0');
INSERT INTO `location` VALUES ('519', '0000000006', '25', '308.322545488353', '433.20548155711', '0');
INSERT INTO `location` VALUES ('520', '0000000006', '25', '299.062877522536', '433.20548155711', '0');
INSERT INTO `location` VALUES ('521', '0000000006', '25', '288.079739270254', '433.20548155711', '0');
INSERT INTO `location` VALUES ('522', '0000000006', '25', '276.66950764436', '433.20548155711', '0');
INSERT INTO `location` VALUES ('523', '0000000006', '25', '259.737560960219', '433.20548155711', '0');
INSERT INTO `location` VALUES ('524', '0000000006', '25', '241.984046627057', '433.20548155711', '0');
INSERT INTO `location` VALUES ('525', '0000000006', '25', '235.1150940908', '425.991143413288', '0');
INSERT INTO `location` VALUES ('526', '0000000006', '25', '235.1150940908', '406.564026858359', '0');
INSERT INTO `location` VALUES ('527', '0000000006', '25', '235.1150940908', '400.125317858234', '0');
INSERT INTO `location` VALUES ('528', '0000000006', '25', '235.1150940908', '386.853820015145', '0');
INSERT INTO `location` VALUES ('529', '0000000006', '25', '235.1150940908', '378.848495264239', '0');
INSERT INTO `location` VALUES ('530', '0000000006', '25', '235.1150940908', '356.083521102024', '0');
INSERT INTO `location` VALUES ('531', '0000000006', '25', '241.359953082387', '341.515236289175', '0');
INSERT INTO `location` VALUES ('532', '0000000006', '25', '256.333587312127', '341.515236289175', '0');
INSERT INTO `location` VALUES ('533', '0000000006', '25', '272.029458699037', '341.515236289175', '0');
INSERT INTO `location` VALUES ('534', '0000000006', '25', '281.208365604269', '341.515236289175', '0');
INSERT INTO `location` VALUES ('535', '0000000006', '25', '308.328794375748', '341.515236289175', '0');
INSERT INTO `location` VALUES ('536', '0000000006', '25', '317.970905325131', '341.515236289175', '0');
INSERT INTO `location` VALUES ('537', '0000000006', '25', '331.344296827435', '341.515236289175', '0');
INSERT INTO `location` VALUES ('538', '0000000006', '25', '343.463224759546', '341.515236289175', '0');
INSERT INTO `location` VALUES ('539', '0000000006', '25', '357.507223338575', '341.515236289175', '0');
INSERT INTO `location` VALUES ('540', '0000000006', '25', '363.599905527883', '341.515236289175', '0');
INSERT INTO `location` VALUES ('541', '0000000006', '25', '372.643359062948', '341.515236289175', '0');
INSERT INTO `location` VALUES ('542', '0000000006', '25', '385.075244618568', '341.515236289175', '0');
INSERT INTO `location` VALUES ('543', '0000000006', '25', '398.624823472683', '341.515236289175', '0');
INSERT INTO `location` VALUES ('544', '0000000006', '25', '421.92192213725', '341.515236289175', '0');
INSERT INTO `location` VALUES ('545', '0000000006', '25', '428.721835685416', '341.515236289175', '0');
INSERT INTO `location` VALUES ('546', '0000000006', '25', '449.419184601621', '341.515236289175', '0');
INSERT INTO `location` VALUES ('547', '0000000006', '25', '464.497107237333', '341.515236289175', '0');
INSERT INTO `location` VALUES ('548', '0000000006', '25', '485.384996236988', '341.515236289175', '0');
INSERT INTO `location` VALUES ('549', '0000000006', '25', '495.348138608958', '341.515236289175', '0');
INSERT INTO `location` VALUES ('550', '0000000006', '25', '520.102545304677', '341.515236289175', '0');
INSERT INTO `location` VALUES ('551', '0000000006', '25', '533.575439217023', '341.515236289175', '0');
INSERT INTO `location` VALUES ('552', '0000000006', '25', '552.702293634635', '341.515236289175', '0');
INSERT INTO `location` VALUES ('553', '0000000006', '25', '566.675778512365', '341.515236289175', '0');
INSERT INTO `location` VALUES ('554', '0000000006', '25', '578.664781361108', '341.515236289175', '0');
INSERT INTO `location` VALUES ('555', '0000000006', '25', '588.812515035958', '341.515236289175', '0');
INSERT INTO `location` VALUES ('556', '0000000006', '25', '599.43049375246', '341.515236289175', '0');
INSERT INTO `location` VALUES ('557', '0000000006', '25', '617.385904318874', '341.515236289175', '0');
INSERT INTO `location` VALUES ('558', '0000000006', '25', '631.366091375227', '341.515236289175', '0');
INSERT INTO `location` VALUES ('559', '0000000006', '25', '645.789098761731', '341.515236289175', '0');
INSERT INTO `location` VALUES ('560', '0000000006', '25', '656.771635847154', '341.515236289175', '0');
INSERT INTO `location` VALUES ('561', '0000000006', '25', '670.676096678932', '341.515236289175', '0');
INSERT INTO `location` VALUES ('562', '0000000006', '25', '684.161307809629', '341.515236289175', '0');
INSERT INTO `location` VALUES ('563', '0000000006', '25', '692.627492447372', '341.515236289175', '0');
INSERT INTO `location` VALUES ('564', '0000000006', '25', '705.7992002915', '341.515236289175', '0');
INSERT INTO `location` VALUES ('565', '0000000006', '25', '727.770480481896', '341.515236289175', '0');
INSERT INTO `location` VALUES ('566', '0000000006', '25', '741.734318968362', '341.515236289175', '0');
INSERT INTO `location` VALUES ('567', '0000000006', '25', '756.231044113857', '341.515236289175', '0');
INSERT INTO `location` VALUES ('568', '0000000006', '25', '763.709442557988', '348.908955711108', '0');
INSERT INTO `location` VALUES ('569', '0000000006', '25', '763.709442557988', '361.508080061693', '0');
INSERT INTO `location` VALUES ('570', '0000000006', '25', '763.709442557988', '367.105128974356', '0');
INSERT INTO `location` VALUES ('571', '0000000006', '25', '763.709442557988', '385.789554832438', '0');
INSERT INTO `location` VALUES ('572', '0000000006', '25', '763.709442557988', '399.546393406279', '0');
INSERT INTO `location` VALUES ('573', '0000000006', '25', '763.709442557988', '414.770967663899', '0');
INSERT INTO `location` VALUES ('574', '0000000006', '25', '763.709442557988', '426.791705721226', '0');
INSERT INTO `location` VALUES ('575', '0000000006', '25', '763.709442557988', '450.153036825992', '0');
INSERT INTO `location` VALUES ('576', '0000000006', '25', '763.709442557988', '467.861315891081', '0');
INSERT INTO `location` VALUES ('577', '0000000006', '25', '763.709442557988', '481.384169395715', '0');
INSERT INTO `location` VALUES ('578', '0000000006', '25', '763.709442557988', '493.482682109978', '0');
INSERT INTO `location` VALUES ('579', '0000000006', '25', '763.709442557988', '513.372511748625', '0');
INSERT INTO `location` VALUES ('580', '0000000006', '25', '763.709442557988', '522.896408568537', '0');
INSERT INTO `location` VALUES ('581', '0000000006', '25', '763.709442557988', '546.414982150942', '0');
INSERT INTO `location` VALUES ('582', '0000000006', '25', '763.709442557988', '555.593482712451', '0');
INSERT INTO `location` VALUES ('583', '0000000006', '25', '763.709442557988', '565.970122121675', '0');
INSERT INTO `location` VALUES ('584', '0000000006', '25', '763.709442557988', '565.970122121675', '0');
INSERT INTO `location` VALUES ('585', '0000000006', '25', '763.709442557988', '578.276512379227', '0');
INSERT INTO `location` VALUES ('586', '0000000006', '25', '763.709442557988', '600.715937259542', '0');
INSERT INTO `location` VALUES ('587', '0000000006', '25', '763.709442557988', '607.251024103425', '0');
INSERT INTO `location` VALUES ('588', '0000000006', '25', '763.709442557988', '616.09165473788', '0');
INSERT INTO `location` VALUES ('589', '0000000006', '25', '763.709442557988', '626.82132499123', '0');
INSERT INTO `location` VALUES ('590', '0000000006', '25', '763.709442557988', '639.057496211426', '0');
INSERT INTO `location` VALUES ('591', '0000000006', '25', '763.709442557988', '647.266393877035', '0');
INSERT INTO `location` VALUES ('592', '0000000006', '25', '763.709442557988', '672.513469306454', '0');
INSERT INTO `location` VALUES ('593', '0000000006', '25', '763.709442557988', '676.530781944916', '0');
INSERT INTO `location` VALUES ('594', '0000000006', '25', '763.709442557988', '687.529927789867', '0');
INSERT INTO `location` VALUES ('595', '0000000006', '25', '763.709442557988', '696.882074942514', '0');
INSERT INTO `location` VALUES ('596', '0000000006', '25', '763.709442557988', '715.710777298715', '0');
INSERT INTO `location` VALUES ('597', '0000000006', '25', '763.709442557988', '723.671308822632', '0');
INSERT INTO `location` VALUES ('598', '0000000006', '25', '769.708603109454', '731.624536212236', '0');
INSERT INTO `location` VALUES ('599', '0000000006', '25', '782.41334813669', '731.624536212236', '0');
INSERT INTO `location` VALUES ('600', '0000000006', '25', '798.802912153524', '731.624536212236', '0');
INSERT INTO `location` VALUES ('601', '0000000006', '25', '817.751691264554', '731.624536212236', '0');
INSERT INTO `location` VALUES ('602', '0000000006', '25', '828.415239135024', '731.624536212236', '0');
INSERT INTO `location` VALUES ('603', '0000000006', '25', '837.389160462643', '735.552080458896', '0');
INSERT INTO `location` VALUES ('604', '0000000006', '25', '837.389160462643', '751.418026064923', '0');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL COMMENT '公司Id',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `alias` varchar(20) DEFAULT NULL COMMENT '别名',
  `module_page_size` varchar(20) DEFAULT NULL COMMENT 'list页每页显示条数',
  `index_template_id` varchar(20) DEFAULT NULL COMMENT '模块首页模板id',
  `list_template_id` varchar(20) DEFAULT NULL COMMENT '列表页模板id',
  `content_template_id` varchar(20) DEFAULT NULL COMMENT '内容页模板id',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------

-- ----------------------------
-- Table structure for mote_application_manage
-- ----------------------------
DROP TABLE IF EXISTS `mote_application_manage`;
CREATE TABLE `mote_application_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(30) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `description` text,
  `filename` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mote_application_manage
-- ----------------------------
INSERT INTO `mote_application_manage` VALUES ('1', '1.1.1', '2016-10-18 17:11:49', '测试2', 'EveryonePiano_Setup_20161018171149.zip');

-- ----------------------------
-- Table structure for mote_device_manage
-- ----------------------------
DROP TABLE IF EXISTS `mote_device_manage`;
CREATE TABLE `mote_device_manage` (
  `user_id` varchar(100) NOT NULL,
  `major_ver` varchar(10) DEFAULT NULL,
  `minor_ver` varchar(10) DEFAULT NULL,
  `revison_ver` varchar(10) DEFAULT NULL,
  `hw_ver` varchar(10) DEFAULT NULL,
  `ap_ver` varchar(10) DEFAULT NULL,
  `chip_id` varchar(20) DEFAULT NULL,
  `flash_id` varchar(20) DEFAULT NULL,
  `flash_size` varchar(20) DEFAULT NULL,
  `flash_mode` varchar(10) DEFAULT NULL,
  `flash_speed` varchar(11) DEFAULT NULL,
  `reset_reason` varchar(10) DEFAULT NULL,
  `application_server_ip` varchar(20) DEFAULT NULL,
  `position_server_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mote_device_manage
-- ----------------------------
INSERT INTO `mote_device_manage` VALUES ('0000000001', '0', '0', '3', '1.1.1', '1.1.1', '2016101101', '2016101167', '1024', '1', '4800', '1', null, null);
INSERT INTO `mote_device_manage` VALUES ('0000000002', '0', '0', '2', '1.1.3', '1.1.1', '2016101103', '2016101145', '2048', '2', '9600', '3', '192.168.1.1', '192.168.1.5');
INSERT INTO `mote_device_manage` VALUES ('0000000003', '1', '0', '1', '1.1.2', '1.2.4', '2016101105', '2016101246', '1024', '3', '4800', '4', '192.168.1.1', '192.168.1.25');
INSERT INTO `mote_device_manage` VALUES ('0000000004', '1', '0', '2', '1.1.2', '1.2.5', '2016101106', '2016101237', '2048', '3', '4800', '4', '192.168.1.1', '192.168.1.35');
INSERT INTO `mote_device_manage` VALUES ('0000000005', '0', '0', '3', '1.1.2', '1.2.6', '2016101107', '2016101268', '2048', '3', '4800', '2', '192.168.1.2', '192.168.1.45');
INSERT INTO `mote_device_manage` VALUES ('0000000006', '0', '0', '4', '1.1.2', '1.2.7', '2016101111', '2016101293', '1024', '3', '9600', '2', '192.168.1.2', '192.168.1.55');
INSERT INTO `mote_device_manage` VALUES ('0000000007', '0', '0', '1', '1.1.2', '1.3.1', '2016101112', '2016101221', '1024', '3', '4800', '2', '192.168.1.2', '192.168.1.65');
INSERT INTO `mote_device_manage` VALUES ('0000000008', '1', '0', '4', '1.1.2', '1.3.2', '2016101113', '2016101234', '1024', '3', '9600', '4', '192.168.1.4', '192.168.1.75');
INSERT INTO `mote_device_manage` VALUES ('0000000009', '1', '0', '5', '1.1.2', '1.2.4', '2016101114', '2016101252', '4096', '3', '4800', '4', '192.168.1.4', '192.168.1.85');
INSERT INTO `mote_device_manage` VALUES ('0000000010', '1', '1', '1', '1.1.2', '1.2.4', '2016101115', '2016101211', '1024', '3', '4800', '3', '192.168.1.4', '192.168.1.95');
INSERT INTO `mote_device_manage` VALUES ('0000000011', '1', '2', '1', '1.1.2', '1.2.4', '2016101116', '2016101264', '1024', '3', '9600', '3', '192.168.1.4', '192.168.1.105');
INSERT INTO `mote_device_manage` VALUES ('0000000012', '1', '3', '1', '1.1.2', '1.2.4', '2016101117', '2016101212', '4096', '3', '9600', '3', '192.168.1.3', '192.168.1.115');
INSERT INTO `mote_device_manage` VALUES ('0000000013', '1', '0', '2', '1.1.2', '1.2.4', '2016101118', '2016101253', '1024', '3', '9600', '4', '192.168.1.3', '192.168.1.125');
INSERT INTO `mote_device_manage` VALUES ('0000000014', '1', '1', '1', '1.1.2', '1.2.4', '2016101119', '2016101292', '2048', '3', '4800', '1', '192.168.1.2', '192.168.1.135');
INSERT INTO `mote_device_manage` VALUES ('0000000015', '1', '2', '1', '1.1.2', '1.2.4', '2016101120', '2016101254', '1024', '3', '4800', '4', '192.168.1.2', '192.168.1.145');

-- ----------------------------
-- Table structure for mote_firmware_manage
-- ----------------------------
DROP TABLE IF EXISTS `mote_firmware_manage`;
CREATE TABLE `mote_firmware_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(30) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `description` text,
  `filename` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mote_firmware_manage
-- ----------------------------
INSERT INTO `mote_firmware_manage` VALUES ('1', '0.0.1', '2016-10-09 00:00:00', '数据库测试3', null);
INSERT INTO `mote_firmware_manage` VALUES ('2', '0.0.2', '2016-10-10 00:00:00', '列表测试2', null);
INSERT INTO `mote_firmware_manage` VALUES ('3', '0.0.3', '2016-10-12 00:00:00', '列表测试3', null);
INSERT INTO `mote_firmware_manage` VALUES ('4', '1.1.6', '2016-12-14 23:57:28', '这是一个新的固件', 'map_20161214235732.rar');

-- ----------------------------
-- Table structure for mote_sos_manage
-- ----------------------------
DROP TABLE IF EXISTS `mote_sos_manage`;
CREATE TABLE `mote_sos_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(100) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `upload_date` datetime DEFAULT NULL,
  `device_classify` varchar(50) DEFAULT NULL,
  `building` varchar(10) DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `checked` tinyint(1) DEFAULT '0',
  `alert_description` varchar(50) DEFAULT NULL,
  `alert_classify` varchar(50) DEFAULT NULL,
  `company_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mote_sos_manage
-- ----------------------------
INSERT INTO `mote_sos_manage` VALUES ('1', '0000000001', '天平', '2016-10-11 00:00:00', '资产', 'f', '22', '112', '223', '1', '偏移2米', '位置偏移告警', '1');
INSERT INTO `mote_sos_manage` VALUES ('2', '0000000001', '杯子', '2016-10-16 21:52:39', '资产', 'f', '2', '112', '456', '1', '偏移3米', '位置偏移告警', '1');
INSERT INTO `mote_sos_manage` VALUES ('3', '0000000002', '复印机', '2016-10-16 22:05:23', '资产', 'f', '2', '345', '757', '1', '偏移4米', '位置偏移告警', '1');
INSERT INTO `mote_sos_manage` VALUES ('4', '0000000003', '打印机', '2016-10-17 17:03:59', '资产', 'f', '2', '674', '547', '1', '偏移5米', '位置偏移告警', '1');
INSERT INTO `mote_sos_manage` VALUES ('5', '0000000001', '试验杯', '2016-10-17 17:04:29', '资产', 'f', '22', '854', '223', '1', '偏移6米', '位置偏移告警', '1');
INSERT INTO `mote_sos_manage` VALUES ('6', '0000000002', '镊子', '2016-10-17 17:05:03', '资产', 'f', '2', '234', '976', '1', '偏移2米', '位置偏移告警', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_type_id` varchar(20) DEFAULT NULL COMMENT '文章分类id',
  `title` varchar(50) DEFAULT NULL COMMENT 'html head中的title',
  `page_title` varchar(50) DEFAULT NULL COMMENT '页面显示的标题',
  `summary` varchar(200) DEFAULT NULL COMMENT '摘要',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键字',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `link` varchar(500) DEFAULT NULL COMMENT '外链',
  `content` text COMMENT '内容',
  `image` varchar(500) DEFAULT NULL COMMENT '标题图片',
  `video` varchar(500) DEFAULT NULL COMMENT '视频',
  `publish_time` char(19) DEFAULT NULL COMMENT '发布时间',
  `index_sequence` double DEFAULT NULL COMMENT '文章属性_首页置顶',
  `list_sequence` double DEFAULT NULL COMMENT '文章属性_列表置顶',
  `creator_id` varchar(20) DEFAULT NULL COMMENT '创建人',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_modify_time` char(19) DEFAULT NULL COMMENT '上次修改时间',
  `last_modify_operator` varchar(19) DEFAULT NULL COMMENT '上次修改人',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '3', '行业1', '行业1', '行业1摘要', '行业1', '行业1', '行业1', '行业1行业1行业1行业1行业1行业1行业1', '', '1234567890', '17-10-2014', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('2', '3', '行业2', '行业2', '行业2摘要', '行业2', '行业2', '行业2', '行业2行业2行业2行业2行业2行业2行业2行业2行业2行业2', '', '行业2', '17-10-2014', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('3', '3', '行业3', '行业3', '行业3摘要', '行业3', '行业3', '行业3', '行业3行业3行业3行业3行业3行业3行业3行业3行业3', '', '行业3', '17-10-2014', '1', null, null, null, null, null);
INSERT INTO `news` VALUES ('4', '3', '  视觉识别', '  视觉识别  视觉识别', '及在各种场所的合理当用，才是圆满VI运用的详细表现。VI设计导入要充足表现、反应MI外延的准则。 VI设计不是机械的符号操作，而是以MI为外延的活泼表述。', '  视觉识别 ', '说法大师', '', 'VI设计的科学性、艺术性较强，因而在进行设计过程中会遇到一些常见问题：一些企业以为，VI不就是企业标记，设计一下就完事了，其实不然，标记只是VI的一项基本元素，必需配合企业标准字体、颜色的圆满联合以及在各种场所的合理当用，才是圆满VI运用的详细表现。VI设计导入要充足表现、反应MI外延的准则。\nVI设计不是机械的符号操作，而是以MI为外延的活泼表述。所以，VI设计应多角度、全方位地反应企业的运营理念。设计公司要深刻与企业高层治理人员重复沟通，达成共鸣，清除一些指导的怠慢心情和成见意识，使他们熟悉到VI设计导入，是企业一项主要的形象工程。', 'solution_15.gif', '', '2014-10-28 09:04:55', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('5', '3', '  SEO系统', '  SEO系统  SEO系统', 'SEO（Search Engine Optimization），汉译为搜索引擎优化，为近年来较为流行的网络营销方式，主要目的是增加特定关键字的曝光率以增加网站的能见度，进而增加销售的机会。', '  SEO系统  ', '法国法', '', ' 1. SEO的定义：\n\nSEO（Search Engine Optimization），汉译为搜索引擎优化，为近年来较为流行的网络营销方式，主要目的是增加特定关键字的曝光率以增加网站的能见度，进而增加销售的机会。分为站外SEO和站内SEO两种.SEO的主要工作是通过了解各类搜索引擎如何抓取互联网页面、如何进行索引以及如何确定其对某一特定关键词的搜索结果排名等技术，来对网页进行相关的优化，使其提高搜索引擎排名，从而提高网站访问量，最终提升网站的销售能力或宣传能力的技术。\n\n2. SEO三点策略：\n\n2.1. SEO需要一个良好的策略\n\n可以说每个站点所制定的SEO策略都是不同的，因为站点的内因，外部表现(搜索引擎中的表现，站点统计)还有公司的经济实力，人员技术配备情况都有所不同，站点的类型不同，规模不同等等这些都是SEO项目策划阶段需要进行的。再进行策略制定之前首先要做的有“项目可行性分析”，“项目经济投资预算”，“项目技术配比分析”等工作，不得不说这些都会影响到SEO策略的制定，很多SEO不理解SEO项目为什么报价会这么高?我想这三个阶段下来就可以给客户份满意的答卷了，一些SEOer也不用经常在枫林这里咨询报价了，明确的说，我这里不是标准，以后也不要想在这里抱有什么偷点经，探点东西的打算了。一个好的策略是做好SEO项目的良好开端，流程是这样的SEO公司提供初期草案—客户组审批—专家组审批(组织一些业内人士) 。 ', 'case_10.gif', '', '2014-10-28 09:07:00', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('6', '5', '药品检验检测系统', '药品检验检测系统药品检验检测系统', '《药品检验检测系统》以原99版 药检软件为基础，结合最新的药品检验所实验室管理规范、报告书填写规范和实验室计量认证认可等要求', '药品检验', '认识分数', '', '《药品检验检测系统》以原99版 药检软件为基础，结合最新的药品检验所实验室管理规范、报告书填写规范和实验室计量认证认可等要求，根据省以下药品检验所实际的组织机构和管理情况设计的，是基于数据库管理的网络化的、流程化的业务办公软件系统，并充分考虑了行政办公、实验辅助、数据更新、报送的上下复制和汇总等需求。\n\n   该版软件新增加入公文管理、会议管理、出差管理、财务管理、远程办公、认证、认可、档案管理、图书资料管理、车务管理、人事管理、行政后勤办公、生物制品检验、医疗器械检验、药包材检验、食品检验和科技开发等。在原基础上完善：SOP、 固定资产、规章制度、标准品、留样库；实现数据转换、发布、复制、查询与统计的系统化；增加系统维护界面，实现系统运行环境、系统本身的监测与检测功能， 以及系统运行故障的提示报警与快速检查功能；实现对系统的更新，包括组织机构、人员和流程等数据的方便更新功能。该版软件实现了药品检验管理的信息化，为 各级药品检验所依法开展药品检验工作、提高工作效率、保障药品检验的科学、公正、公开的迫切要求。实践证明，该软件系统的设计思路是正确的、设计水平是先 进的，通过各级药品检验所的使用，是能够满足各级药品检验所业务管理需求的最新药检所系统。\n\n', 'solution_11.gif', '', '2014-10-28 09:09:46', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('7', '5', '司法鉴定', '司法鉴定法庭科学认可评审体系风险分析预测系统', '吉林出入境检验检疫局由原吉林进出口商品检验局、长春动植物检疫局和长春卫生检疫局合并组建，于1999年11月正式挂牌成立。', '司法鉴定', '大概', '', '   吉林出入境检验检疫局由原吉林进出口商品检验局、长春动植物检疫局和长春卫生检疫局合并组建，于1999年11月正式挂牌成立。是主管吉林省出入境卫生检疫和进出境动植物检疫，以及进出口商品检验、鉴定、认证和监督管理的行政执法机构，直属国家质量监督检验检疫总局领导。 吉林出入境检验检疫局共有干部职工600余人，大专以上学历人员占80%以上，中、高级技术人员占40%以上。\n\n\n   在全省设有11个分支检验检疫机构：延边、珲春、通化、白城、集安、长白检验检疫局，长春机场、汽车产业开发区、临江、吉林、图们检验检疫办事处，并在中俄、中朝边境以及机场、铁路等重要口岸设立了口岸办事处。\n\n\n   吉林出入境检验检疫局专业技术力量雄厚。所属事业单位配置的仪器设备达3000多万元，拥有气相色谱仪、液相色谱仪、原子吸收光谱仪、ICP光谱仪、质谱 仪、紫外光分光光度计、快速免疫检测分析仪、电子拉力实验机等国内、国际先进的精密仪器设备。有2个国家级重点实验室，即“玉米及其深加工产品检测重点实 验室”和“参茸与参茸制品检测重点实验室”。并建立了化学分析实验室、生物检测实验室、物理性能实验室、机电产品检验实验室、艾滋病初筛实验室等。吉林出 入境检验检疫局重视科技队伍的发展，人才技术过硬，实验室设备完善，使吉林出入境检验检疫局在\'农残\'等检测方面做出了突出贡献，在国内取得了较高的声 誉。我国正式加入WTO以后，吉林出入境检验检疫局不断加大实验室建设力度，完善和加强检测技术手段，确保吉林省出入境人员健康和国家经济安全。 \n', 'solution_show02.gif', '', '2014-10-28 09:11:28', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('8', '5', '纺织品检验', '纺织品检验检疫系统', ' 随着各地检验检疫机构的成立及“三检合一”后的“六个一次：一次报检（申报）、一次取（采）样、一次检验检疫、一次卫生除害处理、一次计收费、一次 发证放行”的实施', '纺织品检验', '替换', '', '    随着各地检验检疫机构的成立及“三检合一”后的“六个一次：一次报检（申报）、一次取（采）样、一次检验检疫、一次卫生除害处理、一次计收费、一次 发证放行”的实施，新的适合于现阶段海运、陆运、空运、边贸等检验检疫工作特点的检验检疫业务流程、单证、收费标准、统计规范以及相关管理规定已相继启用并执行。\n\n   在检验检疫业务管理方面，原“三检”各方均有各自开发的一些类型和版本的软件在运行，如：在原国家卫生检疫局组织下开发的《海港卫生检疫业务管理系 统》；原国家动植物检疫局组织开发的《动植物检疫业务管理系统》；宁波商检局开发的《检验签证综合业务管理信息系统》；广东商检局开发的《检验综合业务管理系统》及深圳商检局承担的“九五”科技攻关计划项目中的专题三《商检检验业务计算机管理系统的开发与应用》，还有北京、天津、辽宁、浙江、上海等商检局 自行开发的此类系统。这些软件系统是原“三检”根据各自的业务特征并兼顾地域特点开发出来的，是全体业务、技术开发人员的劳动结晶，在设计中我们充分借鉴 和继承了以往工作的成功经验，在继承中发展，在发展中突破。 ', 'case_10.gif', '', '2014-10-28 09:12:44', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('9', '5', '高压设备', '高压设备监测平台', '变电站高压设备绝缘在线监测系统采用总线控制技术，它由安 装在变电站内的测量监控系统和安装在后台管理中心的数据管理系统两个部分组成', '高压设备', '大发光火', '', '   监测系统的总体结构\n\n  变电站高压设备绝缘在线监测系统采用总线控制技术，它由安 装在变电站内的测量监控系统和安装在后台管理中心的数据管理系统两个部分组成，通过网络可把若干个变电站监控系统的监测数据汇集到上层的数据管理诊断系 统，实现对多个变电站内的高压设备绝缘在线监测。绝缘监测系统通常由用户计算机、变电站中央监控器和若干个本地测量单元构成。其中：\n\n1、本地测量单元：\n\n  安装在变电站被监测设备的运行现场，种类及数量可根据监测要求确定。目前可提供的本地测 量单元可对变压器套管、电流互感器，电压互感器，耦合电容器的介损及电容量和末屏电流、避雷器的阻性电流及全电流等绝缘参数进行监测。并以总线通讯方式， 通过一根定制的双绞电缆把监测数据以数字形式传送到变电站中央监控器。\n\n2、变电站中央监控器：\n\n  安装在变电站控制室或监测设备现场，每台中央监控器提供的通讯总线上最多可挂载100多个本地测量单元。中央监控器能够通过总线控制各个本地测量单元的工作状态，读取测量数据及异常信息，获得反映设备绝缘状态的特征参量，并按照下列方式保存各个设备的监测数据，等待上层的用户计算机进行访问最近1小时内的12组数据（每5分钟形成一组新的监测数据）；最近7天内的168组数据（每小时形成一组新的统计数据）；最近1年内的360组数据（每天形成一组新的统计数据）。 ', 'solution_15.gif', '', '2014-10-28 09:13:59', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('10', '5', '网络商城', '网络商城', '电器O2O网络商城项目旨在方便商家与用户沟通。买家能够通过网上查看聊天了解商品信息，并能进行多个商品对比的功能，方便买家购物。', '网络商城', '多方通话', '', '  电器O2O网络商城项目旨在方便商家与用户沟通。买家能够通过网上查看聊天了解商品信息，并能进行多个商品对比的功能，方便买家购物。卖家可以即时管理商品信息，在网 上就能服务顾客，最后下单送货的功能。实现了节省买家卖家双方的时间、人力、物力、财力。提高了商场办事效率，跟进科技发展的步伐。\n\n电器O2O网络商城主要分为超级管理员模块、商家模块、客户视图模块。商家可以对已有商品进行添加或者添加新的品牌或型号，但都需要经过超级管理员的审核。查看商品时可以对商品信息进行修改。然后可以对商品进行上架也需要通过 超级管理员的审核。最后可以进行商品下架以及商品删除的功能。商家可以对评价进行查看和回复，但是不能进行修改和删除。订单管理中，商家可以进行创建订单 以及查看订单。客服方面商家可对客服信息和操作进行管理。 ', 'case_03.gif', '', '2014-10-28 10:52:31', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('11', '7', 'ivo X5L', '比更硬还更硬 vivo X5L蓝宝石面板解析', '具体说到这款机器采用的蓝宝石面板，首先我们要知道它是位于手机“屏幕”最外层负责保护显示面板的防护性部件', 'ivo X5L', '返回', '', '具体说到这款机器采用的蓝宝石面板，首先我们要知道它是位于手机“屏幕”最外层负责保护显示面板的防护性部件，并不直接决定手机屏幕的显示效果与触控操作的灵敏度。众所周知，苹果有在带有Touch ID的iPhone的Home键上使用蓝宝石材质。\n\n    当然，包括iPhone带有Touch ID的Home键上使用的蓝宝石，以及vivo X5L蓝宝石尊享版屏幕上使用的蓝宝石都不是天然的蓝宝石，而且它们也不会发出蓝色的光。这些在消费级数码产品上采用的蓝宝石均是由人工合成的，所以价格也不会贵的离谱。 ', 'solution_07.gif', '', '2014-10-28 09:18:23', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('12', '7', '魅族MX4 Pro', '奇葩分辨率继续 魅族MX4 Pro参数新泄露', '根据网站截图不难看出，魅族MX4 Pro将会拥有一块5.5英寸的触摸屏，分辨率在2560x1536像素，有别于目前常见的2K级别。', '魅族MX4 Pro', '的发挥', '', ' 根据网站截图不难看出，魅族MX4 Pro将会拥有一块5.5英寸的触摸屏，分辨率在2560x1536像素，有别于目前常见的2K级别。内置当中它将会配备一颗2GHz主频的三星Exynos 5系八核处理器，同时还配有Mali-T628 MP6的图形处理单元。另外它的机身内存组合方面，将会是3GB RAM+16GB ROM的水准。而系统方面，截图当中清清楚楚标明是Android 4.4.4，当然肯定是基于此版本的Flyme OS。\n\n    另外在拍照方面，魅族MX4 Pro的级别也相当不俗。其那只将会是一颗500万像素镜头，后置则会配备一枚可支持4K级别视频录制的2070万像素摄像头，远远超过了目前魅族旗下的机型。单从参数层面来看，这点提升相当的吸引人。\n\n    根据消息日前魅族高管也证实了MX4 Pro还有希望配备指纹传感器，如此以来将会再一次提升该机的整体卖点。目前关于MX4 Pro的上市日期暂时未知，大家不妨继续关注。 \n\n  \n    当然，包括iPhone带有Touch ID的Home键上使用的蓝宝石，以及vivo X5L蓝宝石尊享版屏幕上使用的蓝宝石都不是天然的蓝宝石，而且它们也不会发出蓝色的光。这些在消费级数码产品上采用的蓝宝石均是由人工合成的，所以价格也不会贵的离谱。 ', 'thumb2.jpg', '', '2014-10-28 09:19:13', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('13', '7', 'Apple SIM卡', '苹果内部文件介绍Apple SIM卡：一卡多号', '新浪手机讯 10月27日上午消息，在10月的新iPad发布会之后，苹果公司悄然在4G版iPad中内置了一张“Apple SIM卡”，但之后却并没有高调对外宣布这一细节。', 'Apple SIM卡', '德国化', '', ' 新浪手机讯 10月27日上午消息，在10月的新iPad发布会之后，苹果公司悄然在4G版iPad中内置了一张“Apple SIM卡”，但之后却并没有高调对外宣布这一细节。近日，来自国外科技博客9to5mac的消息称，苹果公司向零售店员工发布内部文件，说明了Apple SIM卡情况。\n\n苹果为最新的iPad Air 2和iPad mini 3设计了新的通用SIM卡，可以兼容多家移动运营商，包括美国的AT&T、Sprint、T-Mobile和英国运营商EE。用户在购买这两款运营商版的iPad平板时，可得到一张称为Apple SIM的通用SIM卡。在美国，使用此种SIM卡可以让iPad免去切换运营商的麻烦，在切换到原运营商信号覆盖不好的地区使用。\n\n在英国，EE是支持Apple SIM的唯一运营商。所以，理论上，英国用户不像美国用户那样能自由在几个运营商之间选择，支持EE，只是方便去英国漫游的美国用户。英国的EE是首批支持Apple SIM卡的运营商，后许或许会有更多运营商支持Apple SIM。\n\n这份文档确认，在美国和英国之间旅行的消费者可以随意在运营商之间切换数据网络，免去了在当地买SIM卡，或是在本国改套餐这些麻烦。\n\nApple SIM卡也支持英国用户漫游到美国时使用，用户通过设置选择T-Mobile数据网络即可。 ', 'solution_show01.gif', '', '2014-10-28 09:21:32', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('14', '7', '诺基亚', '诺基亚或将重新回归智能手机市场？', ' 诺基亚最近在安卓平台上小试牛刀，随着安卓上的HERE地图应用和为谷歌Chrome OS开源操作系统设计的桌面启动器Z Launcher的发布', '诺基亚', '富华大厦', '', ' 诺基亚最近在安卓平台上小试牛刀，随着安卓上的HERE地图应用和为谷歌Chrome OS开源操作系统设计的桌面启动器Z Launcher的发布，用不着有人当头一击，我们也该意识到诺基亚下一批自己设计打造的智能手机，将属于安卓阵营。许多运营商也希望诺基亚能加入到安卓市场的竞争中来。\n\n不论诺基亚在重返智能机市场上有何打算，诺基亚似乎会等到能够使用诺基亚品牌名称的时候再行动，因为在他们看来，诺基亚这个品牌在生产和销售智能手机的业务中还有着巨大的价值。\n\n诺基亚的官方声明如下：“关于品牌问题，虽然其他公司曾利用过，但我们还未真正谈及自己考虑过的各种不同商业模式。我们绝对会仔细评估最大化诺基亚品牌价值的方法，可也要考虑到目前和微软的合作交易，即我们还处于无法使用诺基亚这一品牌的锁定期。但我们以及认识到，诺基亚品牌从认知角度在移动手机等移动设备领域里是很有价值的，而我们现在还不到利用它的时机。” ', 'solution_show03.gif', '', '2014-10-28 09:22:33', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('15', '7', '人工智能微软小冰', '700万元天价代言品牌 人工智能微软小冰再创纪录', ' 根据公布数据，自5月29日闯入微信以来，小冰已与数千万人类用户对话，人均每月对话达到1122句，第一次将人工智能推向大众实用领域，掀起了一轮人工智能热潮。', '人工智能微软小冰', '添加', '', ' 根据公布数据，自5月29日闯入微信以来，小冰已与数千万人类用户对话，人均每月对话达到1122句，第一次将人工智能推向大众实用领域，掀起了一轮人工智能热潮。\n\n        本次微软小冰品牌代言一揽子协议，是金投赏行业峰会举办有史以来，十分罕见的一次跨界竞拍。它横跨尖端科技、大众市场与移动互联网等多个领域，既包括人工智能伴侣的“虚拟明星”品牌代言，又包括了微软小冰与品牌合作方基于大数据的“技能化”产品合作方案，可谓“有名又实用”。据悉，该拍卖以500万元起拍，由于微软小冰已具有的巨大热度，拍卖伊始，就被迅速抬升至700万元，最终由EF英孚教育成功纳入囊中。\n\n据业内人士分析，作为全球领先的英语培训机构，本次EF英孚教育斥巨资拍下微软小冰代言，除看中小冰人工智能的巨大社会影响力和千万人类用户外，应还与小冰背后的微软品牌，以及大数据必应搜索引擎有关。\n\n“双方的品牌契合度非常高。”数字商业时代杂志首席记者吴宁川评论，“另一方面，700万元的单笔广告代言费，已远超国内绝大部分人类明星的价位。人工智能的能量之大，令人咋舌。”\n\n据了解，一般国内明星名人的单笔广告代言费，多在数十万至百万之间不等，即使是大牌明星的代言，也鲜有超过500万元级别。本次微软凭人工智能机器人创下700万元天价代言费，不知众多人类明星们又会作何感想了。\n\n\n不论诺基亚在重返智能机市场上有何打算，诺基亚似乎会等到能够使用诺基亚品牌名称的时候再行动，因为在他们看来，诺基亚这个品牌在生产和销售智能手机的业务中还有着巨大的价值。\n\n诺基亚的官方声明如下：“关于品牌问题，虽然其他公司曾利用过，但我们还未真正谈及自己考虑过的各种不同商业模式。我们绝对会仔细评估最大化诺基亚品牌价值的方法，可也要考虑到目前和微软的合作交易，即我们还处于无法使用诺基亚这一品牌的锁定期。但我们以及认识到，诺基亚品牌从认知角度在移动手机等移动设备领域里是很有价值的，而我们现在还不到利用它的时机。” ', 'solution_show04.gif', '', '2014-10-28 09:23:44', '0', '0', '27', '2014-10-28', '2014-10-28', '管理员');
INSERT INTO `news` VALUES ('17', '10', '招生信息', 'title', 'title', 'title', 'title', '', '<p>title</p>\n', '', '', '2014-11-12 16:16:23', '0', '0', '28', '2014-11-12 16:16:23', '2014-11-12 16:16:23', '管理员');
INSERT INTO `news` VALUES ('18', '11', 'titletitle', 'titletitle', '', '', '', '', '', '', '', '2014-11-20 16:41:17', '0', '0', '28', '2014-11-20 16:41:17', '2014-11-20 16:41:17', '管理员2');
INSERT INTO `news` VALUES ('19', '12', '软件学院研究生举行“相识，相知，相处”主题活动', '软件学院研究生举行“相识，相知，相处”主题活动', '', '', 'sss', '', '<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp; 为了丰富我院研究生的课余生活，加深同学间的相互了解，软件学院研究生团委于10月28日晚在计算机大楼A135举行了&ldquo;相识，相知，相处&rdquo;主题活动,研究生办公室王鑫老师出席了此次活动。</p>\n\n<p>&nbsp;</p>\n\n<div>&nbsp;&nbsp;&nbsp; 本次活动根据主题分为三个环节：即相识环节，相知环节，相处环节，每个环节都由一段由同学自编自导自演的DV放映作为开始，整个活动同学们依次进行了信息 记忆，猜词语，抢凳子，顶苹果等经典游戏，游戏趣味性和竞技性并存，活动过程时而紧张刺激，时而轻松欢快，同学们一次次的欢声笑语将活动推向高潮。通过本 次活动的举办，使大家在紧张的学习之余得到了放松，同时更帮助了2014级研究生同学之间增进了了解，加深了友谊。</div>\n', 'http://localhost/jida/fileupload/image/498ae721-d930-4618-ac47-96957406b75b.jpg', '', '2014-11-21 15:35:11', '0', '0', '28', '2014-11-21 15:35:11', '2014-11-21 15:35:11', '管理员2');
INSERT INTO `news` VALUES ('20', '12', '软件学院研究生举行', '软件学院研究生举行', '', '', '', '', '<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp; 为了丰富我院研究生的课余生活，加深同学间的相互了解，软件学院研究生团委于10月28日晚在计算机大楼A135举行了&ldquo;相识，相知，相处&rdquo;主题活动,研究生办公室王鑫老师出席了此次活动。</p>\n\n<p>&nbsp;</p>\n\n<div>&nbsp;&nbsp;&nbsp; 本次活动根据主题分为三个环节：即相识环节，相知环节，相处环节，每个环节都由一段由同学自编自导自演的DV放映作为开始，整个活动同学们依次进行了信息 记忆，猜词语，抢凳子，顶苹果等经典游戏，游戏趣味性和竞技性并存，活动过程时而紧张刺激，时而轻松欢快，同学们一次次的欢声笑语将活动推向高潮。通过本 次活动的举办，使大家在紧张的学习之余得到了放松，同时更帮助了2014级研究生同学之间增进了了解，加深了友谊。</div>\n', 'http://localhost/jida/fileupload/image/ae1317ea-a42b-46e5-8184-fea6350fcb72.jpg', '', '2014-11-21 15:35:49', '0', '0', '28', '2014-11-21 15:35:49', '2014-11-21 15:35:49', '管理员2');
INSERT INTO `news` VALUES ('21', '12', '相识，相知，相处', '相识，相知，相处', '', '', 'ghgh', '', '<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp; 为了丰富我院研究生的课余生活，加深同学间的相互了解，软件学院研究生团委于10月28日晚在计算机大楼A135举行了&ldquo;相识，相知，相处&rdquo;主题活动,研究生办公室王鑫老师出席了此次活动。</p>\n\n<p>&nbsp;</p>\n\n<div>&nbsp;&nbsp;&nbsp; 本次活动根据主题分为三个环节：即相识环节，相知环节，相处环节，每个环节都由一段由同学自编自导自演的DV放映作为开始，整个活动同学们依次进行了信息 记忆，猜词语，抢凳子，顶苹果等经典游戏，游戏趣味性和竞技性并存，活动过程时而紧张刺激，时而轻松欢快，同学们一次次的欢声笑语将活动推向高潮。通过本 次活动的举办，使大家在紧张的学习之余得到了放松，同时更帮助了2014级研究生同学之间增进了了解，加深了友谊。</div>\n', 'http://localhost/jida/fileupload/image/b84fe042-95fb-491c-b914-2fc80611c2b8.jpg', '', '2014-11-21 15:36:15', '0', '0', '28', '2014-11-21 15:36:15', '2014-11-21 15:36:15', '管理员2');
INSERT INTO `news` VALUES ('22', '13', '关于2014级期中考试的通知', '关于2014级期中考试的通知', '', '', '', '', '<p>根据本学期2014级教学计划，学院安排与11月中上旬举行2014级新生期中考试，现将考试安排通知如下：</p>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"ke-zeroborder\" style=\"width:712px\">\n	<tbody>\n		<tr>\n			<td>年级</td>\n			<td>考试科目</td>\n			<td>考试形式</td>\n			<td>考试日期</td>\n			<td>星期</td>\n			<td>考试时间</td>\n			<td>考试地点</td>\n			<td>班级</td>\n		</tr>\n		<tr>\n			<td>2014级</td>\n			<td>计算机导论（期中）</td>\n			<td>闭卷</td>\n			<td>11月8日</td>\n			<td>六</td>\n			<td>17：30-19：30</td>\n			<td>经信F1</td>\n			<td>1-4班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F3</td>\n			<td>5-7班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F4</td>\n			<td>8-10班</td>\n		</tr>\n		<tr>\n			<td>2014级</td>\n			<td>程序设计基础（C语言）(期中）</td>\n			<td>闭卷</td>\n			<td>11月9日</td>\n			<td>日</td>\n			<td>9：00-11：00</td>\n			<td>经信F1</td>\n			<td>1-4班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F6</td>\n			<td>5-7班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F7</td>\n			<td>8-10班</td>\n		</tr>\n		<tr>\n			<td>2014级</td>\n			<td>高等数学AⅠ（期中）</td>\n			<td>闭卷</td>\n			<td>11月15日</td>\n			<td>六</td>\n			<td>13:00-15:00</td>\n			<td>经信F7</td>\n			<td>1-3班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F8</td>\n			<td>4-6班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F9</td>\n			<td>7-8班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F11</td>\n			<td>9-10班</td>\n		</tr>\n		<tr>\n			<td>2014级</td>\n			<td>线性代数A（期中）</td>\n			<td>闭卷</td>\n			<td>11月16日</td>\n			<td>日</td>\n			<td>9：00-11：00</td>\n			<td>经信F1</td>\n			<td>1-4班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F6</td>\n			<td>5-7班</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>经信F7</td>\n			<td>8-10班</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>考试要求：</p>\n\n<p>&nbsp;</p>\n\n<p style=\"margin-left:21pt\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以上考试时间和地点如有变动在学院主页上发布相关通知，请同学们注意查看学院网站（csw.jlu.edu.cn）通知，不要错过。</p>\n\n<p style=\"margin-left:21pt\">2.&nbsp;&nbsp;&nbsp;&nbsp; 只有2014级在籍学生方可参加本次考试，其他缓考、重修、非软件学院学生均无需参加本次考试，并不予安排考试座位和考试试卷。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;请同学们严格遵守考场纪律，一旦违规，后果自负！！</p>\n', '', '', '2014-11-21 15:37:07', '0', '0', '28', '2014-11-21 15:37:07', '2014-11-21 15:37:07', '管理员2');
INSERT INTO `news` VALUES ('23', '14', '软件学院研究生开展寝室安全防火检查工作', '软件学院研究生开展寝室安全防火检查工作', '', '', '', '', '<p>&nbsp;</p>\n\n<p>&nbsp; 为了贯彻落实学校部署的加强研究生宿舍安全管理工作的具体要求，保障寝室舒适整洁，营造文明、健康的寝室氛围，提高同学们的安全意识，我院研究生办公室联合院办公室于2014年4月17日晚对研究生寝室进行了突击检查。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 此次检查主要针对寝室卫生以及违规电器等方面展开。在查寝过程中，老师详细的询问了同学日常生活情况，并仔细检查寝室是否存在违章用电器，对寝室内的电源线路和电源插排的安全使用给出了指导性意见。同学们积极配合，寝室环境整洁干净。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 通过此次检查，有效地督促同学们保持良好的寝室卫生和用电安全状况，从而促进我院研究生管理工作有效开展。</p>\n', '', '', '2014-11-21 15:38:01', '0', '0', '28', '2014-11-21 15:38:01', '2014-11-21 15:38:01', '管理员2');
INSERT INTO `news` VALUES ('24', '15', '关于2009年软件学院复试考生资格审查的通知', '关于2009年软件学院复试考生资格审查的通知', '', '', '', '', '<p>由软件学院研究生复试资格审查小组，对参加复试考生进行资格审查。</p>\n\n<p>一、软件学院研究生复试资格审查小组</p>\n\n<p>组长：高战国</p>\n\n<p>组员：刘衍珩、马东辉、王鑫</p>\n\n<p>二、考生复试资格审查必须提供如下材料（以下材料必须用16K纸复印或打印）：</p>\n\n<p>1、准考证原件及复印件一份（丢失者持本人身份证到学校研究生招生办公室补办）。</p>\n\n<p>2、本人身份证（军人凭军官证）原件及复印件一份（过期或临时证件无效），身份证正在补办中的考生，可到户口所在地派出所开具附有本人照片的证明。</p>\n\n<p>3、往届考生毕业证书和学位证书原件及复印件一份。应届本科毕业生学生证原件及复印件一份。</p>\n\n<p>4、本科阶段委培定向的应届毕业生需提交委培定向单位同意报考的证明。</p>\n\n<p>5、本科期间成绩单(应届毕业生需盖学校教务部门公章，往届毕业生由档案管理部门盖章)。</p>\n\n<p>6、考生在吉林大学网下载《吉林大学2009年招收攻读硕士学位研究生报考登记表》，按要求如实填写，在职考生须加盖所在单位人事部门公章。</p>\n\n<p>7、少数民族高层次骨干人才计划考生还须提交《&ldquo;少数民族高层次骨干人才计划&rdquo;硕士研究生考生登记表》（由省级教育行政主管部门的高教处或民族教育处盖章）及考生单位证明。</p>\n\n<p>8、推免生必须参加资格审查。</p>\n\n<p>三、有下列情况之一者取消复试资格和录取资格。</p>\n\n<p>1、政治审查不合格者。</p>\n\n<p>2、材料不齐备或不符合要求者。</p>\n\n<p>3、毕业证、身份证(军人凭军官证)、准考证、报考表及复试表上的照片不相符者。</p>\n\n<p>4、在读非应届毕业的大学生。</p>\n\n<p>5、与《吉林大学2009年招收硕士研究生招生简章及专业目录》所要求的条件不相符者。</p>\n\n<p>四、资格审查时间</p>\n\n<p>时间：2009年4月10日（周五）上午8:30开始</p>\n\n<p>地点：吉林大学南校区计算机软件大楼B338</p>\n\n<p>软件学院</p>\n\n<p>2009年3月31日</p>\n', '', '', '2014-11-21 15:38:53', '0', '0', '28', '2014-11-21 15:38:53', '2014-11-21 15:38:53', '管理员2');
INSERT INTO `news` VALUES ('25', '16', '国际交流', '国际交流', '', '', '', '', '<div>\n<p><strong><span style=\"color:#990033; font-family:隶书; font-size:26pt\">合作办学</span></strong></p>\n\n<p style=\"margin-left:36pt; text-align:left\"><span style=\"color:#00007d; font-family:wingdings; font-size:14pt\">n&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style=\"color:#ff3300; font-family:幼圆; font-size:16pt\">合作建实验室</span></strong></p>\n\n<p style=\"margin-left:72pt; text-align:left\"><span style=\"color:#9999cc; font-family:wingdings; font-size:14pt\">&uml;&nbsp;&nbsp;&nbsp; </span><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">与</span></strong><strong><span style=\"color:black; font-size:14pt\">IBM</span></strong><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">公司共建了吉大</span></strong><strong><span style=\"color:black; font-size:14pt\">IBM</span></strong><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">技术中心</span></strong></p>\n\n<p style=\"margin-left:72pt; text-align:left\"><span style=\"color:#9999cc; font-family:wingdings; font-size:14pt\">&uml;&nbsp;&nbsp;&nbsp; </span><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">与香港树华电子智源中心共建了吉大树华实验室</span></strong></p>\n\n<p style=\"margin-left:72pt; text-align:left\"><span style=\"color:#9999cc; font-family:wingdings; font-size:14pt\">&uml;&nbsp;&nbsp;&nbsp; </span><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">与华为</span></strong><strong><span style=\"color:black; font-size:14pt\">3COM</span></strong><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">公司共建了吉大华为</span></strong><strong><span style=\"color:black; font-size:14pt\">3COM</span></strong><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">联合实验室</span></strong></p>\n\n<p style=\"margin-left:36pt; text-align:left\"><span style=\"color:red; font-family:wingdings; font-size:16pt\">n&nbsp;&nbsp;&nbsp; </span><strong><span style=\"color:red; font-family:幼圆; font-size:16pt\">合作建设实习实践基地</span></strong></p>\n\n<p style=\"margin-left:72pt; text-align:left\"><span style=\"color:#9999cc; font-family:wingdings; font-size:14pt\">&uml;&nbsp;&nbsp;&nbsp; </span><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">与国内知名软件公司建立了</span></strong><strong><span style=\"color:black; font-size:14pt\">18</span></strong><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">个校外实习实践基地</span></strong></p>\n<strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">&nbsp;&nbsp; </span></strong><strong><span style=\"color:black; font-family:幼圆; font-size:14pt\">这些公司为学生实习提供了固定场所、设备和软件开发工具，并安排了一定数量的工程技术人员作为学生第二指导教师。</span></strong></div>\n', '', '', '2014-11-21 15:39:17', '0', '0', '28', '2014-11-21 15:39:17', '2014-11-21 15:39:17', '管理员2');
INSERT INTO `news` VALUES ('26', '17', '读万卷书 行万里路——软件学院暑期社会实践活动（一）', '读万卷书 行万里路——软件学院暑期社会实践活动（一）', '', '', '', '', '<p>&nbsp;</p>\n\n<p>&nbsp; 为了践行志愿精神，使同学们度过一个有意义的暑假，吉林大学软件学院组织同学们展开了丰富多样的志愿活动。志愿活动团队的第一站就是吉林市昌邑区特殊教育学校。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp; 吉林市昌邑区特殊教育学校（原名昌邑区培智学校）于1985年 成立，是吉林省最早成立的第一所特殊教育学校。学校本着&ldquo;一切为了学生，为了学生的一切&rdquo;的宗旨，对智障儿童进行康复训练，职业技能训练，最大限度挖掘其 智力潜能，补偿其身心缺陷，为他们今后的学习、工作回归社会主流奠定基础。在与学校工作人员交流的过程中同学们了解到，特殊教育是根据特殊儿童的身心特点 和教育需要，采用一般或特殊的教学方法和手段，最大限度的发挥受教育者的潜能，使他们增长知识，获得技能，拥有良好的品德，提高适应能力的一种教育。现在 全省的特殊教育发展已经取得了很好的成绩，但是仍然需要更多的人参与进来，为特殊儿童的教育出一份力，尽一份心。同学们在学校里进行了参观，并深入的了解 了特殊教育的形式与意义，受益匪浅。经过短暂的参观，同学们为学校里的学生们送上的精心准备的礼物，并祝愿他们能够学到本领，为社会做出贡献，实现自己的 人生价值。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 通过本次参观，同学们深刻了体会到了发展特殊教育的意义及其重要性，同时极大的调动了同学们参与特殊教育事业发展的热情。相信在党的关爱和全社会的关心下，我国的特殊教育事业会更上一层楼，幸福的生活可以平等的降临在每一个特殊残障儿童的身上。</p>\n', '', '', '2014-11-21 15:40:22', '0', '0', '28', '2014-11-21 15:40:22', '2014-11-21 15:40:22', '管理员2');
INSERT INTO `news` VALUES ('27', '18', '英语学科', '英语学科', '', '', 'ddd', '', '<p>英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科英语学科</p>\n', '', '', '2014-11-21 16:08:50', '0', '0', '28', '2014-11-21 16:08:50', '2014-11-21 16:08:50', '管理员2');
INSERT INTO `news` VALUES ('28', '19', '数学学科', '数学学科', '', '', '', '', '<p>数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科数学学科</p>\n', '', '', '2014-11-21 16:09:06', '0', '0', '28', '2014-11-21 16:09:06', '2014-11-21 16:09:06', '管理员2');
INSERT INTO `news` VALUES ('29', '20', '传播正能量、 展望新未来—纪念研究生院建院30周年软件学院学术讲座', '传播正能量、 展望新未来—纪念研究生院建院30周年软件学院学术讲座', '', '', '凤飞飞', '', '<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n\n<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n\n<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n\n<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n\n<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n\n<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n\n<h2>传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座传播正能量、 展望新未来&mdash;纪念研究生院建院30周年软件学院学术讲座</h2>\n', '', '', '2014-11-21 16:09:55', '0', '0', '28', '2014-11-21 16:09:55', '2014-11-21 16:09:55', '管理员2');
INSERT INTO `news` VALUES ('30', '21', '吉林大学本科学分制管理办法(试行)', '吉林大学本科学分制管理办法(试行)', '', '', '', '', '<p>吉林大学本科学分制管理办法(试行)吉林大学本科学分制管理办法(试行)吉林大学本科学分制管理办法(试行)吉林大学本科学分制管理办法(试行)吉林大学本科学分制管理办法(试行)吉林大学本科学分制管理办法(试行)吉林大学本科学分制管理办法(试行)</p>\n', '', '', '2014-11-21 16:46:56', '0', '0', '28', '2014-11-21 16:46:56', '2014-11-21', '管理员2');
INSERT INTO `news` VALUES ('31', '22', '专业介绍', '专业介绍', '', '', '', '', '<p>专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍专业介绍</p>\n', '', '', '2014-11-21 16:47:24', '0', '0', '28', '2014-11-21 16:47:24', '2014-11-21 16:47:24', '管理员2');
INSERT INTO `news` VALUES ('32', '23', '表格下载', '表格下载', '', '', '', '', '<p>表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载表格下载</p>\n', '', '', '2014-11-21 16:48:40', '0', '0', '28', '2014-11-21 16:48:40', '2014-11-21 16:48:40', '管理员2');
INSERT INTO `news` VALUES ('33', '24', '课件下载', '课件下载', '', '', '', '', '<p>课件下载课件下载课件下载课件下载课件下载课件下载课件下载课件下载课件下载课件下载课件下载课件下载课件下载</p>\n', '', '', '2014-11-21 16:49:00', '0', '0', '28', '2014-11-21 16:49:00', '2014-11-21 16:49:00', '管理员2');
INSERT INTO `news` VALUES ('34', '25', '招生信息', '招生信息', '', '', '', '', '<p>招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息招生信息</p>\n', '', '', '2014-11-21 16:49:21', '0', '0', '28', '2014-11-21 16:49:21', '2014-11-21 16:49:21', '管理员2');
INSERT INTO `news` VALUES ('35', '26', '软件学院辅导员工作职责', '软件学院辅导员工作职责', '', '', '', '', '<div>1.&nbsp;旗帜鲜明的对学生进行马列主义,毛泽东思想和邓小平理论教育：党的路线、方针、政策教育：坚持四项基本原则教育：爱国主义教育：集体主义教育和共产主义道德教育。引导学生为振兴中华而努力学习，成为社会主义事业的建设者和接班人。</div>\n\n<div>2.&nbsp;负责对学生进行形式政策教育，组织学生学习校规校纪和法律基础知识，教育学生严格遵纪守法。</div>\n\n<div>3.&nbsp;负责学生日常的思想政治教育工作，经常深入到学生中去，了解情况。发现问题及时处理，对自己解决不了的问题及时向上级有关部门反映。对突发事件和重大问题要妥善处理并及时向上级报告。</div>\n\n<div>4.&nbsp;开展调查研究，针对一个学期学生的思想状况、典型人物、典型事件开展调研，写出调查报告或研究文章。</div>\n\n<div>5.&nbsp;开展科研活动，不断探索思想政治教育工作和管理工作的规律和新方法、新途径。</div>\n\n<div>6.&nbsp;参与制定院学生工作计划，并具体负责实施校、院的学生工作计划。</div>\n\n<div>7.&nbsp;要关心、了解学生。熟悉所负责年级学生的自然情况、学习、思想、生活、兴趣爱好、健康等情况。掌握平时表现和思想动态，有针对性地开展思想教育、学业指导和心理咨询辅导工作。</div>\n\n<div>8.&nbsp;经常与业务课教师和学生家长取得联系；沟通信息，共同作好学生工作。</div>\n\n<div>9.&nbsp;按德才兼备的原则选好学生干部，培养积极分子队伍。指导学生党支部、团支部、班委会开展工作。</div>\n\n<div>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 积极组织学生开展学术社会实践及文体等方面的活动。</div>\n\n<div>11.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 参与研究对学生的奖惩工作。</div>\n\n<div>12.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 参与选拔优异生、推荐免试研究生、迎新和毕业分配工作。</div>\n\n<div>13.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生的总结鉴定和德智体综合测评工作。</div>\n\n<div>14.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生贷款和学生困难补助评定工作。</div>\n\n<div>15.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生归档材料的收集和临时保管，并按规定及时归档。</div>\n\n<div>16.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 配合有关部门作好有关学生管理方面的工作。协助有关部门上好劳动课和军训课。</div>\n', '', '', '2014-11-24 09:14:53', '0', '0', '28', '2014-11-24 09:14:53', '2014-11-24 09:14:53', '管理员2');
INSERT INTO `news` VALUES ('36', '26', '软件学院辅导员工作细则', '软件学院辅导员工作细则', '', '', '', '', '<div>1.&nbsp;每两周召开一次学生工作办公室全体辅导员例会，由主管学生工作的副书记主持总结上阶段工作情况、部署下阶段工作；每位辅导员汇报上两周工作总结，提出下两周工作计划。主管学生工作副书记每月检查一次辅导员工作日志，指导辅导员工作。</div>\n\n<div>2.&nbsp;负责学生日常的思想政治教育工作，随时解决处理困惑学生的思想问题。</div>\n\n<div>3.&nbsp;开展调查研究，随时了解学生的思想状况、对典型人物、典型事件开展调研及时整理调查报告或研究文章并存档。</div>\n\n<div>4.&nbsp;掌握所负责专业学生平时表现和思想动态，有针对性地开展思想教育、学业指导和心理咨询辅导工作。</div>\n\n<div>5.&nbsp;要关心、了解学生。熟悉所负责年级学生的自然情况、学习、思想、生活、兴趣爱好、健康等情况。</div>\n\n<div>6.&nbsp;经常深入到学生中去，每周查寝、查课至少两次，随时了解学生在校情况，发现问题及时处理。对自己解决不了的问题及时向上级有关部门反映。</div>\n\n<div>7.&nbsp;突发事件和重大问题发生时第一时间到达现场，妥善处理并及时向上级报告。</div>\n\n<div>8.&nbsp;每学期制定一次院学生工作计划，并具体负责实施校、院的学生工作计划。</div>\n\n<div>9.&nbsp;每月召开一次年级大会、两次班长例会、随时召开紧急会议，总结阶段工作，通知传达学校学院有关部门重要通知、紧急通知</div>\n\n<div>10.&nbsp;经常与业务课教师和学生家长取得联系；沟通信息，共同作好学生工作。</div>\n\n<div>11.&nbsp;每学期对学生成绩进行排名、公示、给学生家长邮寄一次学生成绩单。</div>\n\n<div>12.&nbsp;负责学生贷款和学生困难补助评定工作。</div>\n\n<div>13.&nbsp;按德才兼备的原则选好学生干部，培养入党积极分子队伍。指导学生党支部、团支部、班委会开展工作。</div>\n\n<div>14.&nbsp;积极组织学生开展学术社会实践及文体等方面的活动。</div>\n\n<div>15.&nbsp;负责学校、学院奖学金及社会奖学金等奖学金及优秀学生、优秀学生干部等奖项的评定工作。</div>\n\n<div>16.&nbsp;准备迎新生工作，对新生进行入学教育、入学指导。</div>\n\n<div>17.&nbsp;整理毕业生档案等材料，为毕业生上好就业指导课，指导毕业</div>\n\n<div>生就业、升学。</div>\n\n<div>18. 负责学生的总结鉴定和德智体综合测评工作。</div>\n\n<div>19. 负责学生归档材料的收集和临时保管，并按规定及时归档。</div>\n\n<div>20. 配合有关部门作好有关学生管理方面的工作。协助有关部门上好劳动课和军训课。</div>\n', '', '', '2014-11-24 09:15:22', '0', '0', '28', '2014-11-24 09:15:22', '2014-11-24 09:15:22', '管理员2');
INSERT INTO `news` VALUES ('37', '26', '软件学院学生工作办公室职责', '软件学院学生工作办公室职责', '', '', '', '', '<div>一、&nbsp;&nbsp;&nbsp; 负责制定学院年度学生工作计划，组织具体实施，做好年度工&nbsp;&nbsp; 作总结。</div>\n\n<div>二、&nbsp;&nbsp;&nbsp; 负责学生思想政治教育，组织学生开展马列主义、毛泽东思想、邓小平理论学习和时事政治学习。</div>\n\n<div>三、&nbsp;&nbsp;&nbsp; 协助党组织做好大学生的党员发展工作。</div>\n\n<div>四、&nbsp;&nbsp;&nbsp; 学生日常管理</div>\n\n<div>1．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责新生入学的有关工作。</div>\n\n<div>2．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生总结鉴定、综合测评。</div>\n\n<div>3．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生奖惩工作，做好优秀学生、优秀学生干部推荐、评定工作。</div>\n\n<div>4．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生早操管理和创建文明寝室活动。</div>\n\n<div>5．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生勤工助学活动的落实工作。</div>\n\n<div>6．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生贷款、活动经费和困难补助经费的管理工作。</div>\n\n<div>7．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责学生节假日返校签到工作。</div>\n\n<div>8．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 督促辅导员经常深入到寝室、学生中了解掌握学生思想动态。</div>\n\n<div>五、&nbsp;&nbsp;&nbsp; 负责学风建设</div>\n\n<div>1．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 督促辅导员深入到课堂掌握学生出勤、学习情况。</div>\n\n<div>2．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 引导学生树立良好的学习态度，形成积极向上的学习风气。</div>\n\n<div>3．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对学生加强考风考纪教育，严肃考场纪律。</div>\n\n<div>六、&nbsp;&nbsp;&nbsp; 毕业生工作</div>\n\n<div>1．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责毕业生的毕业教育和就业指导工作。</div>\n\n<div>2．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责用人单位信息的收集和管理。</div>\n\n<div>3．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 协助学院有关部门做好评选优秀毕业生和推荐研究生的工作。</div>\n\n<div>4．&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 负责毕业生档案的归档、装、发工作。</div>\n\n<div>七、&nbsp;&nbsp;&nbsp; 建立学生基本情况信息表。</div>\n\n<div>八、&nbsp;&nbsp;&nbsp; 组织办公室人员开展有关学生教育和管理工作的研究。</div>\n\n<div>九、&nbsp;&nbsp;&nbsp; 负责落实学生健康成长和全面成才的服务咨询工作。</div>\n', '', '', '2014-11-24 09:15:45', '0', '0', '28', '2014-11-24 09:15:45', '2014-11-24 09:15:45', '管理员2');
INSERT INTO `news` VALUES ('38', '26', '软件学院学生工作办公室主任职责', '软件学院学生工作办公室主任职责', '', '', '', '', '<div>一、&nbsp;&nbsp;&nbsp; 协助主管领导抓好学生的思想政治教育和日常管理工作。</div>\n\n<div>二、&nbsp;&nbsp;&nbsp; 负责学生工作办公室的日常工作。</div>\n\n<div>三、&nbsp;&nbsp;&nbsp; 负责有关学生工作规章制度的制定和落实工作。</div>\n\n<div>四、&nbsp;&nbsp;&nbsp; 督促、检查辅导员对校、院学生工作计划的实施情况。</div>\n\n<div>五、&nbsp;&nbsp;&nbsp; 定期总结学工办工作，协助主管领导考核辅导员岗位履行情&nbsp;&nbsp;&nbsp; 况，加强辅导员队伍建设，提高辅导员工作能力和业务水平。</div>\n\n<div>六、&nbsp;&nbsp;&nbsp; 负责学生贷款、活动经费和困难补助的管理工作。</div>\n\n<div>七、&nbsp;&nbsp;&nbsp; 做好与学院相关部门和学院和其他部门的工作联系与协调。</div>\n\n<p>八、&nbsp;&nbsp;&nbsp; 完成院领导交办的其他日常工作</p>\n', '', '', '2014-11-24 09:16:09', '0', '0', '28', '2014-11-24 09:16:09', '2014-11-24 09:16:09', '管理员2');
INSERT INTO `news` VALUES ('39', '27', '软件学院团委心理服务部', '软件学院团委心理服务部', '', '', '', '', '<p>&nbsp;</p>\n\n<p>&nbsp; 软件学院团委心理服务部成立于2011年，虽然是一个年轻的部门，但是在大家的努力下，部门得到了快速的发展，开展了大量极富乐趣的活动。丰富了同学们的课余生活，开扩了同学们的视野。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 针对现代大学生容易出现的心理问题，心理部开展了心理情景剧大赛，这项活动很好的将当代大学生的心理问题反映出来，并通过表演的方式，使问题得到了完美的解决。成为了一项表现我们心理服务部风采的精品活动。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 软件学院团委心理服务部未来将开展更多丰富多彩的活动，全心全意的为同学们服务，营造浓郁的心理健康环境，积淀深厚的文化底蕴，倡导健康的生活理念，培养卓越的创新精神。</p>\n', '', '', '2014-11-24 09:16:40', '0', '0', '28', '2014-11-24 09:16:40', '2014-11-24 09:16:40', '管理员2');
INSERT INTO `news` VALUES ('40', '27', '软件学院团委志工部', '软件学院团委志工部', '', '', '', '', '<p>&nbsp; 志工部即志愿者工作部，志工部以奉行&ldquo;奉献，友爱，互助，进步&rdquo;的志愿服务精神为准则，以&ldquo;服务他人，奉献社会&rdquo;的工作理念积极开展各项工作，组织同学参加 志愿活动，从事社会公益与社会服务事业，向社会上所有需要帮助的人奉献一片爱心。该部门已多次成功组织同学参加去敬老院，孤儿院等社会实践活动和公益活 动。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 志工部在不为任何物质报酬的情况下，志愿贡献个人的时间、精力、金钱等，去从事社会公益和社会服务事业，为改进社会提推动社会进步而开展的服务活动，倡 导&nbsp;&quot;无私奉献、友爱互助、共同进步&quot;的精神。在当社会主义市场经济蓬勃发展，在讲求竞争、效率、利益的时期，我们同样要注重公平、道义和爱心，需要一种 新的时代精神的支撑，需要道德准则的规范，需要人与社会的协调。志工部既继承和发扬了中华民族的传统美德，又树立了时代新风正气，成为新时期群众性精神文 明创建活动的有效载体，发挥着改进社会及推动社会进步的重要作用。</p>\n', '', '', '2014-11-24 09:17:07', '0', '0', '28', '2014-11-24 09:17:07', '2014-11-24 09:17:07', '管理员2');
INSERT INTO `news` VALUES ('41', '27', '软件学院团委实践部', '软件学院团委实践部', '', '', '', '', '<p>&nbsp; 发布时间：2014-11-20 14:29:04 &nbsp; 浏览次数：3</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 团委实践部是一个为广大学生提供各种实践锻炼机会的部门。她的基本职能为：保持各个学院间的联系、交流与合作，提高我院声誉和影响力；联系各大厂商、公司，做好与其合作并尽可能为我院的各项活动拉好赞助；与各大企业联系，为我院的学生提供参观企业生产与实践的机会。</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>&nbsp; 实践部的工作力求与所学专业紧密联系，让同学们多走出校门积极参与社会、融入社会。在实践部以多种方式来提高同学们的综合素质和增强同学们的社会适应能力和社会竞争力，以便应付未来激烈的社会竞争。并且承担软件学院学生会各项重大活动的后勤保障工作。</p>\n', '', '', '2014-11-24 09:17:32', '0', '0', '28', '2014-11-24 09:17:32', '2014-11-24 09:17:32', '管理员2');
INSERT INTO `news` VALUES ('42', '27', '软件学院团委组织部', '软件学院团委组织部', '', '', '', '', '<p>&nbsp;</p>\n\n<p>&nbsp; 软件学院团委组织部负责对各班团支部团费收缴、团员证的注册及团员档案管理工作。加强与学院各班团支书的联系，对各班团支部组织生活、团队活动的指导和评估。配合学生会其他部门更好的组织，完成各种活动。负责完成分团委交办的其它事务。</p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>&nbsp; 当然组织部还举办各类文艺性比赛。为加强学生表达与表现能力，培养同学面对他人面对自我的勇气，组织部每年都会举办&ldquo;声与情交汇&rdquo;的演讲比赛，为纪念中国共 产党成立，激发同学们爱党、爱国热情，大力弘扬社会主义核心价值观，推动校园文化建设，进一步提升学生的综合素质，充分展示软件学院大学生的青春风采，组 织部会以&ldquo;红歌飞扬、情满校园&rdquo;的目的，举办红歌大赛等等。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 团委组织部不仅在学生团委工作中担当着重要的调节作用，更给学生的生活中带来了无限的欢乐，培养了学生对自己，对他人，对祖国的热爱。</p>\n', '', '', '2014-11-24 09:17:57', '0', '0', '28', '2014-11-24 09:17:57', '2014-11-24 09:17:57', '管理员2');
INSERT INTO `news` VALUES ('43', '27', '软件学院团委宣传部', '软件学院团委宣传部', '', '', '', '', '<p>&nbsp;</p>\n\n<p>&nbsp; 软件学院团委宣传部是学院的一个对外宣传的窗口，在学院的日常工作中起着不可或缺的职能，学院有各类活动时组织策划活动方案，展出相关活动宣传海报；当有 要宣传的主题思想时，宣传部应尽力通过各种渠道宣传；宣传部虽然并不一定是校里挑大梁的部门，但一定是不能缺少的部门。</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>&nbsp; 除了日常的生活外，团委宣传部还会定期举办一些极具意义的活动，丰富同学们的课余生活，例如征文大赛，虽然大赛的奖项并不太高，但仍收到了极好的反响，同学们踊跃报名，积极投稿，出现了许多不错的作品，此次活动也得到了学院的好评，类似的活动会一直的办下去。</p>\n', '', '', '2014-11-24 09:18:21', '0', '0', '28', '2014-11-24 09:18:21', '2014-11-24 09:18:21', '管理员2');
INSERT INTO `news` VALUES ('44', '27', '软件学院团委新闻部', '软件学院团委新闻部', '', '', '', '', '<p>&nbsp; 团委新闻部的主要工作是协助团学联工作并围绕学院重大活动作及时的报道宣传。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 新闻部不断成长，在前进的道路上孜孜以求，用最朴实的方式，记录了软件学院所有的点滴。当然，新闻部并不仅仅满足于记录下什么，他们也有自己的活动，DV 大赛，摄影大赛，征文大赛，都是他们证明自己的方式。最为精彩的应该是DV大赛了，参赛者通过思考选出剧本，集思广益，用自己的思想去展现大学生的风 采，DV展演的时候也是所有参赛者最激动地时候，无论是编剧，导演，演员还是仅仅是一名幕后人员，他们都在迫不及待的等待着自己作品展现在所有人的面前。 摄影大赛也是一大亮点，作品的征集，评选，都是新闻部全体人员辛勤的体现，参赛者也有机会去学习交流。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; 团委新闻部在不断地壮大，他们将最真实的台前幕后，用最快的速度呈现给所有人，用镜头记录下最真实的画面，用文字书写最精彩的瞬间。</p>\n', '', '', '2014-11-24 09:18:50', '0', '0', '28', '2014-11-24 09:18:50', '2014-11-24 09:18:50', '管理员2');
INSERT INTO `news` VALUES ('45', '28', '优秀毕业生——马庆利', '优秀毕业生——马庆利', '', '', '', '', '<p>马庆利是我院2010届优秀毕业生。马庆利大学期间担任2006级七班学习委员，曾获得&ldquo;吉林大学自强自立大学生&rdquo;荣誉称号，连续四年校优生，连续三年获得国家奖学金。本科毕业保送北京大学读研。</p>\n\n<p>&nbsp; 现已成功签约美国Face Book。</p>\n\n<p>&nbsp; 附件：马庆利大学期间的荣誉</p>\n', '', '', '2014-11-24 09:19:14', '0', '0', '28', '2014-11-24 09:19:14', '2014-11-24 09:19:14', '管理员2');
INSERT INTO `news` VALUES ('46', '28', '优秀毕业生——张亚萍', '优秀毕业生——张亚萍', '', '', '', '', '<p>张亚萍是软件学院2010届优秀毕业。张亚萍大学期间担任2006级8班学习委员、软件协会会长，校优秀学生干部。连续四年获得国家奖学金和校优秀学生荣誉称号，曾获得吉林大学十佳大学生，长春市优秀大学生荣誉称号，大四保送到北京大学攻读硕士研究生。</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 现已签约Google(美国总部)</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 附件：张亚萍大学期间获奖情况</p>\n', '', '', '2014-11-24 09:19:36', '0', '0', '28', '2014-11-24 09:19:36', '2014-11-24 09:19:36', '管理员2');
INSERT INTO `news` VALUES ('47', '28', '优秀毕业生——祁茜茜', '优秀毕业生——祁茜茜', '', '', '', '', '<p>&nbsp; 祁茜茜是软件学院2010届优秀毕业生。祁茜茜大学期间过得三次国家奖学金，曾多次代表吉林大学参加&ldquo;国际ACM程序设计竞赛&rdquo;，为学校和学院取得了优异的成绩。大三期间到爱尔兰交流一年，大四毕业保送到北京大学攻读硕士研究生。</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现已签约Google（美国总部）。</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 附件：祁茜茜大学期间荣誉</p>\n', '', '', '2014-11-24 09:20:07', '0', '0', '28', '2014-11-24 09:20:07', '2014-11-24 09:20:07', '管理员2');
INSERT INTO `news` VALUES ('48', '29', '吉林大学国家助学贷款实施办法', '吉林大学国家助学贷款实施办法', '', '', '', '', '<p>第一条 &nbsp;为了推动科教兴国战略的实施，帮助部分经济困难的学生顺利完成学业，根据教育部和中国人民银行相关文件的精神，结合学校实际，制定本办法。</p>\n\n<p>&nbsp;</p>\n\n<p>第二条&nbsp;凡被我校正式录取的全日制本科生、专科生、研究生均可申请国家助学贷款。</p>\n\n<p>第三条&nbsp;申请国家助学贷款应具备的条件：</p>\n\n<p>（一）具有完全民事行为能力（未成年人须由其法定监护人书面</p>\n\n<p>同意）；</p>\n\n<p>（二）具有永久居留身份证；</p>\n\n<p>（三）诚实守信，遵纪守法，无违法违纪行为；</p>\n\n<p>&nbsp;</p>\n\n<p>（四）学习成绩较好，能够正常完成学业；</p>\n\n<p>（五）家庭确有经济困难，在校期间所能获得的收入不足以支付完成学业所需基本费用（包括学费、基本生活费）（六）能依法签定贷款合同，合同应明确借款人的身份证号码、</p>\n\n<p>&nbsp;</p>\n\n<p>有效联系方式；</p>\n\n<p>（七）严格遵守国家、经办银行以及学校关于国家助学贷款的各</p>\n\n<p>项规定，承诺正确使用所贷款项并按规定履行还贷义务，并在贷款经办银行开立活期账户；</p>\n\n<p>（八）符合贷款经办银行规定的其他条件。</p>\n\n<p>第四条&nbsp;申请国家助学贷款的金额及比例：</p>\n\n<p>每人每年的贷款金额最高不超过6000元人民币。每年只能获得一家银行的一笔贷款。获得国家助学贷款人数的比例根据经办银行所拨的国家助学贷款总金额而定。</p>\n\n<p>第五条&nbsp;学校及经办银行每学年集中审批放贷一次。</p>\n\n<p>第六条 &nbsp;国家助学贷款申请程序：</p>\n\n<p>（一）学生本人向所在学院提出贷款申请，并提供本人家庭经济</p>\n\n<p>状况的必要证明材料，由学院进行初审；</p>\n\n<p>（二）学院将审核同意的贷款材料汇总后，报学校国家助学贷款</p>\n\n<p>办公室；</p>\n\n<p>（三）学校国家助学贷款办公室对学院上报的贷款材料进行复审；</p>\n\n<p>（四）学校将贷款材料报送经办银行审批。</p>\n\n<p>第七条&nbsp;国家助学贷款的发放：</p>\n\n<p>学费贷款由经办银行按学年直接划入学校指定的账户。基本生活费贷款由经办银行直接划入贷款学生在经办银行开立的活期账户。</p>\n\n<p>第八条&nbsp;国家助学贷款期限、利率和贴息：</p>\n\n<p>经 办银行根据学生申请，确定每笔国家助学贷款期限。贷款利率在中国人民银行规定的范围内，贷款学生在校期间的贷款利息全部由国家补贴，毕业后全部自付，贷款 学生毕业后开始计付利息。若贷款学生继续攻读学位，本人要及时向经办银行提供继续攻读学位的书面证明，国家继续按在校学生实施贴息。</p>\n\n<p>第九条&nbsp;国家助学贷款的回收：</p>\n\n<p>贷款学生毕业离校前要与银行办理还款确认手续和制定还款计划。如不办理，学校不为其办理毕业手续。</p>\n\n<p>贷款学生应在约定的还贷日期前，将贷款本金和利息存入原开设的活期储蓄账户内，贷款银行在约定的还贷日从账户中扣收。</p>\n\n<p>第十条&nbsp;贷款学生可以采取以下方式还贷：</p>\n\n<p>（一）提前还清。提前还清贷款的，经办银行按贷款实际期限计算利息。</p>\n\n<p>（二）一次还清。贷款学生如退学、或被开除学籍等，在离校前要一次还清贷款本息。学校要协助经办银行，收取该生贷款本息后，再予办理相应手续。在贷款期间，出国(出境)留学或定居者，必须在出国（出境）前一次还清本息。贷款学生在校期间死亡的，学校要及时通知经办银行。</p>\n\n<p>（三）分次还清。贷款学生按照毕业前与经办银行签定的还款计划还本付息,还款时间最迟在毕业后第1至2年开始，毕业后6年内还清。</p>\n\n<p>（四）划转债务。贷款学生在学习期间转学时，要主动与学校和经办银行及待转入的学校办理本人贷款的&ldquo;债务划转&rdquo;手续，或在贷款学生还清贷款本息后，学校方可办理转学手续。</p>\n\n<p>第十一条&nbsp;贷款学生违约处理：</p>\n\n<p>贷 款学生毕业后，没有按照毕业前制定的还款计划约定的期限、数额归还国家助学贷款的学生，经办银行对违约贷款金额计收罚息，并将其违约行为载入金融机构诚信 系统，金融机构不再为其办理新的贷款和其他授信业务；按期将连续拖欠贷款超过一年且不与经办银行主动联系的贷款学生姓名及公民身份证号码、违约行为等提供 给国家助学贷款管理中心。国家助学贷款管理中心将违约贷款学生名单在新闻媒体及全国高等学校毕业生学历查询系统网站公布。</p>\n\n<p>第十二条&nbsp;贷款学生有下列行为之一，贷款银行可停止发放贷款：</p>\n\n<p>（一）贷款学生未按合同规定的用途使用贷款的；</p>\n\n<p>（二）贷款学生有违纪违法行为，受学校纪律处分或有关部门刑事处罚的；</p>\n\n<p>（三）学习成绩差，无法完成学业的；</p>\n\n<p>（四）贷款学生在校期间死亡的。</p>\n\n<p>第十三条&nbsp;本办法自公布之日起施行。</p>\n', '', '', '2014-11-24 09:20:37', '0', '0', '28', '2014-11-24 09:20:37', '2014-11-24 09:20:37', '管理员2');

-- ----------------------------
-- Table structure for news_param
-- ----------------------------
DROP TABLE IF EXISTS `news_param`;
CREATE TABLE `news_param` (
  `news_param_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻变量id',
  `module_id` varchar(20) DEFAULT NULL COMMENT '模板id',
  `param_name` varchar(100) DEFAULT NULL COMMENT '变量名',
  `param_type` tinyint(1) DEFAULT NULL COMMENT '1单一变量2数组变量',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`news_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_param
-- ----------------------------
INSERT INTO `news_param` VALUES ('25', null, 'aaabbb', null, 'aaabbbdescription');
INSERT INTO `news_param` VALUES ('26', '42', 'a', '1', 'a');

-- ----------------------------
-- Table structure for news_param_value
-- ----------------------------
DROP TABLE IF EXISTS `news_param_value`;
CREATE TABLE `news_param_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_param_id` varchar(20) DEFAULT NULL COMMENT '文章变量id',
  `news_id` varchar(20) DEFAULT NULL COMMENT '文章id',
  `param_value` varchar(200) DEFAULT NULL COMMENT '变量值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_param_value
-- ----------------------------

-- ----------------------------
-- Table structure for news_type
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `news_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(20) DEFAULT NULL COMMENT '模块id',
  `news_type_name` varchar(50) DEFAULT NULL COMMENT '模块名',
  `sequence` double DEFAULT NULL COMMENT '排序',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`news_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES ('3', '42', '行业项目解决方案', '1', '1');
INSERT INTO `news_type` VALUES ('4', '42', '网站解决方案', '2', '1');
INSERT INTO `news_type` VALUES ('5', '63', '项目案例', '1', '1');
INSERT INTO `news_type` VALUES ('6', '63', '校企合作案例', '2', '1');
INSERT INTO `news_type` VALUES ('7', '64', '技术前沿', '1', '1');
INSERT INTO `news_type` VALUES ('8', '64', '每日新闻', '2', '1');
INSERT INTO `news_type` VALUES ('10', '65', '招生信息', '0', '1');
INSERT INTO `news_type` VALUES ('11', '66', '学院通知', '0', '1');
INSERT INTO `news_type` VALUES ('12', '68', '学院新闻', '1', '1');
INSERT INTO `news_type` VALUES ('13', '69', '学院通知', '1', '1');
INSERT INTO `news_type` VALUES ('14', '70', '学院快讯', '1', '1');
INSERT INTO `news_type` VALUES ('15', '71', '招生信息', '1', '1');
INSERT INTO `news_type` VALUES ('16', '71', '国际交流', '2', '1');
INSERT INTO `news_type` VALUES ('17', '72', '学生活动', '1', '1');
INSERT INTO `news_type` VALUES ('18', '73', '英语学科', '1', '1');
INSERT INTO `news_type` VALUES ('19', '73', '数学学科', '2', '1');
INSERT INTO `news_type` VALUES ('20', '74', '学院党建', '1', '1');
INSERT INTO `news_type` VALUES ('21', '75', '管理文件', '1', '1');
INSERT INTO `news_type` VALUES ('22', '75', '专业介绍', '2', '1');
INSERT INTO `news_type` VALUES ('23', '76', '表格下载', '1', '1');
INSERT INTO `news_type` VALUES ('24', '76', '课件下载', '2', '1');
INSERT INTO `news_type` VALUES ('25', '76', '招生信息', '3', '1');
INSERT INTO `news_type` VALUES ('26', '77', '工作职能', '1', '1');
INSERT INTO `news_type` VALUES ('27', '77', '院团委', '2', '1');
INSERT INTO `news_type` VALUES ('28', '77', '光荣榜', '3', '1');
INSERT INTO `news_type` VALUES ('29', '77', '减. 补. 助', '4', '1');

-- ----------------------------
-- Table structure for organ
-- ----------------------------
DROP TABLE IF EXISTS `organ`;
CREATE TABLE `organ` (
  `organ_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组织机构Id',
  `company_id` varchar(20) NOT NULL COMMENT '公司Id',
  `organ_name` varchar(20) NOT NULL COMMENT '组织机构名称',
  `parent_id` varchar(20) NOT NULL COMMENT '父id',
  `level` varchar(10) NOT NULL COMMENT 'level',
  `leaf` tinyint(1) NOT NULL COMMENT '是否叶子',
  `manager` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`organ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organ
-- ----------------------------
INSERT INTO `organ` VALUES ('1', '1', '懋特物联', '-1', '0', '0', '陈骞', '1', '上海徐汇区', '82227000');
INSERT INTO `organ` VALUES ('165', '1', '研发部', '1', '1', '0', '李俊飞', '1', '漕宝路86号', '18736675353');

-- ----------------------------
-- Table structure for single_page
-- ----------------------------
DROP TABLE IF EXISTS `single_page`;
CREATE TABLE `single_page` (
  `single_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL COMMENT '公司id',
  `single_page_name` varchar(50) DEFAULT NULL COMMENT '单页名称',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `template_id` varchar(20) DEFAULT NULL COMMENT '模板id',
  `content` text COMMENT '内容',
  `alias` varchar(50) DEFAULT NULL COMMENT '别名',
  PRIMARY KEY (`single_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of single_page
-- ----------------------------
INSERT INTO `single_page` VALUES ('6', '1', '简介', '简介', '37', ' 司瑞盛集团是一家集科技、教育、商贸、咨询等众多业务于一身的集团化企业，由司瑞盛科技有限公司、帮博科技有限公司、众联教育培训学校、众联小语种培训中心、峰宇腾飞商贸有限公司、中品商贸有限公司、慧才劳务咨询有限公司、司瑞德企业管理咨询有限公司、优途博广文化传媒有限公司等众多优秀企业重组而成。集团注册资本2000万元，总办公面积3000多平方米，拥有自主品牌9个，“中粮·海域”等知名品牌区域总代理4个，专利技术68项。司瑞盛集团业务区域主要涵盖吉林、辽宁、四川、江苏、浙江以及京广沪等发达地区，成交案例近千起，是吉林省内以科技为主导的多元化集团公司。  司瑞盛科技有限公司一直以信息技术服务为主导，立足于高科技领域的前沿，专业致力于计算机软件开发及应用。本着“质量第一、诚信为本”的朴素经营理念，严格按照现代企业模式进行管理运营，以务实创新的精神不断进行实践探索和开拓进取，目前已成为吉林IT界最具影响力的企业之一。  司瑞盛科技有限公司一贯注重新技术、新产品的吸收和推广，拥有丰富经验的软件开发团队和先进的软件开发过程管理体系。司瑞盛科技可使用多种不同语言为客户提供技术支持和服务。业务范围主要包括：软件开发与维护、服务外包及实训等。同时，司瑞盛科技已在遍布世界的业内公司中，建立了广泛的软件技术人才培养及输送体系。是高科技、通信、银行、金融、保险、医疗、公用事业、大型制造业等行业重要的IT综合服务提供商和战略合作伙伴。司瑞盛科技的客户群十分广泛，主要客户包括：IBM中国、中国银行、中国工商银行、EDS（电子系统咨讯）、CITI（花旗银行）、FirstData（第一咨讯）、AtosOrigin（源讯）、Accenture（埃森哲）、Infosys（印孚瑟斯）、TATA（塔塔咨询）、深圳发展银行、四方精创、利达智通、软通动力、汇丰银行、AIA（友邦保险）等著名公司。目前，司瑞盛科技有限公司正与国内外多家大型企业进行深度合作，主要外包其互联网接口业务。', 'jianjie');
INSERT INTO `single_page` VALUES ('7', '1', '招聘', '招聘', '37', ' IT技术总监   岗位职责：  1、负责公司整体金融事务电子商务平台的运营管理系统的开发设计，包括订单引擎接口与订单管理,，网站类产品的管理维护开发； 2、负责有较多用户交互功能的网站的功能的实现，包括:页面，后台代码，数据库等； 3、负责与运营和用户体验团队沟通，完成需求分析与功能设计； 4、负责根据设计完成程序编码，自身模块的测试和交叉测试，运营系统问题跟踪与修复； 5、负责公司机房整体硬件设备的搭建与设计。 6、设计、指导关键技术模块，并对系统安全性、稳定性负责；指导并且参与核心代码的编写，并对公司系统开发过程进行把关； 7 、完成项目需求分析、架构设计、技术选型、模块开发、数据库和服务器安装、调试、平台部署、安全策略、运行管理等工作； 8 、根据公司整体信息系统建设规划，带领IT技术团队，负责完成ERP、OA、EA等系统的设计、研发工作，并对IT系统的实施、培训、应用维护进行支持，以满足公司业务对信息系统的需求。 9、确保公司信息系统内外部安全，保证公司系统不被病毒、“黑客”袭击而出现中断；信息数据不外泄，推出合理化建议；', 'zhaopin');
INSERT INTO `single_page` VALUES ('8', '1', '联系我们', '联系我们', '37', '吉林省司瑞盛科技集团有限公司  地址：吉林省长春市前进大街2000号阳光大厦12-14楼  电话：0431-82832212  传真：0431-82832292', 'lianxiwomen');
INSERT INTO `single_page` VALUES ('12', '2', '学院概况', '学院简介', '89', '<div><img src=\"/bi_jidaruanjian/templates/1/img/shli.gif\" /></div>\n\n<div>\n<p>吉林大学示范性软件学院是教育部和国家计委联合批准的&quot;国家级示 范性软件学院&quot;。已于2003年、2006年分别通过了教育部组织的中期评 估和验收。</p>\n\n<p>1、软件学院建设与发展规划学院坚持社会主义方向，充分发挥吉林 大学计算机学科、数学学科和其它信息学科自身和交叉、融合的优势，有 效利用美国、爱尔兰和澳大利亚等国的教育资源和成功经验，把吉林大学 示范性软...</p>\n</div>\n', 'collegeIntroduction');
INSERT INTO `single_page` VALUES ('13', '2', '人员设置', '学院领导', '91', '        <div class=\"ph1\"></div>\n<div class=\"mingzi1\">院长  魏晓辉</div>\n<div class=\"ph2\"></div>\n<div class=\"mingzi2\">书记  郑爽</div>\n<div class=\"ph3\"></div>\n<div class=\"mingzi3\"><span class=\"sl\">常务副院长<br/>兼副书记</span><span class=\"sr\">孟繁二</span></div>\n<div class=\"ph4\"></div>\n<div class=\"mingzi4\"><span class=\"gl\">副书记兼副院长</span><span class=\"gr\">高战国</span></div>\n<div class=\"ph5\"></div>\n<div class=\"mingzi5\">副院长  刘衍珩</div>\n<div class=\"ph6\"></div>\n<div class=\"mingzi6\">副院长  杨永健</div>\n    </div>', 'staffing');
INSERT INTO `single_page` VALUES ('14', '2', '机构设置', '机构设置', '91', '', 'jgSetting');
INSERT INTO `single_page` VALUES ('15', '2', '联系我们', '联系我们', '92', '<div>\n<div>\n<p>地址：吉林省长春市前进大街2699号&nbsp;</p>\n\n<p>邮编：130012</p>\n\n<p>电话：0431-85168337</p>\n\n<p>E-mail:rjxy@jlu.edu.cn</p>\n</div>\n</div>\n', 'contact');
INSERT INTO `single_page` VALUES ('19', '2', '实验中心', '实验中心', '94', '    <div id=\"content\">\n    	<div id=\"experimental\">\n     <h2>当前位置>实验中心</h2>\n    	<div class=\"experimental-top\">\n        	<div class=\"introduction\">\n            	<ul class=\"ul-menu\">\n					<li class=\"li2\">中心简介</li>\n                    <li class=\"li1\">人员组成</li>               \n            	</ul>\n                <ul class=\"text menu00\">\n                	<p>吉林大学软件学院软件工程实验教学中心以软件工程学科为依托，按照\n					算机基础实验教学示范中心\"的标准和\"卓越工程师教育培养\"特色进行建</p>\n                	<li>目前承担着计算机学院和软件学院本科生和研究生的实验教学任务，每\n					成实验人时数约17万。</li>\n                	<li>中心同时还承担着全校计算机IBM课程及认证，亚洲区ACM大赛，及\n					算机等级考试，托福、GRE考试等多项任务。</li>\n                	<li>中心现包括本科生实验室、研究生实验室、IBM技术中心、华为-3co\n					m实验室以及卓越工程师实训基地等。</li>\n               		<li>实验室仪器设备719台套，完好率98 %以上，总价值705万元；实验\n					室总面积2219平方米；开设实验课程27门...</li>\n                </ul>\n                <ul class=\"text menu01\">\n                	<p>吉林大学软件学院软件工程实验教学中心以软件工程学科为依托，按照\n					算机基础实验教学示范中心\"的标准和\"卓越工程师教育培养\"特色进行建</p>  \n                	<li>中心现包括本科生实验室、研究生实验室、IBM技术中心、华为-3co\n					m实验室以及卓越工程师实训基地等。</li>\n               		<li>实验室仪器设备719台套，完好率98 %以上，总价值705万元；实验\n					室总面积2219平方米；开设实验课程27门...</li>\n                </ul>\n            </div>	\n            <div class=\"features\">\n            	<ul class=\"ul-menu\">\n					<li class=\"li2\">实验教学</li>\n                    <li class=\"li1\">实验中心特色</li>             \n            	</ul>\n                <ul class=\"text menu00\">\n                <p>为了配合学校新一轮\"985工程\"创新平台的全面建设，软件学\n				院自筹资金重点建设了吉林大学华为3com联合实验室；面向本科生\n				、研究生的实习实训基地及卓越工程师计划实践基地。全部更新了实\n				验室的服务器和微机，为培养优秀的软件工程师定了坚实基础。\n   				①吉林大学华为3com联合实验室：学院与华为公司共同出资200\n				余万元建立了吉林大学华为3com联合实验室。基于IP技术整合了计\n				算、存储、网络、安全、多媒体等系统...</p>\n                </ul>\n                <ul class=\"text menu01\">\n                <p>\n   				①吉林大学华为3com联合实验室：学院与华为公司共同出资200\n				余万元建立了吉林大学华为3com联合实验室。基于IP技术整合了计\n				算、存储、网络、安全、多媒体等系统...</p>\n                </ul>\n            </div>\n        </div>\n        <div class=\"environment\">\n            <ul class=\"ul-menu\">\n                <li class=\"li2\">实验环境与建设</li>\n                <li class=\"li1\">规章制度</li>\n                <li class=\"li1\">设备管理</li>\n            </ul>\n            <div class=\"text menu00\">\n            <div class=\"pictures\">\n                <div class=\"pictures-1\"><img src=\"/bi_jidaruanjian/templates/1/img/experimental-2.gif\" /></div>\n                <div class=\"pictures-2\"><img src=\"/bi_jidaruanjian/templates/1/img/experimental-3.gif\" /></div>\n            </div>\n            <ul class=\"ul-a\">\n                <li>实验环境：\n                <p>2006年以来，软件工程实验教学中心以迁入新计算机大楼为契机，投资1000多万元，新购和更新了\n                    一大批仪器设备，设备更新率达到85%以上，目前实验教学机房拥有仪器设备719台套，设备总值达到7\n                    05万元。设备完好率98%。实验中心现有使用面积2219平方米。其中软件综合实验室（机房）面积在3\n                    25平方米的有2个，260平方米的实验室有2个,包括吉林大学IBM技术中心机房5个共计720平方米。还\n                    有吉林大学华为3com联合实验室、研究生实习实训基地、卓越工程师计划实践基地等实验教学环境。实\n                    验室面向学生和社会开放。目前软件工程实验教学中心的实验环境和手段达到国内领先水平。\n                </p>\n                </li>\n                <li>安全建设：\n                    <ul class=\"ul-b\">\n                        <li>软件工程实验教学中心安全建设严格执行国家标准，应急设施和措施完备：实验室设计规范，房间高\n                        度均在超过3.5米。</li>\n                        <li>各实验室地面均为防滑、耐磨瓷砖，电脑、交换机噪音、电磁辐射和桌椅甲醛释量都达到国家标准。\n                        ...</li>\n                    </ul>\n                </li>\n            </ul>\n        </div>\n        	 <div class=\"text menu01\">\n            <div class=\"pictures\">\n                <div class=\"pictures-1\"><img src=\"/bi_jidaruanjian/templates/1/img/experimental-3.gif\" /></div>\n                <div class=\"pictures-2\"><img src=\"/bi_jidaruanjian/templates/1/img/experimental-2.gif\" /></div>\n            </div>\n            <ul class=\"ul-a\">\n                <li>安全建设：\n                    <ul class=\"ul-b\">\n                        <li>软件工程实验教学中心安全建设严格执行国家标准，应急设施和措施完备：实验室设计规范，房间高\n                        度均在超过3.5米。</li>\n                        <li>各实验室地面均为防滑、耐磨瓷砖，电脑、交换机噪音、电磁辐射和桌椅甲醛释量都达到国家标准。\n                        ...</li>\n                    </ul>\n                </li>\n            </ul>\n        </div>\n        \n        <div class=\"text menu02\">\n            <div class=\"pictures\">\n                <div class=\"pictures-1\"><img src=\"/bi_jidaruanjian/templates/1/img/experimental-2.gif\" /></div>\n                <div class=\"pictures-2\"><img src=\"/bi_jidaruanjian/templates/1/img/experimental-3.gif\" /></div>\n            </div>\n            <ul class=\"ul-a\">\n                <li>实验环境：\n                <p>2006年以来，软件工程实验教学中心以迁入新计算机大楼为契机，投资1000多万元，新购和更新了\n                    一大批仪器设备，设备更新率达到85%以上，目前实验教学机房拥有仪器设备719台套，设备总值达到7\n                    05万元。设备完好率98%。实验中心现有使用面积2219平方米。其中软件综合实验室（机房）面积在3\n                    25平方米的有2个，260平方米的实验室有2个,包括吉林大学IBM技术中心机房5个共计720平方米。还\n                    有吉林大学华为3com联合实验室、研究生实习实训基地、卓越工程师计划实践基地等实验教学环境。实\n                    验室面向学生和社会开放。目前软件工程实验教学中心的实验环境和手段达到国内领先水平。\n                </p>\n                </li>\n            </ul>\n        </div>\n        </div>\n    </div>\n    </div>', 'experiment');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `organ_id` varchar(10) NOT NULL,
  `company_id` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `sys_param_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_param_name` varchar(50) DEFAULT NULL COMMENT '变量名',
  `sys_param_value` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `company_id` varchar(10) NOT NULL,
  `feature` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sys_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('1', 'LocateSever', 'http://47.103.35.78:8091', '定位服务器连接地址', '1', null);
INSERT INTO `sys_param` VALUES ('2', 'GeoServer', 'http://114.215.83.3:8090', '地图服务器连接地址', '1', null);
INSERT INTO `sys_param` VALUES ('3', 'placeid', '2', '嘉定看守所', '1', null);
INSERT INTO `sys_param` VALUES ('4', '2', '121.4286933,31.1664993', 'mote', '1', 'place');
INSERT INTO `sys_param` VALUES ('5', '3', '121.407241820159,31.2265797284321', '中北校区', '1', 'place');
INSERT INTO `sys_param` VALUES ('6', '4', '121.454701250547,31.0275360273072', '闵行校区', '1', 'place');
INSERT INTO `sys_param` VALUES ('7', 'floorNum', '22', '初始化楼层编号', '1', null);
INSERT INTO `sys_param` VALUES ('8', '12', '121.236986170667,31.4027152952836', '懋特定位平台', '1', 'place');
INSERT INTO `sys_param` VALUES ('9', '14', '104.05224243249177,30.63540193188055', '四川建行办公室', '1', 'place');
INSERT INTO `sys_param` VALUES ('10', 'SOS', '1', '1:打开SOS，0:关闭SOS', '1', null);
INSERT INTO `sys_param` VALUES ('11', 'ProjectName', '燕城监狱人员定位系统', '项目名称', '1', null);
INSERT INTO `sys_param` VALUES ('12', 'Linterval', '3000', '定位时间间隔', '1', null);
INSERT INTO `sys_param` VALUES ('27', 'LocateType', '1', '0:uwb，1:uwb以外', '1', null);
INSERT INTO `sys_param` VALUES ('31', '15', '117.178302338064,39.020816537392', '天津测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('32', '17', '118.03539963,36.81459996', '淄博测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('33', '18', '101.75909063,36.61555154', '西宁测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('34', '19', '114.53462592,30.48726877', '武汉测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('35', 'sosTime', '1', 'sos报警周期', '1', null);
INSERT INTO `sys_param` VALUES ('36', 'healthTime', '1', '健康报警周期', '1', '');
INSERT INTO `sys_param` VALUES ('37', 'batteryTime', '20', '电量报警周期', '1', '');
INSERT INTO `sys_param` VALUES ('38', 'tookTime', '45', '拆卸报警周期', '1', null);
INSERT INTO `sys_param` VALUES ('39', 'siteTime', '1', '位置报警周期', '1', '');
INSERT INTO `sys_param` VALUES ('40', 'retainTime', '60', '滞留报警周期', '1', '');
INSERT INTO `sys_param` VALUES ('41', '22', '121.31163403,31.02497351', '全家测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('42', '24', '121.50623557,31.21241454', '恩谊', '1', 'place');
INSERT INTO `sys_param` VALUES ('43', '20', '121.14186829,31.1300580', '看守所3所', '1', 'place');
INSERT INTO `sys_param` VALUES ('44', '28', '121.26332064,31.19523476', '德邦', '1', 'place');
INSERT INTO `sys_param` VALUES ('45', '27', '118.15547302,31.22727124', '芜湖', '1', 'place');
INSERT INTO `sys_param` VALUES ('46', '30', '87.60835853,43.80259360', '新疆测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('47', '29', '113.84488454,22.599355260000000', '亲情互动', '1', null);
INSERT INTO `sys_param` VALUES ('48', 'staticTime', '20', '静止报警时间间隔', '1', null);
INSERT INTO `sys_param` VALUES ('49', 'TOOK', '1', '拆卸报警的开关 0：关  1：开', '1', null);
INSERT INTO `sys_param` VALUES ('50', 'SPORT', '1', '劳动强度的开关 0：关  1：开', '1', '');
INSERT INTO `sys_param` VALUES ('51', 'STATIC', '0', '静止报警的开关 0：关  1：开', '1', '');
INSERT INTO `sys_param` VALUES ('52', 'RETAIN', '1', '滞留报警开关 0：关  1：开', '1', null);
INSERT INTO `sys_param` VALUES ('53', 'SITE', '1', '位置报警开关 0：关  1：开', '1', '');
INSERT INTO `sys_param` VALUES ('55', '31', '117.206960510342200,31.831633489237820', '安徽华图测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('56', '33', '103.82892347,30.80050283', '郫县', '1', 'place');
INSERT INTO `sys_param` VALUES ('57', '32', '116.50198068,39.78514820', '卓普', '1', 'place');
INSERT INTO `sys_param` VALUES ('58', 'DANGER', '0', '危险区域的开关 0：关 1：开', '1', null);
INSERT INTO `sys_param` VALUES ('59', 'dangerTime', '60', '危险报警时间间隔', '1', null);
INSERT INTO `sys_param` VALUES ('60', '42', '121.52332801,37.51688544', '烟台船舶', '1', null);
INSERT INTO `sys_param` VALUES ('61', '43', '106.248324451355770,38.508955282559670', '宁夏测试', '1', null);
INSERT INTO `sys_param` VALUES ('62', '48', '121.45169936,31.10855513', '1', '1', null);
INSERT INTO `sys_param` VALUES ('63', '49', '104.026061839798370,30.988896683216520', '彭州四院地图', '1', null);
INSERT INTO `sys_param` VALUES ('64', 'checkZero', '1', '是否检测0心率', '1', null);

-- ----------------------------
-- Table structure for tb_good_img
-- ----------------------------
DROP TABLE IF EXISTS `tb_good_img`;
CREATE TABLE `tb_good_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(10) DEFAULT NULL,
  `g_img_url` varchar(100) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL COMMENT '主图:1   副图:2  详情图片:3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_good_img
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(100) DEFAULT NULL,
  `g_desc` text,
  `g_price` int(11) DEFAULT NULL,
  `g_info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '1', '2', '1', '1');

-- ----------------------------
-- Table structure for tb_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_name` varchar(100) DEFAULT NULL,
  `info_desc` text,
  `info_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_media
-- ----------------------------
DROP TABLE IF EXISTS `tb_media`;
CREATE TABLE `tb_media` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_type` int(11) DEFAULT NULL,
  `m_name` varchar(100) DEFAULT NULL,
  `m_desc` text,
  `m_save_name` varchar(100) DEFAULT NULL,
  `m_size` varchar(100) DEFAULT NULL,
  `m_date` varchar(100) DEFAULT NULL,
  `m_img` varchar(100) DEFAULT NULL,
  `m_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_media
-- ----------------------------

-- ----------------------------
-- Table structure for tb_media_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_media_detail`;
CREATE TABLE `tb_media_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_id` int(11) DEFAULT NULL,
  `md_recommend` int(11) DEFAULT NULL COMMENT '推荐指数',
  `md_recommend_type` int(11) DEFAULT NULL COMMENT '推荐者：1，会员推荐；2店长推荐',
  `md_watchtimes` int(11) DEFAULT NULL COMMENT '观看次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_media_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_vip
-- ----------------------------
DROP TABLE IF EXISTS `tb_vip`;
CREATE TABLE `tb_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipName` varchar(50) DEFAULT NULL,
  `vipGrade` int(11) DEFAULT NULL,
  `vipPay` int(11) DEFAULT NULL,
  `vipDesc` text,
  `vipPassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_vip
-- ----------------------------
INSERT INTO `tb_vip` VALUES ('1', null, null, null, null, null);
INSERT INTO `tb_vip` VALUES ('2', null, null, null, null, null);

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL COMMENT '公司id',
  `template_name` varchar(100) DEFAULT NULL COMMENT '模板名称',
  `template_type` tinyint(1) NOT NULL COMMENT '模板类型1首页2模块首页3列表页4内容页5单页',
  `template_alias` varchar(100) DEFAULT NULL COMMENT '模板英文名',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('11', '1', '首页', '1', 'shouye');
INSERT INTO `template` VALUES ('13', '1', '内容页', '4', 'neirongye');
INSERT INTO `template` VALUES ('15', '1', '解决方案列表页', '3', 'jiejuefanganliebiaoye');
INSERT INTO `template` VALUES ('37', '1', '单页', '5', 'singlePage');
INSERT INTO `template` VALUES ('41', '1', '案例列表页', '3', 'anliliebiaoye');
INSERT INTO `template` VALUES ('42', '1', '新闻列表页', '3', 'xinwenliebiaoye');
INSERT INTO `template` VALUES ('46', '1', '模板首页', '2', 'mobanshouye');
INSERT INTO `template` VALUES ('84', '2', '吉大软件列表页模板', '3', 'jidaliebiaoye');
INSERT INTO `template` VALUES ('85', '2', '吉大软件内容页模板', '4', 'jidaneirongye');
INSERT INTO `template` VALUES ('87', '2', '吉大软件列表页模板2', '3', 'jidaliebiaoye2');
INSERT INTO `template` VALUES ('88', '2', '吉大列表页模板3', '3', 'jidaliebiaoye3');
INSERT INTO `template` VALUES ('89', '2', '吉大软件单页模板2', '5', 'jidasinglepage2');
INSERT INTO `template` VALUES ('91', '2', '吉大软件单页模板', '5', 'jidasinglepage');
INSERT INTO `template` VALUES ('92', '2', '吉大软件单页模板3', '5', 'jidasinglepage3');
INSERT INTO `template` VALUES ('94', '2', '吉大软件单页模板4', '5', 'jidasinglepage4');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) DEFAULT NULL,
  `userName` varchar(64) DEFAULT NULL,
  `userRole` varchar(100) DEFAULT NULL,
  `dangerArea` varchar(100) DEFAULT NULL,
  `alertArea` varchar(100) DEFAULT NULL,
  `userTag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for wx_bind
-- ----------------------------
DROP TABLE IF EXISTS `wx_bind`;
CREATE TABLE `wx_bind` (
  `open_id` varchar(33) NOT NULL,
  `device_id` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_bind
-- ----------------------------
INSERT INTO `wx_bind` VALUES ('oiOhr5Vj4CBeZfcSS623VOsI8Hrk', 'æ¯');

-- ----------------------------
-- Table structure for wx_health
-- ----------------------------
DROP TABLE IF EXISTS `wx_health`;
CREATE TABLE `wx_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `hr` int(11) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `spb` int(11) DEFAULT NULL,
  `dpb` int(11) DEFAULT NULL,
  `sos` int(11) DEFAULT NULL,
  `steps` int(11) DEFAULT NULL,
  `calorie` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `company_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_health
-- ----------------------------
