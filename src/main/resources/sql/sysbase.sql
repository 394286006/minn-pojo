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
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','f39a80d1555a3066cc0204261b13b646',-1,1,1,1,NULL,'2016-01-14 10:48:58',NULL,1,NULL),(2,'minn','53e0d3234cf8349108b0f7b05dd950af',0,2,1,1,2,'2016-08-10 16:21:11','2016-08-14 15:47:02',1,'120864838239342_zh_CN'),(25,'minn1','53e0d3234cf8349108b0f7b05dd950af',0,2,1,2,2,'2016-10-01 17:49:02','2016-10-28 15:35:04',2,NULL),(26,'minn2','53e0d3234cf8349108b0f7b05dd950af',0,2,1,2,2,'2016-10-01 17:49:39','2016-10-30 08:50:52',3,NULL),(27,'minn3','53e0d3234cf8349108b0f7b05dd950af',0,2,1,2,2,'2016-10-01 17:49:49','2016-10-30 08:51:09',4,NULL),(28,'minn4','638396f29eeedd657e26cc5fa78b8258',1,2,1,2,NULL,'2016-10-01 17:49:58',NULL,1,NULL),(29,'minn5','638396f29eeedd657e26cc5fa78b8258',1,2,1,2,NULL,'2016-10-01 17:50:07',NULL,1,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1),(1,2),(2,2),(2,3),(2,4),(25,2),(25,3),(25,4),(26,2),(26,3),(26,4),(27,2),(27,3),(27,4),(28,2),(28,3),(28,4),(29,2),(29,3);
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `account_thirdpart`
--

