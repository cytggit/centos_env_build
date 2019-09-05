/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : bison

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-11 16:21:09
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=373174 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13978 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=1492 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_assets
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
) ENGINE=InnoDB AUTO_INCREMENT=30473 DEFAULT CHARSET=utf8;

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
INSERT INTO `acl_camera` VALUES ('14', '192.168.1.64', '相机1', '192.168.1.238', '1', '华东师范', '', '31.1664970537', '121.4287150929', '22', '2', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=128533 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=21209 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of acl_log
-- ----------------------------
INSERT INTO `acl_log` VALUES ('21205', 'super', '2019-06-11 16:06:40', '添加\'测试\'部门', '部门管理', '1');
INSERT INTO `acl_log` VALUES ('21206', 'super', '2019-06-11 16:10:46', '更新\'超级管理员\'角色', '角色管理', '1');
INSERT INTO `acl_log` VALUES ('21207', 'super', '2019-06-11 16:11:05', '删除\'测试\'部门', '部门管理', '1');
INSERT INTO `acl_log` VALUES ('21208', 'super', '2019-06-11 16:11:28', '添加\'部门一\'部门', '部门管理', '1');

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
INSERT INTO `acl_menu` VALUES ('263', '地图显示', 'fa fa-map-marker', 'design/resource', 'fansai:fenceInfo:open', '271', '2', '1', '32', '', '1');
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
INSERT INTO `acl_menu` VALUES ('332', '看板配置', 'fa fa-map-marker', 'configure/board', 'fansai:board:open', '331', '2', '1', '64', '', '1');
INSERT INTO `acl_menu` VALUES ('333', '资产盘点', 'fa fa-cubes', 'asset/show', 'fansai:asset:show', '262', '2', '1', '65', '', '1');
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
INSERT INTO `acl_permission` VALUES ('fansai:fenceInfo:open', '地图显示', '271', '3');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_personinfo
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='角色表';

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
INSERT INTO `acl_role_organ` VALUES ('50', '161', '1');

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
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:role:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:roleAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:roleDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:roleUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:user:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:userAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:userDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'security:userUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '111', 'system:security:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:asset:show');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:video:control');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:video:linkage');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:video:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:work:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'system:system:open');
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
INSERT INTO `acl_role_permission` VALUES ('1', '超级管理员', 'fansai:fenceInfo:open');
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
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2495 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of acl_user
-- ----------------------------
INSERT INTO `acl_user` VALUES ('94', 'super', 'super', '202CB962AC59075B964B07152D234B70', '1', '1', '超级管理员');

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
) ENGINE=InnoDB AUTO_INCREMENT=143944 DEFAULT CHARSET=utf8;

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
INSERT INTO `companyinfo` VALUES ('1', '银川一幼', '银川一幼', '银川一幼', '银川一幼', 'http://47.103.35.78:8091/upload/小三班_20190603181827.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organ
-- ----------------------------
INSERT INTO `organ` VALUES ('1', '1', '银川一幼', '-1', '0', '0', '银川一幼', '1', '银川一幼', '银川一幼');
INSERT INTO `organ` VALUES ('161', '1', '部门一', '1', '1', '0', '测试', '1', '测试', '18756673734');

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('1', 'LocateSever', 'http://47.100.36.235:8086', '定位服务器连接地址', '1', null);
INSERT INTO `sys_param` VALUES ('2', 'GeoServer', 'http://114.215.83.3:8090', '地图服务器连接地址', '1', null);
INSERT INTO `sys_param` VALUES ('3', 'placeid', '43', '嘉定看守所', '1', null);
INSERT INTO `sys_param` VALUES ('4', '2', '121.4286933,31.1664993', 'mote', '1', 'place');
INSERT INTO `sys_param` VALUES ('5', '3', '121.407241820159,31.2265797284321', '中北校区', '1', 'place');
INSERT INTO `sys_param` VALUES ('6', '4', '121.454701250547,31.0275360273072', '闵行校区', '1', 'place');
INSERT INTO `sys_param` VALUES ('7', 'floorNum', '01', '初始化楼层编号', '1', null);
INSERT INTO `sys_param` VALUES ('8', '12', '121.236986170667,31.4027152952836', '嘉定看守所', '1', 'place');
INSERT INTO `sys_param` VALUES ('9', '14', '104.05224243249177,30.63540193188055', '四川建行办公室', '1', 'place');
INSERT INTO `sys_param` VALUES ('10', 'SOS', '1', '1:打开SOS，0:关闭SOS', '1', null);
INSERT INTO `sys_param` VALUES ('11', 'ProjectName', '人员定位系统', '项目名称', '1', null);
INSERT INTO `sys_param` VALUES ('12', 'Linterval', '5000', '定位时间间隔', '1', null);
INSERT INTO `sys_param` VALUES ('27', 'LocateType', '1', '0:uwb，1:uwb以外', '1', null);
INSERT INTO `sys_param` VALUES ('31', '15', '117.178302338064,39.020816537392', '天津测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('32', '17', '118.03539963,36.81459996', '淄博测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('33', '18', '101.75909063,36.61555154', '西宁测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('34', '19', '114.53462592,30.48726877', '武汉测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('35', 'sosTime', '1', 'sos报警周期', '1', null);
INSERT INTO `sys_param` VALUES ('36', 'healthTime', '50', '健康报警周期', '1', '');
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
INSERT INTO `sys_param` VALUES ('51', 'STATIC', '1', '静止报警的开关 0：关  1：开', '1', '');
INSERT INTO `sys_param` VALUES ('52', 'RETAIN', '1', '滞留报警开关 0：关  1：开', '1', null);
INSERT INTO `sys_param` VALUES ('53', 'SITE', '1', '位置报警开关 0：关  1：开', '1', '');
INSERT INTO `sys_param` VALUES ('55', '31', '117.206960510342200,31.831633489237820', '安徽华图测试', '1', 'place');
INSERT INTO `sys_param` VALUES ('56', '33', '103.82892347,30.80050283', '郫县', '1', 'place');
INSERT INTO `sys_param` VALUES ('57', '32', '116.50198068,39.78514820', '卓普', '1', 'place');
INSERT INTO `sys_param` VALUES ('58', 'DANGER', '1', '危险区域的开关 0：关 1：开', '1', null);
INSERT INTO `sys_param` VALUES ('59', 'dangerTime', '60', '危险报警时间间隔', '1', null);
INSERT INTO `sys_param` VALUES ('60', '42', '121.52332801,37.51688544', '烟台船舶', '1', null);
INSERT INTO `sys_param` VALUES ('61', '43', '106.248324451355770,38.508955282559670', '宁夏测试', '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=606911 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_health
-- ----------------------------
