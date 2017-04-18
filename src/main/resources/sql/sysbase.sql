-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: sys_base
-- ------------------------------------------------------
-- Server version	5.6.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_thirdpart`
--

DROP TABLE IF EXISTS `account_thirdpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `globalization`
--

DROP TABLE IF EXISTS `globalization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operator_log`
--

DROP TABLE IF EXISTS `operator_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `account_ip` varchar(255) DEFAULT NULL,
  `operator_date` datetime DEFAULT NULL,
  `res_id` varchar(100) DEFAULT NULL,
  `signature` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operator_log_detail`
--

DROP TABLE IF EXISTS `operator_log_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator_log_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator_log_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `val` varchar(100) DEFAULT NULL,
  `mkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `picture_path`
--

DROP TABLE IF EXISTS `picture_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(45) DEFAULT NULL,
  `name_zh` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_resource`
--

DROP TABLE IF EXISTS `role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_dictionary`
--

DROP TABLE IF EXISTS `v_dictionary`;
/*!50001 DROP VIEW IF EXISTS `v_dictionary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_dictionary` AS SELECT 
 1 AS `mkey`,
 1 AS `val`,
 1 AS `name_en`,
 1 AS `name_zh`,
 1 AS `sort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_globalization_dictionary`
--

DROP TABLE IF EXISTS `v_globalization_dictionary`;
/*!50001 DROP VIEW IF EXISTS `v_globalization_dictionary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_globalization_dictionary` AS SELECT 
 1 AS `mkey`,
 1 AS `val`,
 1 AS `name`,
 1 AS `tableid`,
 1 AS `tablename`,
 1 AS `language`,
 1 AS `sort`,
 1 AS `pid`,
 1 AS `var1`,
 1 AS `var2`,
 1 AS `var3`,
 1 AS `var4`,
 1 AS `var5`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_wf_audit_status`
--

DROP TABLE IF EXISTS `v_wf_audit_status`;
/*!50001 DROP VIEW IF EXISTS `v_wf_audit_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_wf_audit_status` AS SELECT 
 1 AS `fromnode`,
 1 AS `tonode`,
 1 AS `pd_id`,
 1 AS `id`,
 1 AS `lp_id`,
 1 AS `processstatus`,
 1 AS `status`,
 1 AS `step`,
 1 AS `maxactive`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wf_audit`
--

DROP TABLE IF EXISTS `wf_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_audit_status`
--

DROP TABLE IF EXISTS `wf_audit_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_baseinfo`
--

DROP TABLE IF EXISTS `wf_baseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_leaveprocess`
--

DROP TABLE IF EXISTS `wf_leaveprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_nodefile`
--

DROP TABLE IF EXISTS `wf_nodefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_nodefile_accept`
--

DROP TABLE IF EXISTS `wf_nodefile_accept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_processdefinition`
--

DROP TABLE IF EXISTS `wf_processdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_processnode`
--

DROP TABLE IF EXISTS `wf_processnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_processnodemodel`
--

DROP TABLE IF EXISTS `wf_processnodemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_processnodemodel` (
  `id` varchar(500) NOT NULL,
  `pid` varchar(500) DEFAULT NULL,
  `pn_id` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'sys_base'
--

--
-- Dumping routines for database 'sys_base'
--

--
-- Final view structure for view `v_dictionary`
--

/*!50001 DROP VIEW IF EXISTS `v_dictionary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dictionary` AS select `dictionary`.`mkey` AS `mkey`,`dictionary`.`val` AS `val`,`dictionary`.`name_en` AS `name_en`,`dictionary`.`name_zh` AS `name_zh`,`dictionary`.`name_zh` AS `sort` from `dictionary` union select 'RESOURCECODE' AS `mkey`,`resource`.`code` AS `val`,`resource`.`name_en` AS `name_en`,`resource`.`name_zh` AS `name_zh`,`resource`.`sort` AS `sort` from `resource` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_globalization_dictionary`
--

/*!50001 DROP VIEW IF EXISTS `v_globalization_dictionary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_globalization_dictionary` AS select `d`.`mkey` AS `mkey`,`d`.`val` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`d`.`sort` AS `sort`,'-2' AS `pid`,`d`.`var1` AS `var1`,`d`.`var2` AS `var2`,`d`.`var3` AS `var3`,`d`.`var4` AS `var4`,`d`.`var5` AS `var5` from (`dictionary` `d` join `globalization` `g` on(((`g`.`tablename` = 'dictionary') and (`d`.`id` = `g`.`tableid`)))) union select 'RESOURCECODE' AS `mkey`,`r`.`code` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`r`.`sort` AS `sort`,`r`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`resource` `r` join `globalization` `g` on(((`g`.`tablename` = 'resource') and (`r`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name')))) union select 'RESOURCECODEID' AS `mkey`,`r`.`id` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`r`.`sort` AS `sort`,`r`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`resource` `r` join `globalization` `g` on(((`g`.`tablename` = 'resource') and (`r`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name')))) union select 'DEPARTMENTCODE' AS `mkey`,`d`.`id` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`d`.`code` AS `sort`,`d`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`department` `d` join `globalization` `g` on(((`g`.`tablename` = 'department') and (`d`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name')))) union select 'WORKFLOWPROCESS' AS `mkey`,`pd`.`id` AS `val`,`g`.`name` AS `name`,`g`.`tableid` AS `tableid`,`g`.`tablename` AS `tablename`,`g`.`language` AS `language`,`pd`.`code` AS `sort`,`pd`.`pid` AS `pid`,'' AS `var1`,'' AS `var2`,'' AS `var3`,'' AS `var4`,'' AS `var5` from (`wf_processdefinition` `pd` join `globalization` `g` on(((`g`.`tablename` = 'wf_processdefinition') and (`pd`.`id` = `g`.`tableid`) and (`g`.`tablecolumn` = 'name') and (`pd`.`pid` = 108)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_wf_audit_status`
--

/*!50001 DROP VIEW IF EXISTS `v_wf_audit_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_wf_audit_status` AS select `wa`.`fromnode` AS `fromnode`,`wa`.`tonode` AS `tonode`,`wa`.`pd_id` AS `pd_id`,`was`.`id` AS `id`,`was`.`lp_id` AS `lp_id`,`was`.`processstatus` AS `processstatus`,`was`.`status` AS `status`,`was`.`step` AS `step`,`was`.`maxactive` AS `maxactive` from (`wf_audit_status` `was` join `wf_audit` `wa` on((`was`.`id` = `wa`.`pas_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18  8:54:20