LOCK TABLES `account_thirdpart` WRITE;
/*!40000 ALTER TABLE `account_thirdpart` DISABLE KEYS */;
INSERT INTO `account_thirdpart` VALUES (10,2,'394286006','qq','12345',1,'',2,NULL,'2017-04-14 15:57:07',NULL);
/*!40000 ALTER TABLE `account_thirdpart` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,-1,'2',1,1,'2016-01-01 10:18:06','2016-01-02 20:45:55',NULL),(2,-1,'1',1,1,'2016-01-01 13:40:39','2016-01-02 20:45:43',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'D001',-1,2,2,'2016-10-04 20:30:42','2016-10-04 20:54:56',1),(2,'D002',-1,2,NULL,'2016-10-04 20:53:53',NULL,1),(3,'D003',-1,2,NULL,'2016-10-29 08:49:27',NULL,1),(4,'D004',-1,2,NULL,'2016-10-29 08:49:59',NULL,1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (1,'启用','Active','ACTIVETYPE','1','2','2015-12-26 14:53:38','2015-12-29 13:45:03',1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'禁用','DisActive','ACTIVETYPE','0',NULL,'2015-12-26 14:53:38','2015-12-27 19:56:53',1,NULL,NULL,NULL,NULL,NULL,NULL),(3,'SSH','SSH','LOGINTYPE','1',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(4,'HTTP','HTTP','LOGINTYPE','2',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(5,'超级管理员','SuperManager','ACCOUNTTYPE','-1',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(6,'普通管理员','NormalManger','ACCOUNTTYPE','0','1','2015-12-26 14:53:38','2015-12-29 10:35:49',1,NULL,NULL,NULL,NULL,NULL,NULL),(7,'普通账号','NormalAccount','ACCOUNTTYPE','1',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(8,'内部系统','InnerSystem','RESOURCEURLTYPE','0',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(9,'外部系统','OuterSystem','RESOURCEURLTYPE','-1',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(10,'文件夹','Folder','RESOURCETYPE','-1',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(11,'功能链接','FunctionLink','RESOURCETYPE','0',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(12,'根节点','Root','RESOURCEPID','-1',NULL,'2015-12-26 14:53:38',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(13,'中文','Chinese','LANGUAGE','zh','2','2015-12-26 14:53:38','2015-12-28 07:58:51',1,NULL,NULL,NULL,NULL,NULL,NULL),(14,'英文','English','LANGUAGE','en','1','2015-12-26 14:53:38','2015-12-28 07:58:47',1,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,'LANGUAGE','de','3','2016-01-09 10:18:50','2016-01-09 10:18:50',1,1,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,'LANGUAGE','fr','4','2016-01-09 10:19:31','2016-01-09 10:19:31',1,1,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,'LANGUAGE','ja','4','2016-01-09 10:19:59','2016-01-09 10:19:59',1,1,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,'LANGUAGE','ru','5','2016-01-09 10:20:28','2016-01-09 10:20:28',1,1,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,'LANGUAGE','ko','6','2016-01-09 10:20:54','2016-01-09 10:20:54',1,1,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,'WORKFLOWSTATUS','0','2','2016-10-01 13:02:52','2016-10-05 15:24:28',2,2,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,'WORKFLOWSTATUS','1','1','2016-10-01 13:07:18','2017-04-07 09:13:30',2,2,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,'WORKFLOWPASS','1','1','2016-10-07 20:23:33','2016-10-07 20:23:33',2,2,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,'WORKFLOWPASS','0','2','2016-10-07 20:23:50','2016-10-07 20:23:50',2,2,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,'ACCOUNTTHIRDPATH','qq','1','2017-04-07 09:46:19','2017-04-14 15:47:12',2,2,'http://www.baidu.com','','','',''),(25,NULL,NULL,'ACCOUNTTHIRDPATH','weixin','2','2017-04-07 09:46:58','2017-04-14 16:17:42',2,2,'http://www.baidu.com','show','','',''),(26,NULL,NULL,'ACCOUNTTHIRDPATH','zhifubao','3','2017-04-14 07:35:07','2017-04-14 16:17:35',2,2,'http://www.google.com','show','','','');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalization`
--

LOCK TABLES `globalization` WRITE;
/*!40000 ALTER TABLE `globalization` DISABLE KEYS */;
INSERT INTO `globalization` VALUES (35,'启用','zh','1','dictionary','2016-01-14 10:50:56','2015-12-29 13:45:08',1,NULL,'name'),(36,'禁用','zh','2','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(37,'SSH','zh','3','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(38,'HTTP','zh','4','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(39,'超级管理员','zh','5','dictionary','2016-01-14 10:50:56','2015-12-29 13:21:08',1,NULL,'name'),(40,'普通管理员','zh','6','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(41,'普通账号','zh','7','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(42,'内部系统','zh','8','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(43,'外部系统','zh','9','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(44,'文件夹','zh','10','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(45,'功能链接','zh','11','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(47,'中文','zh','13','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(48,'英文','zh','14','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(51,'DisActive','en','2','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(52,'SSH','en','3','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(53,'HTTP','en','4','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(54,'SuperManager','en','5','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(55,'NormalManger','en','6','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(56,'NormalAccount','en','7','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(57,'InnerSystem','en','8','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(58,'External System','en','9','dictionary','2016-01-14 10:50:56','2016-01-14 10:28:59',1,1,'name'),(59,'Folder','en','10','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(60,'Featured links','en','11','dictionary','2016-01-14 10:50:56','2016-01-14 10:32:26',1,1,'name'),(62,'Chinese','en','13','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(63,'English','en','14','dictionary','2016-01-14 10:50:56','2016-01-06 13:57:11',1,NULL,'name'),(64,'状态','zh','ACTIVETYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(65,'Status','en','ACTIVETYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(66,'语言','zh','LANGUAGE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(67,'LANGUAGE','en','LANGUAGE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(68,'AccountType','en','ACCOUNTTYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(69,'账号类型','zh','ACCOUNTTYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(70,'登陆类型','zh','LOGINTYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(71,'LoginType','en','LOGINTYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(72,'Node','en','RESOURCEPID','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(73,'节点','zh','RESOURCEPID','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(74,'资源类型','zh','RESOURCETYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(75,'ResourceType','en','RESOURCETYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(76,'SystemType','en','RESOURCEURLTYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(77,'系统类型','zh','RESOURCEURLTYPE','dictionary','2016-01-14 10:50:56',NULL,1,NULL,'name'),(81,'Active','en','1','dictionary','2015-12-27 18:08:08','2015-12-27 18:38:00',1,NULL,'name'),(83,'accountManager','en','2','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(84,'MenuManager','en','3','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(85,'RoleManager','en','4','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(86,'LogManager','en','5','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(87,'logQuery','en','6','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(88,'QueryManager','en','9','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(89,'MenuQuery','en','10','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(90,'RoleQuery','en','11','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(98,'账号管理','zh','2','resource','2016-01-14 10:50:56','2016-01-07 16:27:53',1,NULL,'name'),(99,'菜单管理','zh','3','resource','2016-01-14 10:50:56',NULL,1,1,'name'),(100,'角色管理','zh','4','resource','2016-01-14 10:50:56','2016-01-07 16:28:16',1,NULL,'name'),(101,'日志管理','zh','5','resource','2016-01-14 10:50:56','2016-08-12 15:50:37',1,2,'name'),(102,'日志查询','zh','6','resource','2016-01-14 10:50:56','2016-01-07 16:27:21',1,NULL,'name'),(103,'查询管理','zh','9','resource','2016-01-14 10:50:56','2016-08-12 15:50:45',1,2,'name'),(104,'菜单查询','zh','10','resource','2016-01-14 10:50:56','2016-01-07 16:24:13',1,NULL,'name'),(105,'角色查询','zh','11','resource','2016-01-14 10:50:56','2016-01-07 16:26:28',1,NULL,'name'),(108,'根节点','zh','12','dictionary','2016-01-14 10:50:56',NULL,1,1,'name'),(110,'Root','en','12','dictionary','2016-01-14 10:50:56',NULL,1,1,'name'),(111,'SUPERADMIN','en','1','role','2016-01-14 10:50:56',NULL,1,1,'name'),(112,'NormalManager','en','2','role','2016-01-14 10:50:56',NULL,1,1,'name'),(113,'NormalAccount','en','3','role','2016-01-14 10:50:56',NULL,1,1,'name'),(114,'超级管理员','zh','1','role','2016-01-14 10:50:56','2015-12-29 22:00:48',1,NULL,'name'),(115,'普通管理员','zh','2','role','2016-01-14 10:50:56',NULL,1,1,'name'),(116,'普通账号','zh','3','role','2016-01-14 10:50:56',NULL,1,1,'name'),(117,'植物','zh','1','category','2016-01-14 10:50:56','2016-01-02 20:45:55',1,NULL,'name'),(118,'植物类别','zh','1','category','2016-01-14 10:50:56','2016-01-02 20:45:55',1,NULL,'comment'),(119,'动物','zh','2','category','2016-01-14 10:50:56','2016-01-02 20:45:43',1,NULL,'name'),(120,'动物类别','zh','2','category','2016-01-14 10:50:56','2016-01-02 20:45:43',1,NULL,'comment'),(125,'tp1','zh','1','picture','2016-01-14 10:50:56','2016-01-02 20:43:19',1,NULL,'name'),(126,'213','zh','1','picture','2016-01-14 10:50:56','2016-01-02 20:43:19',1,NULL,'comment'),(127,'动物','zh','2','picture','2016-01-14 10:50:56','2016-03-11 10:40:26',1,NULL,'name'),(128,'猫科类动物','zh','2','picture','2016-01-14 10:50:56','2016-03-11 10:40:26',1,1,'comment'),(129,'系统管理','zh','1','resource','2016-01-14 10:50:56','2016-08-12 15:50:28',1,2,'name'),(130,'System Management','en','1','resource','2016-01-14 10:50:56','2016-01-14 10:46:41',1,1,'name'),(131,'字典管理','zh','12','resource','2016-01-14 10:50:56','2016-01-07 16:29:15',1,NULL,'name'),(132,'开发模版','zh','13','resource','2016-01-14 10:50:56','2016-08-12 15:50:53',1,2,'name'),(133,'网站图片管理','zh','14','resource','2016-01-14 10:50:56','2016-01-09 09:40:56',1,1,'name'),(134,'德语','zh','15','dictionary','2016-01-09 10:18:50','2016-01-09 10:18:50',1,1,'name'),(135,'法语','zh','16','dictionary','2016-01-09 10:19:31','2016-01-09 10:19:31',1,1,'name'),(136,'日语','zh','17','dictionary','2016-01-09 10:19:59','2016-01-09 10:19:59',1,1,'name'),(137,'俄语','zh','18','dictionary','2016-01-09 10:20:28','2016-01-09 10:20:28',1,1,'name'),(138,'韩语','zh','19','dictionary','2016-01-09 10:20:54','2016-01-09 10:20:54',1,1,'name'),(139,'Chinese','de','13','dictionary','2016-01-09 10:37:26','2016-01-13 16:00:41',1,1,'name'),(140,'chinois','fr','13','dictionary','2016-01-09 10:37:51','2016-01-13 16:01:02',1,1,'name'),(141,'中国の','ja','13','dictionary','2016-01-09 10:38:10','2016-01-13 16:01:32',1,1,'name'),(142,'китайский','ru','13','dictionary','2016-01-09 10:38:31','2016-01-13 16:01:55',1,1,'name'),(143,'중국어','ko','13','dictionary','2016-01-09 10:38:45','2016-01-13 16:02:17',1,1,'name'),(144,'러시아어','ko','18','dictionary','2016-01-13 16:02:59','2016-01-13 16:02:59',1,1,'name'),(145,'Russian','en','18','dictionary','2016-01-13 16:03:34','2016-01-13 16:03:34',1,1,'name'),(146,'Russisch','de','18','dictionary','2016-01-13 16:03:56','2016-01-13 16:03:56',1,1,'name'),(147,'russe','fr','18','dictionary','2016-01-13 16:04:16','2016-01-13 16:04:16',1,1,'name'),(148,'ロシア','ja','18','dictionary','2016-01-13 16:04:42','2016-01-13 16:04:42',1,1,'name'),(149,'русский','ru','18','dictionary','2016-01-13 16:05:49','2016-01-13 16:05:49',1,1,'name'),(150,'корейский','ru','19','dictionary','2016-01-13 16:06:28','2016-01-13 16:06:57',1,1,'name'),(151,'韓国語','ja','19','dictionary','2016-01-13 16:07:17','2016-01-13 16:07:17',1,1,'name'),(152,'coréen','fr','19','dictionary','2016-01-13 16:07:34','2016-01-13 16:07:34',1,1,'name'),(153,'Koreanisch','de','19','dictionary','2016-01-13 16:07:53','2016-01-13 16:07:53',1,1,'name'),(154,'한국의','ko','19','dictionary','2016-01-13 16:08:28','2016-01-13 16:08:28',1,1,'name'),(155,'Korean','en','19','dictionary','2016-01-13 16:08:50','2016-01-13 16:08:50',1,1,'name'),(156,'日本人','ja','17','dictionary','2016-01-13 16:09:22','2016-01-13 16:10:59',1,1,'name'),(157,'일본의','ko','17','dictionary','2016-01-13 16:09:44','2016-01-13 16:09:44',1,1,'name'),(158,'Japanisch','de','17','dictionary','2016-01-13 16:10:01','2016-01-13 16:10:01',1,1,'name'),(159,'Japanese','en','17','dictionary','2016-01-13 16:10:20','2016-01-13 16:10:20',1,1,'name'),(160,'japonais','fr','17','dictionary','2016-01-13 16:11:27','2016-01-13 16:11:27',1,1,'name'),(161,'японский','ru','17','dictionary','2016-01-13 16:11:52','2016-01-13 16:11:52',1,1,'name'),(162,'французский','ru','16','dictionary','2016-01-13 16:12:16','2016-01-13 16:12:16',1,1,'name'),(163,'français','fr','16','dictionary','2016-01-13 16:12:33','2016-01-13 16:12:33',1,1,'name'),(164,'フランス語','ja','16','dictionary','2016-01-13 16:12:48','2016-01-13 16:12:48',1,1,'name'),(165,'French','en','16','dictionary','2016-01-13 16:13:09','2016-01-13 16:13:09',1,1,'name'),(166,'Französisch','de','16','dictionary','2016-01-13 16:13:25','2016-01-13 16:13:25',1,1,'name'),(167,'프랑스의','ko','16','dictionary','2016-01-13 16:13:50','2016-01-13 16:13:50',1,1,'name'),(168,'영어','ko','14','dictionary','2016-01-13 16:14:23','2016-01-13 16:14:23',1,1,'name'),(169,'Englisch','de','14','dictionary','2016-01-13 16:14:36','2016-01-13 16:14:36',1,1,'name'),(170,'Anglais','fr','14','dictionary','2016-01-13 16:15:10','2016-01-13 16:15:10',1,1,'name'),(171,'英語','ja','14','dictionary','2016-01-13 16:15:44','2016-01-13 16:15:44',1,1,'name'),(172,'английский','ru','14','dictionary','2016-01-13 16:16:03','2016-01-13 16:16:03',1,1,'name'),(173,'немецкий','ru','15','dictionary','2016-01-13 16:16:24','2016-01-13 16:16:24',1,1,'name'),(174,'ドイツ語','ja','15','dictionary','2016-01-13 16:16:44','2016-01-13 16:16:44',1,1,'name'),(175,'allemand','fr','15','dictionary','2016-01-13 16:17:07','2016-01-13 16:17:07',1,1,'name'),(176,'German','en','15','dictionary','2016-01-13 16:17:25','2016-01-13 16:17:25',1,1,'name'),(177,'Deutsch','de','15','dictionary','2016-01-13 16:17:45','2016-01-13 16:17:45',1,1,'name'),(178,'독일어','ko','15','dictionary','2016-01-13 16:18:14','2016-01-13 16:18:14',1,1,'name'),(179,'사용','ko','1','dictionary','2016-01-14 10:12:33','2016-01-14 10:12:33',1,1,'name'),(180,'ermöglichen','de','1','dictionary','2016-01-14 10:12:48','2016-01-14 10:12:48',1,1,'name'),(181,'Включить','ru','1','dictionary','2016-01-14 10:13:09','2016-01-14 10:13:09',1,1,'name'),(182,'activer','fr','1','dictionary','2016-01-14 10:13:26','2016-01-14 10:13:26',1,1,'name'),(183,'有効','ja','1','dictionary','2016-01-14 10:13:46','2016-01-14 10:13:46',1,1,'name'),(184,'無効','ja','2','dictionary','2016-01-14 10:14:12','2016-01-14 10:14:12',1,1,'name'),(185,'handicapés','fr','2','dictionary','2016-01-14 10:14:28','2016-01-14 10:14:28',1,1,'name'),(186,'инвалид','ru','2','dictionary','2016-01-14 10:14:52','2016-01-14 10:14:52',1,1,'name'),(187,'Disabled','de','2','dictionary','2016-01-14 10:15:17','2016-01-14 10:15:17',1,1,'name'),(188,'장애인','ko','2','dictionary','2016-01-14 10:15:43','2016-01-14 10:15:43',1,1,'name'),(189,'SSH','de','3','dictionary','2016-01-14 10:16:45','2016-01-14 10:16:45',1,1,'name'),(190,'SSH','fr','3','dictionary','2016-01-14 10:16:55','2016-01-14 10:16:55',1,1,'name'),(191,'SSH','ja','3','dictionary','2016-01-14 10:17:07','2016-01-14 10:17:07',1,1,'name'),(192,'SSH','ru','3','dictionary','2016-01-14 10:17:14','2016-01-14 10:17:14',1,1,'name'),(193,'SSH','ko','3','dictionary','2016-01-14 10:17:20','2016-01-14 10:17:20',1,1,'name'),(194,'HTTP','de','4','dictionary','2016-01-14 10:17:34','2016-01-14 10:17:34',1,1,'name'),(195,'HTTP','fr','4','dictionary','2016-01-14 10:17:39','2016-01-14 10:17:39',1,1,'name'),(196,'HTTP','ja','4','dictionary','2016-01-14 10:17:45','2016-01-14 10:17:45',1,1,'name'),(197,'HTTP','ru','4','dictionary','2016-01-14 10:17:50','2016-01-14 10:17:50',1,1,'name'),(198,'HTTP','ko','4','dictionary','2016-01-14 10:17:55','2016-01-14 10:17:55',1,1,'name'),(199,'Супер Администратор','ru','5','dictionary','2016-01-14 10:18:42','2016-01-14 10:18:42',1,1,'name'),(200,'Super Administrator','de','5','dictionary','2016-01-14 10:19:02','2016-01-14 10:19:02',1,1,'name'),(201,'최고 관리자','ko','5','dictionary','2016-01-14 10:19:23','2016-01-14 10:19:23',1,1,'name'),(202,'super administrateur','fr','5','dictionary','2016-01-14 10:19:46','2016-01-14 10:19:46',1,1,'name'),(203,'スーパー管理者','ja','5','dictionary','2016-01-14 10:20:26','2016-01-14 10:20:26',1,1,'name'),(204,'一般的な管理者','ja','6','dictionary','2016-01-14 10:21:16','2016-01-14 10:21:16',1,1,'name'),(205,'l\'administrateur général','fr','6','dictionary','2016-01-14 10:21:34','2016-01-14 10:21:34',1,1,'name'),(206,'일반 관리자','ko','6','dictionary','2016-01-14 10:21:58','2016-01-14 10:21:58',1,1,'name'),(207,'Allgemeine Administrator','de','6','dictionary','2016-01-14 10:22:17','2016-01-14 10:22:17',1,1,'name'),(208,'главный управляющий','ru','6','dictionary','2016-01-14 10:22:37','2016-01-14 10:22:37',1,1,'name'),(209,'Обыкновенные аккаунт','ru','7','dictionary','2016-01-14 10:23:01','2016-01-14 10:23:01',1,1,'name'),(210,'Ordinary Konto','de','7','dictionary','2016-01-14 10:23:24','2016-01-14 10:23:24',1,1,'name'),(211,'일반 계정','ko','7','dictionary','2016-01-14 10:23:48','2016-01-14 10:23:48',1,1,'name'),(212,'compte ordinaire','fr','7','dictionary','2016-01-14 10:24:09','2016-01-14 10:24:09',1,1,'name'),(213,'普通預金','ja','7','dictionary','2016-01-14 10:24:34','2016-01-14 10:24:34',1,1,'name'),(214,'内部システム','ja','8','dictionary','2016-01-14 10:25:08','2016-01-14 10:25:08',1,1,'name'),(215,'système interne','fr','8','dictionary','2016-01-14 10:25:25','2016-01-14 10:25:25',1,1,'name'),(216,'내부 시스템','ko','8','dictionary','2016-01-14 10:25:42','2016-01-14 10:25:42',1,1,'name'),(217,'interne System','de','8','dictionary','2016-01-14 10:26:02','2016-01-14 10:26:02',1,1,'name'),(218,'Внутренняя система','ru','8','dictionary','2016-01-14 10:26:32','2016-01-14 10:26:32',1,1,'name'),(219,'внешняя система','ru','9','dictionary','2016-01-14 10:26:52','2016-01-14 10:26:52',1,1,'name'),(220,'Fremdsystem','fr','9','dictionary','2016-01-14 10:27:07','2016-01-14 10:27:07',1,1,'name'),(221,'외부 시스템','ko','9','dictionary','2016-01-14 10:27:27','2016-01-14 10:27:27',1,1,'name'),(222,'外部システム','ja','9','dictionary','2016-01-14 10:27:54','2016-01-14 10:27:54',1,1,'name'),(223,'Fremdsystem','de','9','dictionary','2016-01-14 10:28:16','2016-01-14 10:28:16',1,1,'name'),(224,'Folders','de','10','dictionary','2016-01-14 10:29:34','2016-01-14 10:29:34',1,1,'name'),(225,'フォルダ','ja','10','dictionary','2016-01-14 10:29:48','2016-01-14 10:29:48',1,1,'name'),(226,'dossiers','fr','10','dictionary','2016-01-14 10:30:10','2016-01-14 10:30:10',1,1,'name'),(227,'Папки','ru','10','dictionary','2016-01-14 10:30:40','2016-01-14 10:30:40',1,1,'name'),(228,'폴더','ko','10','dictionary','2016-01-14 10:31:00','2016-01-14 10:31:00',1,1,'name'),(229,'추천 링크','ko','11','dictionary','2016-01-14 10:31:25','2016-01-14 10:31:25',1,1,'name'),(230,'Популярные ссылки','ru','11','dictionary','2016-01-14 10:31:43','2016-01-14 10:31:43',1,1,'name'),(231,'Sélection de liens','fr','11','dictionary','2016-01-14 10:32:08','2016-01-14 10:32:08',1,1,'name'),(232,'おすすめリンク','ja','11','dictionary','2016-01-14 10:32:48','2016-01-14 10:32:48',1,1,'name'),(233,'Ausgewählte Links','de','11','dictionary','2016-01-14 10:33:09','2016-01-14 10:33:09',1,1,'name'),(234,'die Wurzel','de','12','dictionary','2016-01-14 10:33:43','2016-01-14 10:33:43',1,1,'name'),(235,'ルート','ja','12','dictionary','2016-01-14 10:34:05','2016-01-14 10:34:05',1,1,'name'),(236,'корень','ru','12','dictionary','2016-01-14 10:34:39','2016-01-14 10:34:39',1,1,'name'),(237,'la racine','fr','12','dictionary','2016-01-14 10:34:55','2016-01-14 10:34:55',1,1,'name'),(238,'루트','ko','12','dictionary','2016-01-14 10:35:17','2016-01-14 10:35:17',1,1,'name'),(239,'시스템 관리','ko','1','resource','2016-01-14 10:37:06','2016-01-14 10:37:06',1,1,'name'),(240,'gestion du système','fr','1','resource','2016-01-14 10:37:21','2016-01-14 10:37:21',1,1,'name'),(241,'система управления','ru','1','resource','2016-01-14 10:37:42','2016-01-14 10:37:42',1,1,'name'),(242,'システム管理','ja','1','resource','2016-01-14 10:38:14','2016-01-14 10:38:14',1,1,'name'),(243,'System Management','de','1','resource','2016-01-14 10:38:54','2016-01-14 10:38:54',1,1,'name'),(244,'Log Management','de','5','resource','2016-01-14 10:39:33','2016-01-14 10:39:33',1,1,'name'),(245,'ログ管理','ja','5','resource','2016-01-14 10:39:52','2016-01-14 10:39:52',1,1,'name'),(246,'Управление Вход','ru','5','resource','2016-01-14 10:40:10','2016-01-14 10:40:10',1,1,'name'),(247,'log Management','fr','5','resource','2016-01-14 10:40:31','2016-01-14 10:40:31',1,1,'name'),(248,'로그 관리','ko','5','resource','2016-01-14 10:40:48','2016-01-14 10:40:48',1,1,'name'),(249,'조회 관리자','ko','9','resource','2016-01-14 10:41:15','2016-01-14 10:41:15',1,1,'name'),(250,'Gestionnaire des requêtes','fr','9','resource','2016-01-14 10:41:29','2016-01-14 10:41:29',1,1,'name'),(251,'Менеджер запросов','ru','9','resource','2016-01-14 10:41:43','2016-01-14 10:41:43',1,1,'name'),(252,'Query Manager','de','9','resource','2016-01-14 10:42:03','2016-01-14 10:42:03',1,1,'name'),(253,'Query管理','ja','9','resource','2016-01-14 10:42:20','2016-01-14 10:42:20',1,1,'name'),(254,'テンプレート開発','ja','13','resource','2016-01-14 10:42:45','2016-01-14 10:42:45',1,1,'name'),(255,'Template Development','de','13','resource','2016-01-14 10:43:02','2016-01-14 10:43:02',1,1,'name'),(256,'Шаблон Разработка','ru','13','resource','2016-01-14 10:43:19','2016-01-14 10:43:19',1,1,'name'),(257,'Template Development','en','13','resource','2016-01-14 10:43:33','2016-01-14 10:43:33',1,1,'name'),(258,'modèle de développement','fr','13','resource','2016-01-14 10:44:03','2016-01-14 10:44:03',1,1,'name'),(259,'템플릿 개발','ko','13','resource','2016-01-14 10:44:22','2016-01-14 10:44:22',1,1,'name'),(260,'계정 관리','ko','2','resource','2016-01-15 09:22:02','2016-01-15 09:22:02',1,1,'name'),(261,'Account Management','de','2','resource','2016-01-15 09:22:21','2016-01-15 09:22:21',1,1,'name'),(262,'управление счетами','ru','2','resource','2016-01-15 09:22:56','2016-01-15 09:22:56',1,1,'name'),(263,'gestion de compte','fr','2','resource','2016-01-15 09:23:17','2016-01-15 09:23:17',1,1,'name'),(264,'アカウント管理','ja','2','resource','2016-01-15 09:23:46','2016-01-15 09:23:46',1,1,'name'),(265,'メニュー管理','ja','3','resource','2016-01-15 09:24:07','2016-01-15 09:24:07',1,1,'name'),(266,'gestion de Menu','fr','3','resource','2016-01-15 09:24:52','2016-01-15 09:24:52',1,1,'name'),(267,'Меню управления','ru','3','resource','2016-01-15 09:25:10','2016-01-15 09:25:10',1,1,'name'),(268,'Menüverwaltung','de','3','resource','2016-01-15 09:25:36','2016-01-15 09:25:36',1,1,'name'),(269,'메뉴 관리','ko','3','resource','2016-01-15 09:25:51','2016-01-15 09:25:51',1,1,'name'),(270,'역할 관리','ko','4','resource','2016-01-15 09:26:20','2016-01-15 09:26:20',1,1,'name'),(271,'Rollenverwaltung','de','4','resource','2016-01-15 09:26:37','2016-01-15 09:26:37',1,1,'name'),(272,'Роль управления','ru','4','resource','2016-01-15 09:26:53','2016-01-15 09:26:53',1,1,'name'),(273,'gestion des rôles','fr','4','resource','2016-01-15 09:27:20','2016-01-15 09:27:20',1,1,'name'),(274,'ロール管理','ja','4','resource','2016-01-15 09:27:37','2016-01-15 09:27:37',1,1,'name'),(275,'辞書管理','ja','12','resource','2016-01-15 09:28:04','2016-01-15 09:28:04',1,1,'name'),(276,'Dictionary management','en','12','resource','2016-01-15 09:28:22','2016-01-15 09:28:22',1,1,'name'),(277,'la gestion Dictionnaire','fr','12','resource','2016-01-15 09:28:39','2016-01-15 09:28:39',1,1,'name'),(278,'Wörterbuch Management','de','12','resource','2016-01-15 09:28:53','2016-01-15 09:28:53',1,1,'name'),(279,'управление словарями','ru','12','resource','2016-01-15 09:29:12','2016-01-15 09:29:12',1,1,'name'),(280,'사전 관리','ko','12','resource','2016-01-15 09:29:28','2016-01-15 09:29:28',1,1,'name'),(281,'웹 사이트 사진','ko','14','resource','2016-01-15 09:30:00','2016-01-15 09:30:00',1,1,'name'),(282,'Сайт Картинки','ru','14','resource','2016-01-15 09:30:15','2016-01-15 09:30:15',1,1,'name'),(283,'Website Bilder','de','14','resource','2016-01-15 09:30:29','2016-01-15 09:30:29',1,1,'name'),(284,'Site Web Photos','fr','14','resource','2016-01-15 09:30:44','2016-01-15 09:30:44',1,1,'name'),(285,'ウェブサイトの写真','ja','14','resource','2016-01-15 09:31:08','2016-01-15 09:31:08',1,1,'name'),(286,'Website Pictures','en','14','resource','2016-01-15 09:31:26','2016-01-15 09:31:26',1,1,'name'),(287,'ログクエリ','ja','6','resource','2016-01-15 09:31:54','2016-01-15 09:31:54',1,1,'name'),(288,'requête de journal','fr','6','resource','2016-01-15 09:32:09','2016-01-15 09:32:09',1,1,'name'),(289,'Войти Запрос','ru','6','resource','2016-01-15 09:32:28','2016-01-15 09:32:28',1,1,'name'),(290,'로그 조회','ko','6','resource','2016-01-15 09:32:47','2016-01-15 09:32:47',1,1,'name'),(291,'Protokollabfrage','de','6','resource','2016-01-15 09:33:12','2016-01-15 09:33:12',1,1,'name'),(292,'Menü -Anfrage','de','10','resource','2016-01-15 09:33:36','2016-01-15 09:33:36',1,1,'name'),(293,'메뉴 문의','ko','10','resource','2016-01-15 09:33:51','2016-01-15 09:33:51',1,1,'name'),(294,'запрос Меню','ru','10','resource','2016-01-15 09:34:04','2016-01-15 09:34:04',1,1,'name'),(295,'enquête de Menu','fr','10','resource','2016-01-15 09:34:27','2016-01-15 09:34:27',1,1,'name'),(296,'メニューお問い合わせ','ja','10','resource','2016-01-15 09:34:48','2016-01-15 09:34:48',1,1,'name'),(297,'ロール問い合わせ','ja','11','resource','2016-01-15 09:35:08','2016-01-15 09:35:08',1,1,'name'),(298,'enquête de Rôle','fr','11','resource','2016-01-15 09:35:25','2016-01-15 09:35:25',1,1,'name'),(299,'Роль запрос','ru','11','resource','2016-01-15 09:35:40','2016-01-15 09:35:40',1,1,'name'),(300,'Role -Anfrage','de','11','resource','2016-01-15 09:35:59','2016-01-15 09:35:59',1,1,'name'),(301,'역할 에 문의','ko','11','resource','2016-01-15 09:36:26','2016-01-15 09:36:26',1,1,'name'),(302,'Супер Администратор','ru','1','role','2016-01-18 18:48:08','2016-01-18 18:48:08',1,1,'name'),(303,'최고 관리자','ko','1','role','2016-01-18 18:48:34','2016-01-18 18:48:34',1,1,'name'),(304,'スーパー管理者','ja','1','role','2016-01-18 18:48:52','2016-01-18 18:48:52',1,1,'name'),(305,'Super Administrator','de','1','role','2016-01-18 18:49:11','2016-01-18 18:49:11',1,1,'name'),(306,'super administrateur','fr','1','role','2016-01-18 18:49:34','2016-01-18 18:49:34',1,1,'name'),(307,'l\'administrateur général','fr','2','role','2016-01-18 18:50:13','2016-01-18 18:50:13',1,1,'name'),(308,'Allgemeine Administrator','de','2','role','2016-01-18 18:50:32','2016-01-18 18:50:32',1,1,'name'),(309,'一般的な管理者','ja','2','role','2016-01-18 18:50:46','2016-01-18 18:50:46',1,1,'name'),(310,'главный управляющий','ru','2','role','2016-01-18 18:51:07','2016-01-18 18:51:07',1,1,'name'),(311,'일반 관리자','ko','2','role','2016-01-18 18:51:26','2016-01-18 18:51:26',1,1,'name'),(312,'일반 계정','ko','3','role','2016-01-18 18:51:44','2016-01-18 18:51:44',1,1,'name'),(313,'Обыкновенные аккаунт','ru','3','role','2016-01-18 18:51:58','2016-01-18 18:51:58',1,1,'name'),(314,'普通預金','ja','3','role','2016-01-18 18:52:12','2016-01-18 18:52:12',1,1,'name'),(315,'compte ordinaire','fr','3','role','2016-01-18 18:52:25','2016-01-18 18:52:25',1,1,'name'),(316,'Ordinary Konto','de','3','role','2016-01-18 18:52:38','2016-01-18 18:52:38',1,1,'name'),(317,'植物','zh','3','picture','2016-03-11 10:44:22','2016-03-11 10:44:22',NULL,NULL,'name'),(318,'植物','zh','3','picture','2016-03-11 10:44:22','2016-03-11 10:44:22',NULL,NULL,'comment'),(319,'HadoopSparkDemo','zh','15','resource','2016-05-19 12:49:13','2016-05-19 12:52:55',1,1,'name'),(321,'英语','zh','','','2016-08-17 09:49:02','2016-08-17 09:49:02',2,2,'undefined'),(322,'werw','zh','','','2016-08-17 09:51:34','2016-08-17 09:51:34',2,2,'undefined'),(323,'te','en','','','2016-08-17 10:08:09','2016-08-17 10:08:09',2,2,'undefined'),(324,'流程配置','zh','16','resource','2016-09-26 12:27:03','2016-10-05 13:22:19',2,2,'name'),(328,'环节1','zh','1','wf_processnode','2016-09-29 20:34:21','2016-10-01 09:06:38',2,2,'name'),(329,'环节2','zh','2','wf_processnode','2016-09-29 21:10:19','2016-10-01 09:06:44',2,2,'name'),(331,'环节3','zh','4','wf_processnode','2016-09-29 21:13:44','2016-10-01 09:06:51',2,2,'name'),(332,'环节4','zh','5','wf_processnode','2016-09-29 21:14:14','2016-10-01 09:06:57',2,2,'name'),(333,'环节5','zh','6','wf_processnode','2016-09-29 21:14:28','2016-10-01 09:11:54',2,2,'name'),(338,'请假环节','zh','7','wf_processnode','2016-10-01 09:12:12','2016-10-01 09:12:12',2,2,'name'),(343,'审核角色','zh','4','role','2016-10-01 12:38:16','2016-10-01 12:38:16',2,2,'name'),(344,'未发起','zh','20','dictionary','2016-10-01 13:02:52','2016-10-05 15:24:28',2,2,'name'),(345,'发起','zh','21','dictionary','2016-10-01 13:07:18','2017-04-07 09:13:30',2,2,'name'),(346,'部门管理','zh','17','resource','2016-10-04 19:34:06','2016-10-04 19:34:06',2,2,'name'),(347,'人力资源部','zh','1','department','2016-10-04 20:30:42','2016-10-04 20:54:56',2,2,'name'),(348,'软件部','zh','2','department','2016-10-04 20:53:53','2016-10-04 20:53:53',2,2,'name'),(349,'请假流程','zh','18','resource','2016-10-05 13:29:25','2016-10-05 13:29:25',2,2,'name'),(354,'通过','zh','22','dictionary','2016-10-07 20:23:33','2016-10-07 20:23:33',2,2,'name'),(355,'不通过','zh','23','dictionary','2016-10-07 20:23:50','2016-10-07 20:23:50',2,2,'name'),(356,'DepartManagement','en','17','resource','2016-10-13 16:00:20','2016-10-13 16:00:20',2,2,'name'),(357,'WorkFlowConfig','en','16','resource','2016-10-13 16:00:49','2016-10-13 16:00:49',2,2,'name'),(358,'LeaveProcess','en','18','resource','2016-10-13 16:01:06','2016-10-13 16:01:06',2,2,'name'),(381,'请假流程','zh','108_1','wf_processdefinition','2016-10-19 20:19:38','2016-10-19 20:19:38',2,2,'name'),(387,'复杂流程','zh','108_2','wf_processdefinition','2016-10-19 21:15:58','2016-10-19 21:15:58',2,2,'name'),(393,'请假环节','zh','108_1_7','wf_processdefinition','2016-10-20 20:02:43','2016-10-20 20:04:56',2,2,'name'),(394,'环节1','zh','108_2_1','wf_processdefinition','2016-10-20 20:03:22','2016-10-20 20:03:22',2,2,'name'),(395,'环节2','zh','108_2_2','wf_processdefinition','2016-10-20 20:03:22','2016-10-20 20:03:22',2,2,'name'),(396,'环节3','zh','108_2_4','wf_processdefinition','2016-10-20 20:03:22','2016-10-20 20:03:22',2,2,'name'),(429,'环节5','zh','108_1_6','wf_processdefinition','2016-10-28 14:19:58','2016-10-28 14:19:58',2,2,'name'),(450,'人力资源部','zh','108_1_7_1','wf_processdefinition','2016-10-29 08:26:32','2016-10-29 08:26:32',2,2,'name'),(452,'软件部','zh','108_1_6_2','wf_processdefinition','2016-10-29 08:28:40','2016-10-29 08:28:40',2,2,'name'),(453,'人力资源部','zh','j6_11_1','wf_processdefinition','2016-10-29 08:28:40','2016-10-29 08:28:40',2,2,'name'),(454,'人力资源部','zh','108_1_6_2_1','wf_processdefinition','2016-10-29 08:29:11','2016-10-29 08:29:11',2,2,'name'),(455,'财务部','zh','3','department','2016-10-29 08:49:27','2016-10-29 08:49:27',2,2,'name'),(456,'商务部','zh','4','department','2016-10-29 08:49:59','2016-10-29 08:49:59',2,2,'name'),(457,'财务部','zh','108_1_7_1_3','wf_processdefinition','2016-10-29 08:50:46','2016-10-29 08:50:46',2,2,'name'),(458,'商务部','zh','108_1_7_1_4','wf_processdefinition','2016-10-29 08:50:46','2016-10-29 08:50:46',2,2,'name'),(459,'人力资源部','zh','108_1_7_1_3_1','wf_processdefinition','2016-10-29 08:51:09','2016-10-29 08:51:09',2,2,'name'),(460,'人力资源部','zh','108_1_7_1_4_1','wf_processdefinition','2016-10-29 08:51:09','2016-10-29 08:51:09',2,2,'name'),(461,'请假1','zh','39','wf_leaveprocess','2016-10-29 08:53:13','2016-10-29 08:53:13',2,2,'name'),(462,'test','zh','39','wf_leaveprocess','2016-10-29 08:53:13','2016-10-29 08:53:13',2,2,'desc'),(463,'WebSocket测试','zh','19','resource','2016-11-23 08:20:53','2016-11-23 08:20:53',2,2,'name'),(464,'chart测试','zh','20','resource','2016-12-27 19:20:08','2016-12-27 19:20:08',2,2,'name'),(465,'结构图测试','zh','21','resource','2016-12-28 13:01:08','2016-12-28 13:07:29',2,2,'name'),(466,'流程状态','zh','WORKFLOWSTATUS','dictionary',NULL,NULL,NULL,NULL,'name'),(467,'流程审核','zh','WORKFLOWPASS','dictionary',NULL,NULL,NULL,NULL,'name'),(468,'第三方帐号','zh','ACCOUNTTHIRDPATH','dictionary',NULL,NULL,NULL,NULL,'name'),(469,'QQ','zh','24','dictionary','2017-04-07 09:46:19','2017-04-14 15:47:12',2,2,'name'),(470,'微信','zh','25','dictionary','2017-04-07 09:46:58','2017-04-14 16:17:42',2,2,'name'),(471,'undefined','undefined','','','2017-04-07 19:42:50','2017-04-07 19:42:50',2,2,'undefined'),(472,'支付宝','zh','26','dictionary','2017-04-14 07:35:07','2017-04-14 16:17:35',2,2,'name'),(473,'zhifubao','en','26','dictionary','2017-04-14 17:00:36','2017-04-14 17:01:51',2,2,'name'),(474,'weixin','en','25','dictionary','2017-04-14 17:00:53','2017-04-14 17:00:53',2,2,'name'),(475,'QQ','en','24','dictionary','2017-04-14 17:01:01','2017-04-14 17:01:01',2,2,'name'),(476,'AI集成测试','zh','22','resource','2017-05-02 14:59:49','2017-05-02 14:59:49',2,2,'name'),(477,'AIIntegratedTest','en','22','resource','2017-05-02 15:00:49','2017-05-02 15:00:49',2,2,'name');
/*!40000 ALTER TABLE `globalization` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `operator_log`
--

LOCK TABLES `operator_log` WRITE;
/*!40000 ALTER TABLE `operator_log` DISABLE KEYS */;
INSERT INTO `operator_log` VALUES (15,1,'127.0.0.1','2015-12-02 15:49:46','A000A000','common_edit'),(16,1,'127.0.0.1','2015-12-02 15:57:46','A000A001','common_add'),(17,1,'127.0.0.1','2015-12-02 15:57:55','A000A002','role_save_role_resource'),(18,1,'127.0.0.1','2015-12-02 16:08:51','A000A001','common_edit'),(19,1,'127.0.0.1','2015-12-02 16:12:15','A000A001','common_edit'),(20,1,'127.0.0.1','2015-12-02 16:12:39','A000A001','common_edit'),(21,1,'127.0.0.1','2015-12-02 16:12:59','A000A001','common_edit'),(22,1,'127.0.0.1','2015-12-02 16:17:12','A000A001','common_edit'),(23,1,'127.0.0.1','2015-12-02 16:18:18','A000A001','common_edit'),(24,1,'127.0.0.1','2015-12-02 16:19:05','A000A001','common_edit'),(25,1,'127.0.0.1','2015-12-02 16:19:52','A000A001','common_add'),(26,1,'127.0.0.1','2015-12-02 16:20:02','A000A002','role_save_role_resource'),(27,1,'127.0.0.1','2015-12-02 16:23:37','A000A001','common_add'),(28,1,'127.0.0.1','2015-12-02 16:24:42','A000A001','common_add'),(29,1,'127.0.0.1','2015-12-02 16:26:23','A000A001','common_add'),(30,1,'127.0.0.1','2015-12-02 16:26:29','A000A001','common_del'),(31,1,'127.0.0.1','2015-12-02 16:26:34','A000A001','common_del'),(32,1,'127.0.0.1','2015-12-02 16:26:43','A000A002','role_save_role_resource'),(33,1,'127.0.0.1','2015-12-03 14:09:20','A000A001','common_edit'),(34,1,'127.0.0.1','2015-12-03 14:19:52','A000A001','common_edit'),(35,1,'127.0.0.1','2015-12-03 14:20:30','A000A001','common_edit'),(36,1,'127.0.0.1','2015-12-03 14:21:04','A000A001','common_edit'),(37,1,'127.0.0.1','2015-12-03 14:21:11','A000A001','common_edit'),(38,1,'127.0.0.1','2015-12-20 11:40:51','A000A001','common_edit');
/*!40000 ALTER TABLE `operator_log` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `operator_log_detail`
--

LOCK TABLES `operator_log_detail` WRITE;
/*!40000 ALTER TABLE `operator_log_detail` DISABLE KEYS */;
INSERT INTO `operator_log_detail` VALUES (129,15,'user_name','admin',''),(130,15,'user_pwd','d41d8cd98f00b204e9800998ecf8427e',''),(131,15,'user_type','1','ACCOUNTTYPE'),(132,15,'user_logintype','1','LOGINTYPE'),(133,15,'common_active','1','ACTIVETYPE'),(134,15,'common_id','1',''),(135,16,'menu_name_zh','公共日志查询',''),(136,16,'menu_name_en','CommonLogQuery',''),(137,16,'menu_url','/privilege/comquery/query',''),(138,16,'menu_pId','5','RESOURCEPID'),(139,16,'menu_type','0','RESOURCETYPE'),(140,16,'menu_sort','2',''),(141,16,'menu_code','A001A002',''),(142,16,'menu_urltype','0','RESOURCEURLTYPE'),(143,16,'common_active','1','ACTIVETYPE'),(144,16,'common_id','7',''),(145,17,'role_name','1','ROLE'),(146,17,'menu_name','-1','RESOURCEPID'),(147,17,'role_name','1','ROLE'),(148,17,'menu_name','5','RESOURCEPID'),(149,17,'role_name','1','ROLE'),(150,17,'menu_name','6','RESOURCEPID'),(151,17,'role_name','1','ROLE'),(152,17,'menu_name','1','RESOURCEPID'),(153,17,'role_name','1','ROLE'),(154,17,'menu_name','2','RESOURCEPID'),(155,17,'role_name','1','ROLE'),(156,17,'menu_name','3','RESOURCEPID'),(157,17,'role_name','1','ROLE'),(158,17,'menu_name','4','RESOURCEPID'),(159,17,'role_name','1','ROLE'),(160,17,'menu_name','7','RESOURCEPID'),(161,18,'menu_name_zh','公共日志查询',''),(162,18,'menu_name_en','CommonLogQuery',''),(163,18,'menu_url','/privilege/comquery/query?fileName=privilege&configMethod=getConfigMenu',''),(164,18,'menu_pId','5','RESOURCEPID'),(165,18,'menu_type','0','RESOURCETYPE'),(166,18,'menu_sort','2',''),(167,18,'menu_code','A001A002',''),(168,18,'menu_urltype','0','RESOURCEURLTYPE'),(169,18,'common_active','1','ACTIVETYPE'),(170,18,'common_id','7',''),(171,19,'menu_name_zh','公共日志查询',''),(172,19,'menu_name_en','CommonLogQuery',''),(173,19,'menu_url','/privilege/comquery/query/fileName=privilege',''),(174,19,'menu_pId','5','RESOURCEPID'),(175,19,'menu_type','0','RESOURCETYPE'),(176,19,'menu_sort','2',''),(177,19,'menu_code','A001A002',''),(178,19,'menu_urltype','0','RESOURCEURLTYPE'),(179,19,'common_active','1','ACTIVETYPE'),(180,19,'common_id','7',''),(181,20,'menu_name_zh','公共日志查询',''),(182,20,'menu_name_en','CommonLogQuery',''),(183,20,'menu_url','/privilege/comquery/query?fileName=privilege',''),(184,20,'menu_pId','5','RESOURCEPID'),(185,20,'menu_type','0','RESOURCETYPE'),(186,20,'menu_sort','2',''),(187,20,'menu_code','A001A002',''),(188,20,'menu_urltype','0','RESOURCEURLTYPE'),(189,20,'common_active','1','ACTIVETYPE'),(190,20,'common_id','7',''),(191,21,'menu_name_zh','公共日志查询',''),(192,21,'menu_name_en','CommonLogQuery',''),(193,21,'menu_url','/privilege/comquery/query',''),(194,21,'menu_pId','5','RESOURCEPID'),(195,21,'menu_type','0','RESOURCETYPE'),(196,21,'menu_sort','2',''),(197,21,'menu_code','A001A002',''),(198,21,'menu_urltype','0','RESOURCEURLTYPE'),(199,21,'common_active','1','ACTIVETYPE'),(200,21,'common_id','7',''),(201,22,'menu_name_zh','公共日志查询',''),(202,22,'menu_name_en','CommonLogQuery',''),(203,22,'menu_url','/privilege/comquery/query&fileName=privilege',''),(204,22,'menu_pId','5','RESOURCEPID'),(205,22,'menu_type','0','RESOURCETYPE'),(206,22,'menu_sort','2',''),(207,22,'menu_code','A001A002',''),(208,22,'menu_urltype','0','RESOURCEURLTYPE'),(209,22,'common_active','1','ACTIVETYPE'),(210,22,'common_id','7',''),(211,23,'menu_name_zh','公共日志查询',''),(212,23,'menu_name_en','CommonLogQuery',''),(213,23,'menu_url','/privilege/comquery/query&fileName=privilege&configMethod=getConfigMenu',''),(214,23,'menu_pId','5','RESOURCEPID'),(215,23,'menu_type','0','RESOURCETYPE'),(216,23,'menu_sort','2',''),(217,23,'menu_code','A001A002',''),(218,23,'menu_urltype','0','RESOURCEURLTYPE'),(219,23,'common_active','1','ACTIVETYPE'),(220,23,'common_id','7',''),(221,24,'menu_name_zh','菜单日志查询',''),(222,24,'menu_name_en','MenuLogQuery',''),(223,24,'menu_url','/privilege/comquery/query&fileName=privilege&configMethod=getConfigMenu',''),(224,24,'menu_pId','5','RESOURCEPID'),(225,24,'menu_type','0','RESOURCETYPE'),(226,24,'menu_sort','2',''),(227,24,'menu_code','A001A002',''),(228,24,'menu_urltype','0','RESOURCEURLTYPE'),(229,24,'common_active','1','ACTIVETYPE'),(230,24,'common_id','7',''),(231,25,'menu_name_zh','角色日志查询',''),(232,25,'menu_name_en','RoleLogQuery',''),(233,25,'menu_url','/privilege/comquery/query&fileName=privilege&configMethod=getConfigRole',''),(234,25,'menu_pId','5','RESOURCEPID'),(235,25,'menu_type','0','RESOURCETYPE'),(236,25,'menu_sort','3',''),(237,25,'menu_code','A001A003',''),(238,25,'menu_urltype','0','RESOURCEURLTYPE'),(239,25,'common_active','1','ACTIVETYPE'),(240,25,'common_id','8',''),(241,26,'role_name','1','ROLE'),(242,26,'menu_name','-1','RESOURCEPID'),(243,26,'role_name','1','ROLE'),(244,26,'menu_name','5','RESOURCEPID'),(245,26,'role_name','1','ROLE'),(246,26,'menu_name','6','RESOURCEPID'),(247,26,'role_name','1','ROLE'),(248,26,'menu_name','7','RESOURCEPID'),(249,26,'role_name','1','ROLE'),(250,26,'menu_name','1','RESOURCEPID'),(251,26,'role_name','1','ROLE'),(252,26,'menu_name','2','RESOURCEPID'),(253,26,'role_name','1','ROLE'),(254,26,'menu_name','3','RESOURCEPID'),(255,26,'role_name','1','ROLE'),(256,26,'menu_name','4','RESOURCEPID'),(257,26,'role_name','1','ROLE'),(258,26,'menu_name','8','RESOURCEPID'),(259,27,'menu_name_zh','查询管理',''),(260,27,'menu_name_en','QueryManager',''),(261,27,'menu_url','',''),(262,27,'menu_pId','-1','RESOURCEPID'),(263,27,'menu_type','0','RESOURCETYPE'),(264,27,'menu_sort','3',''),(265,27,'menu_code','A002A002',''),(266,27,'menu_urltype','0','RESOURCEURLTYPE'),(267,27,'common_active','1','ACTIVETYPE'),(268,27,'common_id','9',''),(269,28,'menu_name_zh','菜单查询',''),(270,28,'menu_name_en','MenuQuery',''),(271,28,'menu_url','/privilege/comquery/query&fileName=privilege&configMethod=getConfigMenu',''),(272,28,'menu_pId','9','RESOURCEPID'),(273,28,'menu_type','0','RESOURCETYPE'),(274,28,'menu_sort','1',''),(275,28,'menu_code','A002A001',''),(276,28,'menu_urltype','0','RESOURCEURLTYPE'),(277,28,'common_active','1','ACTIVETYPE'),(278,28,'common_id','10',''),(279,29,'menu_name_zh','角色查询',''),(280,29,'menu_name_en','RoleQuery',''),(281,29,'menu_url','/privilege/comquery/query&fileName=privilege&configMethod=getConfigRole',''),(282,29,'menu_pId','9','RESOURCEPID'),(283,29,'menu_type','0','RESOURCETYPE'),(284,29,'menu_sort','2',''),(285,29,'menu_code','A002A002',''),(286,29,'menu_urltype','0','RESOURCEURLTYPE'),(287,29,'common_active','1','ACTIVETYPE'),(288,29,'common_id','11',''),(289,30,'common_id','7',''),(290,31,'common_id','8',''),(291,32,'role_name','1','ROLE'),(292,32,'menu_name','-1','RESOURCEPID'),(293,32,'role_name','1','ROLE'),(294,32,'menu_name','5','RESOURCEPID'),(295,32,'role_name','1','ROLE'),(296,32,'menu_name','6','RESOURCEPID'),(297,32,'role_name','1','ROLE'),(298,32,'menu_name','1','RESOURCEPID'),(299,32,'role_name','1','ROLE'),(300,32,'menu_name','2','RESOURCEPID'),(301,32,'role_name','1','ROLE'),(302,32,'menu_name','3','RESOURCEPID'),(303,32,'role_name','1','ROLE'),(304,32,'menu_name','4','RESOURCEPID'),(305,32,'role_name','1','ROLE'),(306,32,'menu_name','9','RESOURCEPID'),(307,32,'role_name','1','ROLE'),(308,32,'menu_name','10','RESOURCEPID'),(309,32,'role_name','1','ROLE'),(310,32,'menu_name','11','RESOURCEPID'),(311,33,'menu_name_zh','菜单管理',''),(312,33,'menu_name_en','MenuManager',''),(313,33,'menu_url','/privilege/menu/menu',''),(314,33,'menu_pId','1','RESOURCEPID'),(315,33,'menu_type','0','RESOURCETYPE'),(316,33,'menu_sort','2',''),(317,33,'menu_code','A000A001',''),(318,33,'menu_urltype','0','RESOURCEURLTYPE'),(319,33,'common_active','1','ACTIVETYPE'),(320,33,'common_id','3',''),(321,34,'menu_name_zh','组织管理',''),(322,34,'menu_name_en','OrgManager',''),(323,34,'menu_url',' ',''),(324,34,'menu_pId','-1','RESOURCEPID'),(325,34,'menu_type','-1','RESOURCETYPE'),(326,34,'menu_sort','1',''),(327,34,'menu_code','A000',''),(328,34,'menu_urltype','0','RESOURCEURLTYPE'),(329,34,'common_active','1','ACTIVETYPE'),(330,34,'common_id','1',''),(331,35,'menu_name_zh','日志管理',''),(332,35,'menu_name_en','LogManager',''),(333,35,'menu_url',' ',''),(334,35,'menu_pId','-1','RESOURCEPID'),(335,35,'menu_type','0','RESOURCETYPE'),(336,35,'menu_sort','2',''),(337,35,'menu_code','A001',''),(338,35,'menu_urltype','0','RESOURCEURLTYPE'),(339,35,'common_active','1','ACTIVETYPE'),(340,35,'common_id','5',''),(341,36,'menu_name_zh','日志管理',''),(342,36,'menu_name_en','LogManager',''),(343,36,'menu_url',' ',''),(344,36,'menu_pId','-1','RESOURCEPID'),(345,36,'menu_type','-1','RESOURCETYPE'),(346,36,'menu_sort','2',''),(347,36,'menu_code','A001',''),(348,36,'menu_urltype','0','RESOURCEURLTYPE'),(349,36,'common_active','1','ACTIVETYPE'),(350,36,'common_id','5',''),(351,37,'menu_name_zh','查询管理',''),(352,37,'menu_name_en','QueryManager',''),(353,37,'menu_url',' ',''),(354,37,'menu_pId','-1','RESOURCEPID'),(355,37,'menu_type','-1','RESOURCETYPE'),(356,37,'menu_sort','3',''),(357,37,'menu_code','A002',''),(358,37,'menu_urltype','0','RESOURCEURLTYPE'),(359,37,'common_active','1','ACTIVETYPE'),(360,37,'common_id','9',''),(361,38,'menu_name_zh','用户管理',''),(362,38,'menu_name_en','accountManager',''),(363,38,'menu_url','/privilege/account/account',''),(364,38,'menu_pId','1','RESOURCEPID'),(365,38,'menu_type','0','RESOURCETYPE'),(366,38,'menu_sort','1',''),(367,38,'menu_code','A000A000',''),(368,38,'menu_urltype','0','RESOURCEURLTYPE'),(369,38,'common_active','1','ACTIVETYPE'),(370,38,'common_id','2','');
/*!40000 ALTER TABLE `operator_log_detail` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (2,1,2,'1',1,'2016-01-02 20:46:42',1,'2016-03-11 10:40:26'),(3,1,1,'1',1,'2016-03-11 10:44:22',NULL,NULL);
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `picture_path`
--

LOCK TABLES `picture_path` WRITE;
/*!40000 ALTER TABLE `picture_path` DISABLE KEYS */;
INSERT INTO `picture_path` VALUES (32,'YWRtaW5fMjAxNjAzMTExMDMzMzU=.jpg',2,'jpg','cat','cat.jpg',1,1,NULL,'2016-03-11 10:33:35','2016-03-11 10:40:17'),(33,'YWRtaW5fMjAxNjAzMTExMDMzNDk=.jpg',2,'jpg','dog','dog.jpg',1,1,NULL,'2016-03-11 10:33:49','2016-03-11 10:40:21'),(35,'YWRtaW5fMjAxNjAzMTExMDQ0Mzk=.jpg',3,'jpg','hill','hill.jpg',1,1,NULL,'2016-03-11 10:44:39','2016-03-11 10:44:50'),(36,'YWRtaW5fMjAxNjAzMTExMDQ0NDg=.jpg',3,'jpg','city','city.jpg',0,1,NULL,'2016-03-11 10:44:48',NULL),(37,'YWRtaW5fMjAxNjAzMTExMDQ5MTY=.jpg',2,'jpg','rabbit','rabbit.jpg',0,1,NULL,'2016-03-11 10:49:16',NULL);
/*!40000 ALTER TABLE `picture_path` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,NULL,NULL,'systemmng',-1,-1,1,'A000',0,1,1,2,'2016-01-14 10:51:25','2016-08-12 15:50:28'),(2,NULL,NULL,'p/minn/privilege/account/AccountMngPanel',1,0,1,'A000A000',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(3,'MenuManager','菜单管理','p/minn/privilege/menu/MenuMngPanel',1,0,2,'A000A001',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(4,NULL,NULL,'p/minn/privilege/role/RoleMngPanel',1,0,3,'A000A002',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(5,NULL,NULL,'logmng',-1,-1,2,'A001',0,1,1,2,'2016-01-14 10:51:25','2016-08-12 15:50:37'),(6,NULL,NULL,'p/minn/privilege/log/LogMonitorMngPanel',5,0,2,'A001A001',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(9,NULL,NULL,'querymng',-1,-1,3,'A002',0,1,1,2,'2016-01-14 10:51:25','2016-08-12 15:50:45'),(10,NULL,NULL,'p/minn/privilege/query/QueryMngPanel?fileName=privilege&configMethod=getConfigMenu',9,0,1,'A002A001',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(11,NULL,NULL,'p/minn/privilege/query/QueryMngPanel?fileName=privilege&configMethod=getConfigRole',9,0,2,'A002A002',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(12,NULL,NULL,'p/minn/privilege/dictionary/DicMngPanel',1,0,4,'A000A003',0,1,1,NULL,'2016-01-14 10:51:25',NULL),(13,NULL,NULL,'devmng',-1,-1,4,'A003',0,1,1,2,'2016-01-14 10:51:25','2016-08-12 15:50:53'),(14,NULL,NULL,'p/minn/demo/picture/PictureMngPanel',13,0,1,'A003A000',0,1,1,1,'2016-01-14 10:51:25','2016-01-09 09:40:56'),(15,NULL,NULL,'p/minn/demo/hadoopspark/HadoopSparkMngPanel',13,0,2,'A003A001',0,1,1,1,'2016-05-19 12:49:13','2016-05-19 12:52:55'),(16,NULL,NULL,'p/minn/workflow/workflowconfig/WorkFlowConfigMngPanel',13,0,1,'A003A003',0,1,2,2,'2016-09-26 12:27:03','2016-10-05 13:22:19'),(17,NULL,NULL,'p/minn/privilege/department/DepartmentMngPanel',1,0,5,'A000A005',0,1,2,NULL,'2016-10-04 19:34:06',NULL),(18,NULL,NULL,'p/minn/workflow/leaveprocess/LeaveProcessMngPanel',13,0,1,'A003A004',0,1,2,NULL,'2016-10-05 13:29:25',NULL),(19,NULL,NULL,'p/minn/socket/SocketMngPanel',13,0,5,'A003A005',0,1,2,NULL,'2016-11-23 08:20:53',NULL),(20,NULL,NULL,'p/minn/chart/ChartMngPanel',13,0,6,'A003A006',0,1,2,NULL,'2016-12-27 19:20:08',NULL),(21,NULL,NULL,'p/minn/orgChart/OrgChartMngPanel',13,0,7,'A003A007',0,1,2,2,'2016-12-28 13:01:08','2016-12-28 13:07:29'),(22,NULL,NULL,'p/minn/ai/AiMngPanel',13,0,8,'A003A008',0,1,2,NULL,'2017-05-02 14:59:49',NULL);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'SuperManger','超级管理员','ROLE_SUPERADMIN',1,'r234',-1,1,NULL,'2016-01-14 10:49:20',NULL),(2,'NormalManager','普通管理员','ROLE_NORMALADMIN',1,'',2,1,NULL,'2016-01-14 10:49:20',NULL),(3,'NormalAccount','普通账号','ROLE_NORMALUSER',1,'',3,1,NULL,'2016-01-14 10:49:20',NULL),(4,NULL,NULL,'ROLE_AUDIT',1,'流程审核',4,2,NULL,'2016-10-01 12:38:16',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `role_resource`
--

LOCK TABLES `role_resource` WRITE;
/*!40000 ALTER TABLE `role_resource` DISABLE KEYS */;
INSERT INTO `role_resource` VALUES (1,-1),(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(2,-1),(2,1),(2,2),(2,3),(2,4),(2,5),(2,9),(2,12),(2,13),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(3,-1),(3,1),(3,2),(3,3);
/*!40000 ALTER TABLE `role_resource` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_audit`
--

LOCK TABLES `wf_audit` WRITE;
/*!40000 ALTER TABLE `wf_audit` DISABLE KEYS */;
INSERT INTO `wf_audit` VALUES (139,'108_1_7_1_3_1','108_1_7_1_3',NULL,39,'108_1_7_1_3_1',194,NULL,2,NULL),(140,'108_1_7_1_4_1','108_1_7_1_4',NULL,39,'108_1_7_1_4_1',194,NULL,2,NULL),(141,'108_1_7_1_3','108_1_7_1',NULL,39,'108_1_7_1_3',195,NULL,2,NULL),(142,'108_1_7_1_4','108_1_7_1',NULL,39,'108_1_7_1_4',196,NULL,2,NULL),(143,'108_1_7_1','108_1_7',NULL,39,'108_1_7_1',197,NULL,27,NULL),(153,'108_1_6_2_1','108_1_6_2',NULL,39,'108_1_6_2_1',207,2,2,NULL),(156,'108_1_7_1','108_1_7',NULL,39,'108_1_7_1',210,NULL,2,NULL),(170,'108_1_7_1_3','108_1_7_1',NULL,39,'108_1_7_1_3',224,NULL,2,NULL),(171,'108_1_7_1_4','108_1_7_1',NULL,39,'108_1_7_1_4',225,NULL,2,NULL),(172,'108_1_7_1','108_1_7',NULL,39,'108_1_7_1',226,NULL,27,NULL),(173,'108_1_6_2_1','108_1_6_2',NULL,39,'108_1_6_2_1',227,NULL,2,NULL),(174,'108_1_6_2','108_1_6',NULL,39,'108_1_6_2',228,NULL,2,NULL);
/*!40000 ALTER TABLE `wf_audit` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_audit_status`
--

LOCK TABLES `wf_audit_status` WRITE;
/*!40000 ALTER TABLE `wf_audit_status` DISABLE KEYS */;
INSERT INTO `wf_audit_status` VALUES (194,2,'2016-10-31 15:02:20',39,'108_1_7',1,1,1,3,1,'test',NULL,0),(195,26,'2016-10-31 15:02:34',39,'108_1_7_1_3',1,1,2,2,3,'test',NULL,0),(196,27,'2016-10-31 15:02:45',39,'108_1_7_1_4',1,1,2,2,4,'test',NULL,0),(197,2,'2016-10-31 16:01:23',39,'108_1_7_1',1,1,3,2,1,'test',NULL,0),(207,2,'2016-10-31 16:14:23',39,'108_1_6',1,0,1,1,1,'test',NULL,0),(210,2,'2016-10-31 19:22:55',39,'108_1_7_1',1,0,4,2,1,'est',NULL,0),(224,26,'2016-10-31 19:23:37',39,'108_1_7_1_3',1,1,5,3,3,'est',NULL,0),(225,27,'2016-10-31 19:23:58',39,'108_1_7_1_4',1,1,5,3,4,'est',NULL,0),(226,2,'2016-10-31 19:24:14',39,'108_1_7_1',1,1,6,3,1,'est',NULL,0),(227,2,'2016-10-31 19:24:38',39,'108_1_6',1,1,1,3,1,'est',NULL,0),(228,25,'2016-10-31 19:24:52',39,'108_1_6_2',1,1,2,3,2,'est',NULL,0);
/*!40000 ALTER TABLE `wf_audit_status` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_baseinfo`
--

LOCK TABLES `wf_baseinfo` WRITE;
/*!40000 ALTER TABLE `wf_baseinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `wf_baseinfo` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_leaveprocess`
--

LOCK TABLES `wf_leaveprocess` WRITE;
/*!40000 ALTER TABLE `wf_leaveprocess` DISABLE KEYS */;
INSERT INTO `wf_leaveprocess` VALUES (39,'108_1',2,2,'2016-10-29 08:53:13','2016-10-31 15:02:17',1,'2016-04-03 00:00:00','2016-05-05 00:00:00',1,2);
/*!40000 ALTER TABLE `wf_leaveprocess` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_nodefile`
--

LOCK TABLES `wf_nodefile` WRITE;
/*!40000 ALTER TABLE `wf_nodefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `wf_nodefile` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_nodefile_accept`
--

LOCK TABLES `wf_nodefile_accept` WRITE;
/*!40000 ALTER TABLE `wf_nodefile_accept` DISABLE KEYS */;
/*!40000 ALTER TABLE `wf_nodefile_accept` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_processdefinition`
--

LOCK TABLES `wf_processdefinition` WRITE;
/*!40000 ALTER TABLE `wf_processdefinition` DISABLE KEYS */;
INSERT INTO `wf_processdefinition` VALUES ('108_1','108',-2,1,'A001',1,2,2,'2016-10-19 20:19:38','2016-10-29 08:51:08'),('108_2','108',-2,1,'P002',2,2,2,'2016-10-19 21:15:58','2016-10-29 08:51:08'),('108_1_7','108_1',7,1,'N006',1,2,2,'2016-10-20 20:02:43','2016-10-29 08:51:08'),('108_2_1','108_2',1,1,'N001',1,2,2,'2016-10-20 20:03:22','2016-10-29 08:51:08'),('108_2_2','108_2',2,1,'N002',2,2,2,'2016-10-20 20:03:22','2016-10-29 08:51:08'),('108_2_4','108_2',4,1,'N003',3,2,2,'2016-10-20 20:03:22','2016-10-29 08:51:08'),('108_1_6','108_1',6,1,'N005',5,2,2,'2016-10-28 14:19:58','2016-10-29 08:51:08'),('108_1_7_1','108_1_7',1,1,'D001',1,2,2,'2016-10-29 08:26:32','2016-10-29 08:51:08'),('108_1_6_2','108_1_6',2,1,'D002',2,2,2,'2016-10-29 08:28:40','2016-10-29 08:51:08'),('108_1_6_2_1','108_1_6_2',1,1,'D001',1,2,2,'2016-10-29 08:29:11','2016-10-29 08:51:08'),('108_1_7_1_3','108_1_7_1',3,1,'D003',3,2,2,'2016-10-29 08:50:46','2016-10-29 08:51:08'),('108_1_7_1_4','108_1_7_1',4,1,'D004',4,2,2,'2016-10-29 08:50:46','2016-10-29 08:51:08'),('108_1_7_1_3_1','108_1_7_1_3',1,1,'D001',1,2,NULL,'2016-10-29 08:51:09',NULL),('108_1_7_1_4_1','108_1_7_1_4',1,1,'D001',1,2,NULL,'2016-10-29 08:51:09',NULL);
/*!40000 ALTER TABLE `wf_processdefinition` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_processnode`
--

LOCK TABLES `wf_processnode` WRITE;
/*!40000 ALTER TABLE `wf_processnode` DISABLE KEYS */;
INSERT INTO `wf_processnode` VALUES (1,-1,'N001','node1','1',NULL,2,2,'2016-09-29 20:34:21','2016-10-01 09:06:38'),(2,-1,'N002','node2','2',NULL,2,2,'2016-09-29 21:10:19','2016-10-01 09:06:44'),(4,-1,'N003','node3','3',NULL,2,2,'2016-09-29 21:13:44','2016-10-01 09:06:51'),(5,-1,'N004','mode4','4',NULL,2,2,'2016-09-29 21:14:14','2016-10-01 09:06:57'),(6,-1,'N005','node5','5',NULL,2,2,'2016-09-29 21:14:28','2016-10-01 09:11:54'),(7,-1,'N006','node6','6',NULL,2,NULL,'2016-10-01 09:12:12',NULL);
/*!40000 ALTER TABLE `wf_processnode` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `wf_processnodemodel`
--

LOCK TABLES `wf_processnodemodel` WRITE;
/*!40000 ALTER TABLE `wf_processnodemodel` DISABLE KEYS */;
INSERT INTO `wf_processnodemodel` VALUES ('7_1','7',7,NULL,'department',1),('7_1_1','7_1',7,NULL,'department',1),('6_2','6',6,NULL,'department',2),('6_2_1','6_2',6,NULL,'department',1);
/*!40000 ALTER TABLE `wf_processnodemodel` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2017-05-08 16:58:27
