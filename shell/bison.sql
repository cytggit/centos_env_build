/*
Navicat MySQL Data Transfer

Source Server         : 47.103.35.78mysql
Source Server Version : 50633
Source Host           : 47.103.35.78:3306
Source Database       : bison

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2019-05-11 10:52:33
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
) ENGINE=InnoDB AUTO_INCREMENT=6790 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=372925 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13670 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=218064 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_alert_took
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
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26908 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_danger
-- ----------------------------
INSERT INTO `acl_danger` VALUES ('11', '1', '危险区域', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_deploy
-- ----------------------------
INSERT INTO `acl_deploy` VALUES ('1', '0', '嘉定监狱', '1');
INSERT INTO `acl_deploy` VALUES ('48', '1', '公共办公区1', '1');
INSERT INTO `acl_deploy` VALUES ('49', '1', '公共办公区2', '1');
INSERT INTO `acl_deploy` VALUES ('50', '1', '会议室', '1');
INSERT INTO `acl_deploy` VALUES ('51', '1', '总经理室', '1');
INSERT INTO `acl_deploy` VALUES ('52', '1', '办公区域1', '1');
INSERT INTO `acl_deploy` VALUES ('53', '1', '办公区域2', '1');
INSERT INTO `acl_deploy` VALUES ('55', '1', '西宁测试办公室', '1');
INSERT INTO `acl_deploy` VALUES ('56', '1', '全家店二店', '1');
INSERT INTO `acl_deploy` VALUES ('58', '1', '恩谊办公室', '1');
INSERT INTO `acl_deploy` VALUES ('59', '1', '德邦办公室', '1');
INSERT INTO `acl_deploy` VALUES ('60', '1', '亲情研发室', '1');
INSERT INTO `acl_deploy` VALUES ('61', '1', '烽火办公室', '1');
INSERT INTO `acl_deploy` VALUES ('62', '1', '烽火会议室', '1');
INSERT INTO `acl_deploy` VALUES ('63', '1', '烽火办公大厅', '1');
INSERT INTO `acl_deploy` VALUES ('64', '1', '华图办公室', '1');
INSERT INTO `acl_deploy` VALUES ('65', '1', '卓普203', '1');
INSERT INTO `acl_deploy` VALUES ('66', '1', '卓普201', '1');
INSERT INTO `acl_deploy` VALUES ('67', '1', '卓普205', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_detain
-- ----------------------------
INSERT INTO `acl_detain` VALUES ('1', '0', '嘉定监狱', '1', '20');
INSERT INTO `acl_detain` VALUES ('4', '1', '办公区域滞留', '1', '120');

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
INSERT INTO `acl_detain_person` VALUES ('4', 'E29A9DB13C4B');
INSERT INTO `acl_detain_person` VALUES ('4', 'D5E72BEC8FE6');

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
) ENGINE=InnoDB AUTO_INCREMENT=50323 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=21106 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
INSERT INTO `acl_menu` VALUES ('304', '电子围栏', 'fa fa-map-pin', 'design/fence', 'fansai:mapInfo:open', '271', '2', '1', '36', '', '1');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of acl_role
-- ----------------------------
INSERT INTO `acl_role` VALUES ('50', '超级管理员', '超级管理员', '1');
INSERT INTO `acl_role` VALUES ('51', '小当家', '小当家', '1');
INSERT INTO `acl_role` VALUES ('52', '办公室主任', '华东师范大学办公室主任', '1');
INSERT INTO `acl_role` VALUES ('55', '合富测试', '', '1');
INSERT INTO `acl_role` VALUES ('56', '全家测试', '全家库存管理员', '1');
INSERT INTO `acl_role` VALUES ('57', '恩谊测试', '恩谊', '1');
INSERT INTO `acl_role` VALUES ('58', '德邦测试', '', '1');
INSERT INTO `acl_role` VALUES ('59', '郫都看守所', '管理员', '1');
INSERT INTO `acl_role` VALUES ('60', '亲情测试', '亲情测试员', '1');
INSERT INTO `acl_role` VALUES ('61', '华图管理员', '我是管理员', '1');
INSERT INTO `acl_role` VALUES ('62', '卓普', '卓普管理员', '1');

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
INSERT INTO `acl_role_organ` VALUES ('51', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '58', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '145', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '58', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '145', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '151', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '151', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '151', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '151', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '151', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('59', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('59', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('59', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('60', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('60', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('59', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('60', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('61', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('61', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('51', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('52', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('55', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('56', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('57', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('58', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('59', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('60', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('61', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('62', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('62', '157', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '1', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '58', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '145', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '151', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '152', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '153', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '154', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '155', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '156', '1');
INSERT INTO `acl_role_organ` VALUES ('50', '157', '1');

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
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:asset:show');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:lose:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:mattess:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'fansai:work:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '亲情测试', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:asset:show');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:lose:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '全家测试', 'system:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:board:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:comInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:comInfoEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:configure:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:deploy:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:detain:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:mattess:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:organ:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:organAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:organDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:organUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:unit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:video:control');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:video:linkage');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'fansai:video:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:role:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:roleAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:roleDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:roleUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:user:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:userAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:userDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'security:userUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:log:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:param:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:security:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:sysParam:open');
INSERT INTO `acl_role_permission` VALUES ('1', '办公室主任', 'system:sysParamEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:asset:show');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:board:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:configure:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:deploy:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:detain:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:static:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'system:log:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '华图管理员', 'system:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:lose:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:mattess:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:static:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'fansai:work:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'system:log:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '卓普', 'system:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:comInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:comInfoEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:mattess:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:organ:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:organAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:organDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:organUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'fansai:unit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'system:log:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'system:param:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'system:sysParam:open');
INSERT INTO `acl_role_permission` VALUES ('1', '合富测试', 'system:sysParamEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:board:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:comInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:comInfoEdit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:configure:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:deploy:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:detain:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:mattess:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:organ:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:organAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:organDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:organUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:unit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:video:control');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:video:linkage');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'fansai:video:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:role:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:roleAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:roleDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:roleUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:user:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:userAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:userDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'security:userUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:log:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:param:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:security:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:sysParam:open');
INSERT INTO `acl_role_permission` VALUES ('1', '小当家', 'system:sysParamEdit:open');
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
INSERT INTO `acl_role_permission` VALUES ('1', '德绑测试', 'fansai:mapInfo:open');
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
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:asset:show');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:cameraMessage');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:NVR:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:rest:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:retain:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:signCount:compare:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:signCount:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:signIn:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:signQuery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:signSet:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:video:control');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:video:linkage');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:video:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'fansai:work:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '德邦测试', 'system:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:assetInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:assetInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:assetInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:assetInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:lose:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '恩谊测试', 'system:system:open');
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
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:battery:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:blood:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:dataManage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:fenceInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:health:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:heart:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:manInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:manInfoAdd:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:manInfoDelete:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:manInfoUpdate:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:mapcontrol:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:mapInfo:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:power:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:scatter:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:server:alarm');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:server:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:server:site');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:sMessage:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:sos:alert');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:stats:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:step:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'fansai:took:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'manage:system:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'system:orbit:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'system:sos:open');
INSERT INTO `acl_role_permission` VALUES ('1', '郫都看守所', 'system:system:open');

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
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sign
-- ----------------------------
INSERT INTO `acl_sign` VALUES ('406', 'C8C1E987F6A0', '德邦圆形', '2000001', '152', '德邦IT部', '120', '2019-03-25 14:51:49', '0', '1');
INSERT INTO `acl_sign` VALUES ('407', 'C8C1E987F6A0', '德邦圆形', '2000001', '152', '德邦IT部', '120', '2019-03-26 08:40:40', '0', '1');
INSERT INTO `acl_sign` VALUES ('408', 'CFFD3AAEBD05', '德绑BD05', '1000001', '152', '德邦IT部', '119', '2019-03-26 14:04:41', '1', '1');
INSERT INTO `acl_sign` VALUES ('409', 'C9D27C743355', '德邦3355', '2000001', '152', '德邦IT部', '119', '2019-03-26 14:12:31', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_sign_set
-- ----------------------------
INSERT INTO `acl_sign_set` VALUES ('119', '德邦', '08:00:00', '08:30:00', '2,3,', '20190322163351', '0', '1');
INSERT INTO `acl_sign_set` VALUES ('121', 'mote测试', '08:00:00', '09:00:00', '2,3,4,5,6,', '20190403153836', '0', '1');
INSERT INTO `acl_sign_set` VALUES ('122', '亲情', '15:00:00', '17:00:00', '2,3,4,5,6,7,1,', '20190416155337', '0', '1');
INSERT INTO `acl_sign_set` VALUES ('123', '卓普时代', '17:00:00', '19:00:00', '2,3,4,5,6,', '2019042417390', '0', '1');
INSERT INTO `acl_sign_set` VALUES ('124', 'ceshi', '09:00:00', '22:00:00', '2,3,4,', '2019050914399', '1', '1');

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
INSERT INTO `acl_sign_set_person` VALUES ('119', 'DCB9F935D1BC', '1');
INSERT INTO `acl_sign_set_person` VALUES ('119', 'D5EB1CF89F11', '1');
INSERT INTO `acl_sign_set_person` VALUES ('119', 'DECA0100D022172C', '1');
INSERT INTO `acl_sign_set_person` VALUES ('119', 'C9D27C743355', '1');
INSERT INTO `acl_sign_set_person` VALUES ('119', 'CFFD3AAEBD05', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'DCB9F935D1BC', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'D5EB1CF89F11', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'DECA0100D022172C', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'E54D6A66E1DF', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'F97EE1E86EA3', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'E4E721485F2C', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'F1504FAA7CC4', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'E722EE951C92', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'CE3E7CD62350', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'D4DBAC503A4E', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'D954C9E1E1FB', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'E29A9DB13C4B', '1');
INSERT INTO `acl_sign_set_person` VALUES ('124', 'D5E72BEC8FE6', '1');

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
INSERT INTO `acl_sleep_avg` VALUES ('1', '0100006136', '0', '2019-01-16 16:39:42', '2019-01-16 16:41:06', '0', '14', '3');
INSERT INTO `acl_sleep_avg` VALUES ('2', '0100006136', '0', '2019-01-16 16:42:31', '2019-01-16 16:42:59', '0', '14', '3');

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
INSERT INTO `acl_sleep_move` VALUES ('2019-01-16 16:39:16', '3', '1');
INSERT INTO `acl_sleep_move` VALUES ('2019-01-16 16:39:51', '3', '1');
INSERT INTO `acl_sleep_move` VALUES ('2019-01-16 16:40:31', '3', '1');
INSERT INTO `acl_sleep_move` VALUES ('2019-01-16 16:39:16', '3', '2');
INSERT INTO `acl_sleep_move` VALUES ('2019-01-16 16:39:51', '3', '2');
INSERT INTO `acl_sleep_move` VALUES ('2019-01-16 16:40:31', '3', '2');

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
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:44:03', '1', '26');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:45:00', '2', '26');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:46:00', '1', '26');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:47:00', '3', '26');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:48:00', '1', '26');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:44:03', '2', '28');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:45:00', '1', '28');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:46:00', '1', '28');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:47:00', '1', '28');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:48:00', '1', '28');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:44:03', '1', '29');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:45:00', '1', '29');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:46:00', '1', '29');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:47:00', '1', '29');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-12 15:48:00', '1', '29');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-14 17:19:04', '1', '32');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-14 17:20:01', '1', '32');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-14 17:19:04', '1', '35');
INSERT INTO `acl_sleep_status` VALUES ('2018-06-14 17:20:01', '1', '35');

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
) ENGINE=InnoDB AUTO_INCREMENT=2213 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of acl_user
-- ----------------------------
INSERT INTO `acl_user` VALUES ('91', 'cs03', 'cs03', '202CB962AC59075B964B07152D234B70', '1', '58', '小当家');
INSERT INTO `acl_user` VALUES ('94', 'super', 'super', '202CB962AC59075B964B07152D234B70', '1', '1', '超级管理员');
INSERT INTO `acl_user` VALUES ('95', 'quanjia', '小全', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '1', '全家测试');
INSERT INTO `acl_user` VALUES ('96', 'enyi', 'enyi', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '145', '恩谊测试');
INSERT INTO `acl_user` VALUES ('97', 'debang', '德小邦', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '1', '德绑测试');
INSERT INTO `acl_user` VALUES ('98', 'pdkss', '管理员', 'E3D254D18816FB76F988CD19590CBE1A', '1', '154', '郫都看守所');
INSERT INTO `acl_user` VALUES ('99', 'qinqing', '亲情科技', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '155', '亲情测试');
INSERT INTO `acl_user` VALUES ('100', 'huatu', '测试员', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '156', '华图管理员');
INSERT INTO `acl_user` VALUES ('101', 'zhuopu', '小卓', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '157', '卓普');
INSERT INTO `acl_user` VALUES ('102', '1111', 'supor', '202CB962AC59075B964B07152D234B70', '1', '153', '小当家');

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
INSERT INTO `acl_user_role` VALUES ('1111', '小当家', '1');
INSERT INTO `acl_user_role` VALUES ('cs01', '小当家', '1');
INSERT INTO `acl_user_role` VALUES ('cs03', '小当家', '1');
INSERT INTO `acl_user_role` VALUES ('debang', '德邦测试', '1');
INSERT INTO `acl_user_role` VALUES ('enyi', '恩谊测试', '1');
INSERT INTO `acl_user_role` VALUES ('huatu', '华图管理员', '1');
INSERT INTO `acl_user_role` VALUES ('pdkss', '郫都看守所', '1');
INSERT INTO `acl_user_role` VALUES ('qinqing', '亲情测试', '1');
INSERT INTO `acl_user_role` VALUES ('quanjia', '全家测试', '1');
INSERT INTO `acl_user_role` VALUES ('super', '超级管理员', '1');
INSERT INTO `acl_user_role` VALUES ('zhuopu', '卓普', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=124782 DEFAULT CHARSET=utf8;

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
INSERT INTO `companyinfo` VALUES ('1', '监所', 'dd', 'dd', 'dd', 'http://47.103.35.78:8091/upload/logo_20190509172336.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organ
-- ----------------------------
INSERT INTO `organ` VALUES ('1', '1', '监所', '-1', '0', '0', 'dd', '1', 'dd', 'dd');
INSERT INTO `organ` VALUES ('58', '1', '全家一店', '1', '1', '0', '陈先生', '1', '上海市松江区', '13981111111');
INSERT INTO `organ` VALUES ('145', '1', '全家二店', '1', '1', '0', '上海市', '1', '上海市', '13845678901');
INSERT INTO `organ` VALUES ('151', '1', '恩谊仓储', '1', '1', '0', '', '1', '', '');
INSERT INTO `organ` VALUES ('152', '1', '德邦IT部', '1', '1', '0', '', '1', '', '');
INSERT INTO `organ` VALUES ('153', '1', '测试', '1', '1', '0', '', '1', '', '');
INSERT INTO `organ` VALUES ('154', '1', '郫都区看守所', '1', '1', '0', '', '1', '四川省郫都看守所', '');
INSERT INTO `organ` VALUES ('155', '1', '亲情', '1', '1', '0', '', '1', '', '');
INSERT INTO `organ` VALUES ('156', '1', '华图', '1', '1', '0', '', '1', '', '');
INSERT INTO `organ` VALUES ('157', '1', '卓普', '1', '1', '0', '', '1', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('1', 'LocateSever', 'http://47.100.36.235:8086', '定位服务器连接地址', '1', null);
INSERT INTO `sys_param` VALUES ('2', 'GeoServer', 'http://114.215.83.3:8090', '地图服务器连接地址', '1', null);
INSERT INTO `sys_param` VALUES ('3', 'placeid', '2', '嘉定看守所', '1', null);
INSERT INTO `sys_param` VALUES ('4', '2', '121.4286933,31.1664993', 'mote', '1', 'place');
INSERT INTO `sys_param` VALUES ('5', '3', '121.407241820159,31.2265797284321', '中北校区', '1', 'place');
INSERT INTO `sys_param` VALUES ('6', '4', '121.454701250547,31.0275360273072', '闵行校区', '1', 'place');
INSERT INTO `sys_param` VALUES ('7', 'floorNum', '22', '初始化楼层编号', '1', null);
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
INSERT INTO `wx_bind` VALUES ('oRt0k0Z5_5VapWBNCaqrSkW6h-Dw', 'ESCD4A1699EA');
INSERT INTO `wx_bind` VALUES ('oiOhr5TFOtORdNeMRr_J1I3DlH_c', 'EBA9AOF46CFD');
INSERT INTO `wx_bind` VALUES ('oiOhr5ROn6JuvgSKGrcdrmm2bpSc', 'C442F4523572');
INSERT INTO `wx_bind` VALUES ('oiOhr5aFHW3LVfy5Wpkqg8Jl0SAg', '126456987');
INSERT INTO `wx_bind` VALUES ('oiOhr5Z0voTOOQmiewsF_nmlI66w', 'EC95AFFD105A');
INSERT INTO `wx_bind` VALUES ('oiOhr5YpIcoR4gy6OaNyW4TQy2ik', 'Â·å¿å¨%');
INSERT INTO `wx_bind` VALUES ('oiOhr5cjtAQdhwylbo4o9pJ21HtI', 'CAC5F2EEBD62');
INSERT INTO `wx_bind` VALUES ('oiOhr5dopbJz065bX6q34E_ywfI4', '666');

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
) ENGINE=InnoDB AUTO_INCREMENT=502652 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_health
-- ----------------------------
