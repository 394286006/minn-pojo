/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : sys_base

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-09-17 15:59:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `loginType` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `randomkey` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', '53e0d3234cf8349108b0f7b05dd950af', '-1', '1', '1', '1', '2', '2016-01-14 10:48:58', '2017-11-09 19:55:19', '1', '93803430829802_zh_CN');
INSERT INTO `account` VALUES ('2', 'minn', '53e0d3234cf8349108b0f7b05dd950af', '0', '2', '1', '1', '2', '2016-08-10 16:21:11', '2016-08-14 15:47:02', '1', '149605950829302_zh');
INSERT INTO `account` VALUES ('25', 'minn1', '53e0d3234cf8349108b0f7b05dd950af', '0', '2', '1', '2', '2', '2016-10-01 17:49:02', '2016-10-28 15:35:04', '2', null);
INSERT INTO `account` VALUES ('26', 'minn2', '53e0d3234cf8349108b0f7b05dd950af', '0', '2', '1', '2', '2', '2016-10-01 17:49:39', '2016-10-30 08:50:52', '3', null);
INSERT INTO `account` VALUES ('27', 'minn3', '53e0d3234cf8349108b0f7b05dd950af', '0', '2', '1', '2', '2', '2016-10-01 17:49:49', '2016-10-30 08:51:09', '4', null);
INSERT INTO `account` VALUES ('28', 'minn4', '638396f29eeedd657e26cc5fa78b8258', '1', '2', '1', '2', null, '2016-10-01 17:49:58', null, '1', null);
INSERT INTO `account` VALUES ('29', 'minn5', '638396f29eeedd657e26cc5fa78b8258', '1', '2', '1', '2', null, '2016-10-01 17:50:07', null, '1', null);
INSERT INTO `account` VALUES ('30', 'qq394286006', '53e0d3234cf8349108b0f7b05dd950af', '0', '2', '1', '1', null, '2017-12-11 10:28:04', null, '1', '63544337020878_zh_CN');

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role` (
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_role
-- ----------------------------
INSERT INTO `account_role` VALUES ('1', '1');
INSERT INTO `account_role` VALUES ('1', '2');
INSERT INTO `account_role` VALUES ('2', '2');
INSERT INTO `account_role` VALUES ('2', '3');
INSERT INTO `account_role` VALUES ('2', '4');
INSERT INTO `account_role` VALUES ('25', '2');
INSERT INTO `account_role` VALUES ('25', '3');
INSERT INTO `account_role` VALUES ('25', '4');
INSERT INTO `account_role` VALUES ('26', '2');
INSERT INTO `account_role` VALUES ('26', '3');
INSERT INTO `account_role` VALUES ('26', '4');
INSERT INTO `account_role` VALUES ('27', '2');
INSERT INTO `account_role` VALUES ('27', '3');
INSERT INTO `account_role` VALUES ('27', '4');
INSERT INTO `account_role` VALUES ('28', '2');
INSERT INTO `account_role` VALUES ('28', '3');
INSERT INTO `account_role` VALUES ('28', '4');
INSERT INTO `account_role` VALUES ('29', '2');
INSERT INTO `account_role` VALUES ('29', '3');
INSERT INTO `account_role` VALUES ('30', '2');
INSERT INTO `account_role` VALUES ('30', '3');
INSERT INTO `account_role` VALUES ('30', '4');

-- ----------------------------
-- Table structure for account_thirdpart
-- ----------------------------
DROP TABLE IF EXISTS `account_thirdpart`;
CREATE TABLE `account_thirdpart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `secretkey` varchar(256) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `mark` varchar(100) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_thirdpart
-- ----------------------------
INSERT INTO `account_thirdpart` VALUES ('10', '2', '394286006', 'qq', '12345', '1', '', '2', null, '2017-04-14 15:57:07', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `sort` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '-1', '2', '1', '1', '2016-01-01 10:18:06', '2016-01-02 20:45:55', null);
INSERT INTO `category` VALUES ('2', '-1', '1', '1', '1', '2016-01-01 13:40:39', '2016-01-02 20:45:43', null);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'D001', '-1', '2', '2', '2016-10-04 20:30:42', '2016-10-04 20:54:56', '1');
INSERT INTO `department` VALUES ('2', 'D002', '-1', '2', null, '2016-10-04 20:53:53', null, '1');
INSERT INTO `department` VALUES ('3', 'D003', '-1', '2', null, '2016-10-29 08:49:27', null, '1');
INSERT INTO `department` VALUES ('4', 'D004', '-1', '2', null, '2016-10-29 08:49:59', null, '1');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_zh` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `mkey` varchar(45) DEFAULT NULL,
  `val` varchar(45) DEFAULT NULL,
  `sort` varchar(45) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `var1` varchar(100) DEFAULT NULL,
  `var2` varchar(100) DEFAULT NULL,
  `var3` varchar(100) DEFAULT NULL,
  `var4` varchar(100) DEFAULT NULL,
  `var5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', '启用', 'Active', 'ACTIVETYPE', '1', '2', '2015-12-26 14:53:38', '2015-12-29 13:45:03', '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('2', '禁用', 'DisActive', 'ACTIVETYPE', '0', null, '2015-12-26 14:53:38', '2015-12-27 19:56:53', '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('3', 'SSH', 'SSH', 'LOGINTYPE', '1', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('4', 'HTTP', 'HTTP', 'LOGINTYPE', '2', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('5', '超级管理员', 'SuperManager', 'ACCOUNTTYPE', '-1', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('6', '普通管理员', 'NormalManger', 'ACCOUNTTYPE', '0', '1', '2015-12-26 14:53:38', '2015-12-29 10:35:49', '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('7', '普通账号', 'NormalAccount', 'ACCOUNTTYPE', '1', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('8', '内部系统', 'InnerSystem', 'RESOURCEURLTYPE', '0', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('9', '外部系统', 'OuterSystem', 'RESOURCEURLTYPE', '-1', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('10', '文件夹', 'Folder', 'RESOURCETYPE', '-1', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('11', '功能链接', 'FunctionLink', 'RESOURCETYPE', '0', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('12', '根节点', 'Root', 'RESOURCEPID', '-1', null, '2015-12-26 14:53:38', null, '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('13', '中文', 'Chinese', 'LANGUAGE', 'zh', '2', '2015-12-26 14:53:38', '2015-12-28 07:58:51', '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('14', '英文', 'English', 'LANGUAGE', 'en', '1', '2015-12-26 14:53:38', '2015-12-28 07:58:47', '1', null, null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('15', null, null, 'LANGUAGE', 'de', '3', '2016-01-09 10:18:50', '2016-01-09 10:18:50', '1', '1', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('16', null, null, 'LANGUAGE', 'fr', '4', '2016-01-09 10:19:31', '2016-01-09 10:19:31', '1', '1', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('17', null, null, 'LANGUAGE', 'ja', '4', '2016-01-09 10:19:59', '2016-01-09 10:19:59', '1', '1', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('18', null, null, 'LANGUAGE', 'ru', '5', '2016-01-09 10:20:28', '2016-01-09 10:20:28', '1', '1', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('19', null, null, 'LANGUAGE', 'ko', '6', '2016-01-09 10:20:54', '2016-01-09 10:20:54', '1', '1', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('20', null, null, 'WORKFLOWSTATUS', '0', '2', '2016-10-01 13:02:52', '2016-10-05 15:24:28', '2', '2', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('21', null, null, 'WORKFLOWSTATUS', '1', '1', '2016-10-01 13:07:18', '2017-04-07 09:13:30', '2', '2', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('22', null, null, 'WORKFLOWPASS', '1', '1', '2016-10-07 20:23:33', '2016-10-07 20:23:33', '2', '2', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('23', null, null, 'WORKFLOWPASS', '0', '2', '2016-10-07 20:23:50', '2016-10-07 20:23:50', '2', '2', null, null, null, null, null);
INSERT INTO `dictionary` VALUES ('24', null, null, 'ACCOUNTTHIRDPATH', 'qq', '1', '2017-04-07 09:46:19', '2017-04-14 15:47:12', '2', '2', 'http://www.baidu.com', '', '', '', '');
INSERT INTO `dictionary` VALUES ('25', null, null, 'ACCOUNTTHIRDPATH', 'weixin', '2', '2017-04-07 09:46:58', '2017-04-14 16:17:42', '2', '2', 'http://www.baidu.com', 'show', '', '', '');
INSERT INTO `dictionary` VALUES ('26', null, null, 'ACCOUNTTHIRDPATH', 'zhifubao', '3', '2017-04-14 07:35:07', '2017-04-14 16:17:35', '2', '2', 'http://www.google.com', 'show', '', '', '');

-- ----------------------------
-- Table structure for globalization
-- ----------------------------
DROP TABLE IF EXISTS `globalization`;
CREATE TABLE `globalization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `tableid` varchar(20) DEFAULT NULL,
  `tablename` varchar(45) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `tablecolumn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of globalization
-- ----------------------------
INSERT INTO `globalization` VALUES ('35', '启用', 'zh', '1', 'dictionary', '2016-01-14 10:50:56', '2015-12-29 13:45:08', '1', null, 'name');
INSERT INTO `globalization` VALUES ('36', '禁用', 'zh', '2', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('37', 'SSH', 'zh', '3', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('38', 'HTTP', 'zh', '4', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('39', '超级管理员', 'zh', '5', 'dictionary', '2016-01-14 10:50:56', '2015-12-29 13:21:08', '1', null, 'name');
INSERT INTO `globalization` VALUES ('40', '普通管理员', 'zh', '6', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('41', '普通账号', 'zh', '7', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('42', '内部系统', 'zh', '8', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('43', '外部系统', 'zh', '9', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('44', '文件夹', 'zh', '10', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('45', '功能链接', 'zh', '11', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('47', '中文', 'zh', '13', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('48', '英文', 'zh', '14', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('51', 'DisActive', 'en', '2', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('52', 'SSH', 'en', '3', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('53', 'HTTP', 'en', '4', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('54', 'SuperManager', 'en', '5', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('55', 'NormalManger', 'en', '6', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('56', 'NormalAccount', 'en', '7', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('57', 'InnerSystem', 'en', '8', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('58', 'External System', 'en', '9', 'dictionary', '2016-01-14 10:50:56', '2016-01-14 10:28:59', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('59', 'Folder', 'en', '10', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('60', 'Featured links', 'en', '11', 'dictionary', '2016-01-14 10:50:56', '2016-01-14 10:32:26', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('62', 'Chinese', 'en', '13', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('63', 'English', 'en', '14', 'dictionary', '2016-01-14 10:50:56', '2016-01-06 13:57:11', '1', null, 'name');
INSERT INTO `globalization` VALUES ('64', '状态', 'zh', 'ACTIVETYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('65', 'Status', 'en', 'ACTIVETYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('66', '语言', 'zh', 'LANGUAGE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('67', 'LANGUAGE', 'en', 'LANGUAGE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('68', 'AccountType', 'en', 'ACCOUNTTYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('69', '账号类型', 'zh', 'ACCOUNTTYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('70', '登陆类型', 'zh', 'LOGINTYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('71', 'LoginType', 'en', 'LOGINTYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('72', 'Node', 'en', 'RESOURCEPID', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('73', '节点', 'zh', 'RESOURCEPID', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('74', '资源类型', 'zh', 'RESOURCETYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('75', 'ResourceType', 'en', 'RESOURCETYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('76', 'SystemType', 'en', 'RESOURCEURLTYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('77', '系统类型', 'zh', 'RESOURCEURLTYPE', 'dictionary', '2016-01-14 10:50:56', null, '1', null, 'name');
INSERT INTO `globalization` VALUES ('81', 'Active', 'en', '1', 'dictionary', '2015-12-27 18:08:08', '2015-12-27 18:38:00', '1', null, 'name');
INSERT INTO `globalization` VALUES ('83', 'accountManager', 'en', '2', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('84', 'MenuManager', 'en', '3', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('85', 'RoleManager', 'en', '4', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('86', 'LogManager', 'en', '5', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('87', 'logQuery', 'en', '6', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('88', 'QueryManager', 'en', '9', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('89', 'MenuQuery', 'en', '10', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('90', 'RoleQuery', 'en', '11', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('98', '账号管理', 'zh', '2', 'resource', '2016-01-14 10:50:56', '2016-01-07 16:27:53', '1', null, 'name');
INSERT INTO `globalization` VALUES ('99', '菜单管理', 'zh', '3', 'resource', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('100', '角色管理', 'zh', '4', 'resource', '2016-01-14 10:50:56', '2016-01-07 16:28:16', '1', null, 'name');
INSERT INTO `globalization` VALUES ('101', '日志管理', 'zh', '5', 'resource', '2016-01-14 10:50:56', '2016-08-12 15:50:37', '1', '2', 'name');
INSERT INTO `globalization` VALUES ('102', '日志查询', 'zh', '6', 'resource', '2016-01-14 10:50:56', '2016-01-07 16:27:21', '1', null, 'name');
INSERT INTO `globalization` VALUES ('103', '查询管理', 'zh', '9', 'resource', '2016-01-14 10:50:56', '2016-08-12 15:50:45', '1', '2', 'name');
INSERT INTO `globalization` VALUES ('104', '菜单查询', 'zh', '10', 'resource', '2016-01-14 10:50:56', '2016-01-07 16:24:13', '1', null, 'name');
INSERT INTO `globalization` VALUES ('105', '角色查询', 'zh', '11', 'resource', '2016-01-14 10:50:56', '2016-01-07 16:26:28', '1', null, 'name');
INSERT INTO `globalization` VALUES ('108', '根节点', 'zh', '12', 'dictionary', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('110', 'Root', 'en', '12', 'dictionary', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('111', 'SUPERADMIN', 'en', '1', 'role', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('112', 'NormalManager', 'en', '2', 'role', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('113', 'NormalAccount', 'en', '3', 'role', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('114', '超级管理员', 'zh', '1', 'role', '2016-01-14 10:50:56', '2015-12-29 22:00:48', '1', null, 'name');
INSERT INTO `globalization` VALUES ('115', '普通管理员', 'zh', '2', 'role', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('116', '普通账号', 'zh', '3', 'role', '2016-01-14 10:50:56', null, '1', '1', 'name');
INSERT INTO `globalization` VALUES ('117', '植物', 'zh', '1', 'category', '2016-01-14 10:50:56', '2016-01-02 20:45:55', '1', null, 'name');
INSERT INTO `globalization` VALUES ('118', '植物类别', 'zh', '1', 'category', '2016-01-14 10:50:56', '2016-01-02 20:45:55', '1', null, 'comment');
INSERT INTO `globalization` VALUES ('119', '动物', 'zh', '2', 'category', '2016-01-14 10:50:56', '2016-01-02 20:45:43', '1', null, 'name');
INSERT INTO `globalization` VALUES ('120', '动物类别', 'zh', '2', 'category', '2016-01-14 10:50:56', '2016-01-02 20:45:43', '1', null, 'comment');
INSERT INTO `globalization` VALUES ('125', 'tp1', 'zh', '1', 'picture', '2016-01-14 10:50:56', '2016-01-02 20:43:19', '1', null, 'name');
INSERT INTO `globalization` VALUES ('126', '213', 'zh', '1', 'picture', '2016-01-14 10:50:56', '2016-01-02 20:43:19', '1', null, 'comment');
INSERT INTO `globalization` VALUES ('127', '动物', 'zh', '2', 'picture', '2016-01-14 10:50:56', '2016-03-11 10:40:26', '1', null, 'name');
INSERT INTO `globalization` VALUES ('128', '猫科类动物', 'zh', '2', 'picture', '2016-01-14 10:50:56', '2016-03-11 10:40:26', '1', '1', 'comment');
INSERT INTO `globalization` VALUES ('129', '系统管理', 'zh', '1', 'resource', '2016-01-14 10:50:56', '2016-08-12 15:50:28', '1', '2', 'name');
INSERT INTO `globalization` VALUES ('130', 'System Management', 'en', '1', 'resource', '2016-01-14 10:50:56', '2016-01-14 10:46:41', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('131', '字典管理', 'zh', '12', 'resource', '2016-01-14 10:50:56', '2016-01-07 16:29:15', '1', null, 'name');
INSERT INTO `globalization` VALUES ('132', '开发模版', 'zh', '13', 'resource', '2016-01-14 10:50:56', '2017-07-30 17:02:40', '1', '2', 'name');
INSERT INTO `globalization` VALUES ('133', '网站图片管理', 'zh', '14', 'resource', '2016-01-14 10:50:56', '2016-01-09 09:40:56', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('134', '德语', 'zh', '15', 'dictionary', '2016-01-09 10:18:50', '2016-01-09 10:18:50', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('135', '法语', 'zh', '16', 'dictionary', '2016-01-09 10:19:31', '2016-01-09 10:19:31', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('136', '日语', 'zh', '17', 'dictionary', '2016-01-09 10:19:59', '2016-01-09 10:19:59', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('137', '俄语', 'zh', '18', 'dictionary', '2016-01-09 10:20:28', '2016-01-09 10:20:28', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('138', '韩语', 'zh', '19', 'dictionary', '2016-01-09 10:20:54', '2016-01-09 10:20:54', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('139', 'Chinese', 'de', '13', 'dictionary', '2016-01-09 10:37:26', '2016-01-13 16:00:41', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('140', 'chinois', 'fr', '13', 'dictionary', '2016-01-09 10:37:51', '2016-01-13 16:01:02', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('141', '中国の', 'ja', '13', 'dictionary', '2016-01-09 10:38:10', '2016-01-13 16:01:32', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('142', 'китайский', 'ru', '13', 'dictionary', '2016-01-09 10:38:31', '2016-01-13 16:01:55', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('143', '중국어', 'ko', '13', 'dictionary', '2016-01-09 10:38:45', '2016-01-13 16:02:17', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('144', '러시아어', 'ko', '18', 'dictionary', '2016-01-13 16:02:59', '2016-01-13 16:02:59', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('145', 'Russian', 'en', '18', 'dictionary', '2016-01-13 16:03:34', '2016-01-13 16:03:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('146', 'Russisch', 'de', '18', 'dictionary', '2016-01-13 16:03:56', '2016-01-13 16:03:56', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('147', 'russe', 'fr', '18', 'dictionary', '2016-01-13 16:04:16', '2016-01-13 16:04:16', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('148', 'ロシア', 'ja', '18', 'dictionary', '2016-01-13 16:04:42', '2016-01-13 16:04:42', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('149', 'русский', 'ru', '18', 'dictionary', '2016-01-13 16:05:49', '2016-01-13 16:05:49', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('150', 'корейский', 'ru', '19', 'dictionary', '2016-01-13 16:06:28', '2016-01-13 16:06:57', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('151', '韓国語', 'ja', '19', 'dictionary', '2016-01-13 16:07:17', '2016-01-13 16:07:17', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('152', 'coréen', 'fr', '19', 'dictionary', '2016-01-13 16:07:34', '2016-01-13 16:07:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('153', 'Koreanisch', 'de', '19', 'dictionary', '2016-01-13 16:07:53', '2016-01-13 16:07:53', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('154', '한국의', 'ko', '19', 'dictionary', '2016-01-13 16:08:28', '2016-01-13 16:08:28', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('155', 'Korean', 'en', '19', 'dictionary', '2016-01-13 16:08:50', '2016-01-13 16:08:50', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('156', '日本人', 'ja', '17', 'dictionary', '2016-01-13 16:09:22', '2016-01-13 16:10:59', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('157', '일본의', 'ko', '17', 'dictionary', '2016-01-13 16:09:44', '2016-01-13 16:09:44', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('158', 'Japanisch', 'de', '17', 'dictionary', '2016-01-13 16:10:01', '2016-01-13 16:10:01', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('159', 'Japanese', 'en', '17', 'dictionary', '2016-01-13 16:10:20', '2016-01-13 16:10:20', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('160', 'japonais', 'fr', '17', 'dictionary', '2016-01-13 16:11:27', '2016-01-13 16:11:27', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('161', 'японский', 'ru', '17', 'dictionary', '2016-01-13 16:11:52', '2016-01-13 16:11:52', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('162', 'французский', 'ru', '16', 'dictionary', '2016-01-13 16:12:16', '2016-01-13 16:12:16', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('163', 'français', 'fr', '16', 'dictionary', '2016-01-13 16:12:33', '2016-01-13 16:12:33', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('164', 'フランス語', 'ja', '16', 'dictionary', '2016-01-13 16:12:48', '2016-01-13 16:12:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('165', 'French', 'en', '16', 'dictionary', '2016-01-13 16:13:09', '2016-01-13 16:13:09', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('166', 'Französisch', 'de', '16', 'dictionary', '2016-01-13 16:13:25', '2016-01-13 16:13:25', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('167', '프랑스의', 'ko', '16', 'dictionary', '2016-01-13 16:13:50', '2016-01-13 16:13:50', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('168', '영어', 'ko', '14', 'dictionary', '2016-01-13 16:14:23', '2016-01-13 16:14:23', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('169', 'Englisch', 'de', '14', 'dictionary', '2016-01-13 16:14:36', '2016-01-13 16:14:36', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('170', 'Anglais', 'fr', '14', 'dictionary', '2016-01-13 16:15:10', '2016-01-13 16:15:10', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('171', '英語', 'ja', '14', 'dictionary', '2016-01-13 16:15:44', '2016-01-13 16:15:44', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('172', 'английский', 'ru', '14', 'dictionary', '2016-01-13 16:16:03', '2016-01-13 16:16:03', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('173', 'немецкий', 'ru', '15', 'dictionary', '2016-01-13 16:16:24', '2016-01-13 16:16:24', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('174', 'ドイツ語', 'ja', '15', 'dictionary', '2016-01-13 16:16:44', '2016-01-13 16:16:44', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('175', 'allemand', 'fr', '15', 'dictionary', '2016-01-13 16:17:07', '2016-01-13 16:17:07', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('176', 'German', 'en', '15', 'dictionary', '2016-01-13 16:17:25', '2016-01-13 16:17:25', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('177', 'Deutsch', 'de', '15', 'dictionary', '2016-01-13 16:17:45', '2016-01-13 16:17:45', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('178', '독일어', 'ko', '15', 'dictionary', '2016-01-13 16:18:14', '2016-01-13 16:18:14', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('179', '사용', 'ko', '1', 'dictionary', '2016-01-14 10:12:33', '2016-01-14 10:12:33', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('180', 'ermöglichen', 'de', '1', 'dictionary', '2016-01-14 10:12:48', '2016-01-14 10:12:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('181', 'Включить', 'ru', '1', 'dictionary', '2016-01-14 10:13:09', '2016-01-14 10:13:09', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('182', 'activer', 'fr', '1', 'dictionary', '2016-01-14 10:13:26', '2016-01-14 10:13:26', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('183', '有効', 'ja', '1', 'dictionary', '2016-01-14 10:13:46', '2016-01-14 10:13:46', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('184', '無効', 'ja', '2', 'dictionary', '2016-01-14 10:14:12', '2016-01-14 10:14:12', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('185', 'handicapés', 'fr', '2', 'dictionary', '2016-01-14 10:14:28', '2016-01-14 10:14:28', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('186', 'инвалид', 'ru', '2', 'dictionary', '2016-01-14 10:14:52', '2016-01-14 10:14:52', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('187', 'Disabled', 'de', '2', 'dictionary', '2016-01-14 10:15:17', '2016-01-14 10:15:17', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('188', '장애인', 'ko', '2', 'dictionary', '2016-01-14 10:15:43', '2016-01-14 10:15:43', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('189', 'SSH', 'de', '3', 'dictionary', '2016-01-14 10:16:45', '2016-01-14 10:16:45', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('190', 'SSH', 'fr', '3', 'dictionary', '2016-01-14 10:16:55', '2016-01-14 10:16:55', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('191', 'SSH', 'ja', '3', 'dictionary', '2016-01-14 10:17:07', '2016-01-14 10:17:07', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('192', 'SSH', 'ru', '3', 'dictionary', '2016-01-14 10:17:14', '2016-01-14 10:17:14', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('193', 'SSH', 'ko', '3', 'dictionary', '2016-01-14 10:17:20', '2016-01-14 10:17:20', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('194', 'HTTP', 'de', '4', 'dictionary', '2016-01-14 10:17:34', '2016-01-14 10:17:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('195', 'HTTP', 'fr', '4', 'dictionary', '2016-01-14 10:17:39', '2016-01-14 10:17:39', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('196', 'HTTP', 'ja', '4', 'dictionary', '2016-01-14 10:17:45', '2016-01-14 10:17:45', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('197', 'HTTP', 'ru', '4', 'dictionary', '2016-01-14 10:17:50', '2016-01-14 10:17:50', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('198', 'HTTP', 'ko', '4', 'dictionary', '2016-01-14 10:17:55', '2016-01-14 10:17:55', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('199', 'Супер Администратор', 'ru', '5', 'dictionary', '2016-01-14 10:18:42', '2016-01-14 10:18:42', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('200', 'Super Administrator', 'de', '5', 'dictionary', '2016-01-14 10:19:02', '2016-01-14 10:19:02', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('201', '최고 관리자', 'ko', '5', 'dictionary', '2016-01-14 10:19:23', '2016-01-14 10:19:23', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('202', 'super administrateur', 'fr', '5', 'dictionary', '2016-01-14 10:19:46', '2016-01-14 10:19:46', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('203', 'スーパー管理者', 'ja', '5', 'dictionary', '2016-01-14 10:20:26', '2016-01-14 10:20:26', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('204', '一般的な管理者', 'ja', '6', 'dictionary', '2016-01-14 10:21:16', '2016-01-14 10:21:16', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('205', 'l\'administrateur général', 'fr', '6', 'dictionary', '2016-01-14 10:21:34', '2016-01-14 10:21:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('206', '일반 관리자', 'ko', '6', 'dictionary', '2016-01-14 10:21:58', '2016-01-14 10:21:58', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('207', 'Allgemeine Administrator', 'de', '6', 'dictionary', '2016-01-14 10:22:17', '2016-01-14 10:22:17', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('208', 'главный управляющий', 'ru', '6', 'dictionary', '2016-01-14 10:22:37', '2016-01-14 10:22:37', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('209', 'Обыкновенные аккаунт', 'ru', '7', 'dictionary', '2016-01-14 10:23:01', '2016-01-14 10:23:01', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('210', 'Ordinary Konto', 'de', '7', 'dictionary', '2016-01-14 10:23:24', '2016-01-14 10:23:24', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('211', '일반 계정', 'ko', '7', 'dictionary', '2016-01-14 10:23:48', '2016-01-14 10:23:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('212', 'compte ordinaire', 'fr', '7', 'dictionary', '2016-01-14 10:24:09', '2016-01-14 10:24:09', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('213', '普通預金', 'ja', '7', 'dictionary', '2016-01-14 10:24:34', '2016-01-14 10:24:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('214', '内部システム', 'ja', '8', 'dictionary', '2016-01-14 10:25:08', '2016-01-14 10:25:08', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('215', 'système interne', 'fr', '8', 'dictionary', '2016-01-14 10:25:25', '2016-01-14 10:25:25', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('216', '내부 시스템', 'ko', '8', 'dictionary', '2016-01-14 10:25:42', '2016-01-14 10:25:42', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('217', 'interne System', 'de', '8', 'dictionary', '2016-01-14 10:26:02', '2016-01-14 10:26:02', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('218', 'Внутренняя система', 'ru', '8', 'dictionary', '2016-01-14 10:26:32', '2016-01-14 10:26:32', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('219', 'внешняя система', 'ru', '9', 'dictionary', '2016-01-14 10:26:52', '2016-01-14 10:26:52', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('220', 'Fremdsystem', 'fr', '9', 'dictionary', '2016-01-14 10:27:07', '2016-01-14 10:27:07', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('221', '외부 시스템', 'ko', '9', 'dictionary', '2016-01-14 10:27:27', '2016-01-14 10:27:27', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('222', '外部システム', 'ja', '9', 'dictionary', '2016-01-14 10:27:54', '2016-01-14 10:27:54', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('223', 'Fremdsystem', 'de', '9', 'dictionary', '2016-01-14 10:28:16', '2016-01-14 10:28:16', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('224', 'Folders', 'de', '10', 'dictionary', '2016-01-14 10:29:34', '2016-01-14 10:29:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('225', 'フォルダ', 'ja', '10', 'dictionary', '2016-01-14 10:29:48', '2016-01-14 10:29:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('226', 'dossiers', 'fr', '10', 'dictionary', '2016-01-14 10:30:10', '2016-01-14 10:30:10', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('227', 'Папки', 'ru', '10', 'dictionary', '2016-01-14 10:30:40', '2016-01-14 10:30:40', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('228', '폴더', 'ko', '10', 'dictionary', '2016-01-14 10:31:00', '2016-01-14 10:31:00', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('229', '추천 링크', 'ko', '11', 'dictionary', '2016-01-14 10:31:25', '2016-01-14 10:31:25', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('230', 'Популярные ссылки', 'ru', '11', 'dictionary', '2016-01-14 10:31:43', '2016-01-14 10:31:43', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('231', 'Sélection de liens', 'fr', '11', 'dictionary', '2016-01-14 10:32:08', '2016-01-14 10:32:08', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('232', 'おすすめリンク', 'ja', '11', 'dictionary', '2016-01-14 10:32:48', '2016-01-14 10:32:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('233', 'Ausgewählte Links', 'de', '11', 'dictionary', '2016-01-14 10:33:09', '2016-01-14 10:33:09', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('234', 'die Wurzel', 'de', '12', 'dictionary', '2016-01-14 10:33:43', '2016-01-14 10:33:43', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('235', 'ルート', 'ja', '12', 'dictionary', '2016-01-14 10:34:05', '2016-01-14 10:34:05', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('236', 'корень', 'ru', '12', 'dictionary', '2016-01-14 10:34:39', '2016-01-14 10:34:39', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('237', 'la racine', 'fr', '12', 'dictionary', '2016-01-14 10:34:55', '2016-01-14 10:34:55', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('238', '루트', 'ko', '12', 'dictionary', '2016-01-14 10:35:17', '2016-01-14 10:35:17', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('239', '시스템 관리', 'ko', '1', 'resource', '2016-01-14 10:37:06', '2016-01-14 10:37:06', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('240', 'gestion du système', 'fr', '1', 'resource', '2016-01-14 10:37:21', '2016-01-14 10:37:21', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('241', 'система управления', 'ru', '1', 'resource', '2016-01-14 10:37:42', '2016-01-14 10:37:42', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('242', 'システム管理', 'ja', '1', 'resource', '2016-01-14 10:38:14', '2016-01-14 10:38:14', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('243', 'System Management', 'de', '1', 'resource', '2016-01-14 10:38:54', '2016-01-14 10:38:54', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('244', 'Log Management', 'de', '5', 'resource', '2016-01-14 10:39:33', '2016-01-14 10:39:33', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('245', 'ログ管理', 'ja', '5', 'resource', '2016-01-14 10:39:52', '2016-01-14 10:39:52', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('246', 'Управление Вход', 'ru', '5', 'resource', '2016-01-14 10:40:10', '2016-01-14 10:40:10', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('247', 'log Management', 'fr', '5', 'resource', '2016-01-14 10:40:31', '2016-01-14 10:40:31', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('248', '로그 관리', 'ko', '5', 'resource', '2016-01-14 10:40:48', '2016-01-14 10:40:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('249', '조회 관리자', 'ko', '9', 'resource', '2016-01-14 10:41:15', '2016-01-14 10:41:15', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('250', 'Gestionnaire des requêtes', 'fr', '9', 'resource', '2016-01-14 10:41:29', '2016-01-14 10:41:29', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('251', 'Менеджер запросов', 'ru', '9', 'resource', '2016-01-14 10:41:43', '2016-01-14 10:41:43', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('252', 'Query Manager', 'de', '9', 'resource', '2016-01-14 10:42:03', '2016-01-14 10:42:03', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('253', 'Query管理', 'ja', '9', 'resource', '2016-01-14 10:42:20', '2016-01-14 10:42:20', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('254', 'テンプレート開発', 'ja', '13', 'resource', '2016-01-14 10:42:45', '2016-01-14 10:42:45', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('255', 'Template Development', 'de', '13', 'resource', '2016-01-14 10:43:02', '2016-01-14 10:43:02', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('256', 'Шаблон Разработка', 'ru', '13', 'resource', '2016-01-14 10:43:19', '2016-01-14 10:43:19', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('257', 'Template Development', 'en', '13', 'resource', '2016-01-14 10:43:33', '2016-01-14 10:43:33', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('258', 'modèle de développement', 'fr', '13', 'resource', '2016-01-14 10:44:03', '2016-01-14 10:44:03', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('259', '템플릿 개발', 'ko', '13', 'resource', '2016-01-14 10:44:22', '2016-01-14 10:44:22', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('260', '계정 관리', 'ko', '2', 'resource', '2016-01-15 09:22:02', '2016-01-15 09:22:02', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('261', 'Account Management', 'de', '2', 'resource', '2016-01-15 09:22:21', '2016-01-15 09:22:21', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('262', 'управление счетами', 'ru', '2', 'resource', '2016-01-15 09:22:56', '2016-01-15 09:22:56', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('263', 'gestion de compte', 'fr', '2', 'resource', '2016-01-15 09:23:17', '2016-01-15 09:23:17', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('264', 'アカウント管理', 'ja', '2', 'resource', '2016-01-15 09:23:46', '2016-01-15 09:23:46', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('265', 'メニュー管理', 'ja', '3', 'resource', '2016-01-15 09:24:07', '2016-01-15 09:24:07', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('266', 'gestion de Menu', 'fr', '3', 'resource', '2016-01-15 09:24:52', '2016-01-15 09:24:52', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('267', 'Меню управления', 'ru', '3', 'resource', '2016-01-15 09:25:10', '2016-01-15 09:25:10', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('268', 'Menüverwaltung', 'de', '3', 'resource', '2016-01-15 09:25:36', '2016-01-15 09:25:36', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('269', '메뉴 관리', 'ko', '3', 'resource', '2016-01-15 09:25:51', '2016-01-15 09:25:51', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('270', '역할 관리', 'ko', '4', 'resource', '2016-01-15 09:26:20', '2016-01-15 09:26:20', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('271', 'Rollenverwaltung', 'de', '4', 'resource', '2016-01-15 09:26:37', '2016-01-15 09:26:37', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('272', 'Роль управления', 'ru', '4', 'resource', '2016-01-15 09:26:53', '2016-01-15 09:26:53', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('273', 'gestion des rôles', 'fr', '4', 'resource', '2016-01-15 09:27:20', '2016-01-15 09:27:20', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('274', 'ロール管理', 'ja', '4', 'resource', '2016-01-15 09:27:37', '2016-01-15 09:27:37', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('275', '辞書管理', 'ja', '12', 'resource', '2016-01-15 09:28:04', '2016-01-15 09:28:04', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('276', 'Dictionary management', 'en', '12', 'resource', '2016-01-15 09:28:22', '2016-01-15 09:28:22', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('277', 'la gestion Dictionnaire', 'fr', '12', 'resource', '2016-01-15 09:28:39', '2016-01-15 09:28:39', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('278', 'Wörterbuch Management', 'de', '12', 'resource', '2016-01-15 09:28:53', '2016-01-15 09:28:53', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('279', 'управление словарями', 'ru', '12', 'resource', '2016-01-15 09:29:12', '2016-01-15 09:29:12', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('280', '사전 관리', 'ko', '12', 'resource', '2016-01-15 09:29:28', '2016-01-15 09:29:28', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('281', '웹 사이트 사진', 'ko', '14', 'resource', '2016-01-15 09:30:00', '2016-01-15 09:30:00', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('282', 'Сайт Картинки', 'ru', '14', 'resource', '2016-01-15 09:30:15', '2016-01-15 09:30:15', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('283', 'Website Bilder', 'de', '14', 'resource', '2016-01-15 09:30:29', '2016-01-15 09:30:29', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('284', 'Site Web Photos', 'fr', '14', 'resource', '2016-01-15 09:30:44', '2016-01-15 09:30:44', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('285', 'ウェブサイトの写真', 'ja', '14', 'resource', '2016-01-15 09:31:08', '2016-01-15 09:31:08', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('286', 'Website Pictures', 'en', '14', 'resource', '2016-01-15 09:31:26', '2016-01-15 09:31:26', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('287', 'ログクエリ', 'ja', '6', 'resource', '2016-01-15 09:31:54', '2016-01-15 09:31:54', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('288', 'requête de journal', 'fr', '6', 'resource', '2016-01-15 09:32:09', '2016-01-15 09:32:09', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('289', 'Войти Запрос', 'ru', '6', 'resource', '2016-01-15 09:32:28', '2016-01-15 09:32:28', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('290', '로그 조회', 'ko', '6', 'resource', '2016-01-15 09:32:47', '2016-01-15 09:32:47', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('291', 'Protokollabfrage', 'de', '6', 'resource', '2016-01-15 09:33:12', '2016-01-15 09:33:12', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('292', 'Menü -Anfrage', 'de', '10', 'resource', '2016-01-15 09:33:36', '2016-01-15 09:33:36', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('293', '메뉴 문의', 'ko', '10', 'resource', '2016-01-15 09:33:51', '2016-01-15 09:33:51', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('294', 'запрос Меню', 'ru', '10', 'resource', '2016-01-15 09:34:04', '2016-01-15 09:34:04', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('295', 'enquête de Menu', 'fr', '10', 'resource', '2016-01-15 09:34:27', '2016-01-15 09:34:27', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('296', 'メニューお問い合わせ', 'ja', '10', 'resource', '2016-01-15 09:34:48', '2016-01-15 09:34:48', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('297', 'ロール問い合わせ', 'ja', '11', 'resource', '2016-01-15 09:35:08', '2016-01-15 09:35:08', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('298', 'enquête de Rôle', 'fr', '11', 'resource', '2016-01-15 09:35:25', '2016-01-15 09:35:25', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('299', 'Роль запрос', 'ru', '11', 'resource', '2016-01-15 09:35:40', '2016-01-15 09:35:40', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('300', 'Role -Anfrage', 'de', '11', 'resource', '2016-01-15 09:35:59', '2016-01-15 09:35:59', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('301', '역할 에 문의', 'ko', '11', 'resource', '2016-01-15 09:36:26', '2016-01-15 09:36:26', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('302', 'Супер Администратор', 'ru', '1', 'role', '2016-01-18 18:48:08', '2016-01-18 18:48:08', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('303', '최고 관리자', 'ko', '1', 'role', '2016-01-18 18:48:34', '2016-01-18 18:48:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('304', 'スーパー管理者', 'ja', '1', 'role', '2016-01-18 18:48:52', '2016-01-18 18:48:52', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('305', 'Super Administrator', 'de', '1', 'role', '2016-01-18 18:49:11', '2016-01-18 18:49:11', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('306', 'super administrateur', 'fr', '1', 'role', '2016-01-18 18:49:34', '2016-01-18 18:49:34', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('307', 'l\'administrateur général', 'fr', '2', 'role', '2016-01-18 18:50:13', '2016-01-18 18:50:13', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('308', 'Allgemeine Administrator', 'de', '2', 'role', '2016-01-18 18:50:32', '2016-01-18 18:50:32', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('309', '一般的な管理者', 'ja', '2', 'role', '2016-01-18 18:50:46', '2016-01-18 18:50:46', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('310', 'главный управляющий', 'ru', '2', 'role', '2016-01-18 18:51:07', '2016-01-18 18:51:07', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('311', '일반 관리자', 'ko', '2', 'role', '2016-01-18 18:51:26', '2016-01-18 18:51:26', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('312', '일반 계정', 'ko', '3', 'role', '2016-01-18 18:51:44', '2016-01-18 18:51:44', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('313', 'Обыкновенные аккаунт', 'ru', '3', 'role', '2016-01-18 18:51:58', '2016-01-18 18:51:58', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('314', '普通預金', 'ja', '3', 'role', '2016-01-18 18:52:12', '2016-01-18 18:52:12', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('315', 'compte ordinaire', 'fr', '3', 'role', '2016-01-18 18:52:25', '2016-01-18 18:52:25', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('316', 'Ordinary Konto', 'de', '3', 'role', '2016-01-18 18:52:38', '2016-01-18 18:52:38', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('317', '植物', 'zh', '3', 'picture', '2016-03-11 10:44:22', '2016-03-11 10:44:22', null, null, 'name');
INSERT INTO `globalization` VALUES ('318', '植物', 'zh', '3', 'picture', '2016-03-11 10:44:22', '2016-03-11 10:44:22', null, null, 'comment');
INSERT INTO `globalization` VALUES ('319', 'HadoopSparkDemo', 'zh', '15', 'resource', '2016-05-19 12:49:13', '2016-05-19 12:52:55', '1', '1', 'name');
INSERT INTO `globalization` VALUES ('321', '英语', 'zh', '', '', '2016-08-17 09:49:02', '2016-08-17 09:49:02', '2', '2', 'undefined');
INSERT INTO `globalization` VALUES ('322', 'werw', 'zh', '', '', '2016-08-17 09:51:34', '2016-08-17 09:51:34', '2', '2', 'undefined');
INSERT INTO `globalization` VALUES ('323', 'te', 'en', '', '', '2016-08-17 10:08:09', '2016-08-17 10:08:09', '2', '2', 'undefined');
INSERT INTO `globalization` VALUES ('324', '流程配置', 'zh', '16', 'resource', '2016-09-26 12:27:03', '2016-10-05 13:22:19', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('328', '环节1', 'zh', '1', 'wf_processnode', '2016-09-29 20:34:21', '2016-10-01 09:06:38', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('329', '环节2', 'zh', '2', 'wf_processnode', '2016-09-29 21:10:19', '2016-10-01 09:06:44', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('331', '环节3', 'zh', '4', 'wf_processnode', '2016-09-29 21:13:44', '2016-10-01 09:06:51', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('332', '环节4', 'zh', '5', 'wf_processnode', '2016-09-29 21:14:14', '2016-10-01 09:06:57', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('333', '环节5', 'zh', '6', 'wf_processnode', '2016-09-29 21:14:28', '2016-10-01 09:11:54', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('338', '请假环节', 'zh', '7', 'wf_processnode', '2016-10-01 09:12:12', '2018-01-10 15:29:56', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('343', '审核角色', 'zh', '4', 'role', '2016-10-01 12:38:16', '2016-10-01 12:38:16', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('344', '未发起', 'zh', '20', 'dictionary', '2016-10-01 13:02:52', '2016-10-05 15:24:28', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('345', '发起', 'zh', '21', 'dictionary', '2016-10-01 13:07:18', '2017-04-07 09:13:30', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('346', '部门管理', 'zh', '17', 'resource', '2016-10-04 19:34:06', '2016-10-04 19:34:06', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('347', '人力资源部', 'zh', '1', 'department', '2016-10-04 20:30:42', '2016-10-04 20:54:56', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('348', '软件部', 'zh', '2', 'department', '2016-10-04 20:53:53', '2016-10-04 20:53:53', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('349', '请假流程', 'zh', '18', 'resource', '2016-10-05 13:29:25', '2016-10-05 13:29:25', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('354', '通过', 'zh', '22', 'dictionary', '2016-10-07 20:23:33', '2016-10-07 20:23:33', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('355', '不通过', 'zh', '23', 'dictionary', '2016-10-07 20:23:50', '2016-10-07 20:23:50', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('356', 'DepartManagement', 'en', '17', 'resource', '2016-10-13 16:00:20', '2016-10-13 16:00:20', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('357', 'WorkFlowConfig', 'en', '16', 'resource', '2016-10-13 16:00:49', '2016-10-13 16:00:49', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('358', 'LeaveProcess', 'en', '18', 'resource', '2016-10-13 16:01:06', '2016-10-13 16:01:06', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('455', '财务部', 'zh', '3', 'department', '2016-10-29 08:49:27', '2016-10-29 08:49:27', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('456', '商务部', 'zh', '4', 'department', '2016-10-29 08:49:59', '2016-10-29 08:49:59', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('461', '请假1', 'zh', '39', 'wf_leaveprocess', '2016-10-29 08:53:13', '2016-10-29 08:53:13', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('462', 'test', 'zh', '39', 'wf_leaveprocess', '2016-10-29 08:53:13', '2016-10-29 08:53:13', '2', '2', 'desc');
INSERT INTO `globalization` VALUES ('463', 'WebSocket测试', 'zh', '19', 'resource', '2016-11-23 08:20:53', '2016-11-23 08:20:53', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('464', 'chart测试', 'zh', '20', 'resource', '2016-12-27 19:20:08', '2016-12-27 19:20:08', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('465', '结构图测试', 'zh', '21', 'resource', '2016-12-28 13:01:08', '2016-12-28 13:07:29', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('466', '流程状态', 'zh', 'WORKFLOWSTATUS', 'dictionary', null, null, null, null, 'name');
INSERT INTO `globalization` VALUES ('467', '流程审核', 'zh', 'WORKFLOWPASS', 'dictionary', null, null, null, null, 'name');
INSERT INTO `globalization` VALUES ('468', '第三方帐号', 'zh', 'ACCOUNTTHIRDPATH', 'dictionary', null, null, null, null, 'name');
INSERT INTO `globalization` VALUES ('469', 'QQ', 'zh', '24', 'dictionary', '2017-04-07 09:46:19', '2017-04-14 15:47:12', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('470', '微信', 'zh', '25', 'dictionary', '2017-04-07 09:46:58', '2017-04-14 16:17:42', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('471', 'undefined', 'undefined', '', '', '2017-04-07 19:42:50', '2017-04-07 19:42:50', '2', '2', 'undefined');
INSERT INTO `globalization` VALUES ('472', '支付宝', 'zh', '26', 'dictionary', '2017-04-14 07:35:07', '2017-04-14 16:17:35', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('473', 'zhifubao', 'en', '26', 'dictionary', '2017-04-14 17:00:36', '2017-04-14 17:01:51', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('474', 'weixin', 'en', '25', 'dictionary', '2017-04-14 17:00:53', '2017-04-14 17:00:53', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('475', 'QQ', 'en', '24', 'dictionary', '2017-04-14 17:01:01', '2017-04-14 17:01:01', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('476', 'AI集成测试', 'zh', '22', 'resource', '2017-05-02 14:59:49', '2017-05-02 14:59:49', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('477', 'AIIntegratedTest', 'en', '22', 'resource', '2017-05-02 15:00:49', '2017-05-02 15:00:49', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('478', 'lucene集成测试', 'zh', '23', 'resource', '2017-12-06 09:33:10', '2017-12-06 09:33:10', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('482', '流程图配置', 'zh', '24', 'resource', '2017-12-15 15:32:17', '2017-12-15 15:34:15', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('523', '环节6', 'zh', '8', 'wf_processnode', '2017-12-17 17:50:31', '2017-12-17 17:50:31', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('528', '请假流程', 'zh', '108_1', 'wf_processdefinition', '2018-01-10 15:37:11', '2018-01-10 15:37:11', '2', '2', 'name');
INSERT INTO `globalization` VALUES ('529', '复杂流程', 'zh', '108_2', 'wf_processdefinition', '2018-01-10 15:39:02', '2018-01-10 15:39:02', '2', '2', 'name');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_zh` varchar(200) DEFAULT NULL,
  `name_en` varchar(200) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sort` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `urltype` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for operator_log
-- ----------------------------
DROP TABLE IF EXISTS `operator_log`;
CREATE TABLE `operator_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `account_ip` varchar(255) DEFAULT NULL,
  `operator_date` datetime DEFAULT NULL,
  `res_id` varchar(100) DEFAULT NULL,
  `signature` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operator_log
-- ----------------------------
INSERT INTO `operator_log` VALUES ('15', '1', '127.0.0.1', '2015-12-02 15:49:46', 'A000A000', 'common_edit');
INSERT INTO `operator_log` VALUES ('16', '1', '127.0.0.1', '2015-12-02 15:57:46', 'A000A001', 'common_add');
INSERT INTO `operator_log` VALUES ('17', '1', '127.0.0.1', '2015-12-02 15:57:55', 'A000A002', 'role_save_role_resource');
INSERT INTO `operator_log` VALUES ('18', '1', '127.0.0.1', '2015-12-02 16:08:51', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('19', '1', '127.0.0.1', '2015-12-02 16:12:15', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('20', '1', '127.0.0.1', '2015-12-02 16:12:39', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('21', '1', '127.0.0.1', '2015-12-02 16:12:59', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('22', '1', '127.0.0.1', '2015-12-02 16:17:12', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('23', '1', '127.0.0.1', '2015-12-02 16:18:18', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('24', '1', '127.0.0.1', '2015-12-02 16:19:05', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('25', '1', '127.0.0.1', '2015-12-02 16:19:52', 'A000A001', 'common_add');
INSERT INTO `operator_log` VALUES ('26', '1', '127.0.0.1', '2015-12-02 16:20:02', 'A000A002', 'role_save_role_resource');
INSERT INTO `operator_log` VALUES ('27', '1', '127.0.0.1', '2015-12-02 16:23:37', 'A000A001', 'common_add');
INSERT INTO `operator_log` VALUES ('28', '1', '127.0.0.1', '2015-12-02 16:24:42', 'A000A001', 'common_add');
INSERT INTO `operator_log` VALUES ('29', '1', '127.0.0.1', '2015-12-02 16:26:23', 'A000A001', 'common_add');
INSERT INTO `operator_log` VALUES ('30', '1', '127.0.0.1', '2015-12-02 16:26:29', 'A000A001', 'common_del');
INSERT INTO `operator_log` VALUES ('31', '1', '127.0.0.1', '2015-12-02 16:26:34', 'A000A001', 'common_del');
INSERT INTO `operator_log` VALUES ('32', '1', '127.0.0.1', '2015-12-02 16:26:43', 'A000A002', 'role_save_role_resource');
INSERT INTO `operator_log` VALUES ('33', '1', '127.0.0.1', '2015-12-03 14:09:20', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('34', '1', '127.0.0.1', '2015-12-03 14:19:52', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('35', '1', '127.0.0.1', '2015-12-03 14:20:30', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('36', '1', '127.0.0.1', '2015-12-03 14:21:04', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('37', '1', '127.0.0.1', '2015-12-03 14:21:11', 'A000A001', 'common_edit');
INSERT INTO `operator_log` VALUES ('38', '1', '127.0.0.1', '2015-12-20 11:40:51', 'A000A001', 'common_edit');

-- ----------------------------
-- Table structure for operator_log_detail
-- ----------------------------
DROP TABLE IF EXISTS `operator_log_detail`;
CREATE TABLE `operator_log_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator_log_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `val` varchar(100) DEFAULT NULL,
  `mkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operator_log_detail
-- ----------------------------
INSERT INTO `operator_log_detail` VALUES ('129', '15', 'user_name', 'admin', '');
INSERT INTO `operator_log_detail` VALUES ('130', '15', 'user_pwd', 'd41d8cd98f00b204e9800998ecf8427e', '');
INSERT INTO `operator_log_detail` VALUES ('131', '15', 'user_type', '1', 'ACCOUNTTYPE');
INSERT INTO `operator_log_detail` VALUES ('132', '15', 'user_logintype', '1', 'LOGINTYPE');
INSERT INTO `operator_log_detail` VALUES ('133', '15', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('134', '15', 'common_id', '1', '');
INSERT INTO `operator_log_detail` VALUES ('135', '16', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('136', '16', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('137', '16', 'menu_url', '/privilege/comquery/query', '');
INSERT INTO `operator_log_detail` VALUES ('138', '16', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('139', '16', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('140', '16', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('141', '16', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('142', '16', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('143', '16', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('144', '16', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('145', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('146', '17', 'menu_name', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('147', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('148', '17', 'menu_name', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('149', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('150', '17', 'menu_name', '6', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('151', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('152', '17', 'menu_name', '1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('153', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('154', '17', 'menu_name', '2', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('155', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('156', '17', 'menu_name', '3', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('157', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('158', '17', 'menu_name', '4', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('159', '17', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('160', '17', 'menu_name', '7', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('161', '18', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('162', '18', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('163', '18', 'menu_url', '/privilege/comquery/query?fileName=privilege&configMethod=getConfigMenu', '');
INSERT INTO `operator_log_detail` VALUES ('164', '18', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('165', '18', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('166', '18', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('167', '18', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('168', '18', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('169', '18', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('170', '18', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('171', '19', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('172', '19', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('173', '19', 'menu_url', '/privilege/comquery/query/fileName=privilege', '');
INSERT INTO `operator_log_detail` VALUES ('174', '19', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('175', '19', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('176', '19', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('177', '19', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('178', '19', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('179', '19', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('180', '19', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('181', '20', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('182', '20', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('183', '20', 'menu_url', '/privilege/comquery/query?fileName=privilege', '');
INSERT INTO `operator_log_detail` VALUES ('184', '20', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('185', '20', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('186', '20', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('187', '20', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('188', '20', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('189', '20', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('190', '20', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('191', '21', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('192', '21', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('193', '21', 'menu_url', '/privilege/comquery/query', '');
INSERT INTO `operator_log_detail` VALUES ('194', '21', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('195', '21', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('196', '21', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('197', '21', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('198', '21', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('199', '21', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('200', '21', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('201', '22', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('202', '22', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('203', '22', 'menu_url', '/privilege/comquery/query&fileName=privilege', '');
INSERT INTO `operator_log_detail` VALUES ('204', '22', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('205', '22', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('206', '22', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('207', '22', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('208', '22', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('209', '22', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('210', '22', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('211', '23', 'menu_name_zh', '公共日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('212', '23', 'menu_name_en', 'CommonLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('213', '23', 'menu_url', '/privilege/comquery/query&fileName=privilege&configMethod=getConfigMenu', '');
INSERT INTO `operator_log_detail` VALUES ('214', '23', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('215', '23', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('216', '23', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('217', '23', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('218', '23', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('219', '23', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('220', '23', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('221', '24', 'menu_name_zh', '菜单日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('222', '24', 'menu_name_en', 'MenuLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('223', '24', 'menu_url', '/privilege/comquery/query&fileName=privilege&configMethod=getConfigMenu', '');
INSERT INTO `operator_log_detail` VALUES ('224', '24', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('225', '24', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('226', '24', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('227', '24', 'menu_code', 'A001A002', '');
INSERT INTO `operator_log_detail` VALUES ('228', '24', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('229', '24', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('230', '24', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('231', '25', 'menu_name_zh', '角色日志查询', '');
INSERT INTO `operator_log_detail` VALUES ('232', '25', 'menu_name_en', 'RoleLogQuery', '');
INSERT INTO `operator_log_detail` VALUES ('233', '25', 'menu_url', '/privilege/comquery/query&fileName=privilege&configMethod=getConfigRole', '');
INSERT INTO `operator_log_detail` VALUES ('234', '25', 'menu_pId', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('235', '25', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('236', '25', 'menu_sort', '3', '');
INSERT INTO `operator_log_detail` VALUES ('237', '25', 'menu_code', 'A001A003', '');
INSERT INTO `operator_log_detail` VALUES ('238', '25', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('239', '25', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('240', '25', 'common_id', '8', '');
INSERT INTO `operator_log_detail` VALUES ('241', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('242', '26', 'menu_name', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('243', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('244', '26', 'menu_name', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('245', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('246', '26', 'menu_name', '6', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('247', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('248', '26', 'menu_name', '7', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('249', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('250', '26', 'menu_name', '1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('251', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('252', '26', 'menu_name', '2', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('253', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('254', '26', 'menu_name', '3', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('255', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('256', '26', 'menu_name', '4', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('257', '26', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('258', '26', 'menu_name', '8', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('259', '27', 'menu_name_zh', '查询管理', '');
INSERT INTO `operator_log_detail` VALUES ('260', '27', 'menu_name_en', 'QueryManager', '');
INSERT INTO `operator_log_detail` VALUES ('261', '27', 'menu_url', '', '');
INSERT INTO `operator_log_detail` VALUES ('262', '27', 'menu_pId', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('263', '27', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('264', '27', 'menu_sort', '3', '');
INSERT INTO `operator_log_detail` VALUES ('265', '27', 'menu_code', 'A002A002', '');
INSERT INTO `operator_log_detail` VALUES ('266', '27', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('267', '27', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('268', '27', 'common_id', '9', '');
INSERT INTO `operator_log_detail` VALUES ('269', '28', 'menu_name_zh', '菜单查询', '');
INSERT INTO `operator_log_detail` VALUES ('270', '28', 'menu_name_en', 'MenuQuery', '');
INSERT INTO `operator_log_detail` VALUES ('271', '28', 'menu_url', '/privilege/comquery/query&fileName=privilege&configMethod=getConfigMenu', '');
INSERT INTO `operator_log_detail` VALUES ('272', '28', 'menu_pId', '9', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('273', '28', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('274', '28', 'menu_sort', '1', '');
INSERT INTO `operator_log_detail` VALUES ('275', '28', 'menu_code', 'A002A001', '');
INSERT INTO `operator_log_detail` VALUES ('276', '28', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('277', '28', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('278', '28', 'common_id', '10', '');
INSERT INTO `operator_log_detail` VALUES ('279', '29', 'menu_name_zh', '角色查询', '');
INSERT INTO `operator_log_detail` VALUES ('280', '29', 'menu_name_en', 'RoleQuery', '');
INSERT INTO `operator_log_detail` VALUES ('281', '29', 'menu_url', '/privilege/comquery/query&fileName=privilege&configMethod=getConfigRole', '');
INSERT INTO `operator_log_detail` VALUES ('282', '29', 'menu_pId', '9', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('283', '29', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('284', '29', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('285', '29', 'menu_code', 'A002A002', '');
INSERT INTO `operator_log_detail` VALUES ('286', '29', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('287', '29', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('288', '29', 'common_id', '11', '');
INSERT INTO `operator_log_detail` VALUES ('289', '30', 'common_id', '7', '');
INSERT INTO `operator_log_detail` VALUES ('290', '31', 'common_id', '8', '');
INSERT INTO `operator_log_detail` VALUES ('291', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('292', '32', 'menu_name', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('293', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('294', '32', 'menu_name', '5', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('295', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('296', '32', 'menu_name', '6', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('297', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('298', '32', 'menu_name', '1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('299', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('300', '32', 'menu_name', '2', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('301', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('302', '32', 'menu_name', '3', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('303', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('304', '32', 'menu_name', '4', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('305', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('306', '32', 'menu_name', '9', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('307', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('308', '32', 'menu_name', '10', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('309', '32', 'role_name', '1', 'ROLE');
INSERT INTO `operator_log_detail` VALUES ('310', '32', 'menu_name', '11', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('311', '33', 'menu_name_zh', '菜单管理', '');
INSERT INTO `operator_log_detail` VALUES ('312', '33', 'menu_name_en', 'MenuManager', '');
INSERT INTO `operator_log_detail` VALUES ('313', '33', 'menu_url', '/privilege/menu/menu', '');
INSERT INTO `operator_log_detail` VALUES ('314', '33', 'menu_pId', '1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('315', '33', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('316', '33', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('317', '33', 'menu_code', 'A000A001', '');
INSERT INTO `operator_log_detail` VALUES ('318', '33', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('319', '33', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('320', '33', 'common_id', '3', '');
INSERT INTO `operator_log_detail` VALUES ('321', '34', 'menu_name_zh', '组织管理', '');
INSERT INTO `operator_log_detail` VALUES ('322', '34', 'menu_name_en', 'OrgManager', '');
INSERT INTO `operator_log_detail` VALUES ('323', '34', 'menu_url', ' ', '');
INSERT INTO `operator_log_detail` VALUES ('324', '34', 'menu_pId', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('325', '34', 'menu_type', '-1', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('326', '34', 'menu_sort', '1', '');
INSERT INTO `operator_log_detail` VALUES ('327', '34', 'menu_code', 'A000', '');
INSERT INTO `operator_log_detail` VALUES ('328', '34', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('329', '34', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('330', '34', 'common_id', '1', '');
INSERT INTO `operator_log_detail` VALUES ('331', '35', 'menu_name_zh', '日志管理', '');
INSERT INTO `operator_log_detail` VALUES ('332', '35', 'menu_name_en', 'LogManager', '');
INSERT INTO `operator_log_detail` VALUES ('333', '35', 'menu_url', ' ', '');
INSERT INTO `operator_log_detail` VALUES ('334', '35', 'menu_pId', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('335', '35', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('336', '35', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('337', '35', 'menu_code', 'A001', '');
INSERT INTO `operator_log_detail` VALUES ('338', '35', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('339', '35', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('340', '35', 'common_id', '5', '');
INSERT INTO `operator_log_detail` VALUES ('341', '36', 'menu_name_zh', '日志管理', '');
INSERT INTO `operator_log_detail` VALUES ('342', '36', 'menu_name_en', 'LogManager', '');
INSERT INTO `operator_log_detail` VALUES ('343', '36', 'menu_url', ' ', '');
INSERT INTO `operator_log_detail` VALUES ('344', '36', 'menu_pId', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('345', '36', 'menu_type', '-1', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('346', '36', 'menu_sort', '2', '');
INSERT INTO `operator_log_detail` VALUES ('347', '36', 'menu_code', 'A001', '');
INSERT INTO `operator_log_detail` VALUES ('348', '36', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('349', '36', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('350', '36', 'common_id', '5', '');
INSERT INTO `operator_log_detail` VALUES ('351', '37', 'menu_name_zh', '查询管理', '');
INSERT INTO `operator_log_detail` VALUES ('352', '37', 'menu_name_en', 'QueryManager', '');
INSERT INTO `operator_log_detail` VALUES ('353', '37', 'menu_url', ' ', '');
INSERT INTO `operator_log_detail` VALUES ('354', '37', 'menu_pId', '-1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('355', '37', 'menu_type', '-1', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('356', '37', 'menu_sort', '3', '');
INSERT INTO `operator_log_detail` VALUES ('357', '37', 'menu_code', 'A002', '');
INSERT INTO `operator_log_detail` VALUES ('358', '37', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('359', '37', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('360', '37', 'common_id', '9', '');
INSERT INTO `operator_log_detail` VALUES ('361', '38', 'menu_name_zh', '用户管理', '');
INSERT INTO `operator_log_detail` VALUES ('362', '38', 'menu_name_en', 'accountManager', '');
INSERT INTO `operator_log_detail` VALUES ('363', '38', 'menu_url', '/privilege/account/account', '');
INSERT INTO `operator_log_detail` VALUES ('364', '38', 'menu_pId', '1', 'RESOURCEPID');
INSERT INTO `operator_log_detail` VALUES ('365', '38', 'menu_type', '0', 'RESOURCETYPE');
INSERT INTO `operator_log_detail` VALUES ('366', '38', 'menu_sort', '1', '');
INSERT INTO `operator_log_detail` VALUES ('367', '38', 'menu_code', 'A000A000', '');
INSERT INTO `operator_log_detail` VALUES ('368', '38', 'menu_urltype', '0', 'RESOURCEURLTYPE');
INSERT INTO `operator_log_detail` VALUES ('369', '38', 'common_active', '1', 'ACTIVETYPE');
INSERT INTO `operator_log_detail` VALUES ('370', '38', 'common_id', '2', '');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `sort` varchar(45) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('2', '1', '2', '1', '1', '2016-01-02 20:46:42', '1', '2016-03-11 10:40:26');
INSERT INTO `picture` VALUES ('3', '1', '1', '1', '1', '2016-03-11 10:44:22', null, null);

-- ----------------------------
-- Table structure for picture_path
-- ----------------------------
DROP TABLE IF EXISTS `picture_path`;
CREATE TABLE `picture_path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgpath` varchar(500) DEFAULT NULL,
  `pictureid` int(11) DEFAULT NULL,
  `pictype` varchar(45) DEFAULT NULL,
  `imgname` varchar(100) DEFAULT NULL,
  `sourcename` varchar(45) DEFAULT NULL,
  `isfirst` int(1) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture_path
-- ----------------------------
INSERT INTO `picture_path` VALUES ('32', 'YWRtaW5fMjAxNjAzMTExMDMzMzU=.jpg', '2', 'jpg', 'cat', 'cat.jpg', '1', '1', null, '2016-03-11 10:33:35', '2016-03-11 10:40:17');
INSERT INTO `picture_path` VALUES ('33', 'YWRtaW5fMjAxNjAzMTExMDMzNDk=.jpg', '2', 'jpg', 'dog', 'dog.jpg', '1', '1', null, '2016-03-11 10:33:49', '2016-03-11 10:40:21');
INSERT INTO `picture_path` VALUES ('35', 'YWRtaW5fMjAxNjAzMTExMDQ0Mzk=.jpg', '3', 'jpg', 'hill', 'hill.jpg', '1', '1', null, '2016-03-11 10:44:39', '2016-03-11 10:44:50');
INSERT INTO `picture_path` VALUES ('36', 'YWRtaW5fMjAxNjAzMTExMDQ0NDg=.jpg', '3', 'jpg', 'city', 'city.jpg', '0', '1', null, '2016-03-11 10:44:48', null);
INSERT INTO `picture_path` VALUES ('37', 'YWRtaW5fMjAxNjAzMTExMDQ5MTY=.jpg', '2', 'jpg', 'rabbit', 'rabbit.jpg', '0', '1', null, '2016-03-11 10:49:16', null);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `urltype` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', 'systemmng', '-1', '-1', '1', 'A000', '0', '1', '1', '2', '2016-01-14 10:51:25', '2016-08-12 15:50:28');
INSERT INTO `resource` VALUES ('2', 'p/minn/privilege/account/AccountMngPanel', '1', '0', '1', 'A000A000', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('3', 'p/minn/privilege/menu/MenuMngPanel', '1', '0', '2', 'A000A001', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('4', 'p/minn/privilege/role/RoleMngPanel', '1', '0', '3', 'A000A002', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('5', 'logmng', '-1', '-1', '2', 'A001', '0', '1', '1', '2', '2016-01-14 10:51:25', '2016-08-12 15:50:37');
INSERT INTO `resource` VALUES ('6', 'p/minn/privilege/log/LogMonitorMngPanel', '5', '0', '2', 'A001A001', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('9', 'querymng', '-1', '-1', '3', 'A002', '0', '1', '1', '2', '2016-01-14 10:51:25', '2016-08-12 15:50:45');
INSERT INTO `resource` VALUES ('10', 'p/minn/privilege/query/QueryMngPanel?fileName=privilege&configMethod=getConfigMenu', '9', '0', '1', 'A002A001', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('11', 'p/minn/privilege/query/QueryMngPanel?fileName=privilege&configMethod=getConfigRole', '9', '0', '2', 'A002A002', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('12', 'p/minn/privilege/dictionary/DicMngPanel', '1', '0', '4', 'A000A003', '0', '1', '1', null, '2016-01-14 10:51:25', null);
INSERT INTO `resource` VALUES ('13', 'devmng', '-1', '-1', '4', 'A003', '0', '1', '1', '2', '2016-01-14 10:51:25', '2017-07-30 17:02:40');
INSERT INTO `resource` VALUES ('14', 'p/minn/demo/picture/PictureMngPanel', '13', '0', '1', 'A003A000', '0', '1', '1', '1', '2016-01-14 10:51:25', '2016-01-09 09:40:56');
INSERT INTO `resource` VALUES ('15', 'p/minn/demo/hadoopspark/HadoopSparkMngPanel', '13', '0', '2', 'A003A001', '0', '1', '1', '1', '2016-05-19 12:49:13', '2016-05-19 12:52:55');
INSERT INTO `resource` VALUES ('16', 'p/minn/workflow/workflowconfig/WorkFlowConfigMngPanel', '13', '0', '1', 'A003A003', '0', '1', '2', '2', '2016-09-26 12:27:03', '2016-10-05 13:22:19');
INSERT INTO `resource` VALUES ('17', 'p/minn/privilege/department/DepartmentMngPanel', '1', '0', '5', 'A000A005', '0', '1', '2', null, '2016-10-04 19:34:06', null);
INSERT INTO `resource` VALUES ('18', 'p/minn/workflow/leaveprocess/LeaveProcessMngPanel', '13', '0', '1', 'A003A004', '0', '1', '2', null, '2016-10-05 13:29:25', null);
INSERT INTO `resource` VALUES ('19', 'p/minn/socket/SocketMngPanel', '13', '0', '5', 'A003A005', '0', '1', '2', null, '2016-11-23 08:20:53', null);
INSERT INTO `resource` VALUES ('20', 'p/minn/chart/ChartMngPanel', '13', '0', '6', 'A003A006', '0', '1', '2', null, '2016-12-27 19:20:08', null);
INSERT INTO `resource` VALUES ('21', 'p/minn/orgChart/OrgChartMngPanel', '13', '0', '7', 'A003A007', '0', '1', '2', '2', '2016-12-28 13:01:08', '2016-12-28 13:07:29');
INSERT INTO `resource` VALUES ('22', 'p/minn/ai/AiMngPanel', '13', '0', '8', 'A003A008', '0', '1', '2', null, '2017-05-02 14:59:49', null);
INSERT INTO `resource` VALUES ('23', 'p/minn/lucene/LuceneMngPanel', '13', '0', '9', 'A003A009', '0', '1', '2', null, '2017-12-06 09:33:10', null);
INSERT INTO `resource` VALUES ('24', 'p/minn/workflow/flowchart/WorkFlowConfigChartMngPanel', '13', '0', '10', 'A003A010', '0', '1', '2', '2', '2017-12-15 15:32:17', '2017-12-15 15:34:15');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(100) DEFAULT NULL,
  `name_zh` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'SuperManger', '超级管理员', 'ROLE_SUPERADMIN', '1', 'r234', '-1', '1', null, '2016-01-14 10:49:20', null);
INSERT INTO `role` VALUES ('2', 'NormalManager', '普通管理员', 'ROLE_NORMALADMIN', '1', '', '2', '1', null, '2016-01-14 10:49:20', null);
INSERT INTO `role` VALUES ('3', 'NormalAccount', '普通账号', 'ROLE_NORMALUSER', '1', '', '3', '1', null, '2016-01-14 10:49:20', null);
INSERT INTO `role` VALUES ('4', null, null, 'ROLE_AUDIT', '1', '流程审核', '4', '2', null, '2016-10-01 12:38:16', null);

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('1', '-1');
INSERT INTO `role_resource` VALUES ('1', '1');
INSERT INTO `role_resource` VALUES ('1', '2');
INSERT INTO `role_resource` VALUES ('1', '3');
INSERT INTO `role_resource` VALUES ('1', '4');
INSERT INTO `role_resource` VALUES ('1', '5');
INSERT INTO `role_resource` VALUES ('1', '6');
INSERT INTO `role_resource` VALUES ('1', '9');
INSERT INTO `role_resource` VALUES ('1', '10');
INSERT INTO `role_resource` VALUES ('1', '11');
INSERT INTO `role_resource` VALUES ('1', '12');
INSERT INTO `role_resource` VALUES ('1', '13');
INSERT INTO `role_resource` VALUES ('1', '14');
INSERT INTO `role_resource` VALUES ('1', '15');
INSERT INTO `role_resource` VALUES ('1', '16');
INSERT INTO `role_resource` VALUES ('1', '17');
INSERT INTO `role_resource` VALUES ('1', '18');
INSERT INTO `role_resource` VALUES ('1', '19');
INSERT INTO `role_resource` VALUES ('1', '20');
INSERT INTO `role_resource` VALUES ('1', '21');
INSERT INTO `role_resource` VALUES ('1', '22');
INSERT INTO `role_resource` VALUES ('1', '23');
INSERT INTO `role_resource` VALUES ('1', '24');
INSERT INTO `role_resource` VALUES ('2', '-1');
INSERT INTO `role_resource` VALUES ('2', '1');
INSERT INTO `role_resource` VALUES ('2', '2');
INSERT INTO `role_resource` VALUES ('2', '3');
INSERT INTO `role_resource` VALUES ('2', '4');
INSERT INTO `role_resource` VALUES ('2', '12');
INSERT INTO `role_resource` VALUES ('2', '13');
INSERT INTO `role_resource` VALUES ('2', '16');
INSERT INTO `role_resource` VALUES ('2', '17');
INSERT INTO `role_resource` VALUES ('2', '18');
INSERT INTO `role_resource` VALUES ('2', '19');
INSERT INTO `role_resource` VALUES ('2', '20');
INSERT INTO `role_resource` VALUES ('2', '21');
INSERT INTO `role_resource` VALUES ('2', '22');
INSERT INTO `role_resource` VALUES ('2', '23');
INSERT INTO `role_resource` VALUES ('2', '24');
INSERT INTO `role_resource` VALUES ('3', '-1');
INSERT INTO `role_resource` VALUES ('3', '1');
INSERT INTO `role_resource` VALUES ('3', '2');
INSERT INTO `role_resource` VALUES ('3', '3');

-- ----------------------------
-- Table structure for wf_audit
-- ----------------------------
DROP TABLE IF EXISTS `wf_audit`;
CREATE TABLE `wf_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromnode` varchar(100) DEFAULT NULL,
  `tonode` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `lp_id` int(11) DEFAULT NULL,
  `pd_id` varchar(500) DEFAULT NULL,
  `pas_id` int(11) DEFAULT NULL,
  `maxactive` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_audit
-- ----------------------------
INSERT INTO `wf_audit` VALUES ('139', '108_1_7_1_3_1', '108_1_7_1_3', null, '39', '108_1_7_1_3_1', '194', null, '2', null);
INSERT INTO `wf_audit` VALUES ('140', '108_1_7_1_4_1', '108_1_7_1_4', null, '39', '108_1_7_1_4_1', '194', null, '2', null);
INSERT INTO `wf_audit` VALUES ('141', '108_1_7_1_3', '108_1_7_1', null, '39', '108_1_7_1_3', '195', null, '2', null);
INSERT INTO `wf_audit` VALUES ('142', '108_1_7_1_4', '108_1_7_1', null, '39', '108_1_7_1_4', '196', null, '2', null);
INSERT INTO `wf_audit` VALUES ('143', '108_1_7_1', '108_1_7', null, '39', '108_1_7_1', '197', null, '27', null);
INSERT INTO `wf_audit` VALUES ('153', '108_1_6_2_1', '108_1_6_2', null, '39', '108_1_6_2_1', '207', '2', '2', null);
INSERT INTO `wf_audit` VALUES ('156', '108_1_7_1', '108_1_7', null, '39', '108_1_7_1', '210', null, '2', null);
INSERT INTO `wf_audit` VALUES ('170', '108_1_7_1_3', '108_1_7_1', null, '39', '108_1_7_1_3', '224', null, '2', null);
INSERT INTO `wf_audit` VALUES ('171', '108_1_7_1_4', '108_1_7_1', null, '39', '108_1_7_1_4', '225', null, '2', null);
INSERT INTO `wf_audit` VALUES ('172', '108_1_7_1', '108_1_7', null, '39', '108_1_7_1', '226', null, '27', null);
INSERT INTO `wf_audit` VALUES ('173', '108_1_6_2_1', '108_1_6_2', null, '39', '108_1_6_2_1', '227', null, '2', null);
INSERT INTO `wf_audit` VALUES ('174', '108_1_6_2', '108_1_6', null, '39', '108_1_6_2', '228', null, '2', null);

-- ----------------------------
-- Table structure for wf_audit_status
-- ----------------------------
DROP TABLE IF EXISTS `wf_audit_status`;
CREATE TABLE `wf_audit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_id` int(11) DEFAULT NULL,
  `auditdate` datetime DEFAULT NULL,
  `lp_id` int(11) DEFAULT NULL,
  `pd_id` varchar(500) DEFAULT NULL,
  `processstatus` int(11) DEFAULT NULL COMMENT '-1待审核，0正在审核，1已完成',
  `status` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `maxactive` int(11) DEFAULT NULL COMMENT '最大为有效数',
  `audit_deptid` int(11) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `pa_id` int(11) DEFAULT NULL,
  `nodestatus` int(11) DEFAULT NULL COMMENT '0未完结，1已完结',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_audit_status
-- ----------------------------
INSERT INTO `wf_audit_status` VALUES ('194', '2', '2016-10-31 15:02:20', '39', '108_1_7', '1', '1', '1', '3', '1', 'test', null, '0');
INSERT INTO `wf_audit_status` VALUES ('195', '26', '2016-10-31 15:02:34', '39', '108_1_7_1_3', '1', '1', '2', '2', '3', 'test', null, '0');
INSERT INTO `wf_audit_status` VALUES ('196', '27', '2016-10-31 15:02:45', '39', '108_1_7_1_4', '1', '1', '2', '2', '4', 'test', null, '0');
INSERT INTO `wf_audit_status` VALUES ('197', '2', '2016-10-31 16:01:23', '39', '108_1_7_1', '1', '1', '3', '2', '1', 'test', null, '0');
INSERT INTO `wf_audit_status` VALUES ('207', '2', '2016-10-31 16:14:23', '39', '108_1_6', '1', '0', '1', '1', '1', 'test', null, '0');
INSERT INTO `wf_audit_status` VALUES ('210', '2', '2016-10-31 19:22:55', '39', '108_1_7_1', '1', '0', '4', '2', '1', 'est', null, '0');
INSERT INTO `wf_audit_status` VALUES ('224', '26', '2016-10-31 19:23:37', '39', '108_1_7_1_3', '1', '1', '5', '3', '3', 'est', null, '0');
INSERT INTO `wf_audit_status` VALUES ('225', '27', '2016-10-31 19:23:58', '39', '108_1_7_1_4', '1', '1', '5', '3', '4', 'est', null, '0');
INSERT INTO `wf_audit_status` VALUES ('226', '2', '2016-10-31 19:24:14', '39', '108_1_7_1', '1', '1', '6', '3', '1', 'est', null, '0');
INSERT INTO `wf_audit_status` VALUES ('227', '2', '2016-10-31 19:24:38', '39', '108_1_6', '1', '1', '1', '3', '1', 'est', null, '0');
INSERT INTO `wf_audit_status` VALUES ('228', '25', '2016-10-31 19:24:52', '39', '108_1_6_2', '1', '1', '2', '3', '2', 'est', null, '0');

-- ----------------------------
-- Table structure for wf_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `wf_baseinfo`;
CREATE TABLE `wf_baseinfo` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_baseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for wf_leaveprocess
-- ----------------------------
DROP TABLE IF EXISTS `wf_leaveprocess`;
CREATE TABLE `wf_leaveprocess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_id` varchar(100) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `maxactive` int(11) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_leaveprocess
-- ----------------------------
INSERT INTO `wf_leaveprocess` VALUES ('39', '108_1', '2', '2', '2016-10-29 08:53:13', '2016-10-31 15:02:17', '1', '2016-04-03 00:00:00', '2016-05-05 00:00:00', '1', '2');

-- ----------------------------
-- Table structure for wf_nodefile
-- ----------------------------
DROP TABLE IF EXISTS `wf_nodefile`;
CREATE TABLE `wf_nodefile` (
  `id` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `nd_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_nodefile
-- ----------------------------

-- ----------------------------
-- Table structure for wf_nodefile_accept
-- ----------------------------
DROP TABLE IF EXISTS `wf_nodefile_accept`;
CREATE TABLE `wf_nodefile_accept` (
  `id` int(11) NOT NULL,
  `accept_id` int(11) DEFAULT NULL,
  `accept_date` datetime DEFAULT NULL,
  `nd_id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `accept_node` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `nf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_nodefile_accept
-- ----------------------------

-- ----------------------------
-- Table structure for wf_processdefinition
-- ----------------------------
DROP TABLE IF EXISTS `wf_processdefinition`;
CREATE TABLE `wf_processdefinition` (
  `id` varchar(500) NOT NULL,
  `pid` varchar(500) DEFAULT NULL,
  `pn_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_processdefinition
-- ----------------------------
INSERT INTO `wf_processdefinition` VALUES ('108_1', '108', '-2', '1', 'A001', '1', '2', null, '2018-01-10 15:37:11', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2', '108', '-2', '1', 'A002', '2', '2', null, '2018-01-10 15:39:01', null);
INSERT INTO `wf_processdefinition` VALUES ('108_1_7', '108_1', '7', '1', 'N007', '7', '2', null, '2018-01-10 15:46:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_1_7_1', '108_1_7', '1', '1', 'D001', '1', '2', null, '2018-01-10 15:46:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_1_7_1_2', '108_1_7_1', '2', '1', 'D002', '2', '2', null, '2018-01-10 15:46:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_1_7_1_2_1', '108_1_7_1_2', '1', '1', 'D001', '1', '2', null, '2018-01-10 15:46:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_1_7_1_3', '108_1_7_1', '3', '1', 'D003', '3', '2', null, '2018-01-10 15:46:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_1_7_1_3_1', '108_1_7_1_3', '1', '1', 'D001', '1', '2', null, '2018-01-10 15:46:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_1', '108_2', '1', '1', 'N001', '1', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_2', '108_2', '2', '1', 'N002', '2', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_4', '108_2', '4', '1', 'N003', '3', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_1_2', '108_2_1', '2', '1', 'D002', '2', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_1_2_3', '108_2_1_2', '3', '1', 'D003', '3', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_2_1', '108_2_2', '1', '1', 'D001', '1', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_2_1_3', '108_2_2_1', '3', '1', 'D003', '3', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_2_1_3_2', '108_2_2_1_3', '2', '1', 'D002', '2', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_2_1_4', '108_2_2_1', '4', '1', 'D004', '4', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_2_1_4_2', '108_2_2_1_4', '2', '1', 'D002', '2', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_4_2', '108_2_4', '2', '1', 'D002', '2', '2', null, '2018-01-10 15:48:10', null);
INSERT INTO `wf_processdefinition` VALUES ('108_2_4_2_1', '108_2_4_2', '1', '1', 'D001', '1', '2', null, '2018-01-10 15:48:10', null);

-- ----------------------------
-- Table structure for wf_processmodel
-- ----------------------------
DROP TABLE IF EXISTS `wf_processmodel`;
CREATE TABLE `wf_processmodel` (
  `processid` varchar(50) NOT NULL,
  `model` blob,
  PRIMARY KEY (`processid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_processmodel
-- ----------------------------
INSERT INTO `wf_processmodel` VALUES ('108_1', 0x7B2022636C617373223A2022676F2E47726170684C696E6B734D6F64656C222C0A2020226D6F64656C44617461223A207B22706F736974696F6E223A222D35202D35227D2C0A2020226E6F6465446174614172726179223A205B200A7B22636F6465223A224E303037222C2022676964223A3333382C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A372C2022736F7274223A2237222C202274657874223A22E8AFB7E58187E78EAFE88A82222C20227374617465223A7B2273656C6563746564223A66616C73657D2C202275726C223A226E6F646537222C202273656C6563746564223A66616C73652C20226B6579223A2237404E30303740222C20226C6F63223A2233303020313430227D2C0A7B22636F6465223A2244303031222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A312C202274657874223A22E4BABAE58A9BE8B584E6BA90E983A8222C2022736F7274223A312C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A312C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2231404430303140222C20226C6F63223A2232383020323330227D2C0A7B22636F6465223A2244303032222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A322C202274657874223A22E8BDAFE4BBB6E983A8222C2022736F7274223A322C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A322C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2232404430303240222C20226C6F63223A2231363020333330227D2C0A7B22636F6465223A2244303033222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A332C202274657874223A22E8B4A2E58AA1E983A8222C2022736F7274223A332C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A332C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2233404430303340222C20226C6F63223A2233353020333330227D2C0A7B22636F6465223A2244303031222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A312C202274657874223A22E4BABAE58A9BE8B584E6BA90E983A8222C2022736F7274223A312C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A312C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A223140443030314032222C20226C6F63223A2232353020343430227D0A205D2C0A2020226C696E6B446174614172726179223A205B200A7B2266726F6D223A223140443030314032222C2022746F223A2233404430303340222C2022706F696E7473223A5B3235302C3432332E303632323735363935383030382C3235302C3431332E303632323735363935383030382C3235302C3338352C3335302C3338352C3335302C3335362E393337373234333034313939322C3335302C3334362E393337373234333034313939325D7D2C0A7B2266726F6D223A223140443030314032222C2022746F223A2232404430303240222C2022706F696E7473223A5B3235302C3432332E303632323735363935383030382C3235302C3431332E303632323735363935383030382C3235302C3338352C3136302C3338352C3136302C3335362E393337373234333034313939322C3136302C3334362E393337373234333034313939325D7D2C0A7B2266726F6D223A2232404430303240222C2022746F223A2231404430303140222C2022706F696E7473223A5B3139302E39383939383236303439383034372C3333302C3230302E39383939383236303439383034372C3333302C3231322E36373030303537393833333938342C3333302C3231322E36373030303537393833333938342C3233302C3232342E33353030323839393136393932322C3233302C3233342E33353030323839393136393932322C3233305D7D2C0A7B2266726F6D223A2233404430303340222C2022746F223A2231404430303140222C2022706F696E7473223A5B3335302C3331332E303632323735363935383030382C3335302C3330332E303632323735363935383030382C3335302C3238302C3238302C3238302C3238302C3235362E39333737323433303431393932362C3238302C3234362E39333737323433303431393932345D7D2C0A7B2266726F6D223A2231404430303140222C2022746F223A2237404E30303740222C2022706F696E7473223A5B3238302C3231332E303632323735363935383030382C3238302C3230332E303632323735363935383030382C3238302C3138352C3330302C3138352C3330302C3136362E39333737323433303431393932342C3330302C3135362E39333737323433303431393932345D7D0A205D7D);
INSERT INTO `wf_processmodel` VALUES ('108_2', 0x7B2022636C617373223A2022676F2E47726170684C696E6B734D6F64656C222C0A2020226C696E6B46726F6D506F7274496450726F7065727479223A202266726F6D506F7274222C0A2020226C696E6B546F506F7274496450726F7065727479223A2022746F506F7274222C0A2020226D6F64656C44617461223A207B22706F736974696F6E223A2232342E3031303031373339353031393533202D35227D2C0A2020226E6F6465446174614172726179223A205B200A7B22636F6465223A224E303031222C2022676964223A3332382C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A312C2022736F7274223A2231222C202274657874223A22E78EAFE88A8231222C20227374617465223A7B2273656C6563746564223A66616C73657D2C202275726C223A226E6F646531222C202273656C6563746564223A66616C73652C20226B6579223A2231404E30303140222C20226C6F63223A2231313020313430227D2C0A7B22636F6465223A224E303032222C2022676964223A3332392C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A322C2022736F7274223A2232222C202274657874223A22E78EAFE88A8232222C20227374617465223A7B2273656C6563746564223A66616C73657D2C202275726C223A226E6F646532222C202273656C6563746564223A66616C73652C20226B6579223A2232404E30303240222C20226C6F63223A2232373020313530227D2C0A7B22636F6465223A224E303033222C2022676964223A3333312C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A342C2022736F7274223A2233222C202274657874223A22E78EAFE88A8233222C20227374617465223A7B2273656C6563746564223A66616C73657D2C202275726C223A226E6F646533222C202273656C6563746564223A66616C73652C20226B6579223A2234404E30303340222C20226C6F63223A2234323020313530227D2C0A7B22636F6465223A2244303032222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A322C202274657874223A22E8BDAFE4BBB6E983A8222C2022736F7274223A322C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A322C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2232404430303240222C20226C6F63223A22393020323530227D2C0A7B22636F6465223A2244303033222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A332C202274657874223A22E8B4A2E58AA1E983A8222C2022736F7274223A332C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A332C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2233404430303340222C20226C6F63223A22363020333530227D2C0A7B22636F6465223A2244303031222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A312C202274657874223A22E4BABAE58A9BE8B584E6BA90E983A8222C2022736F7274223A312C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A312C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2231404430303140222C20226C6F63223A2232363020323130227D2C0A7B22636F6465223A2244303033222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A332C202274657874223A22E8B4A2E58AA1E983A8222C2022736F7274223A332C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A332C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A223340443030334032222C20226C6F63223A2231393020323830227D2C0A7B22636F6465223A2244303034222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A342C202274657874223A22E59586E58AA1E983A8222C2022736F7274223A342C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A342C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A2234404430303440222C20226C6F63223A2233323020323830227D2C0A7B22636F6465223A2244303031222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A312C202274657874223A22E4BABAE58A9BE8B584E6BA90E983A8222C2022736F7274223A312C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A312C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A223140443030314032222C20226C6F63223A2234353020333530227D2C0A7B22636F6465223A2244303032222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A322C202274657874223A22E8BDAFE4BBB6E983A8222C2022736F7274223A322C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A322C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A223240443030324032222C20226C6F63223A2232323020333830227D2C0A7B22636F6465223A2244303032222C20226368696C6472656E223A5B5D2C2022706964223A2D312C20226964223A322C202274657874223A22E8BDAFE4BBB6E983A8222C2022736F7274223A322C20227374617465223A7B2273656C6563746564223A66616C73657D2C2022726964223A322C202272706964223A2D312C202274797065223A226465706172746D656E74222C202273656C6563746564223A66616C73652C20226B6579223A223240443030324033222C20226C6F63223A2234353020323530227D0A205D2C0A2020226C696E6B446174614172726179223A205B200A7B2266726F6D223A2233404430303340222C2022746F223A2232404430303240222C202266726F6D506F7274223A2252222C2022746F506F7274223A22222C2022706F696E7473223A5B39302E39383939383236303439383034372C3335302C3130302E39383939383236303439383034372C3335302C3130302E39383939383236303439383034372C3330312C39302C3330312C39302C3237362E393337373234333034313939322C39302C3236362E393337373234333034313939325D7D2C0A7B2266726F6D223A2232404430303240222C2022746F223A2231404E30303140222C202266726F6D506F7274223A22222C2022746F506F7274223A22222C2022706F696E7473223A5B39302C3233332E303632323735363935383030382C39302C3232332E303632323735363935383030382C39302C3139352C3131302C3139352C3131302C3136362E393337373234333034313939322C3131302C3135362E393337373234333034313939325D7D2C0A7B2266726F6D223A2231404E30303140222C2022746F223A2232404E30303240222C202266726F6D506F7274223A2252222C2022746F506F7274223A224C222C2022706F696E7473223A5B3133372E37333635373938393530313935332C3134302C3134372E37333635373938393530313935332C3134302C3139302C3134302C3139302C3135302C3233322E32363334323031303439383034372C3135302C3234322E32363334323031303439383034372C3135305D7D2C0A7B2266726F6D223A2232404E30303240222C2022746F223A2234404E30303340222C202266726F6D506F7274223A22222C2022746F506F7274223A224C222C2022706F696E7473223A5B3239372E37333635373938393530313935332C3135302C3330372E37333635373938393530313935332C3135302C3334352C3135302C3334352C3135302C3338322E32363334323031303439383034372C3135302C3339322E32363334323031303439383034372C3135305D7D2C0A7B2266726F6D223A223240443030324032222C2022746F223A223340443030334032222C202266726F6D506F7274223A22222C2022746F506F7274223A22222C2022706F696E7473223A5B3232302C3336332E303632323735363935383030382C3232302C3335332E303632323735363935383030382C3232302C3333302C3139302C3333302C3139302C3330362E393337373234333034313939322C3139302C3239362E393337373234333034313939325D7D2C0A7B2266726F6D223A223240443030324032222C2022746F223A2234404430303440222C202266726F6D506F7274223A22222C2022746F506F7274223A224C222C2022706F696E7473223A5B3232302C3336332E303632323735363935383030382C3232302C3335332E303632323735363935383030382C3232302C3335332E303632323735363935383030382C3232382C3335332E303632323735363935383030382C3232382C3238302C3237392E30313030313733393530313935332C3238302C3238392E30313030313733393530313935332C3238305D7D2C0A7B2266726F6D223A223340443030334032222C2022746F223A2231404430303140222C202266726F6D506F7274223A22222C2022746F506F7274223A224C222C2022706F696E7473223A5B3139302C3236332E303632323735363935383030382C3139302C3235332E303632323735363935383030382C3139302C3231302C3139372E313735303134343935383439362C3231302C3230342E33353030323839393136393932322C3231302C3231342E33353030323839393136393932322C3231305D7D2C0A7B2266726F6D223A2234404430303440222C2022746F223A2231404430303140222C202266726F6D506F7274223A22222C2022746F506F7274223A22222C2022706F696E7473223A5B3332302C3236332E303632323735363935383030382C3332302C3235332E303632323735363935383030382C3332302C3234352C3236302C3234352C3236302C3233362E39333737323433303431393932342C3236302C3232362E39333737323433303431393932345D7D2C0A7B2266726F6D223A2231404430303140222C2022746F223A2232404E30303240222C202266726F6D506F7274223A22222C2022746F506F7274223A22222C2022706F696E7473223A5B3236302C3139332E303632323735363935383030382C3236302C3138332E303632323735363935383030382C3236302C3138302C3237302C3138302C3237302C3137362E39333737323433303431393932342C3237302C3136362E39333737323433303431393932345D7D2C0A7B2266726F6D223A223140443030314032222C2022746F223A223240443030324033222C202266726F6D506F7274223A22222C2022746F506F7274223A22222C2022706F696E7473223A5B3435302C3333332E303632323735363935383030382C3435302C3332332E303632323735363935383030382C3435302C3330302C3435302C3330302C3435302C3237362E393337373234333034313939322C3435302C3236362E393337373234333034313939325D7D2C0A7B2266726F6D223A223240443030324033222C2022746F223A2234404E30303340222C202266726F6D506F7274223A22222C2022746F506F7274223A22222C2022706F696E7473223A5B3435302C3233332E303632323735363935383030382C3435302C3232332E303632323735363935383030382C3435302C3230302C3432302C3230302C3432302C3137362E39333737323433303431393932342C3432302C3136362E39333737323433303431393932345D7D0A205D7D);

-- ----------------------------
-- Table structure for wf_processnode
-- ----------------------------
DROP TABLE IF EXISTS `wf_processnode`;
CREATE TABLE `wf_processnode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `sort` varchar(45) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_processnode
-- ----------------------------
INSERT INTO `wf_processnode` VALUES ('1', '-1', 'N001', 'node1', '1', null, '2', '2', '2016-09-29 20:34:21', '2016-10-01 09:06:38');
INSERT INTO `wf_processnode` VALUES ('2', '-1', 'N002', 'node2', '2', null, '2', '2', '2016-09-29 21:10:19', '2016-10-01 09:06:44');
INSERT INTO `wf_processnode` VALUES ('4', '-1', 'N003', 'node3', '3', null, '2', '2', '2016-09-29 21:13:44', '2016-10-01 09:06:51');
INSERT INTO `wf_processnode` VALUES ('5', '-1', 'N004', 'mode4', '4', null, '2', '2', '2016-09-29 21:14:14', '2016-10-01 09:06:57');
INSERT INTO `wf_processnode` VALUES ('6', '-1', 'N005', 'node5', '5', null, '2', '2', '2016-09-29 21:14:28', '2016-10-01 09:11:54');
INSERT INTO `wf_processnode` VALUES ('7', '-1', 'N007', 'node7', '7', null, '2', '2', '2016-10-01 09:12:12', '2018-01-10 15:29:56');
INSERT INTO `wf_processnode` VALUES ('8', '-1', 'N006', 'node6', '6', null, '2', null, '2017-12-17 17:50:31', null);

-- ----------------------------
-- Table structure for wf_processnodemodel
-- ----------------------------
DROP TABLE IF EXISTS `wf_processnodemodel`;
CREATE TABLE `wf_processnodemodel` (
  `id` varchar(500) NOT NULL,
  `pid` varchar(500) DEFAULT NULL,
  `pn_id` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_processnodemodel
-- ----------------------------

-- ----------------------------
-- View structure for v_dictionary
-- ----------------------------
DROP VIEW IF EXISTS `v_dictionary`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dictionary` AS select `dictionary`.`mkey` AS `mkey`,`dictionary`.`val` AS `val`,`dictionary`.`name_en` AS `name_en`,`dictionary`.`name_zh` AS `name_zh`,`dictionary`.`name_zh` AS `sort` from `dictionary` union select 'RESOURCECODE' AS `mkey`,`resource`.`code` AS `val`,`resource`.`name_en` AS `name_en`,`resource`.`name_zh` AS `name_zh`,`resource`.`sort` AS `sort` from `resource` ;

-- ----------------------------
-- View structure for v_globalization_dictionary
-- ----------------------------
DROP VIEW IF EXISTS `v_globalization_dictionary`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_globalization_dictionary` AS select `d`.`mkey` AS `mkey`,`d`.`val` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`d`.`sort` AS `sort`,'-2' AS `pid`,`d`.`var1` AS `var1`,`d`.`var2` AS `var2`,`d`.`var3` AS `var3`,`d`.`var4` AS `var4`,`d`.`var5` AS `var5` from (`dictionary` `d` join `globalization` `g` on(((`g`.`tablename` = 'dictionary') and (`d`.`id` = `g`.`tableid`)))) union select 'RESOURCECODE' AS `mkey`,`r`.`code` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`r`.`sort` AS `sort`,`r`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`resource` `r` join `globalization` `g` on(((`g`.`tablename` = 'resource') and (`r`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name')))) union select 'RESOURCECODEID' AS `mkey`,`r`.`id` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`r`.`sort` AS `sort`,`r`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`resource` `r` join `globalization` `g` on(((`g`.`tablename` = 'resource') and (`r`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name')))) union select 'DEPARTMENTCODE' AS `mkey`,`d`.`id` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`d`.`code` AS `sort`,`d`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`department` `d` join `globalization` `g` on(((`g`.`tablename` = 'department') and (`d`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name')))) union select 'WORKFLOWPROCESS' AS `mkey`,`pd`.`id` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`pd`.`code` AS `sort`,`pd`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`wf_processdefinition` `pd` join `globalization` `g` on(((`g`.`tablename` = 'wf_processdefinition') and (`pd`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name') and (`pd`.`pid` = 108)))) ;

-- ----------------------------
-- View structure for v_wf_audit_status
-- ----------------------------
DROP VIEW IF EXISTS `v_wf_audit_status`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_wf_audit_status` AS select `wa`.`fromnode` AS `fromnode`,`wa`.`tonode` AS `tonode`,`wa`.`pd_id` AS `pd_id`,`was`.`id` AS `id`,`was`.`lp_id` AS `lp_id`,`was`.`processstatus` AS `processstatus`,`was`.`status` AS `status`,`was`.`step` AS `step`,`was`.`maxactive` AS `maxactive` from (`wf_audit_status` `was` join `wf_audit` `wa` on((`was`.`id` = `wa`.`pas_id`))) ;
