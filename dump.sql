-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mysql    Database: bitrix
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `b_admin_notify`
--

DROP TABLE IF EXISTS `b_admin_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `MESSAGE` text DEFAULT NULL,
  `ENABLE_CLOSE` char(1) DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify`
--

LOCK TABLES `b_admin_notify` WRITE;
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify_lang`
--

DROP TABLE IF EXISTS `b_admin_notify_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(11) NOT NULL,
  `LID` char(2) NOT NULL,
  `MESSAGE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify_lang`
--

LOCK TABLES `b_admin_notify_lang` WRITE;
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_agent`
--

DROP TABLE IF EXISTS `b_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_agent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `NAME` text DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(11) DEFAULT 86400,
  `IS_PERIOD` char(1) DEFAULT 'Y',
  `USER_ID` int(11) DEFAULT NULL,
  `RUNNING` char(1) NOT NULL DEFAULT 'N',
  `RETRY_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`),
  KEY `ix_agent_name` (`NAME`(100)),
  KEY `ix_agent_act_period_next_exec` (`ACTIVE`,`IS_PERIOD`,`NEXT_EXEC`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_agent`
--

LOCK TABLES `b_agent` WRITE;
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
INSERT INTO `b_agent` VALUES (1,'main',100,'\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();','Y','2024-03-19 23:34:44','2024-03-19 23:35:44',NULL,60,'N',NULL,'N',0),(2,'main',100,'CCaptchaAgent::DeleteOldCaptcha(3600);','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(3,'main',100,'CSiteCheckerTest::CommonTest();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(4,'main',100,'CEvent::CleanUpAgent();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(5,'main',100,'CUser::CleanUpHitAuthAgent();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(6,'main',100,'CUndo::CleanUpOld();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(7,'main',100,'CUserCounter::DeleteOld();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(8,'main',100,'\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(9,'main',100,'CUser::AuthActionsCleanUpAgent();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(10,'main',100,'CUser::CleanUpAgent();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(11,'main',100,'CUser::DeactivateAgent();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(12,'main',100,'CEventLog::CleanUpAgent();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(14,'clouds',100,'CCloudStorage::CleanUp();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(15,'forum',100,'CForumStat::CleanUp();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(16,'forum',100,'CForumFiles::CleanUp();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(17,'landing',100,'Bitrix\\Landing\\Agent::clearRecycle();','Y','2024-03-19 23:31:51','2024-03-20 01:31:51',NULL,7200,'N',NULL,'N',0),(18,'landing',100,'Bitrix\\Landing\\Agent::clearFiles(30);','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(19,'landing',100,'Bitrix\\Landing\\Agent::sendRestStatistic();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(20,'landing',100,'Bitrix\\Landing\\Agent::clearTempFiles();','Y','2024-03-19 11:27:13','2024-03-20 11:27:13',NULL,86400,'N',NULL,'N',0),(23,'messageservice',100,'\\Bitrix\\MessageService\\Queue::cleanUpAgent();','Y','2024-03-19 11:27:20','2024-03-20 00:00:00',NULL,86400,'Y',NULL,'N',0),(24,'messageservice',100,'\\Bitrix\\MessageService\\IncomingMessage::cleanUpAgent();','Y','2024-03-19 11:27:20','2024-03-20 00:00:00',NULL,86400,'Y',NULL,'N',0),(25,'rest',100,'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();','Y','2024-03-19 11:27:14','2024-03-20 11:27:14',NULL,86400,'N',NULL,'N',0),(26,'rest',100,'\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();','Y','2024-03-19 11:27:14','2024-03-20 11:27:14',NULL,86400,'N',NULL,'N',0),(27,'rest',100,'\\Bitrix\\Rest\\LogTable::cleanUpAgent();','Y','2024-03-19 11:27:14','2024-03-20 11:27:14',NULL,86400,'N',NULL,'N',0),(28,'rest',100,'\\Bitrix\\Rest\\Configuration\\Helper::sendStatisticAgent();','Y','2024-03-19 11:27:14','2024-03-20 11:27:14',NULL,86400,'N',NULL,'N',0),(29,'rest',100,'\\Bitrix\\Rest\\UsageStatTable::sendAgent();','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(30,'rest',100,'\\Bitrix\\Rest\\UsageStatTable::cleanUpAgent();','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(31,'rest',100,'\\Bitrix\\Rest\\Marketplace\\Notification::checkAgent();','Y','2024-03-19 11:27:14','2024-03-20 11:27:14',NULL,86400,'N',NULL,'N',0),(32,'rest',100,'\\Bitrix\\Rest\\Marketplace\\Immune::load();','Y','2024-03-19 11:27:15','2024-03-20 11:27:15',NULL,86400,'N',NULL,'N',0),(33,'rest',100,'\\Bitrix\\Rest\\Configuration\\Structure::clearContentAgent();','Y','2024-03-19 11:27:15','2024-03-20 11:27:15',NULL,86400,'N',NULL,'N',0),(34,'rest',100,'\\Bitrix\\Rest\\Helper::recoveryAgents();','Y','2024-03-19 17:44:47','2024-03-26 17:44:47',NULL,604800,'N',NULL,'N',0),(35,'search',10,'CSearchSuggest::CleanUpAgent();','Y','2024-03-19 11:27:15','2024-03-20 11:27:15',NULL,86400,'N',NULL,'N',0),(36,'search',10,'CSearchStatistic::CleanUpAgent();','Y','2024-03-19 11:27:15','2024-03-20 11:27:15',NULL,86400,'N',NULL,'N',0),(37,'security',100,'CSecuritySession::CleanUpAgent();','Y','2024-03-19 23:32:56','2024-03-20 00:02:56',NULL,1800,'N',NULL,'N',0),(38,'security',100,'CSecurityIPRule::CleanUpAgent();','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(39,'seo',100,'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(40,'seo',100,'Bitrix\\Seo\\Adv\\LogTable::clean();','Y','2024-03-19 11:27:15','2024-03-20 11:27:15',NULL,86400,'N',NULL,'N',0),(41,'seo',100,'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();','Y','2024-03-19 23:02:40','2024-03-20 00:02:40',NULL,3600,'N',NULL,'N',0),(42,'subscribe',100,'CSubscription::CleanUp();','Y','2024-03-19 11:27:20','2024-03-20 03:00:00',NULL,86400,'Y',NULL,'N',0),(43,'ui',100,'\\Bitrix\\UI\\FileUploader\\TempFileAgent::clearOldRecords();','Y','2024-03-19 23:32:57','2024-03-20 00:02:57',NULL,1800,'N',NULL,'N',0);
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_app_password`
--

DROP TABLE IF EXISTS `b_app_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `DIGEST_PASSWORD` varchar(255) NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `SYSCOMMENT` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_app_password`
--

LOCK TABLES `b_app_password` WRITE;
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_button_site`
--

DROP TABLE IF EXISTS `b_b24connector_button_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_b24connector_button_site` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUTTON_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BUTTON_ID` (`BUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_button_site`
--

LOCK TABLES `b_b24connector_button_site` WRITE;
/*!40000 ALTER TABLE `b_b24connector_button_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_button_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_buttons`
--

DROP TABLE IF EXISTS `b_b24connector_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SCRIPT` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_buttons`
--

LOCK TABLES `b_b24connector_buttons` WRITE;
/*!40000 ALTER TABLE `b_b24connector_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bitrixcloud_option`
--

DROP TABLE IF EXISTS `b_bitrixcloud_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) DEFAULT NULL,
  `PARAM_VALUE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bitrixcloud_option`
--

LOCK TABLES `b_bitrixcloud_option` WRITE;
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
INSERT INTO `b_bitrixcloud_option` VALUES (1,'backup_quota',0,'0','0'),(2,'backup_total_size',0,'0','0'),(3,'backup_last_backup_time',0,'0','1710265502'),(4,'monitoring_expire_time',0,'0','1710887433');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog`
--

DROP TABLE IF EXISTS `b_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `OWNER_ID` int(11) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  `REAL_URL` varchar(255) DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `ENABLE_COMMENTS` char(1) NOT NULL DEFAULT 'Y',
  `ENABLE_IMG_VERIF` char(1) NOT NULL DEFAULT 'N',
  `ENABLE_RSS` char(1) NOT NULL DEFAULT 'Y',
  `LAST_POST_ID` int(11) DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `AUTO_GROUPS` varchar(255) DEFAULT NULL,
  `EMAIL_NOTIFY` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) NOT NULL DEFAULT 'N',
  `SEARCH_INDEX` char(1) NOT NULL DEFAULT 'Y',
  `USE_SOCNET` char(1) NOT NULL DEFAULT 'N',
  `EDITOR_USE_FONT` char(1) DEFAULT 'N',
  `EDITOR_USE_LINK` char(1) DEFAULT 'N',
  `EDITOR_USE_IMAGE` char(1) DEFAULT 'N',
  `EDITOR_USE_VIDEO` char(1) DEFAULT 'N',
  `EDITOR_USE_FORMAT` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_BLOG_4` (`URL`),
  KEY `IX_BLOG_BLOG_1` (`GROUP_ID`,`ACTIVE`),
  KEY `IX_BLOG_BLOG_2` (`OWNER_ID`),
  KEY `IX_BLOG_BLOG_5` (`LAST_POST_DATE`),
  KEY `IX_BLOG_BLOG_6` (`SOCNET_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog`
--

LOCK TABLES `b_blog` WRITE;
/*!40000 ALTER TABLE `b_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_category`
--

DROP TABLE IF EXISTS `b_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_CAT_1` (`BLOG_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_category`
--

LOCK TABLES `b_blog_category` WRITE;
/*!40000 ALTER TABLE `b_blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_comment`
--

DROP TABLE IF EXISTS `b_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) DEFAULT NULL,
  `AUTHOR_IP` varchar(20) DEFAULT NULL,
  `AUTHOR_IP1` varchar(20) DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `POST_TEXT` text NOT NULL,
  `PUBLISH_STATUS` char(1) NOT NULL DEFAULT 'P',
  `HAS_PROPS` varchar(1) DEFAULT NULL,
  `SHARE_DEST` text DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_COMM_1` (`BLOG_ID`,`POST_ID`),
  KEY `IX_BLOG_COMM_2` (`AUTHOR_ID`),
  KEY `IX_BLOG_COMM_3` (`DATE_CREATE`,`AUTHOR_ID`),
  KEY `IX_BLOG_COMM_4` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_comment`
--

LOCK TABLES `b_blog_comment` WRITE;
/*!40000 ALTER TABLE `b_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_group`
--

DROP TABLE IF EXISTS `b_blog_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_GROUP_1` (`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_group`
--

LOCK TABLES `b_blog_group` WRITE;
/*!40000 ALTER TABLE `b_blog_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_image`
--

DROP TABLE IF EXISTS `b_blog_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(11) NOT NULL DEFAULT 0,
  `BLOG_ID` int(11) NOT NULL DEFAULT 0,
  `POST_ID` int(11) NOT NULL DEFAULT 0,
  `USER_ID` int(11) NOT NULL DEFAULT 0,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `TITLE` varchar(255) DEFAULT NULL,
  `IMAGE_SIZE` int(11) NOT NULL DEFAULT 0,
  `IS_COMMENT` varchar(1) NOT NULL DEFAULT 'N',
  `COMMENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_IMAGE_1` (`POST_ID`,`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_image`
--

LOCK TABLES `b_blog_image` WRITE;
/*!40000 ALTER TABLE `b_blog_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_post`
--

DROP TABLE IF EXISTS `b_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) NOT NULL,
  `PREVIEW_TEXT` text DEFAULT NULL,
  `PREVIEW_TEXT_TYPE` char(4) NOT NULL DEFAULT 'text',
  `DETAIL_TEXT` mediumtext NOT NULL,
  `DETAIL_TEXT_TYPE` char(4) NOT NULL DEFAULT 'text',
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PUBLISH` datetime NOT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `PUBLISH_STATUS` char(1) NOT NULL DEFAULT 'P',
  `CATEGORY_ID` varchar(255) DEFAULT NULL,
  `ATRIBUTE` varchar(255) DEFAULT NULL,
  `ENABLE_TRACKBACK` char(1) NOT NULL DEFAULT 'Y',
  `ENABLE_COMMENTS` char(1) NOT NULL DEFAULT 'Y',
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `NUM_COMMENTS` int(11) NOT NULL DEFAULT 0,
  `NUM_COMMENTS_ALL` int(11) NOT NULL DEFAULT 0,
  `NUM_TRACKBACKS` int(11) NOT NULL DEFAULT 0,
  `VIEWS` int(11) DEFAULT NULL,
  `FAVORITE_SORT` int(11) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `MICRO` char(1) NOT NULL DEFAULT 'N',
  `HAS_IMAGES` varchar(1) DEFAULT NULL,
  `HAS_PROPS` varchar(1) DEFAULT NULL,
  `HAS_TAGS` varchar(1) DEFAULT NULL,
  `HAS_COMMENT_IMAGES` varchar(1) DEFAULT NULL,
  `HAS_SOCNET_ALL` varchar(1) DEFAULT NULL,
  `SEO_TITLE` varchar(255) DEFAULT NULL,
  `SEO_TAGS` varchar(255) DEFAULT NULL,
  `SEO_DESCRIPTION` text DEFAULT NULL,
  `BACKGROUND_CODE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_POST_1` (`BLOG_ID`,`PUBLISH_STATUS`,`DATE_PUBLISH`),
  KEY `IX_BLOG_POST_2` (`BLOG_ID`,`DATE_PUBLISH`,`PUBLISH_STATUS`),
  KEY `IX_BLOG_POST_3` (`BLOG_ID`,`CATEGORY_ID`),
  KEY `IX_BLOG_POST_4` (`PUBLISH_STATUS`,`DATE_PUBLISH`),
  KEY `IX_BLOG_POST_5` (`DATE_PUBLISH`,`AUTHOR_ID`),
  KEY `IX_BLOG_POST_CODE` (`BLOG_ID`,`CODE`),
  KEY `IX_BLOG_POST_6` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_post`
--

LOCK TABLES `b_blog_post` WRITE;
/*!40000 ALTER TABLE `b_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_post_category`
--

DROP TABLE IF EXISTS `b_blog_post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_post_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_POST_CATEGORY` (`POST_ID`,`CATEGORY_ID`),
  KEY `IX_BLOG_POST_CATEGORY_CAT_ID` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_post_category`
--

LOCK TABLES `b_blog_post_category` WRITE;
/*!40000 ALTER TABLE `b_blog_post_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_post_param`
--

DROP TABLE IF EXISTS `b_blog_post_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_post_param` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_PP_1` (`POST_ID`,`USER_ID`),
  KEY `IX_BLOG_PP_2` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_post_param`
--

LOCK TABLES `b_blog_post_param` WRITE;
/*!40000 ALTER TABLE `b_blog_post_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_post_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_site_path`
--

DROP TABLE IF EXISTS `b_blog_site_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_site_path` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) NOT NULL,
  `PATH` varchar(255) NOT NULL,
  `TYPE` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_SITE_PATH_2` (`SITE_ID`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_site_path`
--

LOCK TABLES `b_blog_site_path` WRITE;
/*!40000 ALTER TABLE `b_blog_site_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_site_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_socnet`
--

DROP TABLE IF EXISTS `b_blog_socnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_socnet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_SOCNET` (`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_socnet`
--

LOCK TABLES `b_blog_socnet` WRITE;
/*!40000 ALTER TABLE `b_blog_socnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_socnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_socnet_rights`
--

DROP TABLE IF EXISTS `b_blog_socnet_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_socnet_rights` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST_ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(45) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_SR_1` (`POST_ID`),
  KEY `IX_BLOG_SR_2` (`ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_socnet_rights`
--

LOCK TABLES `b_blog_socnet_rights` WRITE;
/*!40000 ALTER TABLE `b_blog_socnet_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_socnet_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_trackback`
--

DROP TABLE IF EXISTS `b_blog_trackback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_trackback` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `PREVIEW_TEXT` text NOT NULL,
  `BLOG_NAME` varchar(255) DEFAULT NULL,
  `POST_DATE` datetime NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_TRBK_1` (`BLOG_ID`,`POST_ID`),
  KEY `IX_BLOG_TRBK_2` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_trackback`
--

LOCK TABLES `b_blog_trackback` WRITE;
/*!40000 ALTER TABLE `b_blog_trackback` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_trackback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user`
--

DROP TABLE IF EXISTS `b_blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `AVATAR` int(11) DEFAULT NULL,
  `INTERESTS` varchar(255) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `DATE_REG` datetime NOT NULL,
  `ALLOW_POST` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_USER_1` (`USER_ID`),
  KEY `IX_BLOG_USER_2` (`ALIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user`
--

LOCK TABLES `b_blog_user` WRITE;
/*!40000 ALTER TABLE `b_blog_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user2blog`
--

DROP TABLE IF EXISTS `b_blog_user2blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user2blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`BLOG_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user2blog`
--

LOCK TABLES `b_blog_user2blog` WRITE;
/*!40000 ALTER TABLE `b_blog_user2blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user2blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user2user_group`
--

DROP TABLE IF EXISTS `b_blog_user2user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user2user_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`USER_ID`,`BLOG_ID`,`USER_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user2user_group`
--

LOCK TABLES `b_blog_user2user_group` WRITE;
/*!40000 ALTER TABLE `b_blog_user2user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user2user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user_group`
--

DROP TABLE IF EXISTS `b_blog_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_USER_GROUP_1` (`BLOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user_group`
--

LOCK TABLES `b_blog_user_group` WRITE;
/*!40000 ALTER TABLE `b_blog_user_group` DISABLE KEYS */;
INSERT INTO `b_blog_user_group` VALUES (1,NULL,'all'),(2,NULL,'registered');
/*!40000 ALTER TABLE `b_blog_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user_group_perms`
--

DROP TABLE IF EXISTS `b_blog_user_group_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user_group_perms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  `PERMS_TYPE` char(1) NOT NULL DEFAULT 'P',
  `POST_ID` int(11) DEFAULT NULL,
  `PERMS` char(1) NOT NULL DEFAULT 'D',
  `AUTOSET` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_UG_PERMS_1` (`BLOG_ID`,`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  KEY `IX_BLOG_UG_PERMS_2` (`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  KEY `IX_BLOG_UG_PERMS_3` (`POST_ID`,`USER_GROUP_ID`,`PERMS_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user_group_perms`
--

LOCK TABLES `b_blog_user_group_perms` WRITE;
/*!40000 ALTER TABLE `b_blog_user_group_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user_group_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_cache_tag`
--

DROP TABLE IF EXISTS `b_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_cache_tag` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) DEFAULT NULL,
  `CACHE_SALT` char(4) DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) DEFAULT NULL,
  `TAG` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_cache_tag`
--

LOCK TABLES `b_cache_tag` WRITE;
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
INSERT INTO `b_cache_tag` VALUES (2,NULL,NULL,'0:1710886180','**'),(96,'s1','/e25','/s1/bitrix/news.list/e25','iblock_id_1'),(115,'s1','/50b','/s1/bitrix/news.list/50b','iblock_id_1'),(116,'s1','/1fa','/s1/bitrix/news.detail/1fa','iblock_id_1'),(141,'s1','/50b','/s1/bitrix/form.result.new','forms'),(142,'s1','/50b','/s1/bitrix/form.result.new','form_'),(143,'s1','/50b','/s1/bitrix/form.result.new','form_1'),(156,'s1','/50b','/s1/bitrix/news.list/50b','iblock_id_2'),(174,'s1','/83d','/s1/bitrix/news.list/83d','iblock_id_2'),(175,'s1','/83d','/s1/bitrix/form.result.new','forms'),(176,'s1','/83d','/s1/bitrix/form.result.new','form_1');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_captcha`
--

DROP TABLE IF EXISTS `b_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) NOT NULL,
  `CODE` varchar(20) NOT NULL,
  `IP` varchar(15) NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_captcha`
--

LOCK TABLES `b_captcha` WRITE;
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_checklist`
--

DROP TABLE IF EXISTS `b_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) DEFAULT NULL,
  `TESTER` varchar(255) DEFAULT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext DEFAULT NULL,
  `REPORT_COMMENT` text DEFAULT NULL,
  `REPORT` char(1) DEFAULT 'Y',
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) DEFAULT 'N',
  `HIDDEN` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_checklist`
--

LOCK TABLES `b_checklist` WRITE;
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_copy_queue`
--

DROP TABLE IF EXISTS `b_clouds_copy_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `OP` char(1) NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT -1,
  `FILE_POS` int(11) NOT NULL DEFAULT 0,
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT 0,
  `STATUS` char(1) NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_copy_queue`
--

LOCK TABLES `b_clouds_copy_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_copy_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_copy_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_delete_queue`
--

DROP TABLE IF EXISTS `b_clouds_delete_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_delete_queue`
--

LOCK TABLES `b_clouds_delete_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_delete_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_delete_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_bucket`
--

DROP TABLE IF EXISTS `b_clouds_file_bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) DEFAULT 'Y',
  `SORT` int(11) DEFAULT 500,
  `READ_ONLY` char(1) DEFAULT 'N',
  `SERVICE_ID` varchar(50) DEFAULT NULL,
  `BUCKET` varchar(63) DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `CNAME` varchar(100) DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT 0,
  `FILE_SIZE` double DEFAULT 0,
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) DEFAULT NULL,
  `SETTINGS` text DEFAULT NULL,
  `FILE_RULES` text DEFAULT NULL,
  `FAILOVER_ACTIVE` char(1) DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) DEFAULT 'N',
  `FAILOVER_DELETE` char(1) DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_bucket`
--

LOCK TABLES `b_clouds_file_bucket` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_hash`
--

DROP TABLE IF EXISTS `b_clouds_file_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_hash` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(760) NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `FILE_MTIME` datetime DEFAULT NULL,
  `FILE_HASH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_file_hash` (`BUCKET_ID`,`FILE_PATH`(190))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_hash`
--

LOCK TABLES `b_clouds_file_hash` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_resize`
--

DROP TABLE IF EXISTS `b_clouds_file_resize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ERROR_CODE` char(1) NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text DEFAULT NULL,
  `FROM_PATH` varchar(500) DEFAULT NULL,
  `TO_PATH` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_resize`
--

LOCK TABLES `b_clouds_file_resize` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_save`
--

DROP TABLE IF EXISTS `b_clouds_file_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_save` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BUCKET_ID` int(11) NOT NULL,
  `SUBDIR` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `EXTERNAL_ID` varchar(50) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_save`
--

LOCK TABLES `b_clouds_file_save` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_upload`
--

DROP TABLE IF EXISTS `b_clouds_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FILE_PATH` varchar(500) NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_upload`
--

LOCK TABLES `b_clouds_file_upload` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_component_params`
--

DROP TABLE IF EXISTS `b_component_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) NOT NULL,
  `COMPONENT_NAME` varchar(255) NOT NULL,
  `TEMPLATE_NAME` varchar(255) DEFAULT NULL,
  `REAL_PATH` varchar(255) NOT NULL,
  `SEF_MODE` char(1) NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_component_params`
--

LOCK TABLES `b_component_params` WRITE;
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
INSERT INTO `b_component_params` VALUES (10,'s1','bitrix:news.detail','detail_info','/statya-detalno.php','N',NULL,107,1506,'a:46:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"N\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:13:\"BROWSER_TITLE\";s:1:\"-\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:12:\"ELEMENT_CODE\";s:0:\"\";s:10:\"ELEMENT_ID\";s:18:\"={$_REQUEST[\"ID\"]}\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:9:\"IBLOCK_ID\";s:0:\"\";s:11:\"IBLOCK_TYPE\";s:8:\"articles\";s:10:\"IBLOCK_URL\";s:0:\"\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:16:\"META_DESCRIPTION\";s:1:\"-\";s:13:\"META_KEYWORDS\";s:1:\"-\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:16:\"Страница\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_CANONICAL_URL\";s:1:\"N\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:15:\"USE_PERMISSIONS\";s:1:\"N\";s:9:\"USE_SHARE\";s:1:\"N\";}'),(98,'s1','bitrix:menu','top-menu','/bitrix/templates/services_yanicode/header.php','N',NULL,1350,1770,'a:10:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"Y\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"Y\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";}'),(102,'s1','bitrix:menu','top-menu','/bitrix/templates/detail_yanicode/header.php','N',NULL,1350,1770,'a:10:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"Y\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"Y\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";}'),(120,'s1','bitrix:news.list','services','/services.php','N',NULL,106,1730,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"services\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:11:\"IBLOCK_TYPE\";s:8:\"articles\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:1:\"1\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),(121,'s1','bitrix:news.list','services','/services.php','N',NULL,1734,3358,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"services\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:11:\"IBLOCK_TYPE\";s:8:\"articles\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:1:\"2\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),(122,'s1','bitrix:form.result.new','calculate-project','/services.php','N',NULL,3391,3920,'a:13:{s:10:\"CACHE_TIME\";s:4:\"3600\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:15:\"CHAIN_ITEM_LINK\";s:0:\"\";s:15:\"CHAIN_ITEM_TEXT\";s:0:\"\";s:18:\"COMPONENT_TEMPLATE\";s:17:\"calculate-project\";s:8:\"EDIT_URL\";s:15:\"result_edit.php\";s:22:\"IGNORE_CUSTOM_TEMPLATE\";s:1:\"N\";s:8:\"LIST_URL\";s:9:\"index.php\";s:8:\"SEF_MODE\";s:1:\"N\";s:11:\"SUCCESS_URL\";s:0:\"\";s:19:\"USE_EXTENDED_ERRORS\";s:1:\"N\";s:16:\"VARIABLE_ALIASES\";a:2:{s:11:\"WEB_FORM_ID\";s:11:\"WEB_FORM_ID\";s:9:\"RESULT_ID\";s:9:\"RESULT_ID\";}s:11:\"WEB_FORM_ID\";s:1:\"1\";}'),(124,'s1','bitrix:menu','top-menu','/bitrix/templates/yanicode/header.php','N',NULL,1350,1770,'a:10:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"Y\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"Y\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";}'),(136,'s1','bitrix:news.list','news','/index.php','N',NULL,252,1951,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:44:\"#SITE_DIR#statya-detalno.php?ID=#ELEMENT_ID#\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"1\";s:11:\"IBLOCK_TYPE\";s:8:\"articles\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:4:\"news\";}'),(137,'s1','bitrix:menu','top-menu','/local/templates/services_yanicode/header.php','N',NULL,1350,1770,'a:10:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"Y\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"Y\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";}'),(151,'s1','bitrix:menu','top-menu','/local/templates/yanicode/header.php','N',NULL,1346,1766,'a:10:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"Y\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"Y\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";}'),(164,'s1','bitrix:news.list','services','/service/index.php','N',NULL,217,1841,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"services\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:11:\"IBLOCK_TYPE\";s:8:\"articles\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:1:\"1\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),(165,'s1','bitrix:news.list','services','/service/index.php','N',NULL,1845,3469,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"services\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:11:\"IBLOCK_TYPE\";s:8:\"articles\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:1:\"2\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),(166,'s1','bitrix:form.result.new','calculate-project','/service/index.php','N',NULL,3502,4054,'a:13:{s:10:\"CACHE_TIME\";s:4:\"3600\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:15:\"CHAIN_ITEM_LINK\";s:0:\"\";s:15:\"CHAIN_ITEM_TEXT\";s:0:\"\";s:18:\"COMPONENT_TEMPLATE\";s:17:\"calculate-project\";s:8:\"EDIT_URL\";s:13:\"list_edit.php\";s:22:\"IGNORE_CUSTOM_TEMPLATE\";s:1:\"N\";s:8:\"LIST_URL\";s:9:\"index.php\";s:8:\"SEF_MODE\";s:1:\"N\";s:11:\"SUCCESS_URL\";s:0:\"\";s:19:\"USE_EXTENDED_ERRORS\";s:1:\"N\";s:11:\"WEB_FORM_ID\";s:1:\"1\";s:16:\"VARIABLE_ALIASES\";a:2:{s:11:\"WEB_FORM_ID\";s:11:\"WEB_FORM_ID\";s:9:\"RESULT_ID\";s:9:\"RESULT_ID\";}}');
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_log`
--

DROP TABLE IF EXISTS `b_composite_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) NOT NULL,
  `URI` varchar(2000) NOT NULL,
  `TITLE` varchar(250) DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `MESSAGE` longtext DEFAULT NULL,
  `AJAX` char(1) NOT NULL DEFAULT 'N',
  `USER_ID` int(11) NOT NULL DEFAULT 0,
  `PAGE_ID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_log`
--

LOCK TABLES `b_composite_log` WRITE;
/*!40000 ALTER TABLE `b_composite_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_page`
--

DROP TABLE IF EXISTS `b_composite_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_page` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) NOT NULL,
  `HOST` varchar(100) NOT NULL,
  `URI` varchar(2000) NOT NULL,
  `TITLE` varchar(250) DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(11) NOT NULL DEFAULT 0,
  `REWRITES` int(11) NOT NULL DEFAULT 0,
  `SIZE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_page`
--

LOCK TABLES `b_composite_page` WRITE;
/*!40000 ALTER TABLE `b_composite_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_agreement`
--

DROP TABLE IF EXISTS `b_consent_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_agreement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) NOT NULL,
  `TYPE` char(1) DEFAULT NULL,
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) DEFAULT NULL,
  `AGREEMENT_TEXT` longtext DEFAULT NULL,
  `LABEL_TEXT` varchar(4000) DEFAULT NULL,
  `SECURITY_CODE` varchar(32) DEFAULT NULL,
  `USE_URL` char(1) NOT NULL DEFAULT 'N',
  `URL` varchar(255) DEFAULT NULL,
  `IS_AGREEMENT_TEXT_HTML` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_agreement`
--

LOCK TABLES `b_consent_agreement` WRITE;
/*!40000 ALTER TABLE `b_consent_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_field`
--

DROP TABLE IF EXISTS `b_consent_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int(11) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_field`
--

LOCK TABLES `b_consent_field` WRITE;
/*!40000 ALTER TABLE `b_consent_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent`
--

DROP TABLE IF EXISTS `b_consent_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_user_consent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `IP` varchar(15) NOT NULL,
  `URL` varchar(4000) DEFAULT NULL,
  `ORIGIN_ID` varchar(30) DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`),
  KEY `IX_CONSENT_USER_CONSENT_USER_ORIGIN` (`USER_ID`,`ORIGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent`
--

LOCK TABLES `b_consent_user_consent` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent_item`
--

DROP TABLE IF EXISTS `b_consent_user_consent_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_user_consent_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_CONSENT_ID` int(11) NOT NULL,
  `VALUE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_ITEM_AG_ID` (`USER_CONSENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent_item`
--

LOCK TABLES `b_consent_user_consent_item` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_counter_data`
--

DROP TABLE IF EXISTS `b_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `DATA` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_counter_data`
--

LOCK TABLES `b_counter_data` WRITE;
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_culture`
--

DROP TABLE IF EXISTS `b_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `FORMAT_DATE` varchar(50) DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) DEFAULT NULL,
  `FORMAT_NAME` varchar(50) DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT 1,
  `CHARSET` varchar(50) DEFAULT NULL,
  `DIRECTION` char(1) DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) DEFAULT 'F j',
  `DAY_SHORT_MONTH_FORMAT` varchar(50) DEFAULT 'M j',
  `DAY_OF_WEEK_MONTH_FORMAT` varchar(50) DEFAULT 'l, F j',
  `SHORT_DAY_OF_WEEK_MONTH_FORMAT` varchar(50) DEFAULT 'D, F j',
  `SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT` varchar(50) DEFAULT 'D, M j',
  `SHORT_TIME_FORMAT` varchar(50) DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) DEFAULT 'am',
  `PM_VALUE` varchar(20) DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT 2,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_culture`
--

LOCK TABLES `b_culture` WRITE;
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
INSERT INTO `b_culture` VALUES (1,'ru','ru','DD.MM.YYYY','DD.MM.YYYY HH:MI:SS','#NAME# #LAST_NAME#',1,'UTF-8','Y','d.m.Y','j M Y','j F Y','l, j F Y','j F','j M','l, j F','D, j F','D, j M','H:i','H:i:s','am','pm',' ',',',2),(2,'en','en','MM/DD/YYYY','MM/DD/YYYY H:MI:SS T','#NAME# #LAST_NAME#',0,'UTF-8','Y','n/j/Y','M j, Y','F j, Y','l, F j, Y','F j','M j','l, F j','D, F j','D, M j','g:i a','g:i:s a','am','pm',',','.',2);
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_entity_usage`
--

DROP TABLE IF EXISTS `b_entity_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_entity_usage` (
  `USER_ID` int(11) NOT NULL,
  `CONTEXT` varchar(50) NOT NULL,
  `ENTITY_ID` varchar(30) NOT NULL,
  `ITEM_ID` varchar(50) NOT NULL,
  `ITEM_ID_INT` int(11) NOT NULL DEFAULT 0,
  `PREFIX` varchar(10) NOT NULL DEFAULT '',
  `LAST_USE_DATE` datetime NOT NULL,
  PRIMARY KEY (`USER_ID`,`CONTEXT`,`ENTITY_ID`,`ITEM_ID`),
  KEY `IX_ENTITY_USAGE_ITEM_ID_INT` (`ITEM_ID_INT`),
  KEY `IX_ENTITY_USAGE_LAST_USE_DATE` (`LAST_USE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_entity_usage`
--

LOCK TABLES `b_entity_usage` WRITE;
/*!40000 ALTER TABLE `b_entity_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_entity_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event`
--

DROP TABLE IF EXISTS `b_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) NOT NULL,
  `MESSAGE_ID` int(11) DEFAULT NULL,
  `LID` varchar(255) NOT NULL,
  `C_FIELDS` longtext DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event`
--

LOCK TABLES `b_event` WRITE;
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_attachment`
--

DROP TABLE IF EXISTS `b_event_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  `IS_FILE_COPIED` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_attachment`
--

LOCK TABLES `b_event_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_log`
--

DROP TABLE IF EXISTS `b_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SEVERITY` varchar(50) NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) NOT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `ITEM_ID` varchar(255) NOT NULL,
  `REMOTE_ADDR` varchar(40) DEFAULT NULL,
  `USER_AGENT` text DEFAULT NULL,
  `REQUEST_URI` text DEFAULT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `GUEST_ID` int(11) DEFAULT NULL,
  `DESCRIPTION` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_log`
--

LOCK TABLES `b_event_log` WRITE;
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
INSERT INTO `b_event_log` VALUES (1,'2024-03-12 18:19:52','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(2,'2024-03-12 18:25:55','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(3,'2024-03-12 18:26:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(4,'2024-03-12 18:27:31','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(5,'2024-03-12 18:28:22','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/footer.php\";}'),(6,'2024-03-12 18:29:41','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(7,'2024-03-12 18:45:01','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(8,'2024-03-12 19:08:04','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/footer.php\";}'),(9,'2024-03-12 19:08:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(10,'2024-03-12 19:46:03','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(11,'2024-03-12 20:21:28','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(12,'2024-03-12 20:22:30','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(13,'2024-03-12 20:33:19','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(14,'2024-03-12 20:34:21','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(15,'2024-03-12 20:43:31','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(16,'2024-03-12 21:22:04','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(17,'2024-03-12 21:25:11','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(18,'2024-03-12 21:27:17','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(19,'2024-03-12 21:29:47','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(20,'2024-03-13 15:02:11','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/bitrix/admin/fileman_file_edit.php?path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php&full_src=Y&site=s1&lang=ru&&filter=Y&set_filter=Y',NULL,NULL,NULL,''),(21,'2024-03-13 15:16:30','UNKNOWN','SECTION_RENAME','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&path=%2Fbitrix%2Ftemplates&site=s1',NULL,1,NULL,'a:1:{s:4:\"path\";s:32:\"bitrix/templates/detail_yanicode\";}'),(22,'2024-03-13 15:23:56','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fdetail_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:43:\"bitrix/templates/detail_yanicode/header.php\";}'),(23,'2024-03-13 15:28:14','UNKNOWN','PAGE_ADD','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=yanicode&path=%2F&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Ffileman_admin.php%253Flang%253Dru%2526site%253Ds1%2526path%253D%25252Fbitrix%25252Ftemplates%25252Fdetail_yanicode&siteTemplateId=yanicode',NULL,1,NULL,'a:1:{s:4:\"path\";s:18:\"statya-detalno.php\";}'),(24,'2024-03-13 15:43:29','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:18:\"statya-detalno.php\";}'),(25,'2024-03-13 15:49:22','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(26,'2024-03-13 16:07:26','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:18:\"statya-detalno.php\";}'),(27,'2024-03-13 16:16:09','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fdetail_yanicode%2Fcomponents%2Fbitrix%2Fnews.detail%2Fdetail_info%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:87:\"bitrix/templates/detail_yanicode/components/bitrix/news.detail/detail_info/template.php\";}'),(28,'2024-03-13 16:20:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(29,'2024-03-13 16:21:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fdetail_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:43:\"bitrix/templates/detail_yanicode/header.php\";}'),(30,'2024-03-13 16:23:09','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fdetail_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:43:\"bitrix/templates/detail_yanicode/footer.php\";}'),(31,'2024-03-13 16:23:35','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/footer.php\";}'),(32,'2024-03-13 17:56:34','UNKNOWN','PAGE_ADD','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=yanicode&path=%2F&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Fiblock_type_admin.php%253Flang%253Dru&siteTemplateId=yanicode',NULL,1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(33,'2024-03-13 17:56:39','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(34,'2024-03-13 17:59:11','UNKNOWN','SECTION_RENAME','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?mode=frame&PAGEN_1=1&SIZEN_1=20&lang=ru&path=%2Fbitrix%2Ftemplates&site=s1',NULL,1,NULL,'a:1:{s:4:\"path\";s:34:\"bitrix/templates/services_yanicode\";}'),(35,'2024-03-13 18:01:55','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(36,'2024-03-13 18:07:31','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(37,'2024-03-13 18:20:24','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(38,'2024-03-13 18:22:39','UNKNOWN','SECTION_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=news.list&action_button=delete&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:9:\"news.list\";s:4:\"path\";s:62:\"bitrix/templates/services_yanicode/components/bitrix/news.list\";}'),(39,'2024-03-13 18:36:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(40,'2024-03-13 18:42:45','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(41,'2024-03-13 18:43:23','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(42,'2024-03-13 18:44:32','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(43,'2024-03-13 18:46:02','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(44,'2024-03-13 18:53:36','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(45,'2024-03-13 18:54:47','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(46,'2024-03-13 18:57:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(47,'2024-03-13 18:58:12','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(48,'2024-03-13 18:58:52','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(49,'2024-03-13 18:59:20','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(50,'2024-03-13 18:59:49','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(51,'2024-03-13 19:05:56','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(52,'2024-03-13 19:18:46','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(53,'2024-03-13 19:23:00','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(54,'2024-03-13 19:27:48','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(55,'2024-03-13 19:28:18','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(56,'2024-03-13 19:28:55','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:71:\"bitrix/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(57,'2024-03-13 19:47:58','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(58,'2024-03-13 19:48:12','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(59,'2024-03-13 20:03:04','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(60,'2024-03-13 20:03:16','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(61,'2024-03-13 20:05:52','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(62,'2024-03-13 20:06:38','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(63,'2024-03-13 20:07:25','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(64,'2024-03-13 20:08:35','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(65,'2024-03-13 20:10:19','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(66,'2024-03-13 20:10:43','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(67,'2024-03-13 20:12:35','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(68,'2024-03-13 20:17:05','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(69,'2024-03-13 20:19:04','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(70,'2024-03-13 20:19:20','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(71,'2024-03-13 20:20:19','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(72,'2024-03-13 20:21:48','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(73,'2024-03-13 20:22:25','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(74,'2024-03-13 20:22:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(75,'2024-03-13 20:23:30','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(76,'2024-03-13 20:24:22','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(77,'2024-03-13 20:25:30','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(78,'2024-03-13 20:25:59','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(79,'2024-03-13 20:26:21','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(80,'2024-03-13 20:27:08','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(81,'2024-03-13 20:28:50','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(82,'2024-03-13 20:30:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(83,'2024-03-14 12:49:34','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(84,'2024-03-14 12:50:18','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(85,'2024-03-14 12:53:40','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(86,'2024-03-14 12:54:42','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(87,'2024-03-14 12:55:33','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(88,'2024-03-14 12:56:35','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(89,'2024-03-14 12:56:51','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(90,'2024-03-14 12:57:19','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(91,'2024-03-14 13:02:01','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(92,'2024-03-14 13:02:22','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(93,'2024-03-14 13:04:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(94,'2024-03-14 13:05:23','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(95,'2024-03-14 13:06:37','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(96,'2024-03-14 13:07:07','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(97,'2024-03-14 13:07:56','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(98,'2024-03-14 13:08:12','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(99,'2024-03-14 13:08:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(100,'2024-03-14 13:09:06','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(101,'2024-03-14 13:09:42','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(102,'2024-03-14 13:09:59','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(103,'2024-03-14 13:10:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(104,'2024-03-14 13:13:50','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(105,'2024-03-14 13:15:34','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(106,'2024-03-14 13:17:38','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(107,'2024-03-14 13:22:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(108,'2024-03-14 13:30:22','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(109,'2024-03-14 13:39:02','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(110,'2024-03-14 13:39:16','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(111,'2024-03-14 13:56:59','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(112,'2024-03-14 13:57:40','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(113,'2024-03-14 13:59:35','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(114,'2024-03-14 14:07:18','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(115,'2024-03-14 16:40:32','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/bitrix/tools/public_session.php?k=cefe936f9b7be9c9793a4bafc6c11d3f.7556667d89eb8541eed1c6894755bed47d8d4024247c0556a06a92c85e903087','s1',NULL,NULL,''),(116,'2024-03-14 16:44:37','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(117,'2024-03-14 16:47:03','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(118,'2024-03-14 17:04:00','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(119,'2024-03-14 17:06:23','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(120,'2024-03-14 17:33:19','UNKNOWN','FILE_RENAME','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode&site=s1&table_id=tbl_fileman_admin',NULL,1,NULL,'a:1:{s:4:\"path\";s:44:\"bitrix/templates/services_yanicode/script.js\";}'),(121,'2024-03-14 17:33:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(122,'2024-03-14 17:36:44','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=script.js&action_button=delete&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:9:\"script.js\";s:4:\"path\";s:62:\"bitrix/templates/services_yanicode/components/bitrix/news.list\";}'),(123,'2024-03-14 17:39:34','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=script.js&action_button=delete&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:9:\"script.js\";s:4:\"path\";s:34:\"bitrix/templates/services_yanicode\";}'),(124,'2024-03-14 17:54:57','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(125,'2024-03-14 17:57:57','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(126,'2024-03-14 18:00:47','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=script.js&action_button=delete&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:9:\"script.js\";s:4:\"path\";s:71:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services\";}'),(127,'2024-03-14 18:00:55','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(128,'2024-03-14 18:11:37','UNKNOWN','SECTION_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=js&action_button=delete&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:2:\"js\";s:4:\"path\";s:37:\"bitrix/templates/services_yanicode/js\";}'),(129,'2024-03-14 18:12:28','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(130,'2024-03-14 18:20:37','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(131,'2024-03-14 18:21:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(132,'2024-03-14 18:24:22','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(133,'2024-03-14 18:26:55','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(134,'2024-03-14 18:28:47','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(135,'2024-03-14 18:32:06','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(136,'2024-03-14 18:37:27','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(137,'2024-03-14 18:38:12','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(138,'2024-03-14 18:39:14','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(139,'2024-03-14 18:46:36','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(140,'2024-03-14 18:47:01','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(141,'2024-03-14 18:47:16','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(142,'2024-03-14 18:47:41','UNKNOWN','SECTION_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=form.result.new&action_button=delete&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:15:\"form.result.new\";s:4:\"path\";s:68:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new\";}'),(143,'2024-03-14 18:48:10','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(144,'2024-03-14 18:49:57','UNKNOWN','SECTION_RENAME','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new&show_perms_for=0&table_id=tbl_fileman_admin',NULL,1,NULL,'a:1:{s:4:\"path\";s:86:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project\";}'),(145,'2024-03-14 18:52:15','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(146,'2024-03-14 18:53:02','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(147,'2024-03-14 18:53:52','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(148,'2024-03-14 18:55:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(149,'2024-03-14 18:57:11','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(150,'2024-03-14 19:03:13','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(151,'2024-03-14 19:04:21','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(152,'2024-03-14 19:07:38','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(153,'2024-03-14 19:08:37','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(154,'2024-03-14 19:11:19','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(155,'2024-03-14 19:13:52','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(156,'2024-03-14 19:22:06','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(157,'2024-03-14 19:23:33','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(158,'2024-03-14 19:23:51','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(159,'2024-03-14 19:27:36','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(160,'2024-03-14 19:35:26','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(161,'2024-03-14 19:41:11','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(162,'2024-03-14 20:13:26','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n<?  ?>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(163,'2024-03-14 20:13:33','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n<?  ?>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(164,'2024-03-14 20:13:42','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n<? echo  ?>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(165,'2024-03-14 20:14:03','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n<? echo  ?>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(166,'2024-03-14 20:14:15','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n<? echo ($arResult[\"QUESTIONS\"]  ?>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(167,'2024-03-14 20:14:59','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n<p color=\"white<? echo ($arResult[\"QUESTIONS\"]  ?>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(168,'2024-03-14 20:15:16','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n<form action=\"\" class=\"js-validated-form\">\n	<p color=\"white\"><? echo ($arResult[\"QUESTIONS\"]  ?></p>\n	<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n		else\n		{\n	?>\n	<div class=\"popup-feedback__input-cover\">\n\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\n<div class=\"popup-feedback__input js-validated-field\">\n<?\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\n$arQuestion[\"HTML_CODE\"] = $tmp\n?>\n				<?=$arQuestion[\"HTML_CODE\"]?>\n		</div>\n	</div>\n	<?\n		}\n	} //endwhile\n	?>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n</form>\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n<?\n} //endif (isFormNote)'),(169,'2024-03-14 20:15:18','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,NULL,NULL,'<?\r\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\r\n\r\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\r\n<?=$arResult[\"FORM_NOTE\"]?>\r\n<?if ($arResult[\"isFormNote\"] != \"Y\")\r\n{\r\n?>\r\n<?=$arResult[\"FORM_HEADER\"]?>\r\n\r\n<form action=\"\" class=\"js-validated-form\">\r\n	<p color=\"white\"><? echo ($arResult[\"QUESTIONS\"]  ?></p>\r\n	<?\r\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\r\n	{\r\n\r\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\r\n		{\r\n			echo $arQuestion[\"HTML_CODE\"];\r\n		}\r\n		else\r\n		{\r\n	?>\r\n	<div class=\"popup-feedback__input-cover\">\r\n\r\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\r\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\r\n<div class=\"popup-feedback__input js-validated-field\">\r\n<?\r\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\r\n$arQuestion[\"HTML_CODE\"] = $tmp\r\n?>\r\n				<?=$arQuestion[\"HTML_CODE\"]?>\r\n		</div>\r\n	</div>\r\n	<?\r\n		}\r\n	} //endwhile\r\n	?>\r\n<div class=\"popup-feedback__button-cover\">\r\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\r\n</div>\r\n</form>\r\n<p>\r\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\r\n</p>\r\n<?=$arResult[\"FORM_FOOTER\"]?>\r\n<?\r\n} //endif (isFormNote)'),(170,'2024-03-14 20:15:29','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'<?\r\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\r\n\r\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\r\n<?=$arResult[\"FORM_NOTE\"]?>\r\n<?if ($arResult[\"isFormNote\"] != \"Y\")\r\n{\r\n?>\r\n<?=$arResult[\"FORM_HEADER\"]?>\r\n\r\n<form action=\"\" class=\"js-validated-form\">\r\n	<p color=\"white\"><? echo ($arResult[\"QUESTIONS\"]  ?></p>\r\n	<?\r\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\r\n	{\r\n\r\nif ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\r\n		{\r\n			echo $arQuestion[\"HTML_CODE\"];\r\n		}\r\n		else\r\n		{\r\n	?>\r\n	<div class=\"popup-feedback__input-cover\">\r\n\r\n		<label for=\"\" class=\"popup-feedback__input-label\"><?=$arQuestion[\"CAPTION\"]?><?if ($arQuestion[\"REQUIRED\"] == \"Y\"):?><?=$arResult[\"REQUIRED_SIGN\"];?><?endif;?></label>\r\n				<?=$arQuestion[\"IS_INPUT_CAPTION_IMAGE\"] == \"Y\" ? \"<br />\".$arQuestion[\"IMAGE\"][\"HTML_CODE\"] : \"\"?>\r\n<div class=\"popup-feedback__input js-validated-field\">\r\n<?\r\n$tmp = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";\r\n$arQuestion[\"HTML_CODE\"] = $tmp\r\n?>\r\n				<?=$arQuestion[\"HTML_CODE\"]?>\r\n		</div>\r\n	</div>\r\n	<?\r\n		}\r\n	} //endwhile\r\n	?>\r\n<div class=\"popup-feedback__button-cover\">\r\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\r\n</div>\r\n</form>\r\n<p>\r\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\r\n</p>\r\n<?=$arResult[\"FORM_FOOTER\"]?>\r\n<?\r\n} //endif (isFormNote)'),(171,'2024-03-14 20:15:38','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(172,'2024-03-14 20:15:45','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(173,'2024-03-14 20:17:16','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(174,'2024-03-14 20:18:01','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(175,'2024-03-14 20:18:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(176,'2024-03-14 20:19:48','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(177,'2024-03-14 20:20:08','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(178,'2024-03-14 20:20:25','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(179,'2024-03-14 20:21:48','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(180,'2024-03-14 20:22:19','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(181,'2024-03-14 20:25:03','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(182,'2024-03-14 20:25:41','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(183,'2024-03-14 20:31:50','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(184,'2024-03-14 20:33:27','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(185,'2024-03-14 20:41:29','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(186,'2024-03-14 20:45:40','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(187,'2024-03-14 20:46:23','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(188,'2024-03-14 20:49:29','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(189,'2024-03-14 20:50:56','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(190,'2024-03-14 20:52:38','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(191,'2024-03-14 20:53:26','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(192,'2024-03-14 20:55:32','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(193,'2024-03-14 20:57:00','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(194,'2024-03-14 20:58:21','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(195,'2024-03-14 21:07:13','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(196,'2024-03-14 21:12:28','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(197,'2024-03-14 21:18:16','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(198,'2024-03-14 21:28:10','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(199,'2024-03-14 21:34:17','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(200,'2024-03-14 21:41:58','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(201,'2024-03-14 21:42:36','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(202,'2024-03-14 22:10:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(203,'2024-03-15 09:47:53','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(204,'2024-03-15 09:48:59','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(205,'2024-03-15 09:51:46','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(206,'2024-03-15 10:10:03','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(207,'2024-03-15 10:10:23','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(208,'2024-03-15 10:54:11','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(209,'2024-03-15 10:56:47','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(210,'2024-03-15 11:45:31','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(211,'2024-03-15 11:45:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/footer.php\";}'),(212,'2024-03-15 11:47:00','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(213,'2024-03-15 11:53:40','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fservices%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:84:\"bitrix/templates/services_yanicode/components/bitrix/news.list/services/template.php\";}'),(214,'2024-03-15 11:59:12','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(215,'2024-03-15 12:01:58','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fdetail_yanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:43:\"bitrix/templates/detail_yanicode/footer.php\";}'),(216,'2024-03-15 12:02:11','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/footer.php\";}'),(217,'2024-03-15 12:06:32','UNKNOWN','SECTION_RENAME','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&site=s1&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fmenu&show_perms_for=0&table_id=tbl_fileman_admin',NULL,1,NULL,'a:1:{s:4:\"path\";s:57:\"bitrix/templates/yanicode/components/bitrix/menu/top-menu\";}'),(218,'2024-03-15 12:11:42','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fmenu%2Ftop-menu%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:70:\"bitrix/templates/yanicode/components/bitrix/menu/top-menu/template.php\";}'),(219,'2024-03-15 12:16:48','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fmenu%2Ftop-menu%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:70:\"bitrix/templates/yanicode/components/bitrix/menu/top-menu/template.php\";}'),(220,'2024-03-15 12:19:00','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(221,'2024-03-15 12:20:26','UNKNOWN','MENU_ADD','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&new=Y&lang=ru&site=s1&back_url=%2F%3Fclear_cache%3DY%26back_url_admin%3D%252Fbitrix%252Fadmin%252Ffileman_admin.php%253Flang%253Dru%2526site%253Ds1%2526path%253D%25252Fbitrix%25252Ftemplates%25252Fyanicode&path=&name=left&siteTemplateId=yanicode',NULL,1,NULL,'a:2:{s:9:\"menu_name\";N;s:4:\"path\";s:0:\"\";}'),(222,'2024-03-15 12:22:09','UNKNOWN','MENU_ADD','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&new=Y&lang=ru&site=s1&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Ffileman_file_edit.php%253Fpath%253D%25252Fbitrix%25252Ftemplates%25252Fyanicode%25252Fcomponents%25252Fbitrix%25252Fmenu%25252Ftop-menu%25252Ftemplate.php%2526full_src%253DY%2526site%253Ds1%2526lang%253Dru%2526filter%253DY%2526set_filter%253DY%26clear_cache%3DY&path=&name=top&siteTemplateId=yanicode',NULL,1,NULL,'a:2:{s:9:\"menu_name\";N;s:4:\"path\";s:0:\"\";}'),(223,'2024-03-15 12:23:04','UNKNOWN','MENU_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Ffileman_file_edit.php%253Fpath%253D%25252Fbitrix%25252Ftemplates%25252Fyanicode%25252Fcomponents%25252Fbitrix%25252Fmenu%25252Ftop-menu%25252Ftemplate.php%2526full_src%253DY%2526site%253Ds1%2526lang%253Dru%2526filter%253DY%2526set_filter%253DY%26clear_cache%3DY&path=%2F&name=top&siteTemplateId=yanicode',NULL,1,NULL,'a:2:{s:9:\"menu_name\";N;s:4:\"path\";s:0:\"\";}'),(224,'2024-03-15 12:23:46','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(225,'2024-03-15 12:26:48','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(226,'2024-03-15 12:28:35','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:45:\"bitrix/templates/services_yanicode/header.php\";}'),(227,'2024-03-15 12:28:54','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(228,'2024-03-15 12:30:18','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fdetail_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:43:\"bitrix/templates/detail_yanicode/header.php\";}'),(229,'2024-03-15 12:44:40','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(230,'2024-03-15 12:46:18','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:12:\"services.php\";}'),(231,'2024-03-15 12:59:06','UNKNOWN','FILE_ADD','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_html_edit.php?lang=ru',NULL,1,NULL,'a:1:{s:4:\"path\";s:16:\"/info-header.php\";}'),(232,'2024-03-15 12:59:16','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=info-header.php&action_button=delete&lang=ru&site=s1&path=%2F&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:15:\"info-header.php\";s:4:\"path\";s:0:\"\";}'),(233,'2024-03-15 12:59:38','UNKNOWN','FILE_ADD','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_html_edit.php?lang=ru',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"/info-header.html\";}'),(234,'2024-03-15 13:01:12','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(235,'2024-03-15 13:01:52','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=info-header.html&action_button=delete&lang=ru&site=s1&path=%2F&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:16:\"info-header.html\";s:4:\"path\";s:0:\"\";}'),(236,'2024-03-15 13:02:05','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:36:\"bitrix/templates/yanicode/header.php\";}'),(237,'2024-03-15 13:31:00','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fmenu%2Ftop-menu%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:70:\"bitrix/templates/yanicode/components/bitrix/menu/top-menu/template.php\";}'),(238,'2024-03-15 14:58:29','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=build.js&action_button=delete&lang=ru&site=s1&path=%2F&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:8:\"build.js\";s:4:\"path\";s:0:\"\";}'),(239,'2024-03-15 15:03:54','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(240,'2024-03-15 15:04:46','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(241,'2024-03-15 16:05:13','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(242,'2024-03-15 16:05:35','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(243,'2024-03-15 16:05:48','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(244,'2024-03-15 16:05:53','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(245,'2024-03-15 16:06:00','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(246,'2024-03-15 16:06:05','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(247,'2024-03-15 16:06:21','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(248,'2024-03-15 16:06:35','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(249,'2024-03-15 16:07:00','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(250,'2024-03-15 16:07:12','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(251,'2024-03-15 16:07:30','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(252,'2024-03-15 16:07:50','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"]?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(253,'2024-03-15 16:08:22','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"]?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\'<input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(254,'2024-03-15 16:08:57','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"]?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\'<input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\'?>\n					\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(255,'2024-03-15 16:08:57','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'form_data\'][\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/tools/autosave.php?bxsender=core_autosave',NULL,NULL,NULL,'<?\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\n<?=$arResult[\"FORM_NOTE\"]?>\n<?if ($arResult[\"isFormNote\"] != \"Y\")\n{\n?>\n<div class=\"button-wrapper  button-wrapper_center\">\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\n                    РАССЧИТАТЬ ПРОЕКТ\n                </div>\n            </div>\n<template id=\"popup-calculate-project\">\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\n<?=$arResult[\"FORM_HEADER\"]?>\n\n			<?\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\n	{\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\n		{\n			echo $arQuestion[\"HTML_CODE\"];\n		}\n	}\n	?>\n	            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__double-column\">\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\n                </div>\n                <div class=\"popup-feedback__input-cover\">\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\n                </div>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__input-cover\">\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\n            </div>\n\n            <div class=\"popup-feedback__consent\">\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"]?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\n                        </a>\n                    </label>\n                </div>\n                <div class=\"popup-feedback__consent-form-wrapper\">\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_989\"][\"HTML_CODE\"] =\'<input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\'?>\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_989\"][\"HTML_CODE\"]?>\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\n                        </a>\n                    </label>\n                </div>\n            </div>\n<div class=\"popup-feedback__button-cover\">\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\n</div>\n\n<p>\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\n</p>\n<?=$arResult[\"FORM_FOOTER\"]?>\n</template>\n<?\n} //endif (isFormNote)'),(256,'2024-03-15 16:09:03','SECURITY','SECURITY_FILTER_XSS','security','$_POST[\'filesrc\']','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,NULL,NULL,'<?\r\nif(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\r\n\r\nif ($arResult[\"isFormErrors\"] == \"Y\"):?><?=$arResult[\"FORM_ERRORS_TEXT\"];?><?endif;?>\r\n<?=$arResult[\"FORM_NOTE\"]?>\r\n<?if ($arResult[\"isFormNote\"] != \"Y\")\r\n{\r\n?>\r\n<div class=\"button-wrapper  button-wrapper_center\">\r\n                <div class=\"button button_gold button-open-calculate-project\" data-popup=\"calculate-project-popup\">\r\n                    РАССЧИТАТЬ ПРОЕКТ\r\n                </div>\r\n            </div>\r\n<template id=\"popup-calculate-project\">\r\n<?=str_replace(\'<form\', \'<form class=\"js-validated-form\"\', $arResult[\"FORM_HEADER\"])?>\r\n<?=$arResult[\"FORM_HEADER\"]?>\r\n\r\n			<?\r\n	foreach ($arResult[\"QUESTIONS\"] as $FIELD_SID => $arQuestion)\r\n	{\r\n		if ($arQuestion[\'STRUCTURE\'][0][\'FIELD_TYPE\'] == \'hidden\')\r\n		{\r\n			echo $arQuestion[\"HTML_CODE\"];\r\n		}\r\n	}\r\n	?>\r\n	            <div class=\"popup-feedback__input-cover\">\r\n                <label for=\"\" class=\"popup-feedback__input-label\"><? echo $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"CAPTION\"]  ?></label>\r\n				<? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"] = \"<input type=\'text\' class=\'popup-feedback__input js-validated-field\' data-validated_name=\'name\' />\";?>\r\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_807\"][\"HTML_CODE\"]?>\r\n            </div>\r\n\r\n            <div class=\"popup-feedback__double-column\">\r\n                <div class=\"popup-feedback__input-cover\">\r\n                    <label for=\"\" class=\"popup-feedback__input-label\">Телефон</label>\r\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"] = \'<input type=\"tel\" class=\"popup-feedback__input mask-phone-js js-validated-field\" data-validated_name=\"phone\" />\' ?>\r\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_801\"][\"HTML_CODE\"]?>\r\n                </div>\r\n                <div class=\"popup-feedback__input-cover\">\r\n                    <label for=\"\" class=\"popup-feedback__input-label\">Email</label>\r\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"] = \'<input type=\"mail\" class=\"popup-feedback__input js-validated-field\" data-validated_name=\"mail\" />\'?>\r\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_465\"][\"HTML_CODE\"]?>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"popup-feedback__input-cover\">\r\n                <label for=\"\" class=\"popup-feedback__input-label\">Название компании:</label>\r\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"] =\'<input type=\"text\" class=\"popup-feedback__input\" />\'?>\r\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_551\"][\"HTML_CODE\"]?>\r\n            </div>\r\n\r\n            <div class=\"popup-feedback__input-cover\">\r\n                <label for=\"\" class=\"popup-feedback__input-label\">Опишите Вашу задачу:</label>\r\n                <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"] =\'<textarea name=\"\" id=\"\" class=\"popup-feedback__textarea\"></textarea>\'?>\r\n				<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_901\"][\"HTML_CODE\"]?>\r\n            </div>\r\n\r\n            <div class=\"popup-feedback__consent\">\r\n                <div class=\"popup-feedback__consent-form-wrapper\">\r\n                   <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"] =\' <input class=\"popup-feedback__consent-input\" id=\"consent1\" type=\"checkbox\" checked=\"checked\" />\'?>\r\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_534\"][\"HTML_CODE\"]?>\r\n                    <label class=\"popup-feedback__consent-form\" for=\"consent1\">\r\n                        <a href=\"./article-data-processing.html\" target=\"_blank\">\r\n                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.\r\n                        </a>\r\n                    </label>\r\n                </div>\r\n                <div class=\"popup-feedback__consent-form-wrapper\">\r\n                    <? $arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_989\"][\"HTML_CODE\"] =\'<input class=\"popup-feedback__consent-input\" id=\"consent2\" type=\"checkbox\" checked=\"checked\" />\'?>\r\n					<?=$arResult[\"QUESTIONS\"][\"SIMPLE_QUESTION_989\"][\"HTML_CODE\"]?>\r\n                    <label class=\"popup-feedback__consent-form\" for=\"consent2\">\r\n                        <a href=\"./article-privacy-policy.html\" target=\"_blank\">\r\n                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.\r\n                        </a>\r\n                    </label>\r\n                </div>\r\n            </div>\r\n<div class=\"popup-feedback__button-cover\">\r\n<input <?=(intval($arResult[\"F_RIGHT\"]) < 10 ? \"disabled=\\\"disabled\\\"\" : \"\");?> type=\"submit\" class=\"button button_modal-gold js-button-submit\" name=\"web_form_submit\" value=\"<?=htmlspecialcharsbx(trim($arResult[\"arForm\"][\"BUTTON\"]) == \'\' ? GetMessage(\"FORM_ADD\") : $arResult[\"arForm\"][\"BUTTON\"]);?>\" />\r\n</div>\r\n\r\n<p>\r\n<?=$arResult[\"REQUIRED_SIGN\"];?> - <?=GetMessage(\"FORM_REQUIRED_FIELDS\")?>\r\n</p>\r\n<?=$arResult[\"FORM_FOOTER\"]?>\r\n</template>\r\n<?\r\n} //endif (isFormNote)'),(257,'2024-03-15 16:09:16','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(258,'2024-03-15 16:14:46','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Ftemplates%2Fservices_yanicode%2Fcomponents%2Fbitrix%2Fform.result.new%2Fcalculate-project%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:99:\"bitrix/templates/services_yanicode/components/bitrix/form.result.new/calculate-project/template.php\";}'),(259,'2024-03-16 14:57:44','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/bitrix/admin/fileman_admin.php?lang=ru&path=%2F',NULL,NULL,NULL,''),(260,'2024-03-19 11:27:13','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/bitrix/admin/fileman_admin.php?lang=ru&site=s1&path=%2Fbitrix%2Fphp_interface',NULL,NULL,NULL,''),(261,'2024-03-19 13:23:54','UNKNOWN','PAGE_ADD','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=yanicode&newFolder=Y&path=%2F&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Fiblock_section_admin.php%253FIBLOCK_ID%253D2%2526type%253Darticles%2526lang%253Dru%2526find_section_section%253D0%2526SECTION_ID%253D0%2526apply_filter%253DY&siteTemplateId=yanicode',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"service/index.php\";}'),(262,'2024-03-19 13:23:54','UNKNOWN','SECTION_ADD','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=yanicode&newFolder=Y&path=%2F&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Fiblock_section_admin.php%253FIBLOCK_ID%253D2%2526type%253Darticles%2526lang%253Dru%2526find_section_section%253D0%2526SECTION_ID%253D0%2526apply_filter%253DY&siteTemplateId=yanicode',NULL,1,NULL,'a:1:{s:4:\"path\";s:7:\"service\";}'),(263,'2024-03-19 13:23:54','UNKNOWN','MENU_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=yanicode&newFolder=Y&path=%2F&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Fiblock_section_admin.php%253FIBLOCK_ID%253D2%2526type%253Darticles%2526lang%253Dru%2526find_section_section%253D0%2526SECTION_ID%253D0%2526apply_filter%253DY&siteTemplateId=yanicode',NULL,1,NULL,'a:2:{s:4:\"path\";s:0:\"\";s:9:\"menu_name\";N;}'),(264,'2024-03-19 17:14:43','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/header.php\";}'),(265,'2024-03-19 17:16:24','UNKNOWN','FILE_ADD','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_html_edit.php?lang=ru',NULL,1,NULL,'a:1:{s:4:\"path\";s:23:\"include/banner_main.php\";}'),(266,'2024-03-19 17:16:44','UNKNOWN','FILE_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=banner_main.php&action_button=delete&lang=ru&site=s1&path=%2Finclude&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:15:\"banner_main.php\";s:4:\"path\";s:7:\"include\";}'),(267,'2024-03-19 17:17:03','UNKNOWN','FILE_ADD','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_html_edit.php?lang=ru',NULL,1,NULL,'a:1:{s:4:\"path\";s:23:\"include/banner_main.php\";}'),(268,'2024-03-19 17:17:26','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Finclude%2Fbanner_main.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:23:\"include/banner_main.php\";}'),(269,'2024-03-19 17:18:22','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Findex.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(270,'2024-03-19 17:19:29','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Findex.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(271,'2024-03-19 17:19:41','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(272,'2024-03-19 17:20:24','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(273,'2024-03-19 17:20:48','UNKNOWN','PAGE_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(274,'2024-03-19 17:28:02','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:70:\"local/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(275,'2024-03-19 17:28:39','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fcomponents%2Fbitrix%2Fnews.list%2Fnews%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:70:\"local/templates/yanicode/components/bitrix/news.list/news/template.php\";}'),(276,'2024-03-19 17:29:53','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Finclude%2Fbanner_main.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:23:\"include/banner_main.php\";}'),(277,'2024-03-19 17:43:15','UNKNOWN','SECTION_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=detail_yanicode&action_button=delete&lang=ru&site=s1&path=%2Flocal%2Ftemplates&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:15:\"detail_yanicode\";s:4:\"path\";s:31:\"local/templates/detail_yanicode\";}'),(278,'2024-03-19 17:44:47','UNKNOWN','FILE_ADD','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_html_edit.php?lang=ru',NULL,1,NULL,'a:1:{s:4:\"path\";s:27:\"include/banner_services.php\";}'),(279,'2024-03-19 17:47:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fservices_yanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:44:\"local/templates/services_yanicode/header.php\";}'),(280,'2024-03-19 17:48:05','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Finclude%2Fbanner_services.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:27:\"include/banner_services.php\";}'),(281,'2024-03-19 17:52:01','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fservice%2Findex.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"service/index.php\";}'),(282,'2024-03-19 17:52:58','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fservice%2Findex.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"service/index.php\";}'),(283,'2024-03-19 17:53:26','UNKNOWN','MENU_EDIT','main','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Fservices.php%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Ffileman_admin.php%253Flang%253Dru%2526site%253Ds1%2526path%253D%25252Fservice&path=%2F&name=top&siteTemplateId=services_yanicode',NULL,1,NULL,'a:2:{s:9:\"menu_name\";N;s:4:\"path\";s:0:\"\";}'),(284,'2024-03-19 17:54:29','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fservice%2Findex.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"service/index.php\";}'),(285,'2024-03-19 17:57:16','UNKNOWN','SECTION_DELETE','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_admin.php?ID=services_yanicode&action_button=delete&lang=ru&site=s1&path=%2Flocal%2Ftemplates&show_perms_for=0&mode=list&table_id=tbl_fileman_admin',NULL,1,NULL,'a:2:{s:9:\"file_name\";s:17:\"services_yanicode\";s:4:\"path\";s:33:\"local/templates/services_yanicode\";}'),(286,'2024-03-19 18:00:42','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Ffooter.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/footer.php\";}'),(287,'2024-03-19 19:28:31','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/header.php\";}'),(288,'2024-03-19 19:35:10','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/header.php\";}'),(289,'2024-03-19 19:41:09','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/header.php\";}'),(290,'2024-03-19 19:43:37','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/header.php\";}'),(291,'2024-03-19 21:06:30','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Flocal%2Ftemplates%2Fyanicode%2Fheader.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:35:\"local/templates/yanicode/header.php\";}'),(292,'2024-03-19 22:50:50','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','172.16.238.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:123.0) Gecko/20100101 Firefox/123.0','/bitrix/admin/fileman_file_edit.php?lang=ru&path=%2Fbitrix%2Fcomponents%2Fbitrix%2Fform.result.new%2Ftemplates%2F.default%2Ftemplate.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:72:\"bitrix/components/bitrix/form.result.new/templates/.default/template.php\";}');
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message`
--

DROP TABLE IF EXISTS `b_event_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `EVENT_NAME` varchar(255) NOT NULL,
  `LID` char(2) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) DEFAULT NULL,
  `MESSAGE` longtext DEFAULT NULL,
  `MESSAGE_PHP` longtext DEFAULT NULL,
  `BODY_TYPE` varchar(4) NOT NULL DEFAULT 'text',
  `BCC` text DEFAULT NULL,
  `REPLY_TO` varchar(255) DEFAULT NULL,
  `CC` varchar(255) DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) DEFAULT NULL,
  `PRIORITY` varchar(50) DEFAULT NULL,
  `FIELD1_NAME` varchar(50) DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) DEFAULT NULL,
  `FIELD2_NAME` varchar(50) DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) DEFAULT NULL,
  `ADDITIONAL_FIELD` text DEFAULT NULL,
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message`
--

LOCK TABLES `b_event_message` WRITE;
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
INSERT INTO `b_event_message` VALUES (1,'2024-03-12 17:44:08','NEW_USER','s1','Y','#DEFAULT_EMAIL_FROM#','#DEFAULT_EMAIL_FROM#','#SITE_NAME#: Зарегистрировался новый пользователь','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(2,'2024-03-12 17:44:08','USER_INFO','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Регистрационная информация','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(3,'2024-03-12 17:44:08','USER_PASS_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос на смену пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(4,'2024-03-12 17:44:08','USER_PASS_CHANGED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение смены пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(5,'2024-03-12 17:44:08','NEW_USER_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение регистрации нового пользователя','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(6,'2024-03-12 17:44:08','USER_INVITE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Приглашение на сайт','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(7,'2024-03-12 17:44:08','FEEDBACK_FORM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Сообщение из формы обратной связи','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(8,'2024-03-12 17:44:08','MAIN_MAIL_CONFIRM_CODE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#MESSAGE_SUBJECT#','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_join',NULL,NULL),(9,'2024-03-12 17:44:08','EVENT_LOG_NOTIFICATION','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','Оповещение журнала событий: #NAME#','Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: #AUDIT_TYPE_ID#\nОбъект: #ITEM_ID#\nПользователь: #USER_ID# \nIP-адрес: #REMOTE_ADDR#\nБраузер: #USER_AGENT#\nСтраница: #REQUEST_URI# \n\nКоличество записей: #EVENT_COUNT# \n\n#ADDITIONAL_TEXT#\n\nПерейти в журнал событий:\nhttp://#SERVER_NAME#/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=#AUDIT_TYPE_ID#','Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: <?=$arParams[\"AUDIT_TYPE_ID\"];?>\n\nОбъект: <?=$arParams[\"ITEM_ID\"];?>\n\nПользователь: <?=$arParams[\"USER_ID\"];?> \nIP-адрес: <?=$arParams[\"REMOTE_ADDR\"];?>\n\nБраузер: <?=$arParams[\"USER_AGENT\"];?>\n\nСтраница: <?=$arParams[\"REQUEST_URI\"];?> \n\nКоличество записей: <?=$arParams[\"EVENT_COUNT\"];?> \n\n<?=$arParams[\"ADDITIONAL_TEXT\"];?>\n\n\nПерейти в журнал событий:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=<?=$arParams[\"AUDIT_TYPE_ID\"];?>','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(10,'2024-03-12 17:44:08','USER_CODE_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос кода авторизации','Используйте для авторизации код:\n\n#CHECKWORD#\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nЛогин: #LOGIN#\n\nСообщение создано автоматически.','Используйте для авторизации код:\n\n<?=$arParams[\"CHECKWORD\"];?>\n\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nЛогин: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение создано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(11,'2024-03-12 17:44:08','NEW_DEVICE_LOGIN','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','Вход с нового устройства','Здравствуйте, #NAME#,\n\nНовое устройство авторизовалось под вашим логином #LOGIN#.\n \nУстройство: #DEVICE# \nБраузер: #BROWSER#\nПлатформа: #PLATFORM#\nМестоположение: #LOCATION# (может быть неточным)\nДата: #DATE#\n\nЕсли вы не знаете, кто это был, рекомендуем немедленно сменить пароль.\n','Здравствуйте, <?=$arParams[\"NAME\"];?>,\n\nНовое устройство авторизовалось под вашим логином <?=$arParams[\"LOGIN\"];?>.\n \nУстройство: <?=$arParams[\"DEVICE\"];?> \nБраузер: <?=$arParams[\"BROWSER\"];?>\n\nПлатформа: <?=$arParams[\"PLATFORM\"];?>\n\nМестоположение: <?=$arParams[\"LOCATION\"];?> (может быть неточным)\nДата: <?=$arParams[\"DATE\"];?>\n\n\nЕсли вы не знаете, кто это был, рекомендуем немедленно сменить пароль.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(12,'2024-03-12 17:44:11','NEW_BLOG_MESSAGE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #BLOG_NAME# : #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение в блоге \"#BLOG_NAME#\"\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\nДата: #MESSAGE_DATE#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\"\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'2024-03-12 17:44:11','NEW_BLOG_COMMENT','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'2024-03-12 17:44:11','NEW_BLOG_COMMENT2COMMENT','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'2024-03-12 17:44:11','NEW_BLOG_COMMENT_WITHOUT_TITLE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'2024-03-12 17:44:11','NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2024-03-12 17:44:11','BLOG_YOUR_BLOG_TO_USER','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] Ваш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВаш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВаш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен в друзья к <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'2024-03-12 17:44:11','BLOG_YOU_TO_BLOG','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] Вы были добавлены в друзья блога \"#BLOG_NAME#\"','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы были добавлены в друзья блога \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы были добавлены в друзья блога \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'2024-03-12 17:44:11','BLOG_BLOG_TO_YOU','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] К вам в друзья был добавлен блог \"#BLOG_NAME#\"','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nК вам в друзья был добавлен блог \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nК вам в друзья был добавлен блог \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'2024-03-12 17:44:11','BLOG_USER_TO_YOUR_BLOG','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] В ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВ ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВ ваш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен друг <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'2024-03-12 17:44:11','BLOG_SONET_NEW_POST','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#POST_TITLE#','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_user',NULL,NULL),(22,'2024-03-12 17:44:11','BLOG_SONET_NEW_COMMENT','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','Re: #POST_TITLE#','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{#COMMENT_ID#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{$arParams[\'COMMENT_ID\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_user',NULL,NULL),(23,'2024-03-12 17:44:11','BLOG_SONET_POST_SHARE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#POST_TITLE#','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_user',NULL,NULL),(24,'2024-03-12 17:44:11','BLOG_POST_BROADCAST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'2024-03-12 17:44:13','NEW_FORUM_MESSAGE','s1','Y','#FROM_EMAIL#','#RECIPIENT#','#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'2024-03-12 17:44:13','NEW_FORUM_PRIV','s1','Y','#FROM_EMAIL#','#TO_EMAIL#','#SITE_NAME#: [private] #SUBJECT#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME# #FROM_EMAIL#\nДата : #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?> <?=$arParams[\"FROM_EMAIL\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'2024-03-12 17:44:13','NEW_FORUM_PRIVATE_MESSAGE','s1','Y','#FROM_EMAIL#','#TO_EMAIL#','#SITE_NAME#: [private] #SUBJECT#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME#\nДата: #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСсылка на сообщение: #MESSAGE_LINK#Сообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСсылка на сообщение: <?=$arParams[\"MESSAGE_LINK\"];?>Сообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'2024-03-12 17:44:13','EDIT_FORUM_MESSAGE','s1','Y','#FROM_EMAIL#','#RECIPIENT#','#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nИзменение сообщения на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nИзменение сообщения на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'2024-03-12 17:44:13','FORUM_NEW_MESSAGE_MAIL','s1','Y','#FROM_EMAIL#','#RECIPIENT#','#TOPIC_TITLE#','#MESSAGE_TEXT#\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум #FORUM_NAME#.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nНаписать новое сообщение: #FORUM_EMAIL#\n\nАвтор сообщения: #AUTHOR#\n\nСообщение сгенерировано автоматически на сайте #SITE_NAME#.\n','<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум <?=$arParams[\"FORUM_NAME\"];?>.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nНаписать новое сообщение: <?=$arParams[\"FORUM_EMAIL\"];?>\n\n\nАвтор сообщения: <?=$arParams[\"AUTHOR\"];?>\n\n\nСообщение сгенерировано автоматически на сайте <?=$arParams[\"SITE_NAME\"];?>.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'2024-03-12 17:44:19','VIRUS_DETECTED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Обнаружен вирус','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера #SERVER_NAME# обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера <?=$arParams[\"SERVER_NAME\"];?> обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n','text','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'2024-03-12 17:44:21','SUBSCRIBE_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение подписки','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера #SERVER_NAME#.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ #EMAIL#\nДата добавления/редактирования .... #DATE_SUBSCR#\n\nВаш код для подтверждения подписки: #CONFIRM_CODE#\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nОтписаться:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера <?=$arParams[\"SERVER_NAME\"];?>.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ <?=$arParams[\"EMAIL\"];?>\n\nДата добавления/редактирования .... <?=$arParams[\"DATE_SUBSCR\"];?>\n\n\nВаш код для подтверждения подписки: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nОтписаться:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n','text','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'2024-03-12 17:44:23','VOTE_FOR','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [V] #VOTE_TITLE#','#USER_NAME# принял участие в опросе \"#VOTE_TITLE#\":\n#VOTE_STATISTIC#\n\nhttp://#SERVER_NAME##URL#\nСообщение сгенерировано автоматически.','<?=$arParams[\"USER_NAME\"];?> принял участие в опросе \"<?=$arParams[\"VOTE_TITLE\"];?>\":\n<?=$arParams[\"VOTE_STATISTIC\"];?>\n\n\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"URL\"];?>\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_attachment`
--

DROP TABLE IF EXISTS `b_event_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_attachment`
--

LOCK TABLES `b_event_message_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_site`
--

DROP TABLE IF EXISTS `b_event_message_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_site`
--

LOCK TABLES `b_event_message_site` WRITE;
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
INSERT INTO `b_event_message_site` VALUES (1,'s1'),(2,'s1'),(3,'s1'),(4,'s1'),(5,'s1'),(6,'s1'),(7,'s1'),(8,'s1'),(9,'s1'),(10,'s1'),(11,'s1'),(12,'s1'),(13,'s1'),(14,'s1'),(15,'s1'),(16,'s1'),(17,'s1'),(18,'s1'),(19,'s1'),(20,'s1'),(21,'s1'),(22,'s1'),(23,'s1'),(24,'s1'),(25,'s1'),(26,'s1'),(27,'s1'),(28,'s1'),(29,'s1'),(30,'s1'),(31,'s1'),(32,'s1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_type`
--

DROP TABLE IF EXISTS `b_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) NOT NULL,
  `EVENT_NAME` varchar(255) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 150,
  `EVENT_TYPE` varchar(10) NOT NULL DEFAULT 'email',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_type`
--

LOCK TABLES `b_event_type` WRITE;
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
INSERT INTO `b_event_type` VALUES (1,'ru','NEW_USER','Зарегистрировался новый пользователь','\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n',1,'email'),(2,'ru','USER_INFO','Информация о пользователе','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',2,'email'),(3,'ru','NEW_USER_CONFIRM','Подтверждение регистрации нового пользователя','\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n',3,'email'),(4,'ru','USER_PASS_REQUEST','Запрос на смену пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',4,'email'),(5,'ru','USER_PASS_CHANGED','Подтверждение смены пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',5,'email'),(6,'ru','USER_INVITE','Приглашение на сайт нового пользователя','#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n',6,'email'),(7,'ru','FEEDBACK_FORM','Отправка сообщения через форму обратной связи','#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',7,'email'),(8,'ru','MAIN_MAIL_CONFIRM_CODE','Подтверждение email-адреса отправителя','\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения',8,'email'),(9,'ru','EVENT_LOG_NOTIFICATION','Оповещение журнала событий','#EMAIL# - Email получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей',9,'email'),(10,'ru','USER_CODE_REQUEST','Запрос кода авторизации','#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#LOGIN# - Логин\n#CHECKWORD# - Код для авторизации\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - Email пользователя\n',10,'email'),(11,'ru','NEW_DEVICE_LOGIN','Вход с нового устройства','#USER_ID# - ID пользователя\n#EMAIL# - Email пользователя\n#LOGIN# - Логин пользователя\n#NAME# - Имя пользователя\n#LAST_NAME# - Фамилия пользователя\n#DEVICE# - Устройство\n#BROWSER# - Браузер\n#PLATFORM# - Платформа\n#USER_AGENT# - User agent\n#IP# - IP-адрес\n#DATE# - Дата\n#COUNTRY# - Страна\n#REGION# - Регион\n#CITY# - Город\n#LOCATION# - Объединенные город, регион, страна\n',11,'email'),(12,'ru','SMS_USER_CONFIRM_NUMBER','Подтверждение номера телефона по СМС','#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n',100,'sms'),(13,'ru','SMS_USER_RESTORE_PASSWORD','Восстановление пароля через СМС','#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n',100,'sms'),(14,'ru','SMS_EVENT_LOG_NOTIFICATION','Оповещение журнала событий','#PHONE_NUMBER# - Номер телефона получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей',100,'sms'),(15,'en','NEW_USER','New user was registered','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n',1,'email'),(16,'en','USER_INFO','Account Information','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',2,'email'),(17,'en','NEW_USER_CONFIRM','New user registration confirmation','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n',3,'email'),(18,'en','USER_PASS_REQUEST','Password Change Request','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',4,'email'),(19,'en','USER_PASS_CHANGED','Password Change Confirmation','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',5,'email'),(20,'en','USER_INVITE','Invitation of a new site user','#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n',6,'email'),(21,'en','FEEDBACK_FORM','Sending a message using a feedback form','#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address',7,'email'),(22,'en','MAIN_MAIL_CONFIRM_CODE','Confirm sender\'s email address','\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code',8,'email'),(23,'en','EVENT_LOG_NOTIFICATION','Event log notification','#EMAIL# - Recipient email\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events',9,'email'),(24,'en','USER_CODE_REQUEST','Request for verification code','#USER_ID# - user ID\n#STATUS# - Login status\n#LOGIN# - Login\n#CHECKWORD# - Verification code\n#NAME# - First name\n#LAST_NAME# - Last name\n#EMAIL# - User email\n',10,'email'),(25,'en','NEW_DEVICE_LOGIN','New device signed in','#USER_ID# - User ID\n#EMAIL# - User email:\n#LOGIN# - User login\n#NAME# - User first name\n#LAST_NAME# - User last name\n#DEVICE# - Device\n#BROWSER# - Browser\n#PLATFORM# - Platform\n#USER_AGENT# - User agent\n#IP# - IP address\n#DATE# - Date\n#COUNTRY# - Country\n#REGION# - Region\n#CITY# - City\n#LOCATION# - Full location (city, region, country)\n',11,'email'),(26,'en','SMS_USER_CONFIRM_NUMBER','Verify phone number using SMS','#USER_PHONE# - phone number\n#CODE# - confirmation code',100,'sms'),(27,'en','SMS_USER_RESTORE_PASSWORD','Recover password using SMS','#USER_PHONE# - phone number\n#CODE# - recovery confirmation code',100,'sms'),(28,'en','SMS_EVENT_LOG_NOTIFICATION','Event log notification','#PHONE_NUMBER# - Recipient phone number\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events',100,'sms'),(29,'ru','NEW_BLOG_MESSAGE','Новое сообщение в блоге','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_DATE# - Дата сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(30,'ru','NEW_BLOG_COMMENT','Новый комментарий в блоге','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(31,'ru','NEW_BLOG_COMMENT2COMMENT','Новый комментарий на ваш комментарий в блоге','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(32,'ru','NEW_BLOG_COMMENT_WITHOUT_TITLE','Новый комментарий в блоге (без темы)','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(33,'ru','NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE','Новый комментарий на ваш комментарий в блоге (без темы)','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(34,'ru','BLOG_YOUR_BLOG_TO_USER','Ваш блог был добавлен в друзья','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(35,'ru','BLOG_YOU_TO_BLOG','Вы были добавлены в друзья блога','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(36,'ru','BLOG_BLOG_TO_YOU','К вам в друзья был добавлен блог','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(37,'ru','BLOG_USER_TO_YOUR_BLOG','В ваш блог был добавлен друг','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(38,'ru','BLOG_SONET_NEW_POST','Добавлено новое сообщение','#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n',100,'email'),(39,'ru','BLOG_SONET_NEW_COMMENT','Добавлен новый комментарий','#EMAIL_TO# - Email получателя письма\n#COMMENT_ID# - ID комментария\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n',100,'email'),(40,'ru','BLOG_SONET_POST_SHARE','Добавлен новый получатель сообщения','#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n',100,'email'),(41,'ru','BLOG_POST_BROADCAST','Добавлено новое сообщение','\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_TO# - Email получателя письма',100,'email'),(42,'en','NEW_BLOG_MESSAGE','New blog message','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#MESSAGE_TEXT# - Message text\n#MESSAGE_DATE# - Message date\n#MESSAGE_PATH# - URL to message\n#AUTHOR# - Message author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(43,'en','NEW_BLOG_COMMENT','New comment in blog','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(44,'en','NEW_BLOG_COMMENT2COMMENT','New comment for your in blog','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(45,'en','NEW_BLOG_COMMENT_WITHOUT_TITLE','New comment in blog (without subject)','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(46,'en','NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE','New comment for your in blog (without subject)','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(47,'en','BLOG_YOUR_BLOG_TO_USER','Your blog has been added to friends','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(48,'en','BLOG_YOU_TO_BLOG','You have been added to blog friends','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(49,'en','BLOG_BLOG_TO_YOU','A blog has been added to your friends','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(50,'en','BLOG_USER_TO_YOUR_BLOG','A friend has been added to your blog','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(51,'en','BLOG_SONET_NEW_POST','New post added','#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL',100,'email'),(52,'en','BLOG_SONET_NEW_COMMENT','Comment added','#EMAIL_TO# - Recipient email\n#COMMENT_ID# - Comment ID\n#POST_ID# - Post ID\n#URL_ID# - Post URL',100,'email'),(53,'en','BLOG_SONET_POST_SHARE','New recipient added','#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL',100,'email'),(54,'en','BLOG_POST_BROADCAST','New post added','\n#MESSAGE_TITLE# - Post subject\n#MESSAGE_TEXT# - Post text \n#MESSAGE_PATH# - Post URL\n#AUTHOR# - Post author\n#EMAIL_TO# - E-mail recipient',100,'email'),(55,'ru','NEW_FORUM_MESSAGE','Новое сообщение на форуме','\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма',100,'email'),(56,'ru','NEW_FORUM_PRIV','Приватное письмо посетителю форума','\n			#FROM_NAME# - Автор сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Тело сообщения\n			#MESSAGE_DATE# - Дата сообщения',100,'email'),(57,'ru','NEW_FORUM_PRIVATE_MESSAGE','Приватное сообщение','\n			#FROM_NAME# - Имя автора сообщения\n			#FROM_USER_ID# - ID автора сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_USER_ID# - ID получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#MESSAGE_LINK# - Ссылка на сообщение',100,'email'),(58,'ru','EDIT_FORUM_MESSAGE','Изменение сообщения на форуме','\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма',100,'email'),(59,'en','NEW_FORUM_MESSAGE','New forum message','\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail',100,'email'),(60,'en','NEW_FORUM_PRIV','Private message for forum user','\n			#FROM_NAME# - Name of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date',100,'email'),(61,'en','NEW_FORUM_PRIVATE_MESSAGE','Private message for forum user','\n			#FROM_NAME# - Name of the sender\n			#FROM_USER_ID# - ID of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_USER_ID# - ID of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date\n			#MESSAGE_LINK# - Link to message',100,'email'),(62,'en','EDIT_FORUM_MESSAGE','Changing forum message','\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail',100,'email'),(63,'ru','FORUM_NEW_MESSAGE_MAIL','Новое сообщение на форуме в режиме общения по E-Mail','#FORUM_NAME# - Название форума\n#AUTHOR# - Автор сообщения\n#FROM_EMAIL# - E-Mail для поля From письма\n#RECIPIENT# - Получатель сообщения\n#TOPIC_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#PATH2FORUM# - Адрес сообщения\n#MESSAGE_DATE# - Дата сообщения\n#FORUM_EMAIL# - Е-Mail адрес для добавления сообщений на форум\n#FORUM_ID# - ID форума\n#TOPIC_ID# - ID темы \n#MESSAGE_ID# - ID сообщения\n#TAPPROVED# - Тема опубликована\n#MAPPROVED# - Сообщение опубликовано\n',100,'email'),(64,'en','FORUM_NEW_MESSAGE_MAIL','New message at the forum (e-mail messaging mode)','#FORUM_NAME# - Forum name\n#AUTHOR# - Message author\n#FROM_EMAIL# - E-Mail in the &amp;From&amp; field\n#RECIPIENT# - Message recipient\n#TOPIC_TITLE# - Message subject\n#MESSAGE_TEXT# - Message text\n#PATH2FORUM# - Message URL\n#MESSAGE_DATE# - Message date\n#FORUM_EMAIL# - E-Mail to add messages to the forum \n#FORUM_ID# - Forum ID\n#TOPIC_ID# - Topic ID \n#MESSAGE_ID# - Message ID\n#TAPPROVED# - Topic approved and published\n#MAPPROVED# - Message approved and published\n',100,'email'),(65,'ru','VIRUS_DETECTED','Обнаружен вирус','#EMAIL# - E-Mail администратора сайта (из настроек главного модуля)',100,'email'),(66,'en','VIRUS_DETECTED','Virus detected','#EMAIL# - Site administrator\'s e-mail address (from the Kernel module settings)',100,'email'),(67,'ru','SUBSCRIBE_CONFIRM','Подтверждение подписки','#ID# - идентификатор подписки\n#EMAIL# - адрес подписки\n#CONFIRM_CODE# - код подтверждения\n#SUBSCR_SECTION# - раздел, где находится страница редактирования подписки (задается в настройках)\n#USER_NAME# - имя подписчика (может отсутствовать)\n#DATE_SUBSCR# - дата добавления/изменения адреса\n',100,'email'),(68,'en','SUBSCRIBE_CONFIRM','Confirmation of subscription','#ID# - subscription ID\n#EMAIL# - subscription email\n#CONFIRM_CODE# - confirmation code\n#SUBSCR_SECTION# - section with subscription edit page (specifies in the settings)\n#USER_NAME# - subscriber\'s name (optional)\n#DATE_SUBSCR# - date of adding/change of address\n',100,'email'),(69,'ru','VOTE_FOR','Новый голос','#ID# - ID результата голосования\n#TIME# - время голосования\n#VOTE_TITLE# - наименование опроса\n#VOTE_DESCRIPTION# - описание опроса\n#VOTE_ID# - ID опроса\n#CHANNEL# - наименование группы опроса\n#CHANNEL_ID# - ID группы опроса\n#VOTER_ID# - ID проголосовавшего посетителя\n#USER_NAME# - ФИО пользователя\n#LOGIN# - логин\n#USER_ID# - ID пользователя\n#STAT_GUEST_ID# - ID посетителя модуля статистики\n#SESSION_ID# - ID сессии модуля статистики\n#IP# - IP адрес\n#VOTE_STATISTIC# - Сводная статистика опроса типа ( - Вопрос - Ответ )\n#URL# - Путь к опросу\n',100,'email'),(70,'en','VOTE_FOR','New vote','#ID# - Vote result ID\n#TIME# - Time of vote\n#VOTE_TITLE# - Poll name\n#VOTE_DESCRIPTION# - Poll description\n#VOTE_ID# - Poll ID\n#CHANNEL# - Poll group name\n#CHANNEL_ID# - Poll group ID\n#VOTER_ID# - Voter\'s user ID\n#USER_NAME# - User full name\n#LOGIN# - login\n#USER_ID# - User ID\n#STAT_GUEST_ID# - Visitor ID in web analytics module\n#SESSION_ID# - Session ID in web analytics module\n#IP# - IP address\n#VOTE_STATISTIC# - Summary statistics of this poll type ( - Question - Answer)\n#URL# - Poll URL',100,'email'),(87,'ru','FORM_FILLING_SIMPLE_FORM_1','Заполнена web-форма \"SIMPLE_FORM_1\"','#RS_FORM_ID# - ID формы\n#RS_FORM_NAME# - Имя формы\n#RS_FORM_SID# - SID формы\n#RS_RESULT_ID# - ID результата\n#RS_DATE_CREATE# - Дата заполнения формы\n#RS_USER_ID# - ID пользователя\n#RS_USER_EMAIL# - EMail пользователя\n#RS_USER_NAME# - Фамилия, имя пользователя\n#RS_USER_AUTH# - Пользователь был авторизован?\n#RS_STAT_GUEST_ID# - ID посетителя\n#RS_STAT_SESSION_ID# - ID сессии\n#SIMPLE_QUESTION_807# - Ваше имя и Фамилия\n#SIMPLE_QUESTION_807_RAW# - Ваше имя и Фамилия (оригинальное значение)\n#SIMPLE_QUESTION_801# - Телефон\n#SIMPLE_QUESTION_801_RAW# - Телефон (оригинальное значение)\n#SIMPLE_QUESTION_465# - Email\n#SIMPLE_QUESTION_465_RAW# - Email (оригинальное значение)\n#SIMPLE_QUESTION_551# - Название компании\n#SIMPLE_QUESTION_551_RAW# - Название компании (оригинальное значение)\n#SIMPLE_QUESTION_901# - Опишите вашу задачу:\n#SIMPLE_QUESTION_901_RAW# - Опишите вашу задачу: (оригинальное значение)\n#SIMPLE_QUESTION_534# - Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных. \n#SIMPLE_QUESTION_534_RAW# - Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.  (оригинальное значение)\n#SIMPLE_QUESTION_989# - Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности. \n#SIMPLE_QUESTION_989_RAW# - Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.  (оригинальное значение)\n',100,'email'),(88,'en','FORM_FILLING_SIMPLE_FORM_1','Web form filled \"SIMPLE_FORM_1\"','#RS_FORM_ID# - Form ID\n#RS_FORM_NAME# - Form name\n#RS_FORM_SID# - Form SID\n#RS_RESULT_ID# - Result ID\n#RS_DATE_CREATE# - Form filling date\n#RS_USER_ID# - User ID\n#RS_USER_EMAIL# - User e-mail\n#RS_USER_NAME# - First and last user names\n#RS_USER_AUTH# - User authorized?\n#RS_STAT_GUEST_ID# - Visitor ID\n#RS_STAT_SESSION_ID# - Session ID\n#SIMPLE_QUESTION_807# - Ваше имя и Фамилия\n#SIMPLE_QUESTION_807_RAW# - Ваше имя и Фамилия (original value)\n#SIMPLE_QUESTION_801# - Телефон\n#SIMPLE_QUESTION_801_RAW# - Телефон (original value)\n#SIMPLE_QUESTION_465# - Email\n#SIMPLE_QUESTION_465_RAW# - Email (original value)\n#SIMPLE_QUESTION_551# - Название компании\n#SIMPLE_QUESTION_551_RAW# - Название компании (original value)\n#SIMPLE_QUESTION_901# - Опишите вашу задачу:\n#SIMPLE_QUESTION_901_RAW# - Опишите вашу задачу: (original value)\n#SIMPLE_QUESTION_534# - Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных. \n#SIMPLE_QUESTION_534_RAW# - Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.  (original value)\n#SIMPLE_QUESTION_989# - Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности. \n#SIMPLE_QUESTION_989_RAW# - Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.  (original value)\n',100,'email');
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_favorite`
--

DROP TABLE IF EXISTS `b_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_favorite` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(11) NOT NULL DEFAULT 100,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODULE_ID` varchar(50) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `URL` text DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(11) DEFAULT NULL,
  `COMMON` char(1) NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_favorite`
--

LOCK TABLES `b_favorite` WRITE;
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file`
--

DROP TABLE IF EXISTS `b_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODULE_ID` varchar(50) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `ORIGINAL_NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HANDLER_ID` varchar(50) DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file`
--

LOCK TABLES `b_file` WRITE;
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
INSERT INTO `b_file` VALUES (1,'2024-03-13 16:18:06','iblock',477,796,27091,'image/jpeg','iblock/a36','16vj0qw61huem2lvr6uhv8r4485vf0uu.jpg','test_blog-img1.jpg','',NULL,'e8c967e593b7198ece2a80eb38f192de'),(2,'2024-03-13 17:01:41','iblock',479,801,15717,'image/jpeg','iblock/463','0j01zho8u2qr1nqe9p6iw55oukckuyta.jpg','test_blog-img2.jpg','',NULL,'59576f3706f11e409acdb25b6d595dcd'),(4,'2024-03-13 17:01:41','iblock',964,1919,157009,'image/jpeg','iblock/f93','9k7ecbdrcl3hdexmqm895dg0ri1tlnml.jpg','case-img4.jpg','',NULL,'513001405f7ad723f3fce3899c802528'),(5,'2024-03-13 16:18:06','iblock',964,1919,157009,'image/jpeg','iblock/f93','9k7ecbdrcl3hdexmqm895dg0ri1tlnml.jpg','case-img4.jpg','',NULL,'ab1b9318a6feab8556fbdc88ee4e08be');
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_duplicate`
--

DROP TABLE IF EXISTS `b_file_duplicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_duplicate` (
  `DUPLICATE_ID` int(11) NOT NULL,
  `ORIGINAL_ID` int(11) NOT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT 1,
  `ORIGINAL_DELETED` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`DUPLICATE_ID`,`ORIGINAL_ID`),
  KEY `ix_file_duplicate_duplicate` (`ORIGINAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_duplicate`
--

LOCK TABLES `b_file_duplicate` WRITE;
/*!40000 ALTER TABLE `b_file_duplicate` DISABLE KEYS */;
INSERT INTO `b_file_duplicate` VALUES (5,4,1,'N');
/*!40000 ALTER TABLE `b_file_duplicate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_hash`
--

DROP TABLE IF EXISTS `b_file_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_hash` (
  `FILE_ID` int(11) NOT NULL,
  `FILE_SIZE` bigint(20) NOT NULL,
  `FILE_HASH` varchar(50) NOT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `ix_file_hash_size_hash` (`FILE_SIZE`,`FILE_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_hash`
--

LOCK TABLES `b_file_hash` WRITE;
/*!40000 ALTER TABLE `b_file_hash` DISABLE KEYS */;
INSERT INTO `b_file_hash` VALUES (2,15717,'ddad0e3237ff4e2a2264e32a75244dd7'),(1,27091,'603e10fa849c92b79cb0deba38788cca'),(4,157009,'834cec0069e5881e37897fccbd6c466e');
/*!40000 ALTER TABLE `b_file_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_preview`
--

DROP TABLE IF EXISTS `b_file_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_preview` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(11) NOT NULL,
  `PREVIEW_ID` int(11) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(11) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  KEY `IX_B_FILE_PL_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_preview`
--

LOCK TABLES `b_file_preview` WRITE;
/*!40000 ALTER TABLE `b_file_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_search`
--

DROP TABLE IF EXISTS `b_file_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `F_PATH` varchar(255) DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT 0,
  `F_SIZE` int(11) NOT NULL DEFAULT 0,
  `F_TIME` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_search`
--

LOCK TABLES `b_file_search` WRITE;
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_version`
--

DROP TABLE IF EXISTS `b_file_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_version` (
  `ORIGINAL_ID` int(11) NOT NULL,
  `VERSION_ID` int(11) NOT NULL,
  `META` text DEFAULT NULL,
  PRIMARY KEY (`ORIGINAL_ID`),
  UNIQUE KEY `ux_file_version_version` (`VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_version`
--

LOCK TABLES `b_file_version` WRITE;
/*!40000 ALTER TABLE `b_file_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_filters`
--

DROP TABLE IF EXISTS `b_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_filters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `FILTER_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FIELDS` text NOT NULL,
  `COMMON` char(1) DEFAULT NULL,
  `PRESET` char(1) DEFAULT NULL,
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  `PRESET_ID` varchar(255) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `SORT_FIELD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_filters`
--

LOCK TABLES `b_filters` WRITE;
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_finder_dest`
--

DROP TABLE IF EXISTS `b_finder_dest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) DEFAULT NULL,
  `CONTEXT` varchar(50) NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_finder_dest`
--

LOCK TABLES `b_finder_dest` WRITE;
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form`
--

DROP TABLE IF EXISTS `b_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SID` varchar(50) NOT NULL,
  `BUTTON` varchar(255) DEFAULT NULL,
  `C_SORT` int(18) DEFAULT 100,
  `FIRST_SITE_ID` char(2) DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `USE_CAPTCHA` char(1) DEFAULT 'N',
  `DESCRIPTION` text DEFAULT NULL,
  `DESCRIPTION_TYPE` varchar(4) NOT NULL DEFAULT 'html',
  `FORM_TEMPLATE` text DEFAULT NULL,
  `USE_DEFAULT_TEMPLATE` char(1) DEFAULT 'Y',
  `SHOW_TEMPLATE` varchar(255) DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(255) DEFAULT NULL,
  `SHOW_RESULT_TEMPLATE` varchar(255) DEFAULT NULL,
  `PRINT_RESULT_TEMPLATE` varchar(255) DEFAULT NULL,
  `EDIT_RESULT_TEMPLATE` varchar(255) DEFAULT NULL,
  `FILTER_RESULT_TEMPLATE` text DEFAULT NULL,
  `TABLE_RESULT_TEMPLATE` text DEFAULT NULL,
  `USE_RESTRICTIONS` char(1) DEFAULT 'N',
  `RESTRICT_USER` int(5) DEFAULT 0,
  `RESTRICT_TIME` int(10) DEFAULT 0,
  `RESTRICT_STATUS` varchar(255) DEFAULT NULL,
  `STAT_EVENT1` varchar(255) DEFAULT NULL,
  `STAT_EVENT2` varchar(255) DEFAULT NULL,
  `STAT_EVENT3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SID` (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form`
--

LOCK TABLES `b_form` WRITE;
/*!40000 ALTER TABLE `b_form` DISABLE KEYS */;
INSERT INTO `b_form` VALUES (1,'2024-03-14 14:25:30','Рассчитать проект','SIMPLE_FORM_1','Отправить',100,NULL,NULL,'N','','text','','Y',NULL,'FORM_FILLING_SIMPLE_FORM_1',NULL,NULL,NULL,NULL,NULL,'N',0,0,'','form','','');
/*!40000 ALTER TABLE `b_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_2_group`
--

DROP TABLE IF EXISTS `b_form_2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_2_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `GROUP_ID` int(18) NOT NULL DEFAULT 0,
  `PERMISSION` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_2_group`
--

LOCK TABLES `b_form_2_group` WRITE;
/*!40000 ALTER TABLE `b_form_2_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_2_mail_template`
--

DROP TABLE IF EXISTS `b_form_2_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_2_mail_template` (
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`FORM_ID`,`MAIL_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_2_mail_template`
--

LOCK TABLES `b_form_2_mail_template` WRITE;
/*!40000 ALTER TABLE `b_form_2_mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_2_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_2_site`
--

DROP TABLE IF EXISTS `b_form_2_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_2_site` (
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`FORM_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_2_site`
--

LOCK TABLES `b_form_2_site` WRITE;
/*!40000 ALTER TABLE `b_form_2_site` DISABLE KEYS */;
INSERT INTO `b_form_2_site` VALUES (1,'s1');
/*!40000 ALTER TABLE `b_form_2_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_answer`
--

DROP TABLE IF EXISTS `b_form_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FIELD_ID` int(18) NOT NULL DEFAULT 0,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MESSAGE` text DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `VALUE` varchar(255) DEFAULT NULL,
  `FIELD_TYPE` varchar(255) NOT NULL DEFAULT 'text',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_answer`
--

LOCK TABLES `b_form_answer` WRITE;
/*!40000 ALTER TABLE `b_form_answer` DISABLE KEYS */;
INSERT INTO `b_form_answer` VALUES (1,1,'2024-03-14 14:26:37',' ',0,'Y','','text',0,0,''),(2,2,'2024-03-14 14:27:00',' ',0,'Y','','text',0,0,''),(3,3,'2024-03-14 14:27:12',' ',0,'Y','','text',0,0,''),(4,4,'2024-03-14 14:27:27',' ',0,'Y','','text',0,0,''),(5,5,'2024-03-14 14:27:51',' ',0,'Y','','text',0,0,''),(6,6,'2024-03-14 14:28:28',' ',0,'Y','','checkbox',0,0,''),(7,7,'2024-03-14 14:28:53',' ',0,'Y','','checkbox',0,0,'');
/*!40000 ALTER TABLE `b_form_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_crm`
--

DROP TABLE IF EXISTS `b_form_crm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_crm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `ACTIVE` char(1) DEFAULT 'Y',
  `URL` varchar(255) NOT NULL DEFAULT '',
  `AUTH_HASH` varchar(32) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_crm`
--

LOCK TABLES `b_form_crm` WRITE;
/*!40000 ALTER TABLE `b_form_crm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_crm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_crm_field`
--

DROP TABLE IF EXISTS `b_form_crm_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_crm_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LINK_ID` int(18) NOT NULL DEFAULT 0,
  `FIELD_ID` int(18) DEFAULT 0,
  `FIELD_ALT` varchar(100) DEFAULT '',
  `CRM_FIELD` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `ix_b_form_crm_field_1` (`LINK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_crm_field`
--

LOCK TABLES `b_form_crm_field` WRITE;
/*!40000 ALTER TABLE `b_form_crm_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_crm_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_crm_link`
--

DROP TABLE IF EXISTS `b_form_crm_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_crm_link` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `CRM_ID` int(18) NOT NULL DEFAULT 0,
  `LINK_TYPE` char(1) NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_form_crm_link_1` (`FORM_ID`,`CRM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_crm_link`
--

LOCK TABLES `b_form_crm_link` WRITE;
/*!40000 ALTER TABLE `b_form_crm_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_crm_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_field`
--

DROP TABLE IF EXISTS `b_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `TITLE` text DEFAULT NULL,
  `TITLE_TYPE` varchar(4) NOT NULL DEFAULT 'text',
  `SID` varchar(50) DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `ADDITIONAL` char(1) NOT NULL DEFAULT 'N',
  `REQUIRED` char(1) NOT NULL DEFAULT 'N',
  `IN_FILTER` char(1) NOT NULL DEFAULT 'N',
  `IN_RESULTS_TABLE` char(1) NOT NULL DEFAULT 'N',
  `IN_EXCEL_TABLE` char(1) NOT NULL DEFAULT 'Y',
  `FIELD_TYPE` varchar(50) DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  `FILTER_TITLE` text DEFAULT NULL,
  `RESULTS_TABLE_TITLE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`),
  KEY `IX_SID` (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_field`
--

LOCK TABLES `b_form_field` WRITE;
/*!40000 ALTER TABLE `b_form_field` DISABLE KEYS */;
INSERT INTO `b_form_field` VALUES (1,1,'2024-03-14 14:26:37','Y','Ваше имя и Фамилия','text','SIMPLE_QUESTION_807',100,'N','N','Y','Y','Y','text',NULL,'','Ваше имя и Фамилия','Ваше имя и Фамилия'),(2,1,'2024-03-14 14:27:00','Y','Телефон','text','SIMPLE_QUESTION_801',200,'N','N','Y','Y','Y','text',NULL,'','Телефон','Телефон'),(3,1,'2024-03-14 14:27:12','Y','Email','text','SIMPLE_QUESTION_465',300,'N','N','Y','Y','Y','text',NULL,'','Email','Email'),(4,1,'2024-03-14 14:27:27','Y','Название компании','text','SIMPLE_QUESTION_551',400,'N','N','Y','Y','Y','text',NULL,'','Название компании','Название компании'),(5,1,'2024-03-14 14:27:51','Y','Опишите вашу задачу:','text','SIMPLE_QUESTION_901',500,'N','N','Y','Y','Y','text',NULL,'','Опишите вашу задачу:','Опишите вашу задачу:'),(6,1,'2024-03-14 14:28:28','Y','Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных. ','text','SIMPLE_QUESTION_534',600,'N','N','Y','Y','Y','text',NULL,'','Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных. ','Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных. '),(7,1,'2024-03-14 14:28:53','Y','Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности. ','text','SIMPLE_QUESTION_989',700,'N','N','Y','Y','Y','text',NULL,'','Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности. ','Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности. ');
/*!40000 ALTER TABLE `b_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_field_filter`
--

DROP TABLE IF EXISTS `b_form_field_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_field_filter` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FIELD_ID` int(18) NOT NULL DEFAULT 0,
  `PARAMETER_NAME` varchar(50) NOT NULL,
  `FILTER_TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_field_filter`
--

LOCK TABLES `b_form_field_filter` WRITE;
/*!40000 ALTER TABLE `b_form_field_filter` DISABLE KEYS */;
INSERT INTO `b_form_field_filter` VALUES (1,1,'USER','text'),(2,1,'USER','exist'),(3,2,'USER','text'),(4,2,'USER','exist'),(5,3,'USER','text'),(6,3,'USER','exist'),(7,4,'USER','text'),(8,4,'USER','exist'),(9,5,'USER','text'),(10,5,'USER','exist'),(11,6,'ANSWER_TEXT','dropdown'),(12,7,'ANSWER_TEXT','dropdown');
/*!40000 ALTER TABLE `b_form_field_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_field_validator`
--

DROP TABLE IF EXISTS `b_form_field_validator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_field_validator` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `FIELD_ID` int(18) NOT NULL DEFAULT 0,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) DEFAULT 'y',
  `C_SORT` int(18) DEFAULT 100,
  `VALIDATOR_SID` varchar(255) NOT NULL DEFAULT '',
  `PARAMS` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_field_validator`
--

LOCK TABLES `b_form_field_validator` WRITE;
/*!40000 ALTER TABLE `b_form_field_validator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_field_validator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_menu`
--

DROP TABLE IF EXISTS `b_form_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_menu` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `LID` char(2) NOT NULL,
  `MENU` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_menu`
--

LOCK TABLES `b_form_menu` WRITE;
/*!40000 ALTER TABLE `b_form_menu` DISABLE KEYS */;
INSERT INTO `b_form_menu` VALUES (3,1,'ru',''),(4,1,'en','');
/*!40000 ALTER TABLE `b_form_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_result`
--

DROP TABLE IF EXISTS `b_form_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_result` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `USER_ID` int(18) DEFAULT NULL,
  `USER_AUTH` char(1) NOT NULL DEFAULT 'N',
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `SENT_TO_CRM` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`),
  KEY `IX_STATUS_ID` (`STATUS_ID`),
  KEY `IX_SENT_TO_CRM` (`SENT_TO_CRM`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_result`
--

LOCK TABLES `b_form_result` WRITE;
/*!40000 ALTER TABLE `b_form_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_result_answer`
--

DROP TABLE IF EXISTS `b_form_result_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_result_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `RESULT_ID` int(18) NOT NULL DEFAULT 0,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `FIELD_ID` int(18) NOT NULL DEFAULT 0,
  `ANSWER_ID` int(18) DEFAULT NULL,
  `ANSWER_TEXT` text DEFAULT NULL,
  `ANSWER_TEXT_SEARCH` longtext DEFAULT NULL,
  `ANSWER_VALUE` varchar(255) DEFAULT NULL,
  `ANSWER_VALUE_SEARCH` longtext DEFAULT NULL,
  `USER_TEXT` longtext DEFAULT NULL,
  `USER_TEXT_SEARCH` longtext DEFAULT NULL,
  `USER_DATE` datetime DEFAULT NULL,
  `USER_FILE_ID` int(18) DEFAULT NULL,
  `USER_FILE_NAME` varchar(255) DEFAULT NULL,
  `USER_FILE_IS_IMAGE` char(1) DEFAULT NULL,
  `USER_FILE_HASH` varchar(255) DEFAULT NULL,
  `USER_FILE_SUFFIX` varchar(255) DEFAULT NULL,
  `USER_FILE_SIZE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RESULT_ID` (`RESULT_ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`),
  KEY `IX_ANSWER_ID` (`ANSWER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_result_answer`
--

LOCK TABLES `b_form_result_answer` WRITE;
/*!40000 ALTER TABLE `b_form_result_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_result_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_status`
--

DROP TABLE IF EXISTS `b_form_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_status` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT 0,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `TITLE` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `DEFAULT_VALUE` char(1) NOT NULL DEFAULT 'N',
  `CSS` varchar(255) DEFAULT 'statusgreen',
  `HANDLER_OUT` varchar(255) DEFAULT NULL,
  `HANDLER_IN` varchar(255) DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_status`
--

LOCK TABLES `b_form_status` WRITE;
/*!40000 ALTER TABLE `b_form_status` DISABLE KEYS */;
INSERT INTO `b_form_status` VALUES (1,1,'2024-03-14 14:25:30','Y',100,'DEFAULT','DEFAULT','Y','statusgreen',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_form_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_status_2_group`
--

DROP TABLE IF EXISTS `b_form_status_2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_status_2_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `GROUP_ID` int(18) NOT NULL DEFAULT 0,
  `PERMISSION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_STATUS_GROUP` (`STATUS_ID`,`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_status_2_group`
--

LOCK TABLES `b_form_status_2_group` WRITE;
/*!40000 ALTER TABLE `b_form_status_2_group` DISABLE KEYS */;
INSERT INTO `b_form_status_2_group` VALUES (1,1,0,'VIEW'),(2,1,0,'MOVE'),(3,1,0,'EDIT'),(4,1,0,'DELETE');
/*!40000 ALTER TABLE `b_form_status_2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_status_2_mail_template`
--

DROP TABLE IF EXISTS `b_form_status_2_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_status_2_mail_template` (
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`STATUS_ID`,`MAIL_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_status_2_mail_template`
--

LOCK TABLES `b_form_status_2_mail_template` WRITE;
/*!40000 ALTER TABLE `b_form_status_2_mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_status_2_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum`
--

DROP TABLE IF EXISTS `b_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FORUM_GROUP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT 150,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) NOT NULL DEFAULT 'N',
  `ALLOW_ANCHOR` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_BIU` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_IMG` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_VIDEO` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_LIST` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_QUOTE` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_CODE` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_FONT` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_SMILES` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD` char(1) NOT NULL DEFAULT 'N',
  `ALLOW_TABLE` char(1) NOT NULL DEFAULT 'N',
  `ALLOW_ALIGN` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD_EXT` varchar(255) DEFAULT NULL,
  `ALLOW_MOVE_TOPIC` char(1) NOT NULL DEFAULT 'Y',
  `ALLOW_TOPIC_TITLED` char(1) NOT NULL DEFAULT 'N',
  `ALLOW_NL2BR` char(1) NOT NULL DEFAULT 'N',
  `ALLOW_SIGNATURE` char(1) NOT NULL DEFAULT 'Y',
  `PATH2FORUM_MESSAGE` varchar(255) DEFAULT NULL,
  `ASK_GUEST_EMAIL` char(1) NOT NULL DEFAULT 'N',
  `USE_CAPTCHA` char(1) NOT NULL DEFAULT 'N',
  `INDEXATION` char(1) NOT NULL DEFAULT 'Y',
  `DEDUPLICATION` char(1) NOT NULL DEFAULT 'Y',
  `MODERATION` char(1) NOT NULL DEFAULT 'N',
  `ORDER_BY` char(1) NOT NULL DEFAULT 'P',
  `ORDER_DIRECTION` varchar(4) NOT NULL DEFAULT 'DESC',
  `LID` char(2) NOT NULL DEFAULT 'ru',
  `TOPICS` int(11) NOT NULL DEFAULT 0,
  `POSTS` int(11) NOT NULL DEFAULT 0,
  `LAST_POSTER_ID` int(11) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT 0,
  `ABS_LAST_POSTER_ID` int(11) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `EVENT1` varchar(255) DEFAULT 'forum',
  `EVENT2` varchar(255) DEFAULT 'message',
  `EVENT3` varchar(255) DEFAULT NULL,
  `HTML` varchar(255) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_SORT` (`SORT`),
  KEY `IX_FORUM_ACTIVE` (`ACTIVE`),
  KEY `IX_FORUM_GROUP_ID` (`FORUM_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum`
--

LOCK TABLES `b_forum` WRITE;
/*!40000 ALTER TABLE `b_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum2site`
--

DROP TABLE IF EXISTS `b_forum2site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum2site` (
  `FORUM_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  `PATH2FORUM_MESSAGE` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`FORUM_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum2site`
--

LOCK TABLES `b_forum2site` WRITE;
/*!40000 ALTER TABLE `b_forum2site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum2site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_dictionary`
--

DROP TABLE IF EXISTS `b_forum_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_dictionary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) DEFAULT NULL,
  `TYPE` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_dictionary`
--

LOCK TABLES `b_forum_dictionary` WRITE;
/*!40000 ALTER TABLE `b_forum_dictionary` DISABLE KEYS */;
INSERT INTO `b_forum_dictionary` VALUES (1,'[ru] Словарь слов','W'),(2,'[ru] Словарь транслита','T'),(3,'[en] Bad words','W'),(4,'[en] Transliteration','T');
/*!40000 ALTER TABLE `b_forum_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_email`
--

DROP TABLE IF EXISTS `b_forum_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_email` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_FORUM_ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `FORUM_ID` int(11) NOT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `MAIL_FILTER_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `USE_EMAIL` char(1) DEFAULT NULL,
  `EMAIL_GROUP` varchar(255) DEFAULT NULL,
  `SUBJECT_SUF` varchar(50) DEFAULT NULL,
  `USE_SUBJECT` char(1) DEFAULT NULL,
  `URL_TEMPLATES_MESSAGE` varchar(255) DEFAULT NULL,
  `NOT_MEMBER_POST` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_EMAIL_FORUM_SOC` (`FORUM_ID`,`SOCNET_GROUP_ID`),
  KEY `IX_B_FORUM_EMAIL_FILTER_ID` (`MAIL_FILTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_email`
--

LOCK TABLES `b_forum_email` WRITE;
/*!40000 ALTER TABLE `b_forum_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_file`
--

DROP TABLE IF EXISTS `b_forum_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(18) DEFAULT NULL,
  `TOPIC_ID` int(20) DEFAULT NULL,
  `MESSAGE_ID` int(20) DEFAULT NULL,
  `FILE_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `HITS` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_FILE_FILE` (`FILE_ID`),
  KEY `IX_FORUM_FILE_FORUM` (`FORUM_ID`),
  KEY `IX_FORUM_FILE_TOPIC` (`TOPIC_ID`),
  KEY `IX_FORUM_FILE_MESSAGE` (`MESSAGE_ID`),
  CONSTRAINT `b_forum_file_ibfk_1` FOREIGN KEY (`FILE_ID`) REFERENCES `b_file` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_file`
--

LOCK TABLES `b_forum_file` WRITE;
/*!40000 ALTER TABLE `b_forum_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_filter`
--

DROP TABLE IF EXISTS `b_forum_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_filter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DICTIONARY_ID` int(11) DEFAULT NULL,
  `WORDS` varchar(255) DEFAULT NULL,
  `PATTERN` text DEFAULT NULL,
  `REPLACEMENT` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `USE_IT` varchar(50) DEFAULT NULL,
  `PATTERN_CREATE` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_FILTER_2` (`USE_IT`),
  KEY `IX_B_FORUM_FILTER_3` (`PATTERN_CREATE`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_filter`
--

LOCK TABLES `b_forum_filter` WRITE;
/*!40000 ALTER TABLE `b_forum_filter` DISABLE KEYS */;
INSERT INTO `b_forum_filter` VALUES (1,1,'*пизд*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(2,1,'*пизж*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(3,1,'*сра%','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([СсCc]+)([РрPpRr]+)([АаAa]+)([[Цц]+([Аа]+|[Оо]+)]+|[[Тт]+([Ьь]+|)[Сс]+[Яя]+]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(4,1,'анобляд*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([АаAa]+)([НнNn]+)([ОоOo]+)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(5,1,'взъеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвVv]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(6,1,'бля','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(7,1,'долбоеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([ОоOo]+)([ЛлLl]+)([БбBb]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(8,1,'дуроеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([УуUu]+)([РрPpRr]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(9,1,'еби','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(10,1,'ебисти*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)([ТтTt]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(11,1,'ебическ*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([Чч]+)([ЁёЕеEe]+)([СсCc]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(12,1,'еблив*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ИиIi]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(13,1,'ебло*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ОоOo]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(14,1,'еблыс*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Ыы]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(15,1,'ебля','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(16,1,'ебс','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([СсCc]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(17,1,'ебукент*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([КкKk]+)([ЁёЕеEe]+)([НнNn]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(18,1,'ебурген*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([РрPpRr]+)([Гг]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(19,1,'коноебит*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([КкKk]+)([ОоOo]+)([НнNn]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(20,1,'мозгоеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([ОоOo]+)([ЗзZz3]+)([Гг]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(21,1,'мудоеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(22,1,'однохуйствен*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ДдDd]+)([НнNn]+)([ОоOo]+)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)([СсCc]+)([ТтTt]+)([ВвVv]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(23,1,'охуе*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(24,1,'охуи*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(25,1,'охуя*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(26,1,'разъеба*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(27,1,'распиздон*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)([ОоOo]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(28,1,'расхуюж*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ХхXx]+)([УуUu]+)([Юю]+|[[Йй]+[Оо]+]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(29,1,'худоебин*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(30,1,'хуе','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(31,1,'хуебрат*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([БбBb]+)([РрPpRr]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(32,1,'хуеглот*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([Гг]+)([ЛлLl]+)([ОоOo]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(33,1,'хуеплёт*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ПпPp]+)([ЛлLl]+)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(34,1,'хует*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(35,1,'хуила','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ИиIi]+)([ЛлLl]+)([АаAa]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(36,1,'хул?','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЛлLl]+).?)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(37,1,'хуя','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(38,1,'^бляд*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(39,1,'^пидор*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ПпPp]+)([ИиIi]+)([ДдDd]+)([ОоOo]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(40,1,'^хуев*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(41,1,'^хуем*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(42,1,'^хуй*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(43,1,'^хуяк*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(44,1,'^хуям*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(45,1,'^хуяр*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(46,1,'^хуяч*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(47,1,'^ъебал*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ЛлLl]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(48,1,'^ъебан*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(49,1,'^ъебар*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(50,1,'^ъебат*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(51,1,'^ъебен*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(52,1,'^ъеби','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(53,1,'^ъебис*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(54,1,'^ъебит*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(55,1,'^ъёбля*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([ЛлLl]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(56,1,'^ъёбну*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([НнNn]+)([УуUu]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(57,1,'^ъебу','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(58,1,'^ъебуч*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(59,1,'^ъебыв*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([Ыы]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(60,1,'/(?<=[s.,;:!?-#*|[]()])(?![Вв][ЕеЁё][Бб])(([ВвЗзСс]+|[Ввы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)|)([ЬьЪъ]+|)([ЁёЕеEe]+|[Йй]+[Оо]+|[Yy]+[Oo]+)([BbБб]+))(?=[s.,;:!?-#*|[]()])/is','','','','Y','PTTRN'),(61,3,'angry','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+n+g+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(62,3,'ass','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(63,3,'asshole','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(64,3,'banger','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+n+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(65,3,'bastard','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+s+t+a+r+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(66,3,'batter','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+t+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(67,3,'bicho','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+c+h+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(68,3,'bisexual','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+s+e+x+u+a+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(69,3,'bitch','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(70,3,'blumpkin','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+l+u+m+p+k+i+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(71,3,'booger','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+o+o+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(72,3,'bugger*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+g+g+e+r+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(73,3,'bukakke','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+k+a+k+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(74,3,'bull','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(75,3,'bulldyke','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+d+y+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(76,3,'bullshit','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(77,3,'bunny','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(78,3,'bunnyfuck','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+f+u+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(79,3,'chocha','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+c+h+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(80,3,'chode','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+d+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(81,3,'clap','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+l+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(82,3,'coconuts','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+c+o+n+u+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(83,3,'cohones','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+h+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(84,3,'cojones','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+j+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(85,3,'coon','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(86,3,'cootch','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(87,3,'cooter','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(88,3,'cornhole','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+r+n+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(89,3,'cracka','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+c+k+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(90,3,'crap','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(91,3,'cum','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+m+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(92,3,'cunnilingus','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+n+i+l+i+n+g+u+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(93,3,'cunt*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+t+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(94,3,'damn*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+m+n+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(95,3,'dark*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+r+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(96,3,'dick','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(97,3,'dickhead','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+h+e+a+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(98,3,'diddle','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+d+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(99,3,'dildo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+d+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(100,3,'dilhole','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(101,3,'dingleberry','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+n+g+l+e+b+e+r+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(102,3,'doodle','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+o+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(103,3,'dork','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+r+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(104,3,'dumpster','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+u+m+p+s+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(105,3,'faggot','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+g+g+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(106,3,'fart','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(107,3,'frig','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+r+i+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(108,3,'fuck*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(109,3,'fucker','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(110,3,'giz','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+i+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(111,3,'goatse','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+a+t+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(112,3,'gook','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+o+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(113,3,'gringo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+r+i+n+g+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(114,3,'hobo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+b+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(115,3,'honky','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+n+k+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(116,3,'jackass','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(117,3,'jackoff','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(118,3,'jerkoff','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+e+r+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(119,3,'jiggaboo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+g+g+a+b+o+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(120,3,'jizz','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+z+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(121,3,'kike','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(k+i+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(122,3,'mayo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+a+y+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(123,3,'moose','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+o+o+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(124,3,'nigg*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(n+i+g+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(125,3,'paki','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+a+k+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(126,3,'pecker','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+e+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(127,3,'piss','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+i+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(128,3,'poonanni','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+a+n+n+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(129,3,'poontang','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+t+a+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(130,3,'prick','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+r+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(131,3,'punch','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+u+n+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(132,3,'queef','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(q+u+e+e+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(133,3,'rogue','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(r+o+g+u+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(134,3,'sanchez','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+a+n+c+h+e+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(135,3,'schlong','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+c+h+l+o+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(136,3,'shit','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(137,3,'skank','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+k+a+n+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(138,3,'spaz','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+a+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(139,3,'spic','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+i+c+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(140,3,'teabag*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+e+a+b+a+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(141,3,'tits','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+i+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(142,3,'twat','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+a+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(143,3,'twot','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(144,3,'vart','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(v+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(145,3,'wanker','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+n+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(146,3,'waste','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+s+t+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(147,3,'wetback','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+e+t+b+a+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(148,3,'whore','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+h+o+r+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(149,3,'wigger','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+i+g+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(150,3,'wog','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(151,3,'wop','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL');
/*!40000 ALTER TABLE `b_forum_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_group`
--

DROP TABLE IF EXISTS `b_forum_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT 150,
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_group`
--

LOCK TABLES `b_forum_group` WRITE;
/*!40000 ALTER TABLE `b_forum_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_group_lang`
--

DROP TABLE IF EXISTS `b_forum_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_group_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FORUM_GROUP_ID` int(11) NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_GROUP` (`FORUM_GROUP_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_group_lang`
--

LOCK TABLES `b_forum_group_lang` WRITE;
/*!40000 ALTER TABLE `b_forum_group_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_letter`
--

DROP TABLE IF EXISTS `b_forum_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_letter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DICTIONARY_ID` int(11) DEFAULT 0,
  `LETTER` varchar(50) DEFAULT NULL,
  `REPLACEMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_letter`
--

LOCK TABLES `b_forum_letter` WRITE;
/*!40000 ALTER TABLE `b_forum_letter` DISABLE KEYS */;
INSERT INTO `b_forum_letter` VALUES (1,2,'а','АаAa'),(2,2,'б','БбBb'),(3,2,'в','ВвVv'),(4,2,'г','Гг'),(5,2,'д','ДдDd'),(6,2,'е','ЁёЕеEe'),(7,2,'ё','ЁёЕеEe, [Йй]+[Оо]+'),(8,2,'ж','ЖжGg'),(9,2,'з','ЗзZz3'),(10,2,'и','ИиIi'),(11,2,'й','ЙйИиYy'),(12,2,'к','КкKk'),(13,2,'л','ЛлLl'),(14,2,'м','МмMm'),(15,2,'н','НнNn'),(16,2,'о','ОоOo'),(17,2,'п','ПпPp'),(18,2,'р','РрPpRr'),(19,2,'с','СсCc'),(20,2,'т','ТтTt'),(21,2,'у','УуUu'),(22,2,'ф','ФфFf'),(23,2,'х','ХхXx'),(24,2,'ц','ЦцCc'),(25,2,'ч','Чч'),(26,2,'ш','Шш'),(27,2,'щ','Щщ'),(28,2,'ь','ЪъЬь\"\','),(29,2,'ы','Ыы'),(30,2,'ъ','ЪъЬь\"\','),(31,2,'э','Ээ'),(32,2,'ю','Юю, [Йй]+[Оо]+'),(33,2,'я','Яя'),(34,2,'%','[Цц]+([Аа]+|[Оо]+), [Тт]+([Ьь]+|)[Сс]+[Яя]+'),(35,2,'^',',ВвЗзСс,ВвЫы,ДдОо,ЗзАа,ИиЗзСс,НнАа,НнЕе,ОоТт,([Пп]*[Ее]+[Рр]+[Ее]+)'),(36,2,'тся','%'),(37,2,'ться','%');
/*!40000 ALTER TABLE `b_forum_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_message`
--

DROP TABLE IF EXISTS `b_forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_message` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) NOT NULL,
  `USE_SMILES` char(1) NOT NULL DEFAULT 'Y',
  `NEW_TOPIC` char(1) NOT NULL DEFAULT 'N',
  `APPROVED` char(1) NOT NULL DEFAULT 'Y',
  `SOURCE_ID` varchar(255) NOT NULL DEFAULT 'WEB',
  `POST_DATE` datetime NOT NULL,
  `POST_MESSAGE` text DEFAULT NULL,
  `POST_MESSAGE_HTML` text DEFAULT NULL,
  `POST_MESSAGE_FILTER` text DEFAULT NULL,
  `POST_MESSAGE_CHECK` char(32) DEFAULT NULL,
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `PARAM1` varchar(2) DEFAULT NULL,
  `PARAM2` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(10) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) DEFAULT NULL,
  `AUTHOR_IP` varchar(255) DEFAULT NULL,
  `AUTHOR_REAL_IP` varchar(128) DEFAULT NULL,
  `GUEST_ID` int(10) DEFAULT NULL,
  `EDITOR_ID` int(10) DEFAULT NULL,
  `EDITOR_NAME` varchar(255) DEFAULT NULL,
  `EDITOR_EMAIL` varchar(255) DEFAULT NULL,
  `EDIT_REASON` text DEFAULT NULL,
  `EDIT_DATE` datetime DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `HTML` text DEFAULT NULL,
  `MAIL_HEADER` text DEFAULT NULL,
  `SERVICE_TYPE` tinyint(4) DEFAULT NULL,
  `SERVICE_DATA` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_MESSAGE_FORUM` (`FORUM_ID`,`APPROVED`),
  KEY `IX_FORUM_MESSAGE_FORUM_TOPIC` (`FORUM_ID`,`TOPIC_ID`),
  KEY `IX_FORUM_MESSAGE_TOPIC` (`TOPIC_ID`,`APPROVED`),
  KEY `IX_FORUM_MESSAGE_AUTHOR` (`AUTHOR_ID`,`APPROVED`,`FORUM_ID`),
  KEY `IX_FORUM_MESSAGE_APPROVED` (`APPROVED`),
  KEY `IX_FORUM_MESSAGE_PARAM2` (`PARAM2`),
  KEY `IX_FORUM_MESSAGE_XML_ID` (`XML_ID`),
  KEY `IX_FORUM_MESSAGE_DATE_AUTHOR_ID` (`POST_DATE`,`AUTHOR_ID`),
  KEY `IX_FORUM_MESSAGE_AUTHOR_TOPIC_ID` (`AUTHOR_ID`,`TOPIC_ID`),
  KEY `IX_FORUM_MESSAGE_AUTHOR_FORUM_ID` (`AUTHOR_ID`,`FORUM_ID`,`ID`,`APPROVED`,`TOPIC_ID`),
  KEY `IX_FORUM_MESSAGE_SERVICE_TYPE` (`SERVICE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_message`
--

LOCK TABLES `b_forum_message` WRITE;
/*!40000 ALTER TABLE `b_forum_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_perms`
--

DROP TABLE IF EXISTS `b_forum_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_perms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_PERMS_FORUM` (`FORUM_ID`,`GROUP_ID`),
  KEY `IX_FORUM_PERMS_GROUP` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_perms`
--

LOCK TABLES `b_forum_perms` WRITE;
/*!40000 ALTER TABLE `b_forum_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_pm_folder`
--

DROP TABLE IF EXISTS `b_forum_pm_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_pm_folder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_PM_FOLDER_USER_IST` (`USER_ID`,`ID`,`SORT`,`TITLE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_pm_folder`
--

LOCK TABLES `b_forum_pm_folder` WRITE;
/*!40000 ALTER TABLE `b_forum_pm_folder` DISABLE KEYS */;
INSERT INTO `b_forum_pm_folder` VALUES (1,'SYSTEM_FOLDER_1',0,0),(2,'SYSTEM_FOLDER_2',0,0),(3,'SYSTEM_FOLDER_3',0,0),(4,'SYSTEM_FOLDER_4',0,0);
/*!40000 ALTER TABLE `b_forum_pm_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_points`
--

DROP TABLE IF EXISTS `b_forum_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_points` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MIN_POINTS` int(11) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_P_MP` (`MIN_POINTS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_points`
--

LOCK TABLES `b_forum_points` WRITE;
/*!40000 ALTER TABLE `b_forum_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_points2post`
--

DROP TABLE IF EXISTS `b_forum_points2post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_points2post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MIN_NUM_POSTS` int(11) NOT NULL,
  `POINTS_PER_POST` decimal(18,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_P2P_MNP` (`MIN_NUM_POSTS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_points2post`
--

LOCK TABLES `b_forum_points2post` WRITE;
/*!40000 ALTER TABLE `b_forum_points2post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_points2post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_points_lang`
--

DROP TABLE IF EXISTS `b_forum_points_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_points_lang` (
  `POINTS_ID` int(11) NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`POINTS_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_points_lang`
--

LOCK TABLES `b_forum_points_lang` WRITE;
/*!40000 ALTER TABLE `b_forum_points_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_points_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_private_message`
--

DROP TABLE IF EXISTS `b_forum_private_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_private_message` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `AUTHOR_ID` int(11) DEFAULT 0,
  `RECIPIENT_ID` int(11) DEFAULT 0,
  `POST_DATE` datetime DEFAULT NULL,
  `POST_SUBJ` varchar(255) DEFAULT NULL,
  `POST_MESSAGE` text NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `IS_READ` char(1) DEFAULT NULL,
  `REQUEST_IS_READ` char(1) DEFAULT NULL,
  `USE_SMILES` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_PM_AFR` (`AUTHOR_ID`,`FOLDER_ID`,`IS_READ`),
  KEY `IX_B_FORUM_PM_UFP` (`USER_ID`,`FOLDER_ID`,`POST_DATE`),
  KEY `IX_B_FORUM_PM_POST_DATE` (`POST_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_private_message`
--

LOCK TABLES `b_forum_private_message` WRITE;
/*!40000 ALTER TABLE `b_forum_private_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_private_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_rank`
--

DROP TABLE IF EXISTS `b_forum_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) DEFAULT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_rank`
--

LOCK TABLES `b_forum_rank` WRITE;
/*!40000 ALTER TABLE `b_forum_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_rank_lang`
--

DROP TABLE IF EXISTS `b_forum_rank_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_rank_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RANK_ID` int(11) NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_RANK` (`RANK_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_rank_lang`
--

LOCK TABLES `b_forum_rank_lang` WRITE;
/*!40000 ALTER TABLE `b_forum_rank_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_rank_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_service_deleted_message`
--

DROP TABLE IF EXISTS `b_forum_service_deleted_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_service_deleted_message` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) NOT NULL,
  `MESSAGE_ID` bigint(20) NOT NULL,
  `NEW_TOPIC` char(1) NOT NULL DEFAULT 'N',
  `APPROVED` char(1) NOT NULL DEFAULT 'Y',
  `PARAM1` varchar(2) DEFAULT NULL,
  `PARAM2` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_MESSAGE_DELETED_ID` (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_service_deleted_message`
--

LOCK TABLES `b_forum_service_deleted_message` WRITE;
/*!40000 ALTER TABLE `b_forum_service_deleted_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_service_deleted_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_service_statistic_queue`
--

DROP TABLE IF EXISTS `b_forum_service_statistic_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_service_statistic_queue` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(20) DEFAULT NULL,
  `ENTITY_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_SERVICE_STATISTIC` (`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_service_statistic_queue`
--

LOCK TABLES `b_forum_service_statistic_queue` WRITE;
/*!40000 ALTER TABLE `b_forum_service_statistic_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_service_statistic_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_stat`
--

DROP TABLE IF EXISTS `b_forum_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_stat` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) DEFAULT NULL,
  `IP_ADDRESS` varchar(128) DEFAULT NULL,
  `PHPSESSID` varchar(255) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  `FORUM_ID` smallint(5) NOT NULL DEFAULT 0,
  `TOPIC_ID` int(10) DEFAULT NULL,
  `SHOW_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_STAT_SITE_ID` (`SITE_ID`,`LAST_VISIT`),
  KEY `IX_B_FORUM_STAT_TOPIC_ID` (`TOPIC_ID`,`LAST_VISIT`),
  KEY `IX_B_FORUM_STAT_FORUM_ID` (`FORUM_ID`,`LAST_VISIT`),
  KEY `IX_B_FORUM_STAT_PHPSESSID` (`PHPSESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_stat`
--

LOCK TABLES `b_forum_stat` WRITE;
/*!40000 ALTER TABLE `b_forum_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_subscribe`
--

DROP TABLE IF EXISTS `b_forum_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_subscribe` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` int(10) DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `LAST_SEND` int(10) DEFAULT NULL,
  `NEW_TOPIC_ONLY` char(50) NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) NOT NULL DEFAULT 'ru',
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_SUBSCRIBE_USER` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`,`SOCNET_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_subscribe`
--

LOCK TABLES `b_forum_subscribe` WRITE;
/*!40000 ALTER TABLE `b_forum_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_topic`
--

DROP TABLE IF EXISTS `b_forum_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_topic` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) DEFAULT NULL,
  `TITLE` varchar(255) NOT NULL,
  `TITLE_SEO` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `STATE` char(1) NOT NULL DEFAULT 'Y',
  `APPROVED` char(1) NOT NULL DEFAULT 'Y',
  `SORT` int(10) NOT NULL DEFAULT 150,
  `VIEWS` int(10) NOT NULL DEFAULT 0,
  `USER_START_ID` int(10) DEFAULT NULL,
  `USER_START_NAME` varchar(255) DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `POSTS` int(10) NOT NULL DEFAULT 0,
  `POSTS_SERVICE` int(10) NOT NULL DEFAULT 0,
  `LAST_POSTER_ID` int(10) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) NOT NULL,
  `LAST_POST_DATE` datetime NOT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT 0,
  `ABS_LAST_POSTER_ID` int(10) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `HTML` text DEFAULT NULL,
  `SOCNET_GROUP_ID` int(10) DEFAULT NULL,
  `OWNER_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_TOPIC_FORUM` (`FORUM_ID`,`APPROVED`),
  KEY `IX_FORUM_TOPIC_APPROVED` (`APPROVED`),
  KEY `IX_FORUM_TOPIC_ABS_L_POST_DATE` (`ABS_LAST_POST_DATE`),
  KEY `IX_FORUM_TOPIC_LAST_POST_DATE` (`LAST_POST_DATE`),
  KEY `IX_FORUM_TOPIC_USER_START_ID` (`USER_START_ID`),
  KEY `IX_FORUM_TOPIC_LAST_POSTER_ID` (`LAST_POSTER_ID`),
  KEY `IX_FORUM_TOPIC_DATE_USER_START_ID` (`START_DATE`,`USER_START_ID`),
  KEY `IX_FORUM_TOPIC_XML_ID` (`XML_ID`),
  KEY `IX_FORUM_TOPIC_TITLE_SEO` (`FORUM_ID`,`TITLE_SEO`),
  KEY `IX_FORUM_TOPIC_TITLE_SEO2` (`TITLE_SEO`),
  KEY `IX_FORUM_OWNER_ID` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_topic`
--

LOCK TABLES `b_forum_topic` WRITE;
/*!40000 ALTER TABLE `b_forum_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user`
--

DROP TABLE IF EXISTS `b_forum_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `ALIAS` varchar(64) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(128) DEFAULT NULL,
  `AVATAR` int(10) DEFAULT NULL,
  `NUM_POSTS` int(10) DEFAULT 0,
  `INTERESTS` text DEFAULT NULL,
  `LAST_POST` int(10) DEFAULT NULL,
  `ALLOW_POST` char(1) NOT NULL DEFAULT 'Y',
  `LAST_VISIT` datetime NOT NULL,
  `DATE_REG` date NOT NULL,
  `REAL_IP_ADDRESS` varchar(128) DEFAULT NULL,
  `SIGNATURE` varchar(255) DEFAULT NULL,
  `SHOW_NAME` char(1) NOT NULL DEFAULT 'Y',
  `RANK_ID` int(11) DEFAULT NULL,
  `POINTS` int(11) NOT NULL DEFAULT 0,
  `HIDE_FROM_ONLINE` char(1) NOT NULL DEFAULT 'N',
  `SUBSC_GROUP_MESSAGE` char(1) NOT NULL DEFAULT 'N',
  `SUBSC_GET_MY_MESSAGE` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_FORUM_USER_USER6` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user`
--

LOCK TABLES `b_forum_user` WRITE;
/*!40000 ALTER TABLE `b_forum_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user_forum`
--

DROP TABLE IF EXISTS `b_forum_user_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user_forum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `MAIN_LAST_VISIT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_USER_FORUM_ID1` (`USER_ID`,`FORUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user_forum`
--

LOCK TABLES `b_forum_user_forum` WRITE;
/*!40000 ALTER TABLE `b_forum_user_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user_points`
--

DROP TABLE IF EXISTS `b_forum_user_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user_points` (
  `FROM_USER_ID` int(11) NOT NULL,
  `TO_USER_ID` int(11) NOT NULL,
  `POINTS` int(11) NOT NULL DEFAULT 0,
  `DATE_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FROM_USER_ID`,`TO_USER_ID`),
  KEY `IX_B_FORUM_USER_POINTS_TO_USER` (`TO_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user_points`
--

LOCK TABLES `b_forum_user_points` WRITE;
/*!40000 ALTER TABLE `b_forum_user_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user_topic`
--

DROP TABLE IF EXISTS `b_forum_user_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user_topic` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOPIC_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  PRIMARY KEY (`TOPIC_ID`,`USER_ID`),
  KEY `ID` (`ID`),
  KEY `IX_B_FORUM_USER_FORUM_ID2` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`),
  KEY `IX_B_FORUM_USER_FORUM_ID3` (`FORUM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user_topic`
--

LOCK TABLES `b_forum_user_topic` WRITE;
/*!40000 ALTER TABLE `b_forum_user_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoip_handlers`
--

DROP TABLE IF EXISTS `b_geoip_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) NOT NULL,
  `CONFIG` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoip_handlers`
--

LOCK TABLES `b_geoip_handlers` WRITE;
/*!40000 ALTER TABLE `b_geoip_handlers` DISABLE KEYS */;
INSERT INTO `b_geoip_handlers` VALUES (1,100,'Y','\\Bitrix\\Main\\Service\\GeoIp\\GeoIP2',NULL),(2,110,'N','\\Bitrix\\Main\\Service\\GeoIp\\MaxMind',NULL),(3,120,'N','\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo',NULL);
/*!40000 ALTER TABLE `b_geoip_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoname`
--

DROP TABLE IF EXISTS `b_geoname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_geoname` (
  `ID` bigint(20) unsigned NOT NULL,
  `LANGUAGE_CODE` varchar(35) NOT NULL,
  `NAME` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`ID`,`LANGUAGE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoname`
--

LOCK TABLES `b_geoname` WRITE;
/*!40000 ALTER TABLE `b_geoname` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_geoname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group`
--

DROP TABLE IF EXISTS `b_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `C_SORT` int(11) NOT NULL DEFAULT 100,
  `ANONYMOUS` char(1) NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SECURITY_POLICY` text DEFAULT NULL,
  `STRING_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group`
--

LOCK TABLES `b_group` WRITE;
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
INSERT INTO `b_group` VALUES (1,'2024-03-12 17:44:08','Y',1,'N','Y','Администраторы','Полный доступ к управлению сайтом.',NULL,NULL),(2,'2024-03-12 17:44:08','Y',2,'Y','Y','Все пользователи (в том числе неавторизованные)','Все пользователи, включая неавторизованных.',NULL,NULL),(3,'2024-03-12 17:44:08','Y',3,'N','Y','Пользователи, имеющие право голосовать за рейтинг','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE'),(4,'2024-03-12 17:44:08','Y',4,'N','Y','Пользователи имеющие право голосовать за авторитет','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE_AUTHORITY');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_collection_task`
--

DROP TABLE IF EXISTS `b_group_collection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_collection_task`
--

LOCK TABLES `b_group_collection_task` WRITE;
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_subordinate`
--

DROP TABLE IF EXISTS `b_group_subordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_subordinate` (
  `ID` int(11) NOT NULL,
  `AR_SUBGROUP_ID` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_subordinate`
--

LOCK TABLES `b_group_subordinate` WRITE;
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_task`
--

DROP TABLE IF EXISTS `b_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `EXTERNAL_ID` varchar(50) DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_task`
--

LOCK TABLES `b_group_task` WRITE;
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity`
--

DROP TABLE IF EXISTS `b_hlblock_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `TABLE_NAME` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity`
--

LOCK TABLES `b_hlblock_entity` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_lang`
--

DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) unsigned NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_lang`
--

LOCK TABLES `b_hlblock_entity_lang` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_rights`
--

DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int(11) unsigned NOT NULL,
  `TASK_ID` int(11) unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_rights`
--

LOCK TABLES `b_hlblock_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys`
--

DROP TABLE IF EXISTS `b_hot_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) NOT NULL,
  `CODE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys`
--

LOCK TABLES `b_hot_keys` WRITE;
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
INSERT INTO `b_hot_keys` VALUES (1,'Ctrl+Alt+85',139,0),(2,'Ctrl+Alt+80',17,0),(3,'Ctrl+Alt+70',120,0),(4,'Ctrl+Alt+68',117,0),(5,'Ctrl+Alt+81',3,0),(6,'Ctrl+Alt+75',106,0),(7,'Ctrl+Alt+79',133,0),(8,'Ctrl+Alt+70',121,0),(9,'Ctrl+Alt+69',118,0),(10,'Ctrl+Shift+83',87,0),(11,'Ctrl+Shift+88',88,0),(12,'Ctrl+Shift+76',89,0),(13,'Ctrl+Alt+85',139,1),(14,'Ctrl+Alt+80',17,1),(15,'Ctrl+Alt+70',120,1),(16,'Ctrl+Alt+68',117,1),(17,'Ctrl+Alt+81',3,1),(18,'Ctrl+Alt+75',106,1),(19,'Ctrl+Alt+79',133,1),(20,'Ctrl+Alt+70',121,1),(21,'Ctrl+Alt+69',118,1),(22,'Ctrl+Shift+83',87,1),(23,'Ctrl+Shift+88',88,1),(24,'Ctrl+Shift+76',89,1);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys_code`
--

DROP TABLE IF EXISTS `b_hot_keys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys_code` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TITLE_OBJ` varchar(50) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `IS_CUSTOM` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys_code`
--

LOCK TABLES `b_hot_keys_code` WRITE;
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
INSERT INTO `b_hot_keys_code` VALUES (3,'CAdminTabControl','NextTab();','HK_DB_CADMINTC','HK_DB_CADMINTC_C','tab-container','',0),(5,'btn_new','var d=BX (\'btn_new\'); if (d) location.href = d.href;','HK_DB_BUT_ADD','HK_DB_BUT_ADD_C','btn_new','',0),(6,'btn_excel','var d=BX(\'btn_excel\'); if (d) location.href = d.href;','HK_DB_BUT_EXL','HK_DB_BUT_EXL_C','btn_excel','',0),(7,'btn_settings','var d=BX(\'btn_settings\'); if (d) location.href = d.href;','HK_DB_BUT_OPT','HK_DB_BUT_OPT_C','btn_settings','',0),(8,'btn_list','var d=BX(\'btn_list\'); if (d) location.href = d.href;','HK_DB_BUT_LST','HK_DB_BUT_LST_C','btn_list','',0),(9,'Edit_Save_Button','var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();','HK_DB_BUT_SAVE','HK_DB_BUT_SAVE_C','Edit_Save_Button','',0),(10,'btn_delete','var d=BX(\'btn_delete\'); if (d) location.href = d.href;','HK_DB_BUT_DEL','HK_DB_BUT_DEL_C','btn_delete','',0),(12,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();','HK_DB_FLT_FND','HK_DB_FLT_FND_C','find','',0),(13,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_F','HK_DB_FLT_BUT_F_C','set_filter','',0),(14,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_CNL','HK_DB_FLT_BUT_CNL_C','del_filter','',0),(15,'bx-panel-admin-button-help-icon-id','var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;','HK_DB_BUT_HLP','HK_DB_BUT_HLP_C','bx-panel-admin-button-help-icon-id','',0),(17,'Global','BXHotKeys.ShowSettings();','HK_DB_SHW_L','HK_DB_SHW_L_C','bx-panel-hotkeys','',0),(19,'Edit_Apply_Button','var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();','HK_DB_BUT_APPL','HK_DB_BUT_APPL_C','Edit_Apply_Button','',0),(20,'Edit_Cancel_Button','var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();','HK_DB_BUT_CANCEL','HK_DB_BUT_CANCEL_C','Edit_Cancel_Button','',0),(54,'top_panel_org_fav','','-=AUTONAME=-',NULL,'top_panel_org_fav',NULL,0),(55,'top_panel_module_settings','','-=AUTONAME=-',NULL,'top_panel_module_settings','',0),(56,'top_panel_interface_settings','','-=AUTONAME=-',NULL,'top_panel_interface_settings','',0),(57,'top_panel_help','','-=AUTONAME=-',NULL,'top_panel_help','',0),(58,'top_panel_bizproc_tasks','','-=AUTONAME=-',NULL,'top_panel_bizproc_tasks','',0),(59,'top_panel_add_fav','','-=AUTONAME=-',NULL,'top_panel_add_fav',NULL,0),(60,'top_panel_create_page','','-=AUTONAME=-',NULL,'top_panel_create_page','',0),(62,'top_panel_create_folder','','-=AUTONAME=-',NULL,'top_panel_create_folder','',0),(63,'top_panel_edit_page','','-=AUTONAME=-',NULL,'top_panel_edit_page','',0),(64,'top_panel_page_prop','','-=AUTONAME=-',NULL,'top_panel_page_prop','',0),(65,'top_panel_edit_page_html','','-=AUTONAME=-',NULL,'top_panel_edit_page_html','',0),(67,'top_panel_edit_page_php','','-=AUTONAME=-',NULL,'top_panel_edit_page_php','',0),(68,'top_panel_del_page','','-=AUTONAME=-',NULL,'top_panel_del_page','',0),(69,'top_panel_folder_prop','','-=AUTONAME=-',NULL,'top_panel_folder_prop','',0),(70,'top_panel_access_folder_new','','-=AUTONAME=-',NULL,'top_panel_access_folder_new','',0),(71,'main_top_panel_struct_panel','','-=AUTONAME=-',NULL,'main_top_panel_struct_panel','',0),(72,'top_panel_cache_page','','-=AUTONAME=-',NULL,'top_panel_cache_page','',0),(73,'top_panel_cache_comp','','-=AUTONAME=-',NULL,'top_panel_cache_comp','',0),(74,'top_panel_cache_not','','-=AUTONAME=-',NULL,'top_panel_cache_not','',0),(75,'top_panel_edit_mode','','-=AUTONAME=-',NULL,'top_panel_edit_mode','',0),(76,'top_panel_templ_site_css','','-=AUTONAME=-',NULL,'top_panel_templ_site_css','',0),(77,'top_panel_templ_templ_css','','-=AUTONAME=-',NULL,'top_panel_templ_templ_css','',0),(78,'top_panel_templ_site','','-=AUTONAME=-',NULL,'top_panel_templ_site','',0),(81,'top_panel_debug_time','','-=AUTONAME=-',NULL,'top_panel_debug_time','',0),(82,'top_panel_debug_incl','','-=AUTONAME=-',NULL,'top_panel_debug_incl','',0),(83,'top_panel_debug_sql','','-=AUTONAME=-',NULL,'top_panel_debug_sql',NULL,0),(84,'top_panel_debug_compr','','-=AUTONAME=-',NULL,'top_panel_debug_compr','',0),(85,'MTP_SHORT_URI1','','-=AUTONAME=-',NULL,'MTP_SHORT_URI1','',0),(86,'MTP_SHORT_URI_LIST','','-=AUTONAME=-',NULL,'MTP_SHORT_URI_LIST','',0),(87,'FMST_PANEL_STICKER_ADD','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKER_ADD','',0),(88,'FMST_PANEL_STICKERS_SHOW','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS_SHOW','',0),(89,'FMST_PANEL_CUR_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_CUR_STICKER_LIST','',0),(90,'FMST_PANEL_ALL_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_ALL_STICKER_LIST','',0),(91,'top_panel_menu','var d=BX(\"bx-panel-menu\"); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-menu','',0),(92,'top_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(93,'admin_panel_site','var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-view-tab','',0),(94,'admin_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(96,'top_panel_folder_prop_new','','-=AUTONAME=-',NULL,'top_panel_folder_prop_new','',0),(97,'main_top_panel_structure','','-=AUTONAME=-',NULL,'main_top_panel_structure','',0),(98,'top_panel_clear_cache','','-=AUTONAME=-',NULL,'top_panel_clear_cache','',0),(99,'top_panel_templ','','-=AUTONAME=-',NULL,'top_panel_templ','',0),(100,'top_panel_debug','','-=AUTONAME=-',NULL,'top_panel_debug','',0),(101,'MTP_SHORT_URI','','-=AUTONAME=-',NULL,'MTP_SHORT_URI','',0),(102,'FMST_PANEL_STICKERS','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS','',0),(103,'top_panel_settings','','-=AUTONAME=-',NULL,'top_panel_settings','',0),(104,'top_panel_fav','','-=AUTONAME=-',NULL,'top_panel_fav','',0),(106,'Global','location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';','HK_DB_SHW_HK','','','',0),(107,'top_panel_edit_new','','-=AUTONAME=-',NULL,'top_panel_edit_new','',0),(108,'FLOW_PANEL_CREATE_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_CREATE_WITH_WF','',0),(109,'FLOW_PANEL_EDIT_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_EDIT_WITH_WF','',0),(110,'FLOW_PANEL_HISTORY','','-=AUTONAME=-',NULL,'FLOW_PANEL_HISTORY','',0),(111,'top_panel_create_new','','-=AUTONAME=-',NULL,'top_panel_create_new','',0),(112,'top_panel_create_folder_new','','-=AUTONAME=-',NULL,'top_panel_create_folder_new','',0),(116,'bx-panel-toggle','','-=AUTONAME=-',NULL,'bx-panel-toggle','',0),(117,'bx-panel-small-toggle','','-=AUTONAME=-',NULL,'bx-panel-small-toggle','',0),(118,'bx-panel-expander','var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');','-=AUTONAME=-',NULL,'bx-panel-expander','',0),(119,'bx-panel-hider','var d=BX(\'bx-panel-hider\'); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-hider','',0),(120,'search-textbox-input','var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}','-=AUTONAME=-','','search','',0),(121,'bx-search-input','var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }','-=AUTONAME=-','','bx-search-input','',0),(133,'bx-panel-logout','var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;','-=AUTONAME=-','','bx-panel-logout','',0),(135,'CDialog','var d=BX(\'cancel\'); if (d) d.click();','HK_DB_D_CANCEL','','cancel','',0),(136,'CDialog','var d=BX(\'close\'); if (d) d.click();','HK_DB_D_CLOSE','','close','',0),(137,'CDialog','var d=BX(\'savebtn\'); if (d) d.click();','HK_DB_D_SAVE','','savebtn','',0),(138,'CDialog','var d=BX(\'btn_popup_save\'); if (d) d.click();','HK_DB_D_EDIT_SAVE','','btn_popup_save','',0),(139,'Global','location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;','HK_DB_SHW_U','','','',0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock`
--

DROP TABLE IF EXISTS `b_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_TYPE_ID` varchar(50) NOT NULL,
  `LID` char(2) NOT NULL,
  `CODE` varchar(50) DEFAULT NULL,
  `API_CODE` varchar(50) DEFAULT NULL,
  `REST_ON` char(1) NOT NULL DEFAULT 'N',
  `NAME` varchar(255) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `LIST_PAGE_URL` varchar(255) DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT 24,
  `RSS_ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) DEFAULT NULL,
  `TMP_ID` varchar(40) DEFAULT NULL,
  `INDEX_ELEMENT` char(1) NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) DEFAULT NULL,
  `LIST_MODE` char(1) DEFAULT NULL,
  `RIGHTS_MODE` char(1) DEFAULT NULL,
  `SECTION_PROPERTY` char(1) DEFAULT NULL,
  `PROPERTY_INDEX` char(1) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT 0,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) DEFAULT NULL,
  `SECTION_NAME` varchar(100) DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_api_code` (`API_CODE`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock`
--

LOCK TABLES `b_iblock` WRITE;
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
INSERT INTO `b_iblock` VALUES (1,'2024-03-12 20:42:25','articles','s1','',NULL,'N','Продакшн','Y',500,'#SITE_DIR#/articles/index.php?ID=#IBLOCK_ID#','#SITE_DIR#/articles/detail.php?ID=#ELEMENT_ID#','#SITE_DIR#/articles/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,NULL,'Y','Y','N','N','L','','S','N','N',1,0,NULL,'','','Разделы','Раздел','Элементы','Элемент'),(2,'2024-03-13 20:16:05','articles','s1','',NULL,'N','Услуги','Y',500,'#SITE_DIR#/articles/index.php?ID=#IBLOCK_ID#','#SITE_DIR#/articles/detail.php?ID=#ELEMENT_ID#','#SITE_DIR#/articles/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,'08765c760ed7d86f498d12ad586841a3','Y','Y','N','N','L','','S','N','N',1,0,NULL,'','','Разделы','Раздел','Элементы','Элемент');
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_cache`
--

DROP TABLE IF EXISTS `b_iblock_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) NOT NULL,
  `CACHE` longtext NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_cache`
--

LOCK TABLES `b_iblock_cache` WRITE;
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element`
--

DROP TABLE IF EXISTS `b_iblock_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT 0,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text DEFAULT NULL,
  `PREVIEW_TEXT_TYPE` varchar(4) NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext DEFAULT NULL,
  `DETAIL_TEXT_TYPE` varchar(4) NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text DEFAULT NULL,
  `WF_STATUS_ID` int(18) DEFAULT 1,
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text DEFAULT NULL,
  `IN_SECTIONS` char(1) NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `TMP_ID` varchar(40) DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element`
--

LOCK TABLES `b_iblock_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
INSERT INTO `b_iblock_element` VALUES (1,'2024-03-13 16:18:06',1,'2024-03-12 20:45:23',1,1,NULL,'Y',NULL,NULL,500,'Что такое продакш-студия и для чего она нужна?',1,'Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения. Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения.','text',5,'','text','ЧТО ТАКОЕ ПРОДАКШ-СТУДИЯ И ДЛЯ ЧЕГО ОНА НУЖНА?\r\nВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ. ВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ.\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','1','','','0',NULL,5,'2024-03-13 15:49:35'),(2,'2024-03-13 17:01:41',1,'2024-03-12 20:46:47',1,1,NULL,'Y',NULL,NULL,500,'Личный бренд и что такое продакш- студия',2,'Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения. Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения.','text',4,'','text','ЛИЧНЫЙ БРЕНД И ЧТО ТАКОЕ ПРОДАКШ- СТУДИЯ\r\nВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ. ВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ.\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','2','','','0',NULL,6,'2024-03-13 15:49:27'),(8,'2024-03-13 20:03:52',1,'2024-03-13 20:03:52',1,2,NULL,'Y',NULL,NULL,500,'Аудит бренда',NULL,'','text',NULL,'','text','АУДИТ БРЕНДА\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','8','','','0',NULL,NULL,NULL),(9,'2024-03-13 20:11:27',1,'2024-03-13 20:11:27',1,2,NULL,'Y',NULL,NULL,500,'Целевая аудитория',NULL,'','text',NULL,'','text','ЦЕЛЕВАЯ АУДИТОРИЯ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','9','','','0',NULL,NULL,NULL),(10,'2024-03-13 20:11:48',1,'2024-03-13 20:11:48',1,2,NULL,'Y',NULL,NULL,500,'Позиционирование',NULL,'','text',NULL,'','text','ПОЗИЦИОНИРОВАНИЕ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','10','','','0',NULL,NULL,NULL),(11,'2024-03-13 20:12:06',1,'2024-03-13 20:12:06',1,2,NULL,'Y',NULL,NULL,500,'Нейминг',NULL,'','text',NULL,'','text','НЕЙМИНГ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','11','','','0',NULL,NULL,NULL),(12,'2024-03-13 20:12:15',1,'2024-03-13 20:12:15',1,2,NULL,'Y',NULL,NULL,500,'Логотип',NULL,'','text',NULL,'','text','ЛОГОТИП\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','12','','','0',NULL,NULL,NULL),(13,'2024-03-14 12:58:10',1,'2024-03-14 12:58:10',1,2,2,'Y',NULL,NULL,500,'Видеопродакшн',NULL,'','text',NULL,'','text','ВИДЕОПРОДАКШН\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','13','','','0',NULL,NULL,NULL),(14,'2024-03-14 12:58:21',1,'2024-03-14 12:58:21',1,2,2,'Y',NULL,NULL,500,'Фотопродакшн',NULL,'','text',NULL,'','text','ФОТОПРОДАКШН\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','14','','','0',NULL,NULL,NULL),(15,'2024-03-14 12:58:33',1,'2024-03-14 12:58:33',1,2,2,'Y',NULL,NULL,500,'Дизайн',NULL,'','text',NULL,'','text','ДИЗАЙН\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','15','','','0',NULL,NULL,NULL),(16,'2024-03-14 13:17:32',1,'2024-03-14 13:17:32',1,2,1,'Y',NULL,NULL,500,'Внедрение',NULL,'','text',NULL,'','text','ВНЕДРЕНИЕ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','16','','','0',NULL,NULL,NULL),(17,'2024-03-14 13:17:51',1,'2024-03-14 13:17:51',1,2,1,'Y',NULL,NULL,500,'Digital',NULL,'','text',NULL,'','text','DIGITAL\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','17','','','0',NULL,NULL,NULL),(18,'2024-03-14 13:18:04',1,'2024-03-14 13:18:04',1,2,1,'Y',NULL,NULL,500,'Дизайн упаковки',NULL,'','text',NULL,'','text','ДИЗАЙН УПАКОВКИ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','18','','','0',NULL,NULL,NULL),(19,'2024-03-14 13:18:23',1,'2024-03-14 13:18:23',1,2,1,'Y',NULL,NULL,500,'Бренд-бук',NULL,'','text',NULL,'','text','БРЕНД-БУК\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','19','','','0',NULL,NULL,NULL),(20,'2024-03-14 13:18:34',1,'2024-03-14 13:18:34',1,2,1,'Y',NULL,NULL,500,'Фирменный стиль',NULL,'','text',NULL,'','text','ФИРМЕННЫЙ СТИЛЬ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','20','','','0',NULL,NULL,NULL),(21,'2024-03-14 13:18:46',1,'2024-03-14 13:18:46',1,2,1,'Y',NULL,NULL,500,'Логотип',NULL,'','text',NULL,'','text','ЛОГОТИП\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','21','','','0',NULL,NULL,NULL),(22,'2024-03-14 13:18:55',1,'2024-03-14 13:18:55',1,2,1,'Y',NULL,NULL,500,'Нейминг',NULL,'','text',NULL,'','text','НЕЙМИНГ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','22','','','0',NULL,NULL,NULL),(23,'2024-03-14 13:19:08',1,'2024-03-14 13:19:08',1,2,1,'Y',NULL,NULL,500,'Целевая аудитория',NULL,'','text',NULL,'','text','ЦЕЛЕВАЯ АУДИТОРИЯ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','23','','','0',NULL,NULL,NULL),(24,'2024-03-14 13:19:14',1,'2024-03-14 13:19:14',1,2,1,'Y',NULL,NULL,500,'Аудит бренда',NULL,'','text',NULL,'','text','АУДИТ БРЕНДА\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','24','','','0',NULL,NULL,NULL),(25,'2024-03-14 13:19:40',1,'2024-03-14 13:19:40',1,2,2,'Y',NULL,NULL,500,'Тактические рекламные кампании',NULL,'','text',NULL,'','text','ТАКТИЧЕСКИЕ РЕКЛАМНЫЕ КАМПАНИИ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','25','','','0',NULL,NULL,NULL),(26,'2024-03-15 12:40:00',1,'2024-03-15 12:40:00',1,2,2,'Y',NULL,NULL,500,'Внедрение',NULL,'','text',NULL,'','text','ВНЕДРЕНИЕ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','26','','','0',NULL,NULL,NULL),(27,'2024-03-15 12:40:13',1,'2024-03-15 12:40:13',1,2,2,'Y',NULL,NULL,500,'Сопровождение',NULL,'','text',NULL,'','text','СОПРОВОЖДЕНИЕ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','27','','','0',NULL,NULL,NULL),(28,'2024-03-15 12:43:06',1,'2024-03-15 12:43:06',1,2,2,'Y',NULL,NULL,500,'Контент-план',NULL,'','text',NULL,'','text','КОНТЕНТ-ПЛАН\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','28','','','0',NULL,NULL,NULL),(29,'2024-03-15 12:43:23',1,'2024-03-15 12:43:23',1,2,2,'Y',NULL,NULL,500,'Фотосессия',NULL,'','text',NULL,'','text','ФОТОСЕССИЯ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','29','','','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_iprop`
--

DROP TABLE IF EXISTS `b_iblock_element_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_iprop`
--

LOCK TABLES `b_iblock_element_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_lock`
--

DROP TABLE IF EXISTS `b_iblock_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`),
  CONSTRAINT `b_iblock_element_lock_ibfk_1` FOREIGN KEY (`IBLOCK_ELEMENT_ID`) REFERENCES `b_iblock_element` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_lock`
--

LOCK TABLES `b_iblock_element_lock` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_property`
--

DROP TABLE IF EXISTS `b_iblock_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text NOT NULL,
  `VALUE_TYPE` char(4) NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_val` (`VALUE`(50),`IBLOCK_PROPERTY_ID`,`IBLOCK_ELEMENT_ID`),
  CONSTRAINT `b_iblock_element_property_ibfk_1` FOREIGN KEY (`IBLOCK_PROPERTY_ID`) REFERENCES `b_iblock_property` (`ID`),
  CONSTRAINT `b_iblock_element_property_ibfk_2` FOREIGN KEY (`IBLOCK_ELEMENT_ID`) REFERENCES `b_iblock_element` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_property`
--

LOCK TABLES `b_iblock_element_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_right`
--

DROP TABLE IF EXISTS `b_iblock_element_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`),
  CONSTRAINT `b_iblock_element_right_ibfk_1` FOREIGN KEY (`IBLOCK_ID`) REFERENCES `b_iblock` (`ID`),
  CONSTRAINT `b_iblock_element_right_ibfk_2` FOREIGN KEY (`RIGHT_ID`) REFERENCES `b_iblock_right` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_right`
--

LOCK TABLES `b_iblock_element_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_fields`
--

DROP TABLE IF EXISTS `b_iblock_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) NOT NULL,
  `IS_REQUIRED` char(1) DEFAULT NULL,
  `DEFAULT_VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_fields`
--

LOCK TABLES `b_iblock_fields` WRITE;
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
INSERT INTO `b_iblock_fields` VALUES (1,'ACTIVE','Y','Y'),(1,'ACTIVE_FROM','N',''),(1,'ACTIVE_TO','N',''),(1,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(1,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";}'),(1,'DETAIL_TEXT','N',''),(1,'DETAIL_TEXT_TYPE','Y','text'),(1,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(1,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(1,'LOG_ELEMENT_ADD','N',NULL),(1,'LOG_ELEMENT_DELETE','N',NULL),(1,'LOG_ELEMENT_EDIT','N',NULL),(1,'LOG_SECTION_ADD','N',NULL),(1,'LOG_SECTION_DELETE','N',NULL),(1,'LOG_SECTION_EDIT','N',NULL),(1,'NAME','Y',''),(1,'PREVIEW_PICTURE','N','a:20:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";s:11:\"FROM_DETAIL\";s:1:\"N\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";}'),(1,'PREVIEW_TEXT','N',''),(1,'PREVIEW_TEXT_TYPE','Y','text'),(1,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(1,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(1,'SECTION_DESCRIPTION','N',''),(1,'SECTION_DESCRIPTION_TYPE','Y','text'),(1,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(1,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";}'),(1,'SECTION_NAME','Y',''),(1,'SECTION_PICTURE','N','a:20:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";s:11:\"FROM_DETAIL\";s:1:\"N\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";}'),(1,'SECTION_XML_ID','N',''),(1,'SORT','N','500'),(1,'TAGS','N',''),(1,'XML_ID','Y',''),(1,'XML_IMPORT_START_TIME','N',NULL),(2,'ACTIVE','Y','Y'),(2,'ACTIVE_FROM','N',''),(2,'ACTIVE_TO','N',''),(2,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(2,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";}'),(2,'DETAIL_TEXT','N',''),(2,'DETAIL_TEXT_TYPE','Y','text'),(2,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(2,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(2,'LOG_ELEMENT_ADD','N',NULL),(2,'LOG_ELEMENT_DELETE','N',NULL),(2,'LOG_ELEMENT_EDIT','N',NULL),(2,'LOG_SECTION_ADD','N',NULL),(2,'LOG_SECTION_DELETE','N',NULL),(2,'LOG_SECTION_EDIT','N',NULL),(2,'NAME','Y',''),(2,'PREVIEW_PICTURE','N','a:20:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";s:11:\"FROM_DETAIL\";s:1:\"N\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";}'),(2,'PREVIEW_TEXT','N',''),(2,'PREVIEW_TEXT_TYPE','Y','text'),(2,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(2,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(2,'SECTION_DESCRIPTION','N',''),(2,'SECTION_DESCRIPTION_TYPE','Y','text'),(2,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(2,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";}'),(2,'SECTION_NAME','Y',''),(2,'SECTION_PICTURE','N','a:20:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";s:11:\"FROM_DETAIL\";s:1:\"N\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";}'),(2,'SECTION_XML_ID','N',''),(2,'SORT','N','500'),(2,'TAGS','N',''),(2,'XML_ID','Y',''),(2,'XML_IMPORT_START_TIME','N',NULL);
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_group`
--

DROP TABLE IF EXISTS `b_iblock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`),
  KEY `GROUP_ID` (`GROUP_ID`),
  CONSTRAINT `b_iblock_group_ibfk_1` FOREIGN KEY (`IBLOCK_ID`) REFERENCES `b_iblock` (`ID`),
  CONSTRAINT `b_iblock_group_ibfk_2` FOREIGN KEY (`GROUP_ID`) REFERENCES `b_group` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_group`
--

LOCK TABLES `b_iblock_group` WRITE;
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
INSERT INTO `b_iblock_group` VALUES (1,1,'X'),(2,1,'X');
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iblock_iprop`
--

DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iblock_iprop`
--

LOCK TABLES `b_iblock_iblock_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iproperty`
--

DROP TABLE IF EXISTS `b_iblock_iproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iproperty`
--

LOCK TABLES `b_iblock_iproperty` WRITE;
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_messages`
--

DROP TABLE IF EXISTS `b_iblock_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) NOT NULL,
  `MESSAGE_TEXT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_messages`
--

LOCK TABLES `b_iblock_messages` WRITE;
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
INSERT INTO `b_iblock_messages` VALUES (1,'ELEMENT_ADD','Добавить элемент'),(1,'ELEMENT_DELETE','Удалить элемент'),(1,'ELEMENT_EDIT','Изменить элемент'),(1,'ELEMENT_NAME','Элемент'),(1,'ELEMENTS_NAME','Элементы'),(1,'SECTION_ADD','Добавить раздел'),(1,'SECTION_DELETE','Удалить раздел'),(1,'SECTION_EDIT','Изменить раздел'),(1,'SECTION_NAME','Раздел'),(1,'SECTIONS_NAME','Разделы'),(2,'ELEMENT_ADD','Добавить элемент'),(2,'ELEMENT_DELETE','Удалить элемент'),(2,'ELEMENT_EDIT','Изменить элемент'),(2,'ELEMENT_NAME','Элемент'),(2,'ELEMENTS_NAME','Элементы'),(2,'SECTION_ADD','Добавить раздел'),(2,'SECTION_DELETE','Удалить раздел'),(2,'SECTION_EDIT','Изменить раздел'),(2,'SECTION_NAME','Раздел'),(2,'SECTIONS_NAME','Разделы');
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_offers_tmp`
--

DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_offers_tmp`
--

LOCK TABLES `b_iblock_offers_tmp` WRITE;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property`
--

DROP TABLE IF EXISTS `b_iblock_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `CODE` varchar(50) DEFAULT NULL,
  `DEFAULT_VALUE` text DEFAULT NULL,
  `PROPERTY_TYPE` char(1) NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT 1,
  `COL_COUNT` int(11) NOT NULL DEFAULT 30,
  `LIST_TYPE` char(1) NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) DEFAULT NULL,
  `FILE_TYPE` varchar(200) DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) DEFAULT NULL,
  `SEARCHABLE` char(1) NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `USER_TYPE` varchar(255) DEFAULT NULL,
  `USER_TYPE_SETTINGS` text DEFAULT NULL,
  `HINT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`),
  CONSTRAINT `b_iblock_property_ibfk_1` FOREIGN KEY (`IBLOCK_ID`) REFERENCES `b_iblock` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property`
--

LOCK TABLES `b_iblock_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_enum`
--

DROP TABLE IF EXISTS `b_iblock_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `DEF` char(1) NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(200) NOT NULL,
  `TMP_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_enum`
--

LOCK TABLES `b_iblock_property_enum` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_feature`
--

DROP TABLE IF EXISTS `b_iblock_property_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `FEATURE_ID` varchar(100) NOT NULL,
  `IS_ENABLED` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_feature`
--

LOCK TABLES `b_iblock_property_feature` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_right`
--

DROP TABLE IF EXISTS `b_iblock_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) NOT NULL,
  `ENTITY_TYPE` varchar(32) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) NOT NULL,
  `OP_EREAD` char(1) NOT NULL,
  `XML_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`),
  CONSTRAINT `b_iblock_right_ibfk_1` FOREIGN KEY (`IBLOCK_ID`) REFERENCES `b_iblock` (`ID`),
  CONSTRAINT `b_iblock_right_ibfk_2` FOREIGN KEY (`TASK_ID`) REFERENCES `b_task` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_right`
--

LOCK TABLES `b_iblock_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_rss`
--

DROP TABLE IF EXISTS `b_iblock_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) NOT NULL,
  `NODE_VALUE` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_rss`
--

LOCK TABLES `b_iblock_rss` WRITE;
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section`
--

DROP TABLE IF EXISTS `b_iblock_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `TMP_ID` varchar(40) DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IBLOCK_SECTION_ID` (`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`),
  KEY `ix_iblock_section_left_margin2` (`IBLOCK_ID`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_right_margin2` (`IBLOCK_ID`,`RIGHT_MARGIN`),
  CONSTRAINT `b_iblock_section_ibfk_1` FOREIGN KEY (`IBLOCK_ID`) REFERENCES `b_iblock` (`ID`),
  CONSTRAINT `b_iblock_section_ibfk_2` FOREIGN KEY (`IBLOCK_SECTION_ID`) REFERENCES `b_iblock_section` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section`
--

LOCK TABLES `b_iblock_section` WRITE;
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
INSERT INTO `b_iblock_section` VALUES (1,'2024-03-13 19:33:30',1,'2024-03-13 19:33:30',1,2,NULL,'Y','Y',500,'Брендинг',NULL,1,2,1,'','text','БРЕНДИНГ\r\n','',NULL,NULL,NULL,NULL),(2,'2024-03-13 20:16:05',1,'2024-03-13 20:16:05',1,2,NULL,'Y','Y',500,'Массовые коммуникации',NULL,3,4,1,'','text','МАССОВЫЕ КОММУНИКАЦИИ\r\n','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_element`
--

DROP TABLE IF EXISTS `b_iblock_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_element`
--

LOCK TABLES `b_iblock_section_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
INSERT INTO `b_iblock_section_element` VALUES (1,16,NULL),(1,17,NULL),(1,18,NULL),(1,19,NULL),(1,20,NULL),(1,21,NULL),(1,22,NULL),(1,23,NULL),(1,24,NULL),(2,13,NULL),(2,14,NULL),(2,15,NULL),(2,25,NULL),(2,26,NULL),(2,27,NULL),(2,28,NULL),(2,29,NULL);
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_iprop`
--

DROP TABLE IF EXISTS `b_iblock_section_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_iprop`
--

LOCK TABLES `b_iblock_section_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_property`
--

DROP TABLE IF EXISTS `b_iblock_section_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) DEFAULT NULL,
  `DISPLAY_TYPE` char(1) DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) DEFAULT NULL,
  `FILTER_HINT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_property`
--

LOCK TABLES `b_iblock_section_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_right`
--

DROP TABLE IF EXISTS `b_iblock_section_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`),
  CONSTRAINT `b_iblock_section_right_ibfk_1` FOREIGN KEY (`IBLOCK_ID`) REFERENCES `b_iblock` (`ID`),
  CONSTRAINT `b_iblock_section_right_ibfk_2` FOREIGN KEY (`RIGHT_ID`) REFERENCES `b_iblock_right` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_right`
--

LOCK TABLES `b_iblock_section_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_sequence`
--

DROP TABLE IF EXISTS `b_iblock_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_sequence`
--

LOCK TABLES `b_iblock_sequence` WRITE;
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_site`
--

DROP TABLE IF EXISTS `b_iblock_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_site`
--

LOCK TABLES `b_iblock_site` WRITE;
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
INSERT INTO `b_iblock_site` VALUES (1,'s1'),(2,'s1');
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type`
--

DROP TABLE IF EXISTS `b_iblock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) NOT NULL,
  `SECTIONS` char(1) NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) DEFAULT NULL,
  `IN_RSS` char(1) NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT 500,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type`
--

LOCK TABLES `b_iblock_type` WRITE;
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
INSERT INTO `b_iblock_type` VALUES ('articles','Y','','','N',500),('rest_entity','Y',NULL,NULL,'N',1000);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type_lang`
--

DROP TABLE IF EXISTS `b_iblock_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `SECTION_NAME` varchar(100) DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type_lang`
--

LOCK TABLES `b_iblock_type_lang` WRITE;
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
INSERT INTO `b_iblock_type_lang` VALUES ('rest_entity','ru','Хранилище данных для приложений','Разделы','Элементы'),('articles','ru','Новости','',''),('articles','en','News','','');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing`
--

DROP TABLE IF EXISTS `b_landing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) DEFAULT NULL,
  `RULE` varchar(255) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `DELETED` char(1) NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) NOT NULL DEFAULT 'Y',
  `SYS` char(1) NOT NULL DEFAULT 'N',
  `VIEWS` int(18) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) NOT NULL DEFAULT 'N',
  `FOLDER` char(1) NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `SEARCH_CONTENT` mediumtext DEFAULT NULL,
  `VERSION` int(18) NOT NULL DEFAULT 1,
  `HISTORY_STEP` int(18) NOT NULL DEFAULT 0,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_CODE` (`CODE`),
  KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  KEY `IX_B_LAND_DELETED` (`DELETED`),
  KEY `IX_B_LAND_SYS` (`SYS`),
  KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  KEY `IX_B_LAND_SITE_ID` (`SITE_ID`),
  KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`),
  FULLTEXT KEY `IX_B_LANDING_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing`
--

LOCK TABLES `b_landing` WRITE;
/*!40000 ALTER TABLE `b_landing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_binding`
--

DROP TABLE IF EXISTS `b_landing_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_binding` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `BINDING_ID` varchar(50) NOT NULL,
  `BINDING_TYPE` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_BINDING` (`BINDING_ID`,`BINDING_TYPE`),
  KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_B_BINDING_TYPE` (`BINDING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_binding`
--

LOCK TABLES `b_landing_binding` WRITE;
/*!40000 ALTER TABLE `b_landing_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_block`
--

DROP TABLE IF EXISTS `b_landing_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `CODE_ORIGINAL` varchar(255) DEFAULT NULL,
  `TPL_CODE` varchar(255) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) NOT NULL,
  `ANCHOR` varchar(255) DEFAULT NULL,
  `SORT` int(18) DEFAULT 500,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) NOT NULL DEFAULT 'Y',
  `DELETED` char(1) NOT NULL DEFAULT 'N',
  `DESIGNED` char(1) NOT NULL DEFAULT 'N',
  `ACCESS` char(1) NOT NULL DEFAULT 'X',
  `SOURCE_PARAMS` mediumtext DEFAULT NULL,
  `CONTENT` mediumtext NOT NULL,
  `SEARCH_CONTENT` mediumtext DEFAULT NULL,
  `ASSETS` text DEFAULT NULL,
  `FAVORITE_META` text DEFAULT NULL,
  `HISTORY_STEP_DESIGNER` int(18) NOT NULL DEFAULT 0,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LID` (`LID`),
  KEY `IX_B_BLOCK_LID_PUBLIC` (`LID`,`PUBLIC`),
  KEY `IX_B_BLOCK_CODE` (`CODE`),
  KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`,`DATE_CREATE`),
  KEY `IX_B_BLOCK_DELETED` (`DELETED`),
  FULLTEXT KEY `IX_B_BLOCK_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_block`
--

LOCK TABLES `b_landing_block` WRITE;
/*!40000 ALTER TABLE `b_landing_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_block_last_used`
--

DROP TABLE IF EXISTS `b_landing_block_last_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_block_last_used` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `DATE_CREATE` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LU_USER` (`USER_ID`),
  KEY `IX_B_BLOCK_LU_CODE` (`CODE`),
  KEY `IX_B_BLOCK_LU_USER_CODE` (`USER_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_block_last_used`
--

LOCK TABLES `b_landing_block_last_used` WRITE;
/*!40000 ALTER TABLE `b_landing_block_last_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_block_last_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_chat`
--

DROP TABLE IF EXISTS `b_landing_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_chat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CHAT_ID` int(18) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `AVATAR` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHAT` (`CHAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_chat`
--

LOCK TABLES `b_landing_chat` WRITE;
/*!40000 ALTER TABLE `b_landing_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_chat_binding`
--

DROP TABLE IF EXISTS `b_landing_chat_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_chat_binding` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `INTERNAL_CHAT_ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHAT` (`INTERNAL_CHAT_ID`),
  KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_chat_binding`
--

LOCK TABLES `b_landing_chat_binding` WRITE;
/*!40000 ALTER TABLE `b_landing_chat_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_chat_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_cookies_agreement`
--

DROP TABLE IF EXISTS `b_landing_cookies_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_cookies_agreement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `SITE_ID` int(18) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `CONTENT` mediumtext NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE` (`SITE_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_cookies_agreement`
--

LOCK TABLES `b_landing_cookies_agreement` WRITE;
/*!40000 ALTER TABLE `b_landing_cookies_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_cookies_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_demo`
--

DROP TABLE IF EXISTS `b_landing_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_demo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) NOT NULL,
  `APP_CODE` varchar(255) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) NOT NULL,
  `TPL_TYPE` char(1) NOT NULL,
  `SHOW_IN_LIST` char(1) NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PREVIEW_URL` varchar(255) DEFAULT NULL,
  `PREVIEW` varchar(255) DEFAULT NULL,
  `PREVIEW2X` varchar(255) DEFAULT NULL,
  `PREVIEW3X` varchar(255) DEFAULT NULL,
  `MANIFEST` mediumtext DEFAULT NULL,
  `LANG` text DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_demo`
--

LOCK TABLES `b_landing_demo` WRITE;
/*!40000 ALTER TABLE `b_landing_demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_designer_repo`
--

DROP TABLE IF EXISTS `b_landing_designer_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_designer_repo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `SORT` int(18) DEFAULT 100,
  `HTML` text NOT NULL,
  `MANIFEST` text NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_designer_repo`
--

LOCK TABLES `b_landing_designer_repo` WRITE;
/*!40000 ALTER TABLE `b_landing_designer_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_designer_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_domain`
--

DROP TABLE IF EXISTS `b_landing_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_domain` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) NOT NULL,
  `PREV_DOMAIN` varchar(255) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(10) NOT NULL,
  `PROVIDER` varchar(50) DEFAULT NULL,
  `FAIL_COUNT` int(2) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  KEY `IX_B_DOMAIN_PROVIDER` (`PROVIDER`),
  KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_domain`
--

LOCK TABLES `b_landing_domain` WRITE;
/*!40000 ALTER TABLE `b_landing_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_lock`
--

DROP TABLE IF EXISTS `b_landing_entity_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_entity_lock` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `LOCK_TYPE` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_TYPE` (`LOCK_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_lock`
--

LOCK TABLES `b_landing_entity_lock` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_rights`
--

DROP TABLE IF EXISTS `b_landing_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_entity_rights` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) NOT NULL,
  `ROLE_ID` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_rights`
--

LOCK TABLES `b_landing_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_file`
--

DROP TABLE IF EXISTS `b_landing_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `TEMP` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`),
  KEY `IX_TEMP` (`TEMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_file`
--

LOCK TABLES `b_landing_file` WRITE;
/*!40000 ALTER TABLE `b_landing_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_block`
--

DROP TABLE IF EXISTS `b_landing_filter_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_filter_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_block`
--

LOCK TABLES `b_landing_filter_block` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_entity`
--

DROP TABLE IF EXISTS `b_landing_filter_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_filter_entity` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SOURCE_ID` varchar(255) NOT NULL,
  `FILTER_HASH` char(32) NOT NULL,
  `FILTER` text DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_HASH` (`FILTER_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_entity`
--

LOCK TABLES `b_landing_filter_entity` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_folder`
--

DROP TABLE IF EXISTS `b_landing_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_folder` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `INDEX_ID` int(18) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'N',
  `DELETED` char(1) NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_FOLDER_SITE_ID` (`SITE_ID`),
  KEY `IX_B_FOLDER_ACTIVE` (`ACTIVE`),
  KEY `IX_B_FOLDER_DELETED` (`DELETED`),
  KEY `IX_B_FOLDER_PARENT_ID` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_folder`
--

LOCK TABLES `b_landing_folder` WRITE;
/*!40000 ALTER TABLE `b_landing_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_history`
--

DROP TABLE IF EXISTS `b_landing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` char(1) NOT NULL DEFAULT 'L',
  `ENTITY_ID` int(18) NOT NULL,
  `ACTION` text NOT NULL,
  `ACTION_PARAMS` text NOT NULL,
  `MULTIPLY_ID` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_HISTORY_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_history`
--

LOCK TABLES `b_landing_history` WRITE;
/*!40000 ALTER TABLE `b_landing_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_hook_data`
--

DROP TABLE IF EXISTS `b_landing_hook_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `HOOK` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `PUBLIC` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `K_HOOK_CODE` (`HOOK`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_hook_data`
--

LOCK TABLES `b_landing_hook_data` WRITE;
/*!40000 ALTER TABLE `b_landing_hook_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_hook_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_placement`
--

DROP TABLE IF EXISTS `b_landing_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_placement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) DEFAULT NULL,
  `PLACEMENT` varchar(255) NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) NOT NULL,
  `TITLE` varchar(255) DEFAULT '',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_placement`
--

LOCK TABLES `b_landing_placement` WRITE;
/*!40000 ALTER TABLE `b_landing_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_repo`
--

DROP TABLE IF EXISTS `b_landing_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_repo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) NOT NULL,
  `APP_CODE` varchar(255) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SECTIONS` varchar(255) DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) DEFAULT NULL,
  `PREVIEW` varchar(255) DEFAULT NULL,
  `MANIFEST` text DEFAULT NULL,
  `CONTENT` text NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_repo`
--

LOCK TABLES `b_landing_repo` WRITE;
/*!40000 ALTER TABLE `b_landing_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_role`
--

DROP TABLE IF EXISTS `b_landing_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_role` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ACCESS_CODES` text DEFAULT NULL,
  `ADDITIONAL_RIGHTS` text DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_ROLE_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_role`
--

LOCK TABLES `b_landing_role` WRITE;
/*!40000 ALTER TABLE `b_landing_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_site`
--

DROP TABLE IF EXISTS `b_landing_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_site` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `DELETED` char(1) NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) NOT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(50) NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `LANDING_ID_503` int(18) DEFAULT NULL,
  `LANG` char(2) DEFAULT NULL,
  `SPECIAL` char(1) NOT NULL DEFAULT 'N',
  `VERSION` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE_CODE` (`CODE`),
  KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  KEY `IX_B_SITE_DELETED` (`DELETED`),
  KEY `IX_B_SITE_XML_ID` (`XML_ID`),
  KEY `IX_B_SITE_SPECIAL` (`SPECIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_site`
--

LOCK TABLES `b_landing_site` WRITE;
/*!40000 ALTER TABLE `b_landing_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_syspage`
--

DROP TABLE IF EXISTS `b_landing_syspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_syspage`
--

LOCK TABLES `b_landing_syspage` WRITE;
/*!40000 ALTER TABLE `b_landing_syspage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_syspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template`
--

DROP TABLE IF EXISTS `b_landing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_template` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) NOT NULL,
  `SORT` int(18) DEFAULT 100,
  `XML_ID` varchar(255) DEFAULT NULL,
  `CONTENT` text NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template`
--

LOCK TABLES `b_landing_template` WRITE;
/*!40000 ALTER TABLE `b_landing_template` DISABLE KEYS */;
INSERT INTO `b_landing_template` VALUES (1,'Y','#EMPTY#',100,'empty','#CONTENT#',0,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16'),(2,'Y','#SIDEBAR_LEFT#',200,'sidebar_left','<div class=\"landing-layout-flex\">\n								<div class=\"landing-sidebar g-max-width-100x g-overflow-hidden\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>',1,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16'),(3,'Y','#SIDEBAR_RIGHT#',300,'sidebar_right','<div class=\"landing-layout-flex sidebar-right\">\n								<div class=\"landing-sidebar g-max-width-100x\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>',1,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16'),(4,'Y','#HEADER_ONLY#',400,'header_only','<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div>',1,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16'),(5,'Y','#HEADER_FOOTER#',500,'header_footer','<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>',2,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16'),(6,'Y','#WITHOUT_LEFT#',600,'without_left','<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex without-left\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>',3,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16'),(7,'Y','#WITHOUT_RIGHT#',700,'without_right','<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>',3,1,1,'2024-03-12 17:44:16','2024-03-12 17:44:16');
/*!40000 ALTER TABLE `b_landing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template_ref`
--

DROP TABLE IF EXISTS `b_landing_template_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template_ref`
--

LOCK TABLES `b_landing_template_ref` WRITE;
/*!40000 ALTER TABLE `b_landing_template_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_template_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_update_block`
--

DROP TABLE IF EXISTS `b_landing_update_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_update_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) NOT NULL,
  `LAST_BLOCK_ID` int(18) DEFAULT 0,
  `PARAMS` text DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_update_block`
--

LOCK TABLES `b_landing_update_block` WRITE;
/*!40000 ALTER TABLE `b_landing_update_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_update_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlchecker_host`
--

DROP TABLE IF EXISTS `b_landing_urlchecker_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_urlchecker_host` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `STATUS_ID` int(18) NOT NULL,
  `HOST` varchar(255) NOT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHECKER_STATUS_HOST` (`STATUS_ID`,`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlchecker_host`
--

LOCK TABLES `b_landing_urlchecker_host` WRITE;
/*!40000 ALTER TABLE `b_landing_urlchecker_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlchecker_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlchecker_status`
--

DROP TABLE IF EXISTS `b_landing_urlchecker_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_urlchecker_status` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URL` varchar(255) NOT NULL,
  `HASH` char(32) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHECKER_HASH` (`HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlchecker_status`
--

LOCK TABLES `b_landing_urlchecker_status` WRITE;
/*!40000 ALTER TABLE `b_landing_urlchecker_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlchecker_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlchecker_whitelist`
--

DROP TABLE IF EXISTS `b_landing_urlchecker_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_urlchecker_whitelist` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `DOMAIN` varchar(255) NOT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHECKER_DOMAIN` (`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlchecker_whitelist`
--

LOCK TABLES `b_landing_urlchecker_whitelist` WRITE;
/*!40000 ALTER TABLE `b_landing_urlchecker_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlchecker_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlrewrite`
--

DROP TABLE IF EXISTS `b_landing_urlrewrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_urlrewrite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `RULE` varchar(255) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlrewrite`
--

LOCK TABLES `b_landing_urlrewrite` WRITE;
/*!40000 ALTER TABLE `b_landing_urlrewrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlrewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_view`
--

DROP TABLE IF EXISTS `b_landing_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_view` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `VIEWS` int(18) NOT NULL,
  `FIRST_VIEW` datetime NOT NULL,
  `LAST_VIEW` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_VIEW_LIDUID` (`LID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_view`
--

LOCK TABLES `b_landing_view` WRITE;
/*!40000 ALTER TABLE `b_landing_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang`
--

DROP TABLE IF EXISTS `b_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang` (
  `LID` char(2) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `DEF` char(1) NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) NOT NULL,
  `DIR` varchar(50) NOT NULL,
  `FORMAT_DATE` varchar(50) DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) DEFAULT NULL,
  `FORMAT_NAME` varchar(255) DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) DEFAULT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `DOC_ROOT` varchar(255) DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) DEFAULT NULL,
  `SITE_NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang`
--

LOCK TABLES `b_lang` WRITE;
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
INSERT INTO `b_lang` VALUES ('s1',1,'Y','Y','Сайт по умолчанию','/',NULL,NULL,NULL,NULL,NULL,'ru','','N','','','',1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang_domain`
--

DROP TABLE IF EXISTS `b_lang_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) NOT NULL,
  `DOMAIN` varchar(255) NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang_domain`
--

LOCK TABLES `b_lang_domain` WRITE;
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_language`
--

DROP TABLE IF EXISTS `b_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_language` (
  `LID` char(2) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `DEF` char(1) NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) NOT NULL,
  `FORMAT_DATE` varchar(50) DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) DEFAULT NULL,
  `FORMAT_NAME` varchar(255) DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) DEFAULT NULL,
  `DIRECTION` char(1) DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  `CODE` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_language`
--

LOCK TABLES `b_language` WRITE;
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
INSERT INTO `b_language` VALUES ('en',2,'N','Y','English',NULL,NULL,NULL,NULL,NULL,NULL,2,'en'),('ru',1,'Y','Y','Russian',NULL,NULL,NULL,NULL,NULL,NULL,1,'ru');
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_list_rubric`
--

DROP TABLE IF EXISTS `b_list_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_list_rubric` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `AUTO` char(1) NOT NULL DEFAULT 'N',
  `DAYS_OF_MONTH` varchar(100) DEFAULT NULL,
  `DAYS_OF_WEEK` varchar(15) DEFAULT NULL,
  `TIMES_OF_DAY` varchar(255) DEFAULT NULL,
  `TEMPLATE` varchar(100) DEFAULT NULL,
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `VISIBLE` char(1) NOT NULL DEFAULT 'Y',
  `FROM_FIELD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LID` (`LID`),
  CONSTRAINT `b_list_rubric_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `b_lang` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_list_rubric`
--

LOCK TABLES `b_list_rubric` WRITE;
/*!40000 ALTER TABLE `b_list_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_list_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location`
--

DROP TABLE IF EXISTS `b_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) NOT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `SOURCE_CODE` varchar(15) DEFAULT NULL,
  `LATITUDE` decimal(8,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TYPE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  UNIQUE KEY `IX_LOC_SE` (`EXTERNAL_ID`,`SOURCE_CODE`),
  KEY `IX_LOC_LAT` (`LATITUDE`),
  KEY `IX_LOC_LON` (`LONGITUDE`),
  KEY `IX_LOC_T` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location`
--

LOCK TABLES `b_location` WRITE;
/*!40000 ALTER TABLE `b_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_addr_fld`
--

DROP TABLE IF EXISTS `b_location_addr_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_addr_fld` (
  `ADDRESS_ID` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `VALUE` varchar(1024) DEFAULT NULL,
  `VALUE_NORMALIZED` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_addr_fld`
--

LOCK TABLES `b_location_addr_fld` WRITE;
/*!40000 ALTER TABLE `b_location_addr_fld` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_addr_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_addr_link`
--

DROP TABLE IF EXISTS `b_location_addr_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_addr_link` (
  `ADDRESS_ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(100) NOT NULL,
  `ENTITY_TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ADDRESS_ID`,`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IDX_BLAL_EI_ET` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_addr_link`
--

LOCK TABLES `b_location_addr_link` WRITE;
/*!40000 ALTER TABLE `b_location_addr_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_addr_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_address`
--

DROP TABLE IF EXISTS `b_location_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_ID` int(11) DEFAULT 0,
  `LANGUAGE_ID` char(2) NOT NULL,
  `LATITUDE` decimal(8,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_LOC_BLA_LOC` (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_address`
--

LOCK TABLES `b_location_address` WRITE;
/*!40000 ALTER TABLE `b_location_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_area`
--

DROP TABLE IF EXISTS `b_location_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_area` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(100) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `SORT` int(11) NOT NULL,
  `GEOMETRY` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TYPE` (`TYPE`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_area`
--

LOCK TABLES `b_location_area` WRITE;
/*!40000 ALTER TABLE `b_location_area` DISABLE KEYS */;
INSERT INTO `b_location_area` VALUES (1,'DISPUTED','CRIMEA',0,'{\"type\":\"Polygon\",\"coordinates\":[[[32.201579,45.396892],[32.2052178,45.3690507],[32.2090567,45.3553206],[32.2172905,45.3355145],[32.2240585,45.3025866],[32.235686,45.2758033],[32.2434204,45.2628881],[32.2625503,45.2383126],[32.2738567,45.2267674],[32.2996887,45.2054331],[32.329404,45.1867687],[32.3624492,45.1711247],[32.3982085,45.1587952],[32.4168995,45.1539484],[32.4554687,45.1470047],[32.4878048,45.1442331],[32.5164102,45.1327887],[32.5532795,45.1222016],[32.5918488,45.115254],[32.6313994,45.1120768],[32.6711947,45.1127297],[32.729727,45.1208441],[32.8314558,45.1507864],[32.853076,45.1219934],[32.8767811,45.0994253],[32.8902144,45.0890467],[32.9199297,45.0703442],[32.9451894,45.0580954],[32.9796287,45.0321305],[33.0110823,45.0148866],[33.0279839,45.0074406],[33.0637432,44.9950757],[33.0879643,44.989073],[33.1342119,44.9689946],[33.192902,44.9506562],[33.2511697,44.9416162],[33.2951871,44.9405202],[33.5542562,44.8402319],[33.5621787,44.8410979],[33.5671526,44.838601],[33.5736666,44.8238183],[33.5866523,44.807848],[33.6044231,44.8103433],[33.6586481,44.7965631],[33.6693271,44.7918226],[33.6774224,44.7858657],[33.6827993,44.7703386],[33.6355485,44.7529449],[33.6136625,44.7497551],[33.6148368,44.7391957],[33.6111957,44.738286],[33.6105707,44.7329396],[33.611606,44.7296545],[33.6146258,44.729927],[33.6161203,44.711976],[33.6589663,44.7142533],[33.6708014,44.7097439],[33.7006932,44.7148119],[33.7072434,44.7105734],[33.7051533,44.7086069],[33.7050933,44.7049158],[33.7145084,44.705868],[33.715643,44.715848],[33.7265921,44.716636],[33.7348624,44.7075832],[33.7462868,44.7010307],[33.7518027,44.6987863],[33.7615132,44.7009902],[33.7769711,44.690265],[33.7674787,44.6820761],[33.754625,44.6753399],[33.7518666,44.6637439],[33.7300323,44.6470751],[33.7254762,44.6401041],[33.7176817,44.6375914],[33.7168675,44.6332156],[33.7218757,44.631584],[33.7162703,44.6204383],[33.7272166,44.6085501],[33.7286926,44.6046812],[33.735653,44.6009246],[33.7419126,44.6053835],[33.7496197,44.60791],[33.7651672,44.6091022],[33.7795796,44.6131096],[33.7828306,44.6059825],[33.781845,44.5971035],[33.7872108,44.5856602],[33.7920091,44.5848619],[33.7951987,44.5802969],[33.8004378,44.5814222],[33.8056839,44.5753186],[33.8093847,44.5769972],[33.8114458,44.5738111],[33.8139036,44.5771175],[33.8173303,44.577274],[33.8272108,44.5712636],[33.8273394,44.563316],[33.8310821,44.5548411],[33.8345552,44.5499395],[33.8372152,44.548782],[33.8337314,44.5416787],[33.8394649,44.5384748],[33.8401482,44.5304315],[33.8494976,44.5306195],[33.8572702,44.5258757],[33.8456566,44.519124],[33.85315,44.5154015],[33.8603572,44.5067568],[33.868911,44.5073968],[33.8707581,44.5054113],[33.8673484,44.5025419],[33.8672494,44.5003522],[33.8736292,44.4926938],[33.8869091,44.4822103],[33.8971535,44.4787873],[33.8934902,44.4732254],[33.8972198,44.4692246],[33.9262025,44.4213251],[33.9094099,44.4188846],[33.9024805,44.4193681],[33.8980569,44.4214726],[33.8828051,44.4210572],[33.8706281,44.4188467],[33.8591887,44.4199143],[33.8469623,44.4171293],[33.8292787,44.4089158],[33.8245729,44.411664],[33.8140922,44.4100258],[33.797829,44.4041246],[33.781585,44.4057444],[33.7840022,44.402866],[33.7855572,44.3968776],[33.7623083,44.3900862],[33.696591,44.1910397],[33.7357422,44.1858835],[33.7755079,44.184598],[33.8151473,44.1872073],[33.8567133,44.1943491],[33.9116725,44.1858835],[33.9514382,44.184598],[33.9910776,44.1872073],[34.0298524,44.1936623],[34.0670401,44.2038415],[34.0927335,44.2136353],[34.1417952,44.2137713],[34.2003274,44.2220125],[34.2375152,44.2321868],[34.2552959,44.2386127],[34.2888171,44.2539909],[34.3191029,44.2724903],[34.3328536,44.282804],[34.3551268,44.3032135],[34.3834932,44.3128241],[34.4170144,44.3281829],[34.4325985,44.3370516],[34.4579166,44.3546118],[34.4947227,44.3688605],[34.5111166,44.3769423],[34.5414024,44.3954029],[34.5678887,44.4166315],[34.590082,44.4402299],[34.607569,44.4657558],[34.6144422,44.4790935],[34.6220858,44.4994412],[34.6450122,44.5206113],[34.6661359,44.547163],[34.7006849,44.5628297],[34.735755,44.5848013],[34.7764494,44.5934492],[34.8085382,44.6038903],[34.8324881,44.6023351],[34.8722834,44.6029938],[34.9291911,44.6108698],[34.963432,44.598995],[35.0012394,44.590126],[35.0602428,44.5838827],[35.1197957,44.5863196],[35.1774068,44.5973337],[35.1957581,44.6028408],[35.2306662,44.6164595],[35.2586785,44.6310857],[35.2852182,44.6416945],[35.3171962,44.6585585],[35.3318979,44.668113],[35.3583842,44.6892424],[35.3805775,44.7127305],[35.3975542,44.7373268],[35.4116276,44.7442895],[35.4626979,44.7517865],[35.4998857,44.7618689],[35.5176664,44.7682366],[35.5511876,44.7834757],[35.5667717,44.7922754],[35.5952241,44.8120281],[35.6196208,44.8343376],[35.6322493,44.8491155],[35.670408,44.8272773],[35.7048906,44.8131714],[35.7230689,44.8074017],[35.7803291,44.7955387],[35.8397932,44.7921897],[35.8794326,44.7947719],[35.9241291,44.8026019],[35.9742343,44.8026778],[36.013533,44.8071728],[36.051603,44.8154218],[36.1028199,44.8336163],[36.1372853,44.8256548],[36.1764365,44.8205545],[36.2162022,44.8192829],[36.2558416,44.821864],[36.3134527,44.8328333],[36.3630225,44.8503296],[36.4154063,44.8528108],[36.454181,44.8591924],[36.4913688,44.869256],[36.5262768,44.8828121],[36.5426707,44.8908227],[36.5729565,44.9091205],[36.5994428,44.9301619],[36.6097225,44.9406672],[36.5679872,45.0506562],[36.5428648,45.1340402],[36.5338353,45.1751824],[36.530486,45.1992024],[36.5542469,45.2216309],[36.5859391,45.2441721],[36.5941742,45.252542],[36.5937019,45.2823897],[36.6030245,45.3093876],[36.6227602,45.3280113],[36.6635019,45.3599397],[36.6815681,45.4566115],[36.6684499,45.6266206],[36.583205,45.635158],[36.3387005,45.6715002],[36.1353542,45.6476547],[36.1034835,45.638376],[36.0723795,45.6256431],[36.028427,45.6242237],[35.9817734,45.6167329],[35.9534794,45.6280572],[35.9215589,45.6372534],[35.8711492,45.6454011],[35.8366954,45.6469342],[35.8022501,45.6453103],[35.7518847,45.6370298],[35.7200141,45.6277494],[35.6901483,45.6156372],[35.6627986,45.6008987],[35.6384328,45.5837842],[35.6174678,45.5645842],[35.6002625,45.5436256],[35.587111,45.5212652],[35.5764936,45.4903874],[35.5747509,45.4895333],[35.5487365,45.5142538],[35.5242787,45.5313252],[35.4968497,45.5460096],[35.459695,45.5603381],[35.4555162,45.5730522],[35.4443574,45.5959169],[35.4290297,45.6175579],[35.4198817,45.6278035],[35.3869834,45.6557223],[35.3609843,45.6715964],[35.3373014,45.6827713],[35.3237297,45.7127561],[35.3165721,45.7237303],[35.299254,45.7445762],[35.2663557,45.7724368],[35.2334204,45.7917299],[34.9750748,45.7619919],[34.9597746,45.7565682],[34.9411705,45.7658247],[34.876163,45.7904304],[34.7990874,45.8104643],[34.8021689,45.9006479],[34.7540112,45.9088363],[34.6699108,45.9676437],[34.628541,45.9864034],[34.6011392,45.9941699],[34.5816123,45.9956678],[34.5611691,45.9943843],[34.5542176,45.9904652],[34.5448398,45.9790277],[34.5443875,45.9761218],[34.5269998,45.9590021],[34.5109022,45.9480281],[34.4985264,45.9425606],[34.4762212,45.9441393],[34.459176,45.9512094],[34.4430184,45.9618096],[34.4233801,45.9786713],[34.4131796,45.9897359],[34.4107666,45.9992636],[34.4049875,46.0092864],[34.3471695,46.0549489],[34.3326403,46.0598467],[34.320021,46.0682092],[34.2648618,46.0548851],[34.2521968,46.0531749],[34.1843736,46.0668628],[34.1450093,46.0866862],[34.1359107,46.0966617],[34.1218931,46.1057194],[34.0809285,46.117556],[34.0695052,46.1166994],[34.0526389,46.1091293],[33.9982336,46.1264504],[33.971714,46.1411991],[33.9405553,46.1546515],[33.8973358,46.1706248],[33.86133,46.1945116],[33.8486859,46.1996667],[33.811324,46.203796],[33.7968936,46.2030156],[33.7726027,46.1976249],[33.7503231,46.18772],[33.7399776,46.1852474],[33.6995994,46.2028553],[33.6892658,46.2047794],[33.670864,46.2117939],[33.6661371,46.2207141],[33.6467708,46.22958],[33.6152408,46.2262179],[33.6177993,46.215981],[33.6135506,46.2139172],[33.6185932,46.213932],[33.6355706,46.1463365],[33.6412746,46.1424429],[33.6147111,46.1346624],[33.5870932,46.1191796],[33.5721329,46.1025643],[33.5911874,46.0612472],[33.5407189,46.0120312],[32.7727018,45.8266419],[32.7396744,45.8073204],[32.7259238,45.7972779],[32.7026395,45.7764183],[32.6659033,45.7625368],[32.6339252,45.7459969],[32.6054729,45.7265666],[32.5890615,45.7123247],[32.5685226,45.7063996],[32.5336146,45.6930389],[32.5016366,45.6764785],[32.4779329,45.660501],[32.4354921,45.6517736],[32.39936,45.6400966],[32.3822327,45.6329918],[32.3502547,45.6164136],[32.3218024,45.5969383],[32.2974057,45.5749258],[32.2868735,45.5630938],[32.2775192,45.5507836],[32.2643049,45.5283722],[32.2405042,45.5038633],[32.2230173,45.4787954],[32.2105624,45.4522796],[32.2062983,45.4386318],[32.2017961,45.4108733],[32.201579,45.396892]]]}'),(2,'DISPUTED','SEVASTOPOL',0,'{\"type\":\"Polygon\",\"coordinates\":[[[33.3779569,44.5838462],[33.3930152,44.5681987],[33.3996503,44.5643423],[33.4016594,44.5610614],[33.4004612,44.5592715],[33.4071732,44.5565894],[33.4100748,44.5535486],[33.414671,44.5526219],[33.4163465,44.5493377],[33.4274077,44.5457891],[33.4284008,44.543313],[33.4350539,44.5419983],[33.4348217,44.5409146],[33.4497224,44.5320144],[33.4573813,44.5290313],[33.464198,44.5233092],[33.4788113,44.5192613],[33.4788555,44.5174026],[33.4814623,44.5157171],[33.4897719,44.5122984],[33.4927974,44.5125433],[33.4930381,44.5174183],[33.4889039,44.5249823],[33.5078625,44.5311455],[33.5264968,44.5459033],[33.5395687,44.539262],[33.542912,44.5395173],[33.5372403,44.5484954],[33.5389717,44.5502823],[33.5485239,44.554409],[33.5500686,44.5525636],[33.5478351,44.5516093],[33.5487427,44.5497441],[33.5539774,44.5515491],[33.562927,44.5488265],[33.5684734,44.5559147],[33.5608581,44.55859],[33.563492,44.5617802],[33.5728005,44.5610282],[33.5747846,44.5592686],[33.5792988,44.5620965],[33.5702383,44.5724854],[33.578923,44.5730758],[33.5847547,44.5754084],[33.5895307,44.5805367],[33.5923472,44.5877529],[33.5923331,44.5924807],[33.5842788,44.5996505],[33.576377,44.6033141],[33.5738875,44.606603],[33.5673845,44.6074099],[33.5672286,44.6088974],[33.5706902,44.6149581],[33.5828279,44.6132154],[33.5835438,44.6150882],[33.5782058,44.6192201],[33.5859866,44.6374677],[33.5960725,44.6407591],[33.6034952,44.651651],[33.5993199,44.6632008],[33.6103428,44.6726833],[33.5991785,44.6709085],[33.5935735,44.67909],[33.5975627,44.6990734],[33.5945586,44.7071473],[33.5873092,44.7054915],[33.5868975,44.7004837],[33.5518827,44.711301],[33.5560938,44.7201787],[33.5554076,44.7221413],[33.5466985,44.7220158],[33.5474959,44.6897199],[33.5424577,44.6576964],[33.5313548,44.6400224],[33.5168858,44.636586],[33.5105038,44.6309138],[33.5075866,44.6209989],[33.5047582,44.6165579],[33.5013126,44.6151564],[33.5019782,44.6118966],[33.4973069,44.6098852],[33.5001394,44.6082374],[33.5007351,44.603576],[33.4993233,44.6074879],[33.4978317,44.607504],[33.4957525,44.6109471],[33.4981029,44.6121538],[33.4952779,44.6148727],[33.4864865,44.612926],[33.4843169,44.6092739],[33.4812423,44.6085388],[33.4805395,44.6110345],[33.4739853,44.6119977],[33.4730492,44.6057619],[33.4706817,44.6050402],[33.4746431,44.6017974],[33.4707787,44.6005913],[33.4714544,44.5926046],[33.4684703,44.5946123],[33.4680171,44.6001056],[33.4662354,44.6009409],[33.4662572,44.6065902],[33.468789,44.6078146],[33.4681762,44.6119631],[33.4636229,44.6117513],[33.4602628,44.6093012],[33.4571182,44.6105217],[33.4482092,44.6078374],[33.4475432,44.6041441],[33.4498455,44.6016442],[33.4468175,44.5979061],[33.4481208,44.5973543],[33.4476833,44.5948093],[33.4441644,44.5987997],[33.4404307,44.599419],[33.4413997,44.6015135],[33.4400636,44.605054],[33.4339409,44.6038632],[33.4313517,44.5969346],[33.4262966,44.5989669],[33.4198732,44.5924681],[33.4241188,44.5947288],[33.4264939,44.5934479],[33.4248662,44.581237],[33.4314365,44.574999],[33.4359306,44.5745808],[33.4376948,44.572334],[33.4353869,44.571057],[33.4344226,44.5719787],[33.4366416,44.5730618],[33.4356493,44.573903],[33.4267301,44.5733978],[33.428097,44.5756042],[33.419624,44.5838806],[33.4191592,44.5871545],[33.4170871,44.5878755],[33.4168157,44.5928239],[33.4161384,44.587998],[33.4136207,44.5857566],[33.412809,44.5782986],[33.4143867,44.5766282],[33.4119291,44.572169],[33.4136588,44.5699718],[33.4122288,44.564404],[33.4110539,44.5650361],[33.4098393,44.5712544],[33.4107359,44.575972],[33.4094392,44.5779911],[33.4065798,44.5767197],[33.4024217,44.5708259],[33.4043875,44.5825173],[33.4024193,44.5834106],[33.4030967,44.5911368],[33.3984799,44.5914294],[33.395001,44.5875713],[33.383653,44.5863156],[33.3779569,44.5838462]]]}');
/*!40000 ALTER TABLE `b_location_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_field`
--

DROP TABLE IF EXISTS `b_location_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_field` (
  `LOCATION_ID` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`,`TYPE`),
  KEY `IDX_BLLFL_VAL` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_field`
--

LOCK TABLES `b_location_field` WRITE;
/*!40000 ALTER TABLE `b_location_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_hierarchy`
--

DROP TABLE IF EXISTS `b_location_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_hierarchy` (
  `ANCESTOR_ID` int(11) NOT NULL,
  `DESCENDANT_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  PRIMARY KEY (`ANCESTOR_ID`,`DESCENDANT_ID`),
  KEY `IX_LOC_LH_D` (`DESCENDANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_hierarchy`
--

LOCK TABLES `b_location_hierarchy` WRITE;
/*!40000 ALTER TABLE `b_location_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_name`
--

DROP TABLE IF EXISTS `b_location_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_name` (
  `LOCATION_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `NAME` varchar(1000) NOT NULL,
  `NAME_NORMALIZED` varchar(1000) NOT NULL,
  PRIMARY KEY (`LOCATION_ID`,`LANGUAGE_ID`),
  KEY `IX_LOC_LNN` (`NAME_NORMALIZED`(200),`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_name`
--

LOCK TABLES `b_location_name` WRITE;
/*!40000 ALTER TABLE `b_location_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_source`
--

DROP TABLE IF EXISTS `b_location_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_location_source` (
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `CONFIG` longtext DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_source`
--

LOCK TABLES `b_location_source` WRITE;
/*!40000 ALTER TABLE `b_location_source` DISABLE KEYS */;
INSERT INTO `b_location_source` VALUES ('GOOGLE','Google','a:4:{i:0;a:4:{s:4:\"code\";s:16:\"API_KEY_FRONTEND\";s:4:\"type\";s:6:\"string\";s:4:\"sort\";i:10;s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"code\";s:15:\"API_KEY_BACKEND\";s:4:\"type\";s:6:\"string\";s:4:\"sort\";i:20;s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"code\";s:18:\"SHOW_PHOTOS_ON_MAP\";s:4:\"type\";s:4:\"bool\";s:4:\"sort\";i:30;s:5:\"value\";b:1;}i:3;a:4:{s:4:\"code\";s:21:\"USE_GEOCODING_SERVICE\";s:4:\"type\";s:4:\"bool\";s:4:\"sort\";i:40;s:5:\"value\";b:1;}}'),('OSM','OpenStreetMap','a:3:{i:0;a:5:{s:4:\"code\";s:11:\"SERVICE_URL\";s:4:\"type\";s:6:\"string\";s:10:\"is_visible\";b:1;s:4:\"sort\";i:10;s:5:\"value\";s:30:\"https://osm-ru-002.bitrix.info\";}i:1;a:5:{s:4:\"code\";s:15:\"MAP_SERVICE_URL\";s:4:\"type\";s:6:\"string\";s:10:\"is_visible\";b:1;s:4:\"sort\";i:15;s:5:\"value\";s:30:\"https://osm-ru-001.bitrix.info\";}i:2;a:5:{s:4:\"code\";s:5:\"TOKEN\";s:4:\"type\";s:6:\"string\";s:10:\"is_visible\";b:0;s:4:\"sort\";i:20;s:5:\"value\";N;}}');
/*!40000 ALTER TABLE `b_location_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification`
--

DROP TABLE IF EXISTS `b_log_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) DEFAULT NULL,
  `AUDIT_TYPE_ID` varchar(50) NOT NULL,
  `ITEM_ID` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) DEFAULT NULL,
  `USER_AGENT` varchar(1000) DEFAULT NULL,
  `REQUEST_URI` varchar(1000) DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification`
--

LOCK TABLES `b_log_notification` WRITE;
/*!40000 ALTER TABLE `b_log_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification_action`
--

DROP TABLE IF EXISTS `b_log_notification_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification_action` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOTIFICATION_ID` int(10) unsigned NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) NOT NULL,
  `RECIPIENT` varchar(50) DEFAULT NULL,
  `ADDITIONAL_TEXT` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification_action`
--

LOCK TABLES `b_log_notification_action` WRITE;
/*!40000 ALTER TABLE `b_log_notification_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_blacklist`
--

DROP TABLE IF EXISTS `b_main_mail_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_blacklist`
--

LOCK TABLES `b_main_mail_blacklist` WRITE;
/*!40000 ALTER TABLE `b_main_mail_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender`
--

DROP TABLE IF EXISTS `b_main_mail_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `EMAIL` varchar(255) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT 0,
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT 0,
  `OPTIONS` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender`
--

LOCK TABLES `b_main_mail_sender` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender_send_counter`
--

DROP TABLE IF EXISTS `b_main_mail_sender_send_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_sender_send_counter` (
  `DATE_STAT` date NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `CNT` int(11) NOT NULL,
  PRIMARY KEY (`DATE_STAT`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender_send_counter`
--

LOCK TABLES `b_main_mail_sender_send_counter` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender_send_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender_send_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection`
--

DROP TABLE IF EXISTS `b_medialib_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection`
--

LOCK TABLES `b_medialib_collection` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection_item`
--

DROP TABLE IF EXISTS `b_medialib_collection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection_item`
--

LOCK TABLES `b_medialib_collection_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_item`
--

DROP TABLE IF EXISTS `b_medialib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `ITEM_TYPE` char(30) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `SEARCHABLE_CONTENT` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_item`
--

LOCK TABLES `b_medialib_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_type`
--

DROP TABLE IF EXISTS `b_medialib_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) NOT NULL,
  `EXT` varchar(255) NOT NULL,
  `SYSTEM` char(1) NOT NULL DEFAULT 'N',
  `DESCRIPTION` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_type`
--

LOCK TABLES `b_medialib_type` WRITE;
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
INSERT INTO `b_medialib_type` VALUES (1,'image_name','image','jpg,jpeg,gif,png','Y','image_desc'),(2,'video_name','video','flv,mp4,wmv','Y','video_desc'),(3,'sound_name','sound','mp3,wma,aac','Y','sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_incoming_message`
--

DROP TABLE IF EXISTS `b_messageservice_incoming_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_incoming_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REQUEST_BODY` longtext DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SENDER_ID` varchar(50) NOT NULL,
  `EXTERNAL_ID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_MS_INCOMING_MESSAGE_1` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_incoming_message`
--

LOCK TABLES `b_messageservice_incoming_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_incoming_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_incoming_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_message`
--

DROP TABLE IF EXISTS `b_messageservice_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) NOT NULL,
  `SENDER_ID` varchar(50) NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  `MESSAGE_FROM` varchar(260) DEFAULT NULL,
  `MESSAGE_TO` varchar(50) NOT NULL,
  `MESSAGE_HEADERS` longtext DEFAULT NULL,
  `MESSAGE_BODY` longtext NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `EXTERNAL_ID` varchar(128) DEFAULT NULL,
  `EXTERNAL_STATUS` varchar(128) DEFAULT NULL,
  `CLUSTER_GROUP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`,`CLUSTER_GROUP`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_message`
--

LOCK TABLES `b_messageservice_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) NOT NULL,
  `CODE` varchar(128) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `HANDLER` varchar(1000) NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app`
--

LOCK TABLES `b_messageservice_rest_app` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app_lang`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `NAME` varchar(500) DEFAULT NULL,
  `APP_NAME` varchar(500) DEFAULT NULL,
  `DESCRIPTION` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app_lang`
--

LOCK TABLES `b_messageservice_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_mobileapp_app`
--

DROP TABLE IF EXISTS `b_mobileapp_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_mobileapp_app` (
  `CODE` varchar(50) NOT NULL,
  `SHORT_NAME` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `FILES` text NOT NULL,
  `LAUNCH_ICONS` text NOT NULL,
  `LAUNCH_SCREENS` text NOT NULL,
  `FOLDER` varchar(50) NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_mobileapp_app`
--

LOCK TABLES `b_mobileapp_app` WRITE;
/*!40000 ALTER TABLE `b_mobileapp_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_mobileapp_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_mobileapp_config`
--

DROP TABLE IF EXISTS `b_mobileapp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_mobileapp_config` (
  `APP_CODE` varchar(150) NOT NULL,
  `PLATFORM` varchar(150) NOT NULL,
  `PARAMS` text NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`APP_CODE`,`PLATFORM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_mobileapp_config`
--

LOCK TABLES `b_mobileapp_config` WRITE;
/*!40000 ALTER TABLE `b_mobileapp_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_mobileapp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module`
--

DROP TABLE IF EXISTS `b_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module` (
  `ID` varchar(50) NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module`
--

LOCK TABLES `b_module` WRITE;
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
INSERT INTO `b_module` VALUES ('b24connector','2024-03-12 17:44:10'),('bitrix.sitecorporate','2024-03-12 17:44:10'),('bitrix.siteinfoportal','2024-03-12 17:44:10'),('bitrix.sitepersonal','2024-03-12 17:44:10'),('bitrixcloud','2024-03-12 17:44:11'),('blog','2024-03-12 17:44:11'),('clouds','2024-03-12 17:44:12'),('fileman','2024-03-12 17:44:12'),('form','2024-03-12 17:44:13'),('forum','2024-03-12 17:44:13'),('highloadblock','2024-03-12 17:44:14'),('iblock','2024-03-12 17:44:14'),('landing','2024-03-12 17:44:15'),('location','2024-03-12 17:44:17'),('main','2024-03-12 17:44:08'),('messageservice','2024-03-12 17:44:17'),('mobileapp','2024-03-12 17:44:17'),('perfmon','2024-03-12 17:44:18'),('photogallery','2024-03-12 17:44:18'),('rest','2024-03-12 17:44:18'),('scale','2024-03-12 17:44:19'),('search','2024-03-12 17:44:19'),('security','2024-03-12 17:44:19'),('seo','2024-03-12 17:44:20'),('socialservices','2024-03-12 17:44:20'),('subscribe','2024-03-12 17:44:21'),('translate','2024-03-12 17:44:22'),('ui','2024-03-12 17:44:22'),('vote','2024-03-12 17:44:23');
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_group`
--

DROP TABLE IF EXISTS `b_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) NOT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_group`
--

LOCK TABLES `b_module_group` WRITE;
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_to_module`
--

DROP TABLE IF EXISTS `b_module_to_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SORT` int(11) NOT NULL DEFAULT 100,
  `FROM_MODULE_ID` varchar(50) NOT NULL,
  `MESSAGE_ID` varchar(255) NOT NULL,
  `TO_MODULE_ID` varchar(50) NOT NULL,
  `TO_PATH` varchar(255) DEFAULT NULL,
  `TO_CLASS` varchar(255) DEFAULT NULL,
  `TO_METHOD` varchar(255) DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_to_module`
--

LOCK TABLES `b_module_to_module` WRITE;
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
INSERT INTO `b_module_to_module` VALUES (1,'2024-03-12 17:44:08',100,'iblock','OnIBlockPropertyBuildList','main','/modules/main/tools/prop_userid.php','CIBlockPropertyUserID','GetUserTypeDescription','',1,'2b30c309bf87645959b9bfbed51b49c6'),(2,'2024-03-12 17:44:08',100,'main','OnUserDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnUserDelete','',1,'f437e170e4daf957766b0b0579f08fb4'),(3,'2024-03-12 17:44:08',100,'main','OnLanguageDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnLanguageDelete','',1,'9211999c5cfc3a4d374e4f957d5079f6'),(4,'2024-03-12 17:44:08',100,'main','OnUserDelete','main','','CUserOptions','OnUserDelete','',1,'9ef4e969f975b6425c7113444d210a90'),(5,'2024-03-12 17:44:08',100,'main','OnChangeFile','main','','CMain','OnChangeFileComponent','',1,'332179402f77c4d41c6c2e524acde4d0'),(6,'2024-03-12 17:44:08',100,'main','OnUserTypeRightsCheck','main','','CUser','UserTypeRightsCheck','',1,'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),(7,'2024-03-12 17:44:08',100,'main','OnUserLogin','main','','UpdateTools','CheckUpdates','',1,'a2986b9f6e9a99c0351c2ba858dafc85'),(8,'2024-03-12 17:44:08',100,'main','OnModuleUpdate','main','','UpdateTools','SetUpdateResult','',1,'f9b70c6a75b6341063b23bde5d32e582'),(9,'2024-03-12 17:44:08',100,'main','OnUpdateCheck','main','','UpdateTools','SetUpdateError','',1,'a0aecef95a192ec3dd134f71f0f4f175'),(10,'2024-03-12 17:44:08',100,'main','OnPanelCreate','main','','CUndo','CheckNotifyMessage','',1,'6476f96ffba6ab2b4a7dbe644f42edf6'),(11,'2024-03-12 17:44:08',100,'main','OnAfterAddRating','main','','CRatingsComponentsMain','OnAfterAddRating','',1,'6122bee2ad083f8f72e35655cee48859'),(12,'2024-03-12 17:44:08',100,'main','OnAfterUpdateRating','main','','CRatingsComponentsMain','OnAfterUpdateRating','',1,'f8f806e33dc35737bdbe6b9bc42626a4'),(13,'2024-03-12 17:44:08',100,'main','OnSetRatingsConfigs','main','','CRatingsComponentsMain','OnSetRatingConfigs','',1,'9244ca7fd6964757ca191c9407cb1218'),(14,'2024-03-12 17:44:08',100,'main','OnGetRatingsConfigs','main','','CRatingsComponentsMain','OnGetRatingConfigs','',1,'d8ae8e1f8889b1fbb6af276fb14c8411'),(15,'2024-03-12 17:44:08',100,'main','OnGetRatingsObjects','main','','CRatingsComponentsMain','OnGetRatingObject','',1,'129315715250c195ee115002b445a156'),(16,'2024-03-12 17:44:08',100,'main','OnGetRatingContentOwner','main','','CRatingsComponentsMain','OnGetRatingContentOwner','',1,'bf1f5deaa1532fe9a28acd6d19d23a80'),(17,'2024-03-12 17:44:08',100,'main','OnAfterAddRatingRule','main','','CRatingRulesMain','OnAfterAddRatingRule','',1,'298e763431f7f7d6c3af9798663f410d'),(18,'2024-03-12 17:44:08',100,'main','OnAfterUpdateRatingRule','main','','CRatingRulesMain','OnAfterUpdateRatingRule','',1,'4ecdc4a15e24c49f0fa8f44064bf1511'),(19,'2024-03-12 17:44:08',100,'main','OnGetRatingRuleObjects','main','','CRatingRulesMain','OnGetRatingRuleObjects','',1,'6ac10928b76183004ba0e88ace0a1b5b'),(20,'2024-03-12 17:44:08',100,'main','OnGetRatingRuleConfigs','main','','CRatingRulesMain','OnGetRatingRuleConfigs','',1,'06769c4f6bbba4fad79c1619a874ee97'),(21,'2024-03-12 17:44:08',100,'main','OnAfterUserAdd','main','','CRatings','OnAfterUserRegister','',1,'ecb9ae0476db69da6c95b06bcb3aebbb'),(22,'2024-03-12 17:44:08',100,'main','OnUserDelete','main','','CRatings','OnUserDelete','',1,'9fe6984fd29b7ab9508ac02c23690094'),(23,'2024-03-12 17:44:08',100,'main','OnAfterGroupAdd','main','','CGroupAuthProvider','OnAfterGroupAdd','',1,'02f2fe70b9068a6b307192321fe74430'),(24,'2024-03-12 17:44:08',100,'main','OnBeforeGroupUpdate','main','','CGroupAuthProvider','OnBeforeGroupUpdate','',1,'ef0f2e4d0ae7bbf59d0798e8078143f9'),(25,'2024-03-12 17:44:08',100,'main','OnBeforeGroupDelete','main','','CGroupAuthProvider','OnBeforeGroupDelete','',1,'d3ec9527c0e77709402a05ae4249afca'),(26,'2024-03-12 17:44:08',100,'main','OnAfterSetUserGroup','main','','CGroupAuthProvider','OnAfterSetUserGroup','',1,'0de6c5b48e9382f6e857d79f76d95f25'),(27,'2024-03-12 17:44:08',100,'main','OnEventLogGetAuditTypes','main','','CEventMain','GetAuditTypes','',1,'ac0b8b7a5e703131a3bd41b4399bc032'),(28,'2024-03-12 17:44:08',100,'main','OnEventLogGetAuditHandlers','main','','CEventMain','MakeMainObject','',1,'1ddb38ccf35a8a9da5d3b2bc80591ad6'),(29,'2024-03-12 17:44:08',100,'perfmon','OnGetTableSchema','main','','CTableSchema','OnGetTableSchema','',1,'c1f65f88d449e8b8a3b7af9d54ef3f50'),(30,'2024-03-12 17:44:08',100,'sender','OnConnectorList','main','','\\Bitrix\\Main\\SenderEventHandler','onConnectorListUser','',1,'8af99568465a1ccdb6a84e868cf5aad8'),(31,'2024-03-12 17:44:08',110,'main','OnUserTypeBuildList','main','','CUserTypeString','GetUserTypeDescription','',1,'09f8200652932044934bd3c522e920c5'),(32,'2024-03-12 17:44:08',120,'main','OnUserTypeBuildList','main','','CUserTypeInteger','GetUserTypeDescription','',1,'71ef247b3eb3b07e4bd6940791b89497'),(33,'2024-03-12 17:44:08',130,'main','OnUserTypeBuildList','main','','CUserTypeDouble','GetUserTypeDescription','',1,'4fe2008255fe567423cc0c2f080ca741'),(34,'2024-03-12 17:44:08',140,'main','OnUserTypeBuildList','main','','CUserTypeDateTime','GetUserTypeDescription','',1,'686c0679e60bee52dbcc27f5502277b6'),(35,'2024-03-12 17:44:08',145,'main','OnUserTypeBuildList','main','','CUserTypeDate','GetUserTypeDescription','',1,'7e19b5fc5fc48b1cd317a6ac44d84236'),(36,'2024-03-12 17:44:08',150,'main','OnUserTypeBuildList','main','','CUserTypeBoolean','GetUserTypeDescription','',1,'4d5e1dd2369089f2db9480549241205f'),(37,'2024-03-12 17:44:08',155,'main','OnUserTypeBuildList','main','','CUserTypeUrl','GetUserTypeDescription','',1,'79fcd650625b296abf13216cd5af2428'),(38,'2024-03-12 17:44:08',160,'main','OnUserTypeBuildList','main','','CUserTypeFile','GetUserTypeDescription','',1,'67b9a4fbc45240a7887b73e3a246eba0'),(39,'2024-03-12 17:44:08',170,'main','OnUserTypeBuildList','main','','CUserTypeEnum','GetUserTypeDescription','',1,'fbebdb289fe38c1fbfeda4d3d8ee43ef'),(40,'2024-03-12 17:44:08',180,'main','OnUserTypeBuildList','main','','CUserTypeIBlockSection','GetUserTypeDescription','',1,'2065f8305645790970bac0b99f127f47'),(41,'2024-03-12 17:44:08',190,'main','OnUserTypeBuildList','main','','CUserTypeIBlockElement','GetUserTypeDescription','',1,'65bda5818e3545f1683a3ff5271cc891'),(42,'2024-03-12 17:44:08',200,'main','OnUserTypeBuildList','main','','CUserTypeStringFormatted','GetUserTypeDescription','',1,'47e3cf1c280e01dbaed43f9989a6747b'),(43,'2024-03-12 17:44:08',210,'main','OnUserTypeBuildList','main','','\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType','getUserTypeDescription','',1,'719d15ee5f60f6348d2bd6a8911aeed1'),(44,'2024-03-12 17:44:08',100,'main','OnBeforeEndBufferContent','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeEndBufferContent','',1,'ff5eb984fe6ce3e8d769bf3ba646b902'),(45,'2024-03-12 17:44:08',100,'main','OnBeforeRestartBuffer','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeRestartBuffer','',1,'0782f5a6df6dd52d834caea88c3ba3a7'),(46,'2024-03-12 17:44:08',100,'main','OnFileDelete','main','','\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable','onFileDelete','',1,'54c80cd94412db221338aeb59902f059'),(47,'2024-03-12 17:44:08',100,'socialnetwork','OnSocNetLogDelete','main','','CUserCounter','OnSocNetLogDelete','',1,'33e603755a0bc07abd51a1f8ed52966e'),(48,'2024-03-12 17:44:08',100,'socialnetwork','OnSocNetLogCommentDelete','main','','CUserCounter','OnSocNetLogCommentDelete','',1,'51ee2214895be904a880046f43e84138'),(49,'2024-03-12 17:44:08',100,'main','OnAdminInformerInsertItems','main','','CMpNotifications','OnAdminInformerInsertItemsHandlerMP','',1,'c89c0e94ac1110c334a24c70e1773daa'),(50,'2024-03-12 17:44:08',100,'rest','OnRestServiceBuildDescription','main','','\\Bitrix\\Main\\Rest\\Handlers','onRestServiceBuildDescription','',1,'c0b0c358a21b648d4f9c5d29d17a5ab2'),(51,'2024-03-12 17:44:08',100,'main','OnBeforeUserTypeAdd','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','OnBeforeUserTypeAdd','',1,'e204684efc0764af9431ca94b950619a'),(52,'2024-03-12 17:44:08',100,'main','OnAfterUserTypeAdd','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onAfterUserTypeAdd','',1,'50932fb244caf7af686fac906caf3e73'),(53,'2024-03-12 17:44:08',100,'main','OnBeforeUserTypeDelete','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','OnBeforeUserTypeDelete','',1,'d22a86deba0ff4bd031d022e331033b4'),(54,'2024-03-12 17:44:08',100,'main','OnAuthProvidersBuildList','main','','\\Bitrix\\Main\\Access\\Auth\\AccessAuthProvider','getProviders','',1,'3a2839dac113bf47bce01812903e768a'),(55,'2024-03-12 17:44:08',100,'iblock','OnBeforeIBlockSectionUpdate','main','','\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler','onBeforeIBlockSectionUpdate','',1,'dde505dba68c59bd4661b7680c329485'),(56,'2024-03-12 17:44:08',100,'iblock','OnBeforeIBlockSectionAdd','main','','\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler','onBeforeIBlockSectionAdd','',1,'d3a665b1890dabbba32ff01e3e46ec57'),(57,'2024-03-12 17:44:08',100,'iblock','OnBeforeIBlockSectionDelete','main','','\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler','onBeforeIBlockSectionDelete','',1,'157add4b02621a60fabf1369c3e7ea9b'),(58,'2024-03-12 17:44:08',100,'sale','OnSaleBasketItemSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogBasket','',2,'fa4fc3924ff2585e92f8bdabaf287864'),(59,'2024-03-12 17:44:08',100,'sale','OnSaleOrderSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrder','',2,'6b358bb17b30da91b105fb1451ed9aaa'),(60,'2024-03-12 17:44:08',100,'sale','OnSaleOrderPaid','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrderPayment','',2,'8f5ca6e1c5136cb4bbf30474f0ff4183'),(61,'2024-03-12 17:44:08',1000,'sale','onBuildDiscountConditionInterfaceControls','main','','\\Bitrix\\Main\\Discount\\UserConditionControl','onBuildDiscountConditionInterfaceControls','',1,'9f0d91c081704e52b52f540b3acaf52e'),(62,'2024-03-12 17:44:08',100,'main','OnBeforePhpMail','main','','\\Bitrix\\Main\\Mail\\Sender','applyCustomSmtp','',2,'10fbf5b8dec05a02d8d7010e594f16ec'),(63,'2024-03-12 17:44:08',100,'main','OnBuildFilterFactoryMethods','main','','\\Bitrix\\Main\\Filter\\FactoryMain','onBuildFilterFactoryMethods','',2,'19f10c2686a955bd8b8116ea1f1ad829'),(64,'2024-03-12 17:44:08',100,'main','onGetUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onGetUserFieldValues','',2,'7f9a5e25d638a6bff29f0bf4666da1a9'),(65,'2024-03-12 17:44:08',100,'main','onUpdateUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onUpdateUserFieldValues','',2,'d78761f994d74258421d271810f03ebf'),(66,'2024-03-12 17:44:08',100,'main','onDeleteUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onDeleteUserFieldValues','',2,'074b2e25238a00ffc809ad12b609db2c'),(67,'2024-03-12 17:44:08',100,'main','OnAfterUserTypeAdd','main','','\\Bitrix\\Main\\ORM\\Entity','onUserTypeChange','',2,'37b1b1538fa6a6c5f41c9ce4afbf2789'),(68,'2024-03-12 17:44:08',100,'main','OnAfterUserTypeUpdate','main','','\\Bitrix\\Main\\ORM\\Entity','onUserTypeChange','',2,'6a53bbd6e85686f4aa8a69d3d75f7e37'),(69,'2024-03-12 17:44:08',100,'main','OnAfterUserTypeDelete','main','','\\Bitrix\\Main\\ORM\\Entity','onUserTypeChange','',2,'010cc1e3107418a1fd9f9a4cde7d93b9'),(70,'2024-03-12 17:44:10',100,'main','OnBuildGlobalMenu','b24connector','','\\Bitrix\\B24Connector\\Helper','onBuildGlobalMenu','',1,'9c4452a442bacc2d4d70635962485be1'),(71,'2024-03-12 17:44:10',100,'main','OnBeforeProlog','b24connector','','\\Bitrix\\B24Connector\\Helper','onBeforeProlog','',1,'641053ff6ee8ff57518d7c30724530e5'),(72,'2024-03-12 17:44:10',100,'main','OnBeforeProlog','bitrix.sitecorporate','','CSiteCorporate','ShowPanel','',1,'bc7c322534797a9ed3493c40e1b8fdac'),(73,'2024-03-12 17:44:10',100,'main','OnBeforeProlog','bitrix.siteinfoportal','','CSiteInfoportal','ShowPanel','',1,'7ffb3da30f1bec7fe0c7456a8ec3b8d7'),(74,'2024-03-12 17:44:10',100,'main','OnBeforeProlog','bitrix.sitepersonal','','CSitePersonal','ShowPanel','',1,'5a8bf3ea4b17f8d011b8f398c05ac89b'),(75,'2024-03-12 17:44:11',100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudBackup','OnAdminInformerInsertItems','',1,'5499039afdd0fdb38d4b245c8b886dcb'),(76,'2024-03-12 17:44:11',100,'mobileapp','OnBeforeAdminMobileMenuBuild','bitrixcloud','','CBitrixCloudMobile','OnBeforeAdminMobileMenuBuild','',1,'5828a8cdb2cc45e2724ef1c76139df88'),(77,'2024-03-12 17:44:11',100,'search','OnReindex','blog','','CBlogSearch','OnSearchReindex','',1,'6c23ebfcdfc99d14541ad083b0ee7430'),(78,'2024-03-12 17:44:11',100,'main','OnUserDelete','blog','','\\Bitrix\\Blog\\BlogUser','onUserDelete','',1,'470dc0caadb6eee3cf6bd32a89d2aa38'),(79,'2024-03-12 17:44:11',100,'main','OnSiteDelete','blog','','CBlogSitePath','DeleteBySiteID','',1,'33b1b3449b56990b745b251f3976521d'),(80,'2024-03-12 17:44:11',100,'socialnetwork','OnSocNetGroupDelete','blog','','CBlogSoNetPost','OnGroupDelete','',1,'4fa06723b7108652d8f6846f17c4bfda'),(81,'2024-03-12 17:44:11',100,'socialnetwork','OnSocNetFeaturesAdd','blog','','CBlogSearch','SetSoNetFeatureIndexSearch','',1,'5e642b195637a47eda278a2f769d72ae'),(82,'2024-03-12 17:44:11',100,'socialnetwork','OnSocNetFeaturesUpdate','blog','','CBlogSearch','SetSoNetFeatureIndexSearch','',1,'94116bd773c35830e32cabd264e1deac'),(83,'2024-03-12 17:44:11',100,'socialnetwork','OnBeforeSocNetFeaturesPermsAdd','blog','','CBlogSearch','OnBeforeSocNetFeaturesPermsAdd','',1,'ef99702762ccf8958b3bd05a0bc2bd21'),(84,'2024-03-12 17:44:11',100,'socialnetwork','OnSocNetFeaturesPermsAdd','blog','','CBlogSearch','SetSoNetFeaturePermIndexSearch','',1,'7e78a43487928787ac0665eb1eade0d5'),(85,'2024-03-12 17:44:11',100,'socialnetwork','OnBeforeSocNetFeaturesPermsUpdate','blog','','CBlogSearch','OnBeforeSocNetFeaturesPermsUpdate','',1,'13116dc44040b680c93a2b7f60ff2845'),(86,'2024-03-12 17:44:11',100,'socialnetwork','OnSocNetFeaturesPermsUpdate','blog','','CBlogSearch','SetSoNetFeaturePermIndexSearch','',1,'06ae1cde11216c73393f8720c0f31ea9'),(87,'2024-03-12 17:44:11',200,'main','OnAfterAddRating','blog','','CRatingsComponentsBlog','OnAfterAddRating','',1,'6dd70a97fa5c2f15e619721007813bd0'),(88,'2024-03-12 17:44:11',200,'main','OnAfterUpdateRating','blog','','CRatingsComponentsBlog','OnAfterUpdateRating','',1,'a2f4b906bc5e1e984c28ef37728d7007'),(89,'2024-03-12 17:44:11',200,'main','OnSetRatingsConfigs','blog','','CRatingsComponentsBlog','OnSetRatingConfigs','',1,'4461c77de3ca9dec12cd66c9554555a0'),(90,'2024-03-12 17:44:11',200,'main','OnGetRatingsConfigs','blog','','CRatingsComponentsBlog','OnGetRatingConfigs','',1,'6708964800c60ed28bb3ac095494d0f8'),(91,'2024-03-12 17:44:11',200,'main','OnGetRatingsObjects','blog','','CRatingsComponentsBlog','OnGetRatingObject','',1,'29df09132203259924e883921fed0971'),(92,'2024-03-12 17:44:11',200,'main','OnGetRatingContentOwner','blog','','CRatingsComponentsBlog','OnGetRatingContentOwner','',1,'a47b921e59710bdca16e2284d11e8aa0'),(93,'2024-03-12 17:44:11',100,'im','OnGetNotifySchema','blog','','CBlogNotifySchema','OnGetNotifySchema','',1,'cd6910b2ee2dd66f257a68a6406b9f79'),(94,'2024-03-12 17:44:11',100,'im','OnAnswerNotify','blog','','CBlogNotifySchema','CBlogEventsIMCallback','',1,'890d3be770eab6025cc54e120d3b51f5'),(95,'2024-03-12 17:44:11',100,'main','OnAfterRegisterModule','main','/modules/blog/install/index.php','blog','installUserFields','',1,'bfd07861166a9d51c1d21d18b291a1dc'),(96,'2024-03-12 17:44:11',100,'conversion','OnGetCounterTypes','blog','','\\Bitrix\\Blog\\Internals\\ConversionHandlers','onGetCounterTypes','',1,'e5df84e19828b3b95901e7b2a5d55cb1'),(97,'2024-03-12 17:44:11',100,'conversion','OnGetRateTypes','blog','','\\Bitrix\\Blog\\Internals\\ConversionHandlers','onGetRateTypes','',1,'75028a7a2551f7c677c09c367ed1a54c'),(98,'2024-03-12 17:44:11',100,'blog','OnPostAdd','blog','','\\Bitrix\\Blog\\Internals\\ConversionHandlers','onPostAdd','',1,'a3b637f0c0945089c95d5c08e1166938'),(99,'2024-03-12 17:44:11',100,'mail','onReplyReceivedBLOG_POST','blog','','\\Bitrix\\Blog\\Internals\\MailHandler','handleReplyReceivedBlogPost','',2,'5e3d8ad3f14c5b994981074e43a02cd7'),(100,'2024-03-12 17:44:11',100,'mail','onForwardReceivedBLOG_POST','blog','','\\Bitrix\\Blog\\Internals\\MailHandler','handleForwardReceivedBlogPost','',2,'6002badd4ffa13790a43d45c5c29fca3'),(101,'2024-03-12 17:44:11',100,'socialnetwork','onLogIndexGetContent','blog','','\\Bitrix\\Blog\\Integration\\Socialnetwork\\Log','onIndexGetContent','',2,'3fba13b74a731f896448388c082c24a4'),(102,'2024-03-12 17:44:11',100,'socialnetwork','onLogCommentIndexGetContent','blog','','\\Bitrix\\Blog\\Integration\\Socialnetwork\\LogComment','onIndexGetContent','',2,'57ce8e76c004b1447554d8ec64c48783'),(103,'2024-03-12 17:44:11',100,'socialnetwork','onContentViewed','blog','','\\Bitrix\\Blog\\Integration\\Socialnetwork\\ContentViewHandler','onContentViewed','',2,'d33a4b2ae579a2c9b5ddcea17bc62806'),(104,'2024-03-12 17:44:12',100,'main','OnEventLogGetAuditTypes','clouds','','CCloudStorage','GetAuditTypes','',1,'da69722ba95497cf263381b46e24df40'),(105,'2024-03-12 17:44:12',90,'main','OnBeforeProlog','clouds','','CCloudStorage','OnBeforeProlog','',1,'f8c39ff182ad873715f10a7091f928a4'),(106,'2024-03-12 17:44:12',100,'main','OnAdminListDisplay','clouds','','CCloudStorage','OnAdminListDisplay','',1,'8ddf4f578e7229a63cba4d2124c7643c'),(107,'2024-03-12 17:44:12',100,'main','OnBuildGlobalMenu','clouds','','CCloudStorage','OnBuildGlobalMenu','',1,'d6d308843a6521ad50bfa230a2fcef8f'),(108,'2024-03-12 17:44:12',100,'main','OnFileSave','clouds','','CCloudStorage','OnFileSave','',1,'1e4f94a842d6166359ed1789a6f21245'),(109,'2024-03-12 17:44:12',100,'main','OnAfterFileSave','clouds','','CCloudStorage','OnAfterFileSave','',1,'c36bae07a3080f9b5bc5d422ec96933f'),(110,'2024-03-12 17:44:12',100,'main','OnGetFileSRC','clouds','','CCloudStorage','OnGetFileSRC','',1,'7ec03b3b7ad3f2f54c1e438a1172e5a8'),(111,'2024-03-12 17:44:12',100,'main','OnFileCopy','clouds','','CCloudStorage','OnFileCopy','',1,'6880b56c76f7d3c5d09f887fca6341ca'),(112,'2024-03-12 17:44:12',100,'main','OnPhysicalFileDelete','clouds','','CCloudStorage','OnFileDelete','',1,'3151c487c747a57d7817f68e97fd1c94'),(113,'2024-03-12 17:44:12',100,'main','OnMakeFileArray','clouds','','CCloudStorage','OnMakeFileArray','',1,'713ea8a7a25764b1af60f7a1ec3032d5'),(114,'2024-03-12 17:44:12',100,'main','OnBeforeResizeImage','clouds','','CCloudStorage','OnBeforeResizeImage','',1,'705cd310c52f9c7e8e0c8a0578a22667'),(115,'2024-03-12 17:44:12',100,'main','OnAfterResizeImage','clouds','','CCloudStorage','OnAfterResizeImage','',1,'a403ad2328227153475df0c478a465cc'),(116,'2024-03-12 17:44:12',100,'main','OnAfterFileDeleteDuplicate','clouds','','CCloudStorage','OnAfterFileDeleteDuplicate','',1,'c5f3eb3991b50d4f80c2ccbdc94f8656'),(117,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_AmazonS3','GetObjectInstance','',1,'a4eb7ed1f50b5931474c565f448a4069'),(118,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_GoogleStorage','GetObjectInstance','',1,'1e559e2225608e8d40eeede5b7526f2a'),(119,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_OpenStackStorage','GetObjectInstance','',1,'5ad09feff5dab28ab571ad034ccdf2ea'),(120,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_RackSpaceCloudFiles','GetObjectInstance','',1,'cc976773610cf809bb56871ac7dd9f01'),(121,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_ClodoRU','GetObjectInstance','',1,'faadad31436e94c420ed787e4424714b'),(122,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Selectel','GetObjectInstance','',1,'5e63a8eebed42bd099b4a9ef62e8d52b'),(123,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_HotBox','GetObjectInstance','',1,'1913169adcd6d6f3b7fb5f3b70ba1fd8'),(124,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Yandex','GetObjectInstance','',1,'12bd1d4f0d145d5b1681955612fe61c8'),(125,'2024-03-12 17:44:12',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_S3','GetObjectInstance','',1,'4af3f0ba1f50ed9be6efcdb55dfbee4e'),(126,'2024-03-12 17:44:12',100,'perfmon','OnGetTableSchema','clouds','','clouds','OnGetTableSchema','',1,'d31a1f80f07441976eb1711db4902a71'),(127,'2024-03-12 17:44:12',100,'main','OnGroupDelete','fileman','','CFileman','OnGroupDelete','',1,'d10f791d422ba0e7551ab267db50404c'),(128,'2024-03-12 17:44:12',100,'main','OnPanelCreate','fileman','','CFileman','OnPanelCreate','',1,'b00a6174fb1763684c299ccf5e054c65'),(129,'2024-03-12 17:44:12',100,'main','OnModuleUpdate','fileman','','CFileman','OnModuleUpdate','',1,'58ae853e2b7c230b5cdb51129efd8a05'),(130,'2024-03-12 17:44:12',100,'main','OnModuleInstalled','fileman','','CFileman','ClearComponentsListCache','',1,'7bdbd354eab11f376fa257a998587277'),(131,'2024-03-12 17:44:12',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapGoogle','GetUserTypeDescription','',1,'d9d06fd05f80b33379359ebd8e36e655'),(132,'2024-03-12 17:44:12',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapYandex','GetUserTypeDescription','',1,'20ca1d02998884b5abec68b32fdb561d'),(133,'2024-03-12 17:44:12',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyVideo','GetUserTypeDescription','',1,'991c32062e05844708a5cf7aba37bf9a'),(134,'2024-03-12 17:44:12',100,'main','OnUserTypeBuildList','fileman','','CUserTypeVideo','GetUserTypeDescription','',1,'41bc5efb49ebf8d165acd4e4d556f60c'),(135,'2024-03-12 17:44:12',100,'main','OnEventLogGetAuditTypes','fileman','','CEventFileman','GetAuditTypes','',1,'e0a610651ffec1fbddb2f261223fb2e9'),(136,'2024-03-12 17:44:12',100,'main','OnEventLogGetAuditHandlers','fileman','','CEventFileman','MakeFilemanObject','',1,'fbfef1ef99530f6eae191da293f9566c'),(137,'2024-03-12 17:44:12',154,'main','OnUserTypeBuildList','fileman','','\\Bitrix\\Fileman\\UserField\\Address','getUserTypeDescription','',1,'f0583a376e38d3d2675513b1a367ed3c'),(138,'2024-03-12 17:44:13',100,'sender','OnConnectorList','form','','\\Bitrix\\Form\\SenderEventHandler','onConnectorListForm','',1,'182217f1803d20e2899086e379ada21c'),(139,'2024-03-12 17:44:13',100,'main','OnAfterUserUpdate','forum','','CForumUser','OnAfterUserUpdate','',1,'18ca0a9757a229b6290603235dfff0d1'),(140,'2024-03-12 17:44:13',100,'main','OnGroupDelete','forum','','CForumNew','OnGroupDelete','',1,'63f10ce39f269a9f1add6a0600aa05b9'),(141,'2024-03-12 17:44:13',100,'main','OnBeforeLangDelete','forum','','CForumNew','OnBeforeLangDelete','',1,'201c2a343960654a90382521e253328f'),(142,'2024-03-12 17:44:13',100,'main','OnFileDelete','forum','','CForumFiles','OnFileDelete','',1,'a00aa95408b2665018cb63e21cef4684'),(143,'2024-03-12 17:44:13',100,'search','OnReindex','forum','','CForumNew','OnReindex','',1,'3fe2c3077963069fee2360611d840816'),(144,'2024-03-12 17:44:13',100,'main','OnUserDelete','forum','','CForumUser','OnUserDelete','',1,'eb0cb7958d708be629eba740bcabd8c4'),(145,'2024-03-12 17:44:13',100,'iblock','OnIBlockPropertyBuildList','main','/modules/forum/tools/prop_topicid.php','CIBlockPropertyTopicID','GetUserTypeDescription','',1,'d5b04b52654500981293dbcf10ca1ef9'),(146,'2024-03-12 17:44:13',100,'iblock','OnBeforeIBlockElementDelete','forum','','CForumTopic','OnBeforeIBlockElementDelete','',1,'929cf569dd703b922e4a96a0a023f120'),(147,'2024-03-12 17:44:13',100,'main','OnEventLogGetAuditTypes','forum','','CForumEventLog','GetAuditTypes','',1,'30a759001702af8052ea65e700c519c7'),(148,'2024-03-12 17:44:13',100,'main','OnEventLogGetAuditHandlers','forum','','CEventForum','MakeForumObject','',1,'78ecc0524ac5d4fb0545c8a3fa28b3bd'),(149,'2024-03-12 17:44:13',100,'socialnetwork','OnSocNetGroupDelete','forum','','CForumUser','OnSocNetGroupDelete','',1,'94cfb4cf5460746b7b31a5b93a3805f6'),(150,'2024-03-12 17:44:13',100,'socialnetwork','OnSocNetLogFormatEvent','forum','','CForumMessage','OnSocNetLogFormatEvent','',1,'28c7a91a467c1190a064f597487abd5c'),(151,'2024-03-12 17:44:13',100,'mail','OnGetFilterList','forum','','CForumEMail','OnGetSocNetFilterList','',1,'e42fc61795fed0c5f397259bb6f1f6b9'),(152,'2024-03-12 17:44:13',100,'main','OnAfterAddRating','forum','','CRatingsComponentsForum','OnAfterAddRating','',1,'db966e6ee1f8b98f83e57411f4757858'),(153,'2024-03-12 17:44:13',100,'main','OnAfterUpdateRating','forum','','CRatingsComponentsForum','OnAfterUpdateRating','',1,'f5f6a93c1fe6d7dc61fbb5bf25f9965f'),(154,'2024-03-12 17:44:13',100,'main','OnSetRatingsConfigs','forum','','CRatingsComponentsForum','OnSetRatingConfigs','',1,'84556c2f1f7f23189f90603f45ad3942'),(155,'2024-03-12 17:44:13',100,'main','OnGetRatingsConfigs','forum','','CRatingsComponentsForum','OnGetRatingConfigs','',1,'7ead6be47d7bb2e297a2af57f85dc7ee'),(156,'2024-03-12 17:44:13',100,'main','OnGetRatingsObjects','forum','','CRatingsComponentsForum','OnGetRatingObject','',1,'99f4b68c8e6c1598377e0016b31234bb'),(157,'2024-03-12 17:44:13',100,'main','OnGetRatingContentOwner','forum','','CRatingsComponentsForum','OnGetRatingContentOwner','',1,'5ef51ecf36931b3a32f4fea00dc49c8c'),(158,'2024-03-12 17:44:13',100,'im','OnGetNotifySchema','forum','','CForumNotifySchema','OnGetNotifySchema','',1,'ad425ff862192078c050ea34d60f8d63'),(159,'2024-03-12 17:44:13',100,'main','OnAfterRegisterModule','main','/modules/forum/install/index.php','forum','InstallUserFields','',1,'205fd3e33648d7e1ed6f4b7f0298f603'),(160,'2024-03-12 17:44:13',100,'rest','OnRestServiceBuildDescription','forum','','CForumRestService','OnRestServiceBuildDescription','',1,'506b2a93cea64d73c9e7c187fdde2840'),(161,'2024-03-12 17:44:13',100,'conversion','OnGetCounterTypes','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onGetCounterTypes','',1,'fa69bf6ff10a0fb9b2e91098f0c0bab3'),(162,'2024-03-12 17:44:13',100,'conversion','OnGetRateTypes','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onGetRateTypes','',1,'9eb2b6d8edde63385655c1001d9e0c31'),(163,'2024-03-12 17:44:13',100,'forum','onAfterTopicAdd','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onTopicAdd','',1,'ea61a319e93c2c3a9bfc9a63840b2155'),(164,'2024-03-12 17:44:13',100,'forum','onAfterMessageAdd','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onMessageAdd','',1,'3cc5f27501dad77acdecb1c8a4e978de'),(165,'2024-03-12 17:44:13',100,'socialnetwork','onLogIndexGetContent','forum','','\\Bitrix\\Forum\\Integration\\Socialnetwork\\Log','onIndexGetContent','',2,'909a8b84bf80774a6a89bfbbd2258ce8'),(166,'2024-03-12 17:44:13',100,'socialnetwork','onLogCommentIndexGetContent','forum','','\\Bitrix\\Forum\\Integration\\Socialnetwork\\LogComment','onIndexGetContent','',2,'e6aaa86c7daeae2bc002e513f06ccffa'),(167,'2024-03-12 17:44:13',100,'socialnetwork','onContentViewed','forum','','\\Bitrix\\Forum\\Integration\\Socialnetwork\\ContentViewHandler','onContentViewed','',2,'5db6b373f6612f36c2ff6783dd4d6154'),(168,'2024-03-12 17:44:14',100,'main','OnBeforeUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeAdd','',1,'f9dcff287cf7753e5c56974d37975507'),(169,'2024-03-12 17:44:14',100,'main','OnAfterUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','onAfterUserTypeAdd','',1,'d1fa2865e72eca144b964b6fb1eefc15'),(170,'2024-03-12 17:44:14',100,'main','OnBeforeUserTypeDelete','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeDelete','',1,'1bf13707e1a45b8320c2ecd35534cbb4'),(171,'2024-03-12 17:44:14',100,'main','OnUserTypeBuildList','highloadblock','','CUserTypeHlblock','GetUserTypeDescription','',1,'2ac4a2154f4fd85d67b50f412ed5ed48'),(172,'2024-03-12 17:44:14',100,'iblock','OnIBlockPropertyBuildList','highloadblock','','CIBlockPropertyDirectory','GetUserTypeDescription','',1,'a6f7df502db8a04590e43188d7cbfc99'),(173,'2024-03-12 17:44:14',100,'main','OnGroupDelete','iblock','','CIBlock','OnGroupDelete','',1,'f2320df213f38adf32364d3169d5b197'),(174,'2024-03-12 17:44:14',100,'main','OnBeforeLangDelete','iblock','','CIBlock','OnBeforeLangDelete','',1,'46aef774958db327c1170a12d3a70ee5'),(175,'2024-03-12 17:44:14',100,'main','OnLangDelete','iblock','','CIBlock','OnLangDelete','',1,'861f6ee2ca56bf63c3af07db0553606b'),(176,'2024-03-12 17:44:14',100,'main','OnUserTypeRightsCheck','iblock','','CIBlockSection','UserTypeRightsCheck','',1,'2a6d446893d46f04f2c151f458d2908c'),(177,'2024-03-12 17:44:14',100,'search','OnReindex','iblock','','CIBlock','OnSearchReindex','',1,'c6c8111f129e0eb19e558106e354e6f6'),(178,'2024-03-12 17:44:14',100,'search','OnSearchGetURL','iblock','','CIBlock','OnSearchGetURL','',1,'0ae9fc756bfb1273309240cd8f535672'),(179,'2024-03-12 17:44:14',100,'main','OnEventLogGetAuditTypes','iblock','','CIBlock','GetAuditTypes','',1,'182d19c163e3a5a965bca170c3fb0e83'),(180,'2024-03-12 17:44:14',100,'main','OnEventLogGetAuditHandlers','iblock','','CEventIBlock','MakeIBlockObject','',1,'f7a182e8d9b204970d111e4703b9f523'),(181,'2024-03-12 17:44:14',200,'main','OnGetRatingContentOwner','iblock','','CRatingsComponentsIBlock','OnGetRatingContentOwner','',1,'6da245944e376d586a3fa2aaee02c70b'),(182,'2024-03-12 17:44:14',100,'main','OnTaskOperationsChanged','iblock','','CIBlockRightsStorage','OnTaskOperationsChanged','',1,'01b3f9984fa07b1dfb4bc35d107d5672'),(183,'2024-03-12 17:44:14',100,'main','OnGroupDelete','iblock','','CIBlockRightsStorage','OnGroupDelete','',1,'2dbbccdee3f2e7bd86446bec02be1d54'),(184,'2024-03-12 17:44:14',100,'main','OnUserDelete','iblock','','CIBlockRightsStorage','OnUserDelete','',1,'78f090ee29030c54788098b0782d28f9'),(185,'2024-03-12 17:44:14',100,'perfmon','OnGetTableSchema','iblock','','iblock','OnGetTableSchema','',1,'4b71a345c136beed338aa7137943d80b'),(186,'2024-03-12 17:44:14',100,'sender','OnConnectorList','iblock','','\\Bitrix\\Iblock\\SenderEventHandler','onConnectorListIblock','',1,'3de75587a47352dd3cb6d10866f69385'),(187,'2024-03-12 17:44:14',10,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDate','GetUserTypeDescription','',1,'fa608e2c397b6793c54ad296619a22e2'),(188,'2024-03-12 17:44:14',20,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDateTime','GetUserTypeDescription','',1,'78554c9e3c38ac383d51f0ee4d013120'),(189,'2024-03-12 17:44:14',30,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyXmlID','GetUserTypeDescription','',1,'952fe5f2ea67493fb9f9b924ce1b992b'),(190,'2024-03-12 17:44:14',40,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyFileMan','GetUserTypeDescription','',1,'fd688441d5e8203751fb47374931e011'),(191,'2024-03-12 17:44:14',50,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyHTML','GetUserTypeDescription','',1,'27645f81ce5d6d9f19a47cc171860beb'),(192,'2024-03-12 17:44:14',60,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementList','GetUserTypeDescription','',1,'c53e9314ae43c30267b32310a02d7df4'),(193,'2024-03-12 17:44:14',70,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySequence','GetUserTypeDescription','',1,'3ff9528d1264fc77697248957aafdab5'),(194,'2024-03-12 17:44:14',80,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementAutoComplete','GetUserTypeDescription','',1,'0d233a1e7a0d6a52a52e13df88291024'),(195,'2024-03-12 17:44:14',90,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySKU','GetUserTypeDescription','',1,'8678bc826ced4f66640fba3775b18516'),(196,'2024-03-12 17:44:14',100,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySectionAutoComplete','GetUserTypeDescription','',1,'26ff6f651cb94a1fe4ce9827566f0730'),(197,'2024-03-12 17:44:14',100,'main','onVirtualClassBuildList','iblock','','Bitrix\\Iblock\\IblockTable','compileAllEntities','',2,'8a4e85071d25e6ba7f9ed315874c411b'),(198,'2024-03-12 17:44:15',100,'ai','onTuningLoad','landing','','\\Bitrix\\Landing\\Connector\\Ai','onTuningLoad','',2,'64d7f5f3d8a372fb0d441d82a49f369b'),(199,'2024-03-12 17:44:15',100,'ai','onBeforeCompletions','landing','','\\Bitrix\\Landing\\Connector\\Ai','onBeforeCompletions','',2,'9192985f1e2da4ddd7a3328eb95a975e'),(200,'2024-03-12 17:44:15',100,'crm','onAfterCrmCompanyAdd','landing','','\\Bitrix\\Landing\\Connector\\Crm','onAfterCompanyChange','',2,'7e8fed841380d8075d45525f328e8940'),(201,'2024-03-12 17:44:15',100,'crm','onAfterCrmCompanyUpdate','landing','','\\Bitrix\\Landing\\Connector\\Crm','onAfterCompanyChange','',2,'688027a0f389137b02ac0a834f0a8495'),(202,'2024-03-12 17:44:15',100,'iblock','onAfterIBlockSectionDelete','landing','','\\Bitrix\\Landing\\Connector\\Iblock','onAfterIBlockSectionDelete','',2,'ffe8a984ae7ff50064ac74e788a80118'),(203,'2024-03-12 17:44:15',100,'intranet','onBuildBindingMenu','landing','','\\Bitrix\\Landing\\Connector\\Intranet','onBuildBindingMenu','',2,'d5464da9aea2308d3d5f13c2387c4c40'),(204,'2024-03-12 17:44:15',100,'landing','onBuildSourceList','landing','','\\Bitrix\\Landing\\Connector\\Landing','onSourceBuildHandler','',2,'fc391addc82a816df68510b0ae3363a5'),(205,'2024-03-12 17:44:15',100,'main','onBeforeSiteDelete','landing','','\\Bitrix\\Landing\\Site','onBeforeMainSiteDelete','',2,'5faa9b5de931dbb101e2e0aef6fc594b'),(206,'2024-03-12 17:44:15',100,'main','onSiteDelete','landing','','\\Bitrix\\Landing\\Site','onMainSiteDelete','',2,'af029bceca7ea9cc809515e95bd3a710'),(207,'2024-03-12 17:44:15',100,'main','onUserConsentProviderList','landing','','\\Bitrix\\Landing\\Site\\Cookies','onUserConsentProviderList','',2,'f59a96e272348f934d62ba5d3ee79f21'),(208,'2024-03-12 17:44:15',100,'main','OnAfterFileDeleteDuplicate','landing','','\\Bitrix\\Landing\\Update\\Block\\DuplicateImages','onAfterFileDeleteDuplicate','',2,'b80f7597db6200591a0e0e41c14e0ee0'),(209,'2024-03-12 17:44:15',100,'mobile','onMobileMenuStructureBuilt','landing','','\\Bitrix\\Landing\\Connector\\Mobile','onMobileMenuStructureBuilt','',2,'01fd8a44b83b5f7fcd2f36a626657ad0'),(210,'2024-03-12 17:44:15',100,'rest','onRestServiceBuildDescription','landing','','\\Bitrix\\Landing\\Publicaction','restBase','',2,'9af99ddecf2dd8c3c5b14721f23e8fef'),(211,'2024-03-12 17:44:15',100,'rest','onBeforeApplicationUninstall','landing','','\\Bitrix\\Landing\\Publicaction','beforeRestApplicationDelete','',2,'ef1f080a088ad54298a4ba9bf2896313'),(212,'2024-03-12 17:44:15',100,'rest','onRestAppDelete','landing','','\\Bitrix\\Landing\\Publicaction','restApplicationDelete','',2,'031cfc016e3be91368376a391c351dea'),(213,'2024-03-12 17:44:15',100,'rest','onRestApplicationConfigurationGetManifest','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','getManifestList','',2,'b88124aac7c2c8ddecf2ce127a9c6ef8'),(214,'2024-03-12 17:44:15',100,'rest','onRestApplicationConfigurationExport','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onEventExportController','',2,'917b00a9f82e6b8f7899a6e8c3b22236'),(215,'2024-03-12 17:44:15',100,'rest','onRestApplicationConfigurationGetManifestSetting','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onInitManifest','',2,'99fa9aa37a23a371cca0153c840c7802'),(216,'2024-03-12 17:44:15',100,'rest','onRestApplicationConfigurationEntity','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','getEntityList','',2,'820df699b9abf22ce0356fc9957be794'),(217,'2024-03-12 17:44:15',100,'rest','onRestApplicationConfigurationImport','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onEventImportController','',2,'e65daaed01b2c52e6098ee47ddb7f07a'),(218,'2024-03-12 17:44:15',100,'rest','onRestApplicationConfigurationFinish','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onFinish','',2,'45343e5617dca2ad06a5d13050232caf'),(219,'2024-03-12 17:44:15',100,'seo','onExtensionInstall','landing','','\\Bitrix\\Landing\\Hook\\Page\\PixelFb','changeBusinessPixel','',2,'27bf01f04349ff82ede423de62df5384'),(220,'2024-03-12 17:44:15',100,'socialnetwork','onFillSocNetFeaturesList','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onFillSocNetFeaturesList','',2,'9825d91c89b53b69655aa98ea4f3a6cf'),(221,'2024-03-12 17:44:15',100,'socialnetwork','onFillSocNetMenu','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onFillSocNetMenu','',2,'14ecfb8fb4fc20f22ddb5ac64783461d'),(222,'2024-03-12 17:44:15',100,'socialnetwork','onSocNetGroupDelete','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onSocNetGroupDelete','',2,'78202f1461a8822a105a19f45502c327'),(223,'2024-03-12 17:44:15',100,'socialnetwork','onSocNetFeaturesUpdate','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onSocNetFeaturesUpdate','',2,'d385df085957d9e418b63017d75630fe'),(224,'2024-03-12 17:44:17',100,'ui','onUIFormInitialize','location','','\\Bitrix\\Location\\Infrastructure\\EventHandler','onUIFormInitialize','',2,'462272192a150e16b28f1e1bd33ed62b'),(225,'2024-03-12 17:44:17',100,'main','OnAfterEpilog','messageservice','','\\Bitrix\\MessageService\\Queue','run','',1,'6bcb21b0ccc5ac89d9531ddf8b94683c'),(226,'2024-03-12 17:44:17',100,'rest','OnRestServiceBuildDescription','messageservice','','\\Bitrix\\MessageService\\RestService','onRestServiceBuildDescription','',1,'7524628243223e572590eea87cc03f73'),(227,'2024-03-12 17:44:17',100,'rest','OnRestAppDelete','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppDelete','',1,'5febc41cd526ecba95dbb4843dd9c134'),(228,'2024-03-12 17:44:17',100,'rest','OnRestAppUpdate','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppUpdate','',1,'7e77b4d550c200a4ec06872af7857ee6'),(229,'2024-03-12 17:44:17',100,'pull','OnGetDependentModule','mobileapp','','CMobileAppPullSchema','OnGetDependentModule','',1,'4833278dbe60d476fbccbaa54545cffa'),(230,'2024-03-12 17:44:18',100,'perfmon','OnGetTableSchema','perfmon','','perfmon','OnGetTableSchema','',1,'3a4da255b44f05899b64e66a40c12662'),(231,'2024-03-12 17:44:18',100,'iblock','OnBeforeIBlockElementDelete','photogallery','','CPhotogalleryElement','OnBeforeIBlockElementDelete','',1,'dc9ea0b8411dfa54929a022d44bc5b1a'),(232,'2024-03-12 17:44:18',100,'iblock','OnAfterIBlockElementAdd','photogallery','','CPhotogalleryElement','OnAfterIBlockElementAdd','',1,'7fc7f3cc71ad3188022388365d446ed2'),(233,'2024-03-12 17:44:18',100,'search','BeforeIndex','photogallery','','CRatingsComponentsPhotogallery','BeforeIndex','',1,'06e2330d56c3b972e67707d665383704'),(234,'2024-03-12 17:44:18',100,'im','OnGetNotifySchema','photogallery','','CPhotogalleryNotifySchema','OnGetNotifySchema','',1,'7ca75249042a033e858d90dc2473adac'),(235,'2024-03-12 17:44:18',100,'socialnetwork','OnSocNetGroupDelete','photogallery','','\\Bitrix\\Photogallery\\Integration\\Socialnetwork\\Group','onSocNetGroupDelete','',1,'bded61c39d768685fa7dd112c63c702b'),(236,'2024-03-12 17:44:18',49,'main','OnBeforeProlog','rest','','CRestEventHandlers','OnBeforeProlog','',2,'395c9c42c3cc9392de1e5887617afe6d'),(237,'2024-03-12 17:44:18',100,'rest','OnRestServiceBuildDescription','rest','','CBitrixRestEntity','OnRestServiceBuildDescription','',2,'f63068b1eb62c36219518206e1e2827c'),(238,'2024-03-12 17:44:18',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\User','onRestServiceBuildDescription','',2,'c9a03e9019564649e55f5409b661e050'),(239,'2024-03-12 17:44:18',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Placement','onRestServiceBuildDescription','',2,'9751a266c2b6f6be5c34b1541bf7c194'),(240,'2024-03-12 17:44:18',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Event','onRestServiceBuildDescription','',2,'842ad63f19aff6d810059c7e56739aae'),(241,'2024-03-12 17:44:18',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\UserFieldType','onRestServiceBuildDescription','',2,'4caf68a5256aabe4abef37f24562e59b'),(242,'2024-03-12 17:44:18',100,'rest','onFindMethodDescription','rest','','\\Bitrix\\Rest\\Engine\\RestManager','onFindMethodDescription','',2,'4d0614f880674af333326dd5ba9b2828'),(243,'2024-03-12 17:44:18',100,'main','OnApplicationsBuildList','main','modules/rest/lib/apauth/application.php','\\Bitrix\\Rest\\APAuth\\Application','onApplicationsBuildList','',2,'9c39129872987f8dcc8baacc0c446ed7'),(244,'2024-03-12 17:44:18',100,'im','OnAfterConfirmNotify','rest','','\\Bitrix\\Rest\\NotifyIm','receive','',2,'2ac9c19fe69d4e106deaa6f4a7a4371b'),(245,'2024-03-12 17:44:18',100,'rest','\\Bitrix\\Rest\\APAuth\\Password::OnDelete','rest','','\\Bitrix\\Rest\\APAuth\\PermissionTable','onPasswordDelete','',2,'f04447ca635f045ec1a64e593964fc90'),(246,'2024-03-12 17:44:18',100,'perfmon','OnGetTableSchema','rest','','rest','OnGetTableSchema','',2,'47a76003c8f9f2d8c820f446e084ff39'),(247,'2024-03-12 17:44:18',100,'rest','OnRestApplicationConfigurationImport','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventImportController','',2,'3fc1dd7e523b33f9d76c19e54d45c2fb'),(248,'2024-03-12 17:44:18',100,'rest','OnRestApplicationConfigurationExport','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventExportController','',2,'b90a349060c693506b740c4d36f75f5f'),(249,'2024-03-12 17:44:18',100,'rest','OnRestApplicationConfigurationClear','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventClearController','',2,'75dccda637a740c033b2d014a84a8009'),(250,'2024-03-12 17:44:18',100,'rest','OnRestApplicationConfigurationEntity','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','getEntityList','',2,'8d83d219eaf2f415d55fb67e221b7c3d'),(251,'2024-03-12 17:44:18',100,'rest','OnRestApplicationConfigurationGetManifest','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','getManifestList','',2,'6ba35b1f4b01d1e358e1b3a79ac437d6'),(252,'2024-03-12 17:44:18',100,'main','OnAfterSetOption_~mp24_paid_date','rest','','\\Bitrix\\Rest\\Marketplace\\Client','onChangeSubscriptionDate','',2,'b6ab5bafe2befd82726761f5a8b38a0b'),(253,'2024-03-12 17:44:18',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\OAuth\\Auth','onRestCheckAuth','',2,'70e923729089b8cba69bb3b4311da11e'),(254,'2024-03-12 17:44:18',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\APAuth\\Auth','onRestCheckAuth','',2,'3550e6c95772564101770e0c9cb54470'),(255,'2024-03-12 17:44:18',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\SessionAuth\\Auth','onRestCheckAuth','',2,'8e33ae5a47b59d21df7d26f916d19e38'),(256,'2024-03-12 17:44:18',100,'main','OnAfterRegisterModule','rest','','\\Bitrix\\Rest\\Engine\\ScopeManager','onChangeRegisterModule','',2,'900fb8bbf0d59d1924bedae5da1b6eb1'),(257,'2024-03-12 17:44:18',100,'main','OnAfterUnRegisterModule','rest','','\\Bitrix\\Rest\\Engine\\ScopeManager','onChangeRegisterModule','',2,'e97e569fe3fc7775aa4ece09cdf209bc'),(258,'2024-03-12 17:44:18',100,'main','OnAfterRegisterModule','rest','','\\Bitrix\\Rest\\Marketplace\\TagTable','onAfterRegisterModule','',2,'80afec537db1eeda99462f0676dbb835'),(259,'2024-03-12 17:44:18',100,'main','OnAfterUnRegisterModule','rest','','\\Bitrix\\Rest\\Marketplace\\TagTable','onAfterUnRegisterModule','',2,'fe9cb5af7e8ca277ca29b4a5423bd08b'),(260,'2024-03-12 17:44:19',100,'main','OnEventLogGetAuditTypes','scale','','\\Bitrix\\Scale\\Logger','onEventLogGetAuditTypes','',1,'d8192b7113f1652bdf8a37bcd4e38dea'),(261,'2024-03-12 17:44:19',100,'main','OnChangePermissions','search','','CSearch','OnChangeFilePermissions','',1,'1c37aedc2ec89f94624291d097fe7adf'),(262,'2024-03-12 17:44:19',100,'main','OnChangeFile','search','','CSearch','OnChangeFile','',1,'d51170fc3433fde7eab8edc1c2b933a0'),(263,'2024-03-12 17:44:19',100,'main','OnGroupDelete','search','','CSearch','OnGroupDelete','',1,'05382d7448b1ba259b89bf9e87e4eb44'),(264,'2024-03-12 17:44:19',100,'main','OnLangDelete','search','','CSearch','OnLangDelete','',1,'15ebda82514af5a966b3466cd26992a4'),(265,'2024-03-12 17:44:19',100,'main','OnAfterUserUpdate','search','','CSearchUser','OnAfterUserUpdate','',1,'9e0cea5039973193afc706ec8978d674'),(266,'2024-03-12 17:44:19',100,'main','OnUserDelete','search','','CSearchUser','DeleteByUserID','',1,'524a910f381ba144bf50caa152222ed6'),(267,'2024-03-12 17:44:19',100,'cluster','OnGetTableList','search','','search','OnGetTableList','',1,'a40ffd36df151e2c0294b5639e81d665'),(268,'2024-03-12 17:44:19',100,'perfmon','OnGetTableSchema','search','','search','OnGetTableSchema','',1,'9c8df2577e0cb80c68afa2030e193efb'),(269,'2024-03-12 17:44:19',90,'main','OnEpilog','search','','CSearchStatistic','OnEpilog','',1,'6b3591ad78ac2a3ce6ad411f0aff47fe'),(270,'2024-03-12 17:44:19',100,'main','OnUserDelete','security','','CSecurityUser','OnUserDelete','',1,'450a1c7509f5363a9bf7d1472f22f9cf'),(271,'2024-03-12 17:44:19',100,'main','OnEventLogGetAuditTypes','security','','CSecurityFilter','GetAuditTypes','',1,'893bc94df887141b4f3579561ea37454'),(272,'2024-03-12 17:44:19',100,'main','OnEventLogGetAuditTypes','security','','CSecurityAntiVirus','GetAuditTypes','',1,'9ba919b0537aa25fe47e438c2428b4d9'),(273,'2024-03-12 17:44:19',100,'main','OnAdminInformerInsertItems','security','','CSecurityFilter','OnAdminInformerInsertItems','',1,'c751923f396ccc4e102ed17e97cb8afb'),(274,'2024-03-12 17:44:19',100,'main','OnAdminInformerInsertItems','security','','CSecuritySiteChecker','OnAdminInformerInsertItems','',1,'0c7cea553d58a72f7c5521d282898bc7'),(275,'2024-03-12 17:44:19',5,'main','OnBeforeProlog','security','','CSecurityFilter','OnBeforeProlog','',1,'bb70fedd18267b1c5290068ae80dbc4d'),(276,'2024-03-12 17:44:19',9999,'main','OnEndBufferContent','security','','CSecurityXSSDetect','OnEndBufferContent','',1,'d1886589ecd51b020420e6c1415edeaf'),(277,'2024-03-12 17:44:19',1,'main','OnBeforeLocalRedirect','security','','CSecurityRedirect','BeforeLocalRedirect','',1,'2dbeb7fa7a8bec4d90e8940616976b3d'),(278,'2024-03-12 17:44:19',1,'main','OnEndBufferContent','security','','CSecurityRedirect','EndBufferContent','',1,'099871646b4df8c1263e26f9bd91f3bd'),(279,'2024-03-12 17:44:20',100,'main','OnPanelCreate','seo','','CSeoEventHandlers','SeoOnPanelCreate','',2,'79688b0b4a106b805d09e63ffe88f580'),(280,'2024-03-12 17:44:20',100,'fileman','OnIncludeHTMLEditorScript','seo','','CSeoEventHandlers','OnIncludeHTMLEditorScript','',2,'7995eac5813e40f6b3e82b146631397e'),(281,'2024-03-12 17:44:20',100,'fileman','OnBeforeHTMLEditorScriptRuns','seo','','CSeoEventHandlers','OnBeforeHTMLEditorScriptRuns','',2,'313b34609f1fa34d34cde1c2103c09ff'),(282,'2024-03-12 17:44:20',100,'iblock','OnAfterIBlockSectionAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addSection','',2,'c61de21b0b0873525fa5c39427324664'),(283,'2024-03-12 17:44:20',100,'iblock','OnAfterIBlockElementAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addElement','',2,'1b167ab85d6d744bba456e559546f13e'),(284,'2024-03-12 17:44:20',100,'iblock','OnBeforeIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteSection','',2,'148ce014df9dd9f99f17ebfc5d766e8a'),(285,'2024-03-12 17:44:20',100,'iblock','OnBeforeIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteElement','',2,'4b1e9896d9f0aa37a7039a321f25f9a5'),(286,'2024-03-12 17:44:20',100,'iblock','OnAfterIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteSection','',2,'b699c1c0d6665f9cffe7ff76ab108a24'),(287,'2024-03-12 17:44:20',100,'iblock','OnAfterIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteElement','',2,'ff3a36654015c53890f4cf2204b030c4'),(288,'2024-03-12 17:44:20',100,'iblock','OnBeforeIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateSection','',2,'aa5f8c360ed88eb5e2884c57b6f1f2f3'),(289,'2024-03-12 17:44:20',100,'iblock','OnBeforeIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateElement','',2,'a1022e0619263c0e91139fb3f9837085'),(290,'2024-03-12 17:44:20',100,'iblock','OnAfterIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateSection','',2,'27930cffcd40b84666d0a22e1a953c41'),(291,'2024-03-12 17:44:20',100,'iblock','OnAfterIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateElement','',2,'f0151e07363564774d45acba4100aebe'),(292,'2024-03-12 17:44:20',100,'forum','onAfterTopicAdd','seo','','\\Bitrix\\Seo\\SitemapForum','addTopic','',2,'d4d54756116942c9ee0bda9b31e9d0e7'),(293,'2024-03-12 17:44:20',100,'forum','onAfterTopicUpdate','seo','','\\Bitrix\\Seo\\SitemapForum','updateTopic','',2,'3e0a8569016a4c941f3eb4aa9fca6e8b'),(294,'2024-03-12 17:44:20',100,'forum','onAfterTopicDelete','seo','','\\Bitrix\\Seo\\SitemapForum','deleteTopic','',2,'7f4379c818231561b41589d3de41e36b'),(295,'2024-03-12 17:44:20',100,'main','OnAdminIBlockElementEdit','seo','','\\Bitrix\\Seo\\AdvTabEngine','eventHandler','',2,'c894d167ef03c35375b8eb8f2551a798'),(296,'2024-03-12 17:44:20',100,'main','OnBeforeProlog','seo','','\\Bitrix\\Seo\\AdvSession','checkSession','',2,'5fdf8dd9fd70719e442efcb589175bf0'),(297,'2024-03-12 17:44:20',100,'sale','OnOrderSave','seo','','\\Bitrix\\Seo\\AdvSession','onOrderSave','',2,'07d4ab0b1aa0aa130a0cbc06403f6eae'),(298,'2024-03-12 17:44:20',100,'sale','OnBasketOrder','seo','','\\Bitrix\\Seo\\AdvSession','onBasketOrder','',2,'cf6298b090e92e955b32c358c1d14b25'),(299,'2024-03-12 17:44:20',100,'sale','onSalePayOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSalePayOrder','',2,'745afed820778e33d5cd3e91cbd622f1'),(300,'2024-03-12 17:44:20',100,'sale','onSaleDeductOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeductOrder','',2,'12861bd5c6c27ffa2abe5cac90ea58d8'),(301,'2024-03-12 17:44:20',100,'sale','onSaleDeliveryOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeliveryOrder','',2,'ead8fb64fece572d1fabd3d6fd27af27'),(302,'2024-03-12 17:44:20',100,'sale','onSaleStatusOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleStatusOrder','',2,'b7b9ac4bbf458d433e1cf3835ff4cb6c'),(303,'2024-03-12 17:44:20',100,'conversion','OnSetDayContextAttributes','seo','','\\Bitrix\\Seo\\ConversionHandler','onSetDayContextAttributes','',2,'c19eb7659342fabc34b953f69e8b9eee'),(304,'2024-03-12 17:44:20',100,'conversion','OnGetAttributeTypes','seo','','\\Bitrix\\Seo\\ConversionHandler','onGetAttributeTypes','',2,'379294eefad289e474bf0c5ce2a281d8'),(305,'2024-03-12 17:44:20',100,'catalog','OnProductUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'0f4deda4d57adb4389d85a19e5bbcf2b'),(306,'2024-03-12 17:44:20',100,'catalog','OnProductSetAvailableUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'3d040ae51f0f6a4b2a08be0e6e1494d4'),(307,'2024-03-12 17:44:20',100,'bitrix24','onDomainChange','seo','','\\Bitrix\\Seo\\Service','changeRegisteredDomain','',2,'fcb2dadb8b7ff1863c0ad86320e9e521'),(308,'2024-03-12 17:44:20',100,'main','OnUserDelete','socialservices','','CSocServAuthDB','OnUserDelete','',1,'1f5b8fc024dfdf83952d6c723466cdf5'),(309,'2024-03-12 17:44:20',100,'main','OnAfterUserLogout','socialservices','','CSocServEventHandlers','OnUserLogout','',1,'7e4c40a3ff7cd102879cef10653f97ac'),(310,'2024-03-12 17:44:20',100,'timeman','OnAfterTMReportDailyAdd','socialservices','','CSocServAuthDB','OnAfterTMReportDailyAdd','',1,'a16159f6a90f1b67cb9ec15b0c1bab3a'),(311,'2024-03-12 17:44:20',100,'timeman','OnAfterTMDayStart','socialservices','','CSocServAuthDB','OnAfterTMDayStart','',1,'9567feb38890d6581a3204dc5e65e8b6'),(312,'2024-03-12 17:44:20',100,'timeman','OnTimeManShow','socialservices','','CSocServEventHandlers','OnTimeManShow','',1,'b728f3cea11d374f7638c29f84e8e15e'),(313,'2024-03-12 17:44:20',100,'main','OnFindExternalUser','socialservices','','CSocServAuthDB','OnFindExternalUser','',1,'1ab251d15efc87c5b5cfe6396f5dec1b'),(314,'2024-03-12 17:44:20',100,'perfmon','OnGetTableSchema','socialservices','','socialservices','OnGetTableSchema','',1,'56107bf1a0dcee0db660c0ec27c31c6c'),(315,'2024-03-12 17:44:20',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkOldUser','',1,'c3d7460e4ef694f5bc53b6a6ad902407'),(316,'2024-03-12 17:44:20',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkAbandonedUser','',1,'331f99f0b265544c33777c299eab16f6'),(317,'2024-03-12 17:44:21',100,'main','OnBeforeLangDelete','subscribe','','CRubric','OnBeforeLangDelete','',1,'ee539731a3e52fe65cb52596ce0856d2'),(318,'2024-03-12 17:44:21',100,'main','OnUserDelete','subscribe','','CSubscription','OnUserDelete','',1,'88c6e57a6f0f18341332db1879c0005b'),(319,'2024-03-12 17:44:21',100,'main','OnUserLogout','subscribe','','CSubscription','OnUserLogout','',1,'f4fa3b156b00fb4415c8612f8439f278'),(320,'2024-03-12 17:44:21',100,'main','OnGroupDelete','subscribe','','CPosting','OnGroupDelete','',1,'990d63845f75e93e670ed85f1aa15152'),(321,'2024-03-12 17:44:21',100,'sender','OnConnectorList','subscribe','','Bitrix\\Subscribe\\SenderEventHandler','onConnectorListSubscriber','',1,'8a1cffe1bd46a72108e48656a1bae99b'),(322,'2024-03-12 17:44:21',100,'perfmon','OnGetTableSchema','subscribe','','subscribe','OnGetTableSchema','',1,'320b1fb657ce46ad23992d00b2f54916'),(323,'2024-03-12 17:44:22',100,'main','OnPanelCreate','translate','','\\Bitrix\\Translate\\Ui\\Panel','onPanelCreate','',1,'88ecb95eac2e28b80f234bfc8c1cd597'),(324,'2024-03-12 17:44:22',100,'perfmon','OnGetTableSchema','translate','','translate','onGetTableSchema','',1,'00347f45b2f48480b1a521c32036beb5'),(327,'2024-03-12 17:44:22',100,'main','OnUserDelete','ui','','\\Bitrix\\UI\\Integration\\Main\\User','onDelete','',2,'5e748ff204d0dac471be127b136eeb1d'),(328,'2024-03-12 17:44:22',100,'main','OnFileDelete','ui','','\\Bitrix\\UI\\Avatar\\Mask\\Item','onFileDelete','',2,'bdf678d45b7e9f3ce906099a5e4fc975'),(329,'2024-03-12 17:44:22',100,'rest','onRestAppDelete','ui','','\\Bitrix\\UI\\Integration\\Rest\\App','onRestAppDelete','',2,'b213605cfa38675d5e4b60f257f6acce'),(330,'2024-03-12 17:44:22',100,'rest','OnRestAppInstall','ui','','\\Bitrix\\UI\\Integration\\Rest\\App','OnRestAppInstall','',2,'206ce4eafe25cc4b5fbaddfa36eaba47'),(331,'2024-03-12 17:44:22',100,'rest','onRestApplicationConfigurationGetManifest','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationGetManifest','',2,'daad84620a1a84daef4884f1162e2099'),(332,'2024-03-12 17:44:22',100,'rest','onRestApplicationConfigurationGetManifestSetting','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationGetManifestSetting','',2,'b3290d964ad532e24a892bae6001146c'),(333,'2024-03-12 17:44:22',100,'rest','onRestApplicationConfigurationExport','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationExport','',2,'ac9b60f1d69d98c3980413800a3524f7'),(334,'2024-03-12 17:44:22',100,'rest','onRestApplicationConfigurationEntity','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationEntity','',2,'8d609b415b9bfa097d137ab69ba6903f'),(335,'2024-03-12 17:44:22',100,'rest','onRestApplicationConfigurationImport','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationImport','',2,'b1a5ce1bd868f8c86462c5b60eec1307'),(336,'2024-03-12 17:44:23',10,'main','OnBeforeProlog','main','/modules/vote/keepvoting.php','','','',1,'251d4d100c1545ca5847d8d6d626dea9'),(337,'2024-03-12 17:44:23',200,'main','OnUserTypeBuildList','vote','','Bitrix\\Vote\\Uf\\VoteUserType','getUserTypeDescription','',1,'e30dd2d26df22ce2dcffef84256cf160'),(338,'2024-03-12 17:44:23',200,'main','OnUserLogin','vote','','Bitrix\\Vote\\User','onUserLogin','',1,'5047b245af7aede3f2474b40dfbc65be'),(339,'2024-03-12 17:44:23',100,'im','OnGetNotifySchema','vote','','CVoteNotifySchema','OnGetNotifySchema','',1,'97ffe9642e64dc7d68f9ec9bc789be47'),(340,'2024-03-12 17:44:31',100,'main','OnBeforeProlog','main','/modules/main/install/wizard_sol/panel_button.php','CWizardSolPanel','ShowPanel','',1,'bbd7b8c1e518a0b3eae815eb91a95c11');
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator`
--

DROP TABLE IF EXISTS `b_numerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `TEMPLATE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `SETTINGS` text DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_numerator_code` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator`
--

LOCK TABLES `b_numerator` WRITE;
/*!40000 ALTER TABLE `b_numerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator_sequence`
--

DROP TABLE IF EXISTS `b_numerator_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT 0,
  `KEY` varchar(32) NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator_sequence`
--

LOCK TABLES `b_numerator_sequence` WRITE;
/*!40000 ALTER TABLE `b_numerator_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_operation`
--

DROP TABLE IF EXISTS `b_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_operation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `BINDING` varchar(50) DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_operation`
--

LOCK TABLES `b_operation` WRITE;
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
INSERT INTO `b_operation` VALUES (1,'edit_php','main',NULL,'module'),(2,'view_own_profile','main',NULL,'module'),(3,'edit_own_profile','main',NULL,'module'),(4,'view_all_users','main',NULL,'module'),(5,'view_groups','main',NULL,'module'),(6,'view_tasks','main',NULL,'module'),(7,'view_other_settings','main',NULL,'module'),(8,'view_subordinate_users','main',NULL,'module'),(9,'edit_subordinate_users','main',NULL,'module'),(10,'edit_all_users','main',NULL,'module'),(11,'edit_groups','main',NULL,'module'),(12,'edit_tasks','main',NULL,'module'),(13,'edit_other_settings','main',NULL,'module'),(14,'cache_control','main',NULL,'module'),(15,'lpa_template_edit','main',NULL,'module'),(16,'view_event_log','main',NULL,'module'),(17,'edit_ratings','main',NULL,'module'),(18,'manage_short_uri','main',NULL,'module'),(19,'fm_view_permission','main',NULL,'file'),(20,'fm_view_file','main',NULL,'file'),(21,'fm_view_listing','main',NULL,'file'),(22,'fm_edit_existent_folder','main',NULL,'file'),(23,'fm_create_new_file','main',NULL,'file'),(24,'fm_edit_existent_file','main',NULL,'file'),(25,'fm_create_new_folder','main',NULL,'file'),(26,'fm_delete_file','main',NULL,'file'),(27,'fm_delete_folder','main',NULL,'file'),(28,'fm_edit_in_workflow','main',NULL,'file'),(29,'fm_rename_file','main',NULL,'file'),(30,'fm_rename_folder','main',NULL,'file'),(31,'fm_upload_file','main',NULL,'file'),(32,'fm_add_to_menu','main',NULL,'file'),(33,'fm_download_file','main',NULL,'file'),(34,'fm_lpa','main',NULL,'file'),(35,'fm_edit_permission','main',NULL,'file'),(36,'bitrixcloud_monitoring','bitrixcloud',NULL,'module'),(37,'bitrixcloud_backup','bitrixcloud',NULL,'module'),(38,'clouds_browse','clouds',NULL,'module'),(39,'clouds_upload','clouds',NULL,'module'),(40,'clouds_config','clouds',NULL,'module'),(41,'fileman_view_all_settings','fileman','','module'),(42,'fileman_edit_menu_types','fileman','','module'),(43,'fileman_add_element_to_menu','fileman','','module'),(44,'fileman_edit_menu_elements','fileman','','module'),(45,'fileman_edit_existent_files','fileman','','module'),(46,'fileman_edit_existent_folders','fileman','','module'),(47,'fileman_admin_files','fileman','','module'),(48,'fileman_admin_folders','fileman','','module'),(49,'fileman_view_permissions','fileman','','module'),(50,'fileman_edit_all_settings','fileman','','module'),(51,'fileman_upload_files','fileman','','module'),(52,'fileman_view_file_structure','fileman','','module'),(53,'fileman_install_control','fileman','','module'),(54,'medialib_view_collection','fileman','','medialib'),(55,'medialib_new_collection','fileman','','medialib'),(56,'medialib_edit_collection','fileman','','medialib'),(57,'medialib_del_collection','fileman','','medialib'),(58,'medialib_access','fileman','','medialib'),(59,'medialib_new_item','fileman','','medialib'),(60,'medialib_edit_item','fileman','','medialib'),(61,'medialib_del_item','fileman','','medialib'),(62,'sticker_view','fileman','','stickers'),(63,'sticker_edit','fileman','','stickers'),(64,'sticker_new','fileman','','stickers'),(65,'sticker_del','fileman','','stickers'),(66,'hl_element_read','highloadblock',NULL,'module'),(67,'hl_element_write','highloadblock',NULL,'module'),(68,'hl_element_delete','highloadblock',NULL,'module'),(69,'section_read','iblock',NULL,'iblock'),(70,'element_read','iblock',NULL,'iblock'),(71,'section_element_bind','iblock',NULL,'iblock'),(72,'iblock_admin_display','iblock',NULL,'iblock'),(73,'element_edit','iblock',NULL,'iblock'),(74,'element_edit_price','iblock',NULL,'iblock'),(75,'element_delete','iblock',NULL,'iblock'),(76,'element_bizproc_start','iblock',NULL,'iblock'),(77,'section_edit','iblock',NULL,'iblock'),(78,'section_delete','iblock',NULL,'iblock'),(79,'section_section_bind','iblock',NULL,'iblock'),(80,'element_edit_any_wf_status','iblock',NULL,'iblock'),(81,'iblock_edit','iblock',NULL,'iblock'),(82,'iblock_delete','iblock',NULL,'iblock'),(83,'iblock_rights_edit','iblock',NULL,'iblock'),(84,'iblock_export','iblock',NULL,'iblock'),(85,'section_rights_edit','iblock',NULL,'iblock'),(86,'element_rights_edit','iblock',NULL,'iblock'),(87,'landing_read','landing',NULL,'module'),(88,'landing_edit','landing',NULL,'module'),(89,'landing_sett','landing',NULL,'module'),(90,'landing_public','landing',NULL,'module'),(91,'landing_delete','landing',NULL,'module'),(92,'security_filter_bypass','security',NULL,'module'),(93,'security_edit_user_otp','security',NULL,'module'),(94,'security_module_settings_read','security',NULL,'module'),(95,'security_panel_view','security',NULL,'module'),(96,'security_filter_settings_read','security',NULL,'module'),(97,'security_otp_settings_read','security',NULL,'module'),(98,'security_iprule_admin_settings_read','security',NULL,'module'),(99,'security_session_settings_read','security',NULL,'module'),(100,'security_redirect_settings_read','security',NULL,'module'),(101,'security_stat_activity_settings_read','security',NULL,'module'),(102,'security_iprule_settings_read','security',NULL,'module'),(103,'security_antivirus_settings_read','security',NULL,'module'),(104,'security_frame_settings_read','security',NULL,'module'),(105,'security_module_settings_write','security',NULL,'module'),(106,'security_filter_settings_write','security',NULL,'module'),(107,'security_otp_settings_write','security',NULL,'module'),(108,'security_iprule_admin_settings_write','security',NULL,'module'),(109,'security_session_settings_write','security',NULL,'module'),(110,'security_redirect_settings_write','security',NULL,'module'),(111,'security_stat_activity_settings_write','security',NULL,'module'),(112,'security_iprule_settings_write','security',NULL,'module'),(113,'security_file_verifier_sign','security',NULL,'module'),(114,'security_file_verifier_collect','security',NULL,'module'),(115,'security_file_verifier_verify','security',NULL,'module'),(116,'security_antivirus_settings_write','security',NULL,'module'),(117,'security_frame_settings_write','security',NULL,'module'),(118,'seo_settings','seo','','module'),(119,'seo_tools','seo','','module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option`
--

DROP TABLE IF EXISTS `b_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `VALUE` mediumtext DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option`
--

LOCK TABLES `b_option` WRITE;
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
INSERT INTO `b_option` VALUES ('blog','socNetNewPerms','Y',NULL,NULL),('fileman','stickers_use_hotkeys','N',NULL,NULL),('fileman','use_editor_3','Y',NULL,NULL),('forum','FILTER','N',NULL,NULL),('landing','pub_path_s1','/lp/',NULL,NULL),('location','address_format_code','RU',NULL,NULL),('main','~crypto_b_socialservices_user','a:2:{s:7:\"OATOKEN\";b:1;s:13:\"REFRESH_TOKEN\";b:1;}',NULL,NULL),('main','~crypto_b_user_auth_code','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~crypto_b_user_phone_auth','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~mp24_paid','',NULL,NULL),('main','~mp24_paid_date','',NULL,NULL),('main','~new_license18_0_sign','Y',NULL,NULL),('main','~PARAM_CLIENT_LANG','ru',NULL,NULL),('main','~PARAM_COMPOSITE','N',NULL,NULL),('main','~PARAM_FINISH_DATE','8ab713c66c890d3cf04f1f09449f36e5a11f034b08a371737b75b7a8d27d3e4f.2024-04-12',NULL,NULL),('main','~PARAM_MAX_SERVERS','2',NULL,NULL),('main','~PARAM_MAX_USERS','0c20234c85c8986b5e11e87939db5bd7cb86a42514a18e982112d05b8265b693.0',NULL,NULL),('main','~PARAM_PARTNER_ID','',NULL,NULL),('main','~PARAM_PHONE_SIP','N',NULL,NULL),('main','~support_finish_date','2024-04-12',NULL,NULL),('main','~update_autocheck_result','a:3:{s:10:\"check_date\";i:0;s:6:\"result\";b:0;s:5:\"error\";s:0:\"\";}',NULL,NULL),('main','admin_lid','ru',NULL,NULL),('main','admin_passwordh','FVkQfGYUBgUtCUVcAxcGCgsTAQ==',NULL,NULL),('main','all_bcc','',NULL,NULL),('main','allow_qrcode_auth','N',NULL,NULL),('main','allow_socserv_authorization','Y',NULL,NULL),('main','ALLOW_SPREAD_COOKIE','Y',NULL,NULL),('main','attach_images','N',NULL,NULL),('main','auth_components_template','',NULL,NULL),('main','auth_controller_sso','N',NULL,NULL),('main','auth_multisite','N',NULL,NULL),('main','auto_time_zone','N',NULL,NULL),('main','bx_fast_download','N',NULL,NULL),('main','captcha_registration','N',NULL,NULL),('main','captcha_restoring_password','N',NULL,NULL),('main','collect_geonames','N',NULL,NULL),('main','compres_css_js_files','N',NULL,NULL),('main','control_file_duplicates','Y',NULL,NULL),('main','convert_mail_header','Y',NULL,NULL),('main','convert_original_file_name','Y',NULL,NULL),('main','CONVERT_UNIX_NEWLINE_2_WINDOWS','N',NULL,NULL),('main','cookie_name','BITRIX_SM',NULL,NULL),('main','custom_register_page','',NULL,NULL),('main','device_history_cleanup_days','180',NULL,NULL),('main','disk_space','',NULL,NULL),('main','duplicates_max_size','100',NULL,NULL),('main','email_from','gleb221199@gmail.com',NULL,NULL),('main','error_reporting','85',NULL,NULL),('main','event_log_block_user','N',NULL,NULL),('main','event_log_cleanup_days','7',NULL,NULL),('main','event_log_file_access','N',NULL,NULL),('main','event_log_group_policy','N',NULL,NULL),('main','event_log_login_fail','N',NULL,NULL),('main','event_log_login_success','N',NULL,NULL),('main','event_log_logout','N',NULL,NULL),('main','event_log_marketplace','N',NULL,NULL),('main','event_log_module_access','N',NULL,NULL),('main','event_log_password_change','N',NULL,NULL),('main','event_log_password_request','N',NULL,NULL),('main','event_log_permissions_fail','N',NULL,NULL),('main','event_log_register','N',NULL,NULL),('main','event_log_register_fail','N',NULL,NULL),('main','event_log_task','N',NULL,NULL),('main','event_log_user_delete','N',NULL,NULL),('main','event_log_user_edit','N',NULL,NULL),('main','event_log_user_groups','N',NULL,NULL),('main','fill_to_mail','N',NULL,NULL),('main','gather_catalog_stat','Y',NULL,NULL),('main','GROUP_DEFAULT_RIGHT','D',NULL,NULL),('main','GROUP_DEFAULT_TASK','1',NULL,NULL),('main','hide_panel_for_users','s:0:\"\";',NULL,NULL),('main','image_resize_quality','95',NULL,NULL),('main','imageeditor_proxy_enabled','N',NULL,NULL),('main','imageeditor_proxy_white_list','s:0:\"\";',NULL,NULL),('main','inactive_users_block_days','0',NULL,NULL),('main','last_mp_modules_result','a:4:{s:10:\"check_date\";i:1710847640;s:13:\"update_module\";a:0:{}s:10:\"end_update\";a:0:{}s:10:\"new_module\";a:0:{}}',NULL,NULL),('main','mail_additional_parameters','',NULL,NULL),('main','mail_event_bulk','5',NULL,NULL),('main','mail_event_period','14',NULL,NULL),('main','mail_gen_text_version','Y',NULL,NULL),('main','mail_link_protocol','',NULL,NULL),('main','map_left_menu_type','left',NULL,NULL),('main','map_top_menu_type','top',NULL,NULL),('main','max_file_size','20000000',NULL,NULL),('main','move_js_to_body','Y',NULL,NULL),('main','new_user_email_auth','Y',NULL,NULL),('main','new_user_email_required','Y',NULL,NULL),('main','new_user_email_uniq_check','N',NULL,NULL),('main','new_user_phone_auth','N',NULL,NULL),('main','new_user_phone_required','N',NULL,NULL),('main','new_user_registration','Y',NULL,NULL),('main','new_user_registration_cleanup_days','7',NULL,NULL),('main','new_user_registration_def_group','',NULL,NULL),('main','new_user_registration_email_confirmation','N',NULL,NULL),('main','optimize_css_files','Y',NULL,NULL),('main','optimize_js_files','Y',NULL,NULL),('main','PARAM_MAX_SITES','0',NULL,NULL),('main','PARAM_MAX_USERS','0',NULL,NULL),('main','phone_number_default_country','16',NULL,NULL),('main','profile_history_cleanup_days','0',NULL,NULL),('main','profile_image_height','',NULL,NULL),('main','profile_image_size','',NULL,NULL),('main','profile_image_width','',NULL,NULL),('main','rating_assign_authority_group','4',NULL,NULL),('main','rating_assign_authority_group_add','2',NULL,NULL),('main','rating_assign_authority_group_delete','2',NULL,NULL),('main','rating_assign_rating_group','3',NULL,NULL),('main','rating_assign_rating_group_add','1',NULL,NULL),('main','rating_assign_rating_group_delete','1',NULL,NULL),('main','rating_assign_type','auto',NULL,NULL),('main','rating_authority_rating','2',NULL,NULL),('main','rating_authority_weight_formula','Y',NULL,NULL),('main','rating_community_authority','30',NULL,NULL),('main','rating_community_last_visit','90',NULL,NULL),('main','rating_community_size','1',NULL,NULL),('main','rating_count_vote','10',NULL,NULL),('main','rating_normalization','10',NULL,NULL),('main','rating_normalization_type','auto',NULL,NULL),('main','rating_self_vote','Y',NULL,NULL),('main','rating_start_authority','3',NULL,NULL),('main','rating_text_like_d','Это нравится',NULL,NULL),('main','rating_text_like_n','Не нравится',NULL,NULL),('main','rating_text_like_y','Нравится',NULL,NULL),('main','rating_vote_show','Y',NULL,NULL),('main','rating_vote_template','like',NULL,NULL),('main','rating_vote_type','like',NULL,NULL),('main','rating_vote_weight','10',NULL,NULL),('main','save_original_file_name','N',NULL,NULL),('main','secure_logout','Y',NULL,NULL),('main','send_mid','N',NULL,NULL),('main','server_name','module2.dvl.to',NULL,NULL),('main','server_uniq_id','e4ttxhd2rbjjitf6603lczfc3a97rirm',NULL,NULL),('main','session_auth_only','Y',NULL,NULL),('main','session_expand','Y',NULL,NULL),('main','session_show_message','Y',NULL,NULL),('main','show_panel_for_users','s:0:\"\";',NULL,NULL),('main','signer_default_key','cced856ee55714dd907f60a76a42a77b03956c932a3897615cae726b5698ab2de0214a9e23c7b679669a4cd1cf0198b409df7c295a0418c021e5f2956c2d89a2',NULL,NULL),('main','site_name','module2.dvl.to',NULL,NULL),('main','smile_gallery_id','1',NULL,NULL),('main','smile_last_update','1710265448',NULL,NULL),('main','sms_default_service','',NULL,NULL),('main','stable_versions_only','Y',NULL,NULL),('main','store_password','Y',NULL,NULL),('main','strong_update_check','Y',NULL,NULL),('main','track_outgoing_emails_click','Y',NULL,NULL),('main','track_outgoing_emails_read','Y',NULL,NULL),('main','translate_key_yandex','',NULL,NULL),('main','translit_original_file_name','N',NULL,NULL),('main','update_autocheck','',NULL,NULL),('main','update_devsrv','N',NULL,NULL),('main','update_is_gzip_installed','Y',NULL,NULL),('main','update_load_timeout','30',NULL,NULL),('main','update_safe_mode','N',NULL,NULL),('main','update_site','www.1c-bitrix.ru',NULL,NULL),('main','update_site_ns','Y',NULL,NULL),('main','update_site_proxy_addr','',NULL,NULL),('main','update_site_proxy_pass','',NULL,NULL),('main','update_site_proxy_port','',NULL,NULL),('main','update_site_proxy_user','',NULL,NULL),('main','update_stop_autocheck','N',NULL,NULL),('main','update_system_check','19.03.2024 22:09:01',NULL,NULL),('main','upload_dir','upload',NULL,NULL),('main','url_preview_enable','N',NULL,NULL),('main','url_preview_save_images','N',NULL,NULL),('main','use_digest_auth','N',NULL,NULL),('main','use_encrypted_auth','N',NULL,NULL),('main','use_hot_keys','Y',NULL,NULL),('main','use_minified_assets','Y',NULL,NULL),('main','use_secure_password_cookies','N',NULL,NULL),('main','use_time_zones','N',NULL,NULL),('main','user_device_geodata','N',NULL,NULL),('main','user_device_history','N',NULL,NULL),('main','user_device_notify','N',NULL,NULL),('main','user_profile_history','N',NULL,NULL),('main','vendor','1c_bitrix',NULL,NULL),('messageservice','clean_up_period','14',NULL,NULL),('rest','app_immune','[\"infoservice.migrator_amocrm\",\"informunity.excel\",\"integrations24ru.pipedrive\",\"integrations24ru.asana\",\"integrations24ru.sugar\",\"bitrix.eshop\",\"bitrix.1cdoc\",\"bitrix.assistant\",\"bitrix.denominationby\",\"bitrix.propertiesbot\",\"bitrix.giphybot\",\"bitrix.1c\",\"bitrix.restapi\",\"bitrix.partnerlandingexport\",\"bitrix.partnerapplication\",\"bitrix.partnerlanding\",\"bitrix.1ctotal\",\"integrations24.pipedrive\",\"integrations24ru.pipedrive\",\"integrations24.zoho\",\"integrations24.asana\",\"integrations24ru.asana\",\"integrations24.sugar\",\"integrations24ru.sugar\",\"integrations24.jira_migration\",\"integrations24.qbinventory\",\"integrations24.zohoinventory\",\"integrations24.trello\",\"integrations24ru.slack_migration\",\"SEVERCODE.trello_migrator\",\"htmls.ms_migrator\",\"integrations24.mns_kazakhstan_poisk_po_bin\",\"integrations24.portal_nalog_gov_by\",\"integrations24ru.microsoft_teams_migration\",\"bitrix.pbi_all\",\"bitrix.pbi_company\",\"bitrix.pbi_company_uf\",\"bitrix.pbi_contact\",\"bitrix.pbi_contact_uf\",\"bitrix.pbi_crm_activity\",\"bitrix.pbi_deal_product_row\",\"bitrix.pbi_deal_stage_history\",\"bitrix.pbi_deals_ru\",\"bitrix.pbi_lead\",\"bitrix.pbi_lead_product_row\",\"bitrix.pbi_lead_uf\",\"bitrix.pbi_leads_ru\",\"bitrix.pbi_socialnetwork_group\",\"bitrix.pbi_telephony\",\"bitrix.pbi_user\",\"bitrix.gds_all\",\"bitrix.gds_company\",\"bitrix.gds_company_uf\",\"bitrix.gds_contact\",\"bitrix.gds_contact_uf\",\"bitrix.gds_crm_activity\",\"bitrix.gds_deal_product_row\",\"bitrix.gds_deal_stage_history\",\"bitrix.gds_deals_ru\",\"bitrix.gds_lead\",\"bitrix.gds_lead_product_row\",\"bitrix.gds_lead_uf\",\"bitrix.gds_leads_ru\",\"bitrix.gds_socialnetwork_group\",\"bitrix.gds_telephony\",\"bitrix.gds_user\",\"bitrix.gds_activity\",\"bitrix.gds_deal_uf\",\"bitrix.gds_telephony_call\",\"itsolutionru.gptconnector\",\"asmo.ai\",\"bitrix.bic_datasets_en\",\"bitrix.bic_datasets_kz\",\"bitrix.bic_datasets_ru\",\"bitrix.bic_deals_en\",\"bitrix.bic_deals_kz\",\"bitrix.bic_deals_ru\",\"bitrix.bic_leads_en\",\"bitrix.bic_leads_kz\",\"bitrix.bic_leads_ru\",\"bitrix.bic_sales_en\",\"bitrix.bic_sales_kz\",\"bitrix.bic_sales_ru\",\"bitrix.bic_sales_struct_en\",\"bitrix.bic_sales_struct_kz\",\"bitrix.bic_sales_struct_ru\",\"bitrix.bic_telephony_en\",\"bitrix.bic_telephony_kz\",\"bitrix.bic_telephony_ru\",\"bitrix.bic_deals_complex\",\"bitrix.bic_general_stat\",\"bitrix.bic_lead_generation\",\"bitrix.kompleksnaya_analitika_sdelok\",\"bitrix.bic_telephony_ru\",\"bitrix.bic_sales_struct_ru\",\"bitrix.bic_sales_ru\",\"bitrix.bic_leads_ru\",\"bitrix.bic_deals_ru\",\"bitrix.bic_datasets_ru\",\"bitrix.bic_datasets_en\",\"bitrix.bic_deals_en\",\"bitrix.bic_leads_en\",\"bitrix.bic_sales_en\",\"bitrix.bic_sales_struct_en\",\"bitrix.bic_telephony_en\",\"bitrix.bic_datasets_kz\",\"bitrix.bic_deals_kz\",\"bitrix.bic_leads_kz\",\"bitrix.bic_sales_kz\",\"bitrix.bic_sales_struct_kz\",\"bitrix.bic_telephony_kz\",\"bitrix.bic_deals_complex\",\"bitrix.bic_general_stat\",\"bitrix.bic_lead_generation\",\"bitrix.khellouin_ru\",\"bitrix.den_zashchitnika_otechestva_2_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_ua\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_ua\",\"bitrix.mezhdunarodnyy_zhenskiy_den_ua\",\"bitrix.den_smekha_ua\",\"bitrix.den_svyatogo_valentina_ua\",\"bitrix.den_vsekh_vlyublyennykh_ua\",\"bitrix.katolicheskaya_paskha_ua\",\"bitrix.novyy_god_ua\",\"bitrix.rozhdestvo_ua\",\"bitrix.valentinov_den_ua\",\"bitrix.pravoslavnaya_paskha_ua\",\"bitrix.chernaya_pyatnitsa_ua\",\"bitrix.khellouin_ua\",\"bitrix.den_zashchitnika_otechestva_3_ru\",\"bitrix.den_zashchitnika_otechestva_ru\",\"bitrix.den_zashchitnika_otechestva_by\",\"bitrix.den_zashchitnika_otechestva_2_by\",\"bitrix.den_zashchitnika_otechestva_3_by\",\"bitrix.den_zashchitnika_otechestva_kz\",\"bitrix.den_zashchitnika_otechestva_2_kz\",\"bitrix.den_zashchitnika_otechestva_3_kz\",\"bitrix.pravoslavnaya_paskha_ru\",\"bitrix.pravoslavnaya_paskha_by\",\"bitrix.pravoslavnaya_paskha_kz\",\"bitrix.den_smekha_ru\",\"bitrix.den_smekha_by\",\"bitrix.den_smekha_kz\",\"bitrix.valentinov_den_ru\",\"bitrix.valentinov_den_by\",\"bitrix.valentinov_den_kz\",\"bitrix.rozhdestvo_ru\",\"bitrix.rozhdestvo_by\",\"bitrix.rozhdestvo_kz\",\"bitrix.novyy_god_ru\",\"bitrix.novyy_god_by\",\"bitrix.novyy_god_kz\",\"bitrix.katolicheskaya_paskha_ru\",\"bitrix.katolicheskaya_paskha_by\",\"bitrix.katolicheskaya_paskha_kz\",\"bitrix.den_vsekh_vlyublyennykh_ru\",\"bitrix.den_vsekh_vlyublyennykh_by\",\"bitrix.den_vsekh_vlyublyennykh_kz\",\"bitrix.den_svyatogo_valentina_ru\",\"bitrix.den_svyatogo_valentina_by\",\"bitrix.den_svyatogo_valentina_kz\",\"bitrix.mezhdunarodnyy_zhenskiy_den_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_by\",\"bitrix.mezhdunarodnyy_zhenskiy_den_kz\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_by\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_kz\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_by\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_kz\",\"bitrix.thanksgiving_day_en\",\"bitrix.april_fools_day_en\",\"bitrix.valentine_s_day_en\",\"bitrix.valentine_s_day_2_en\",\"bitrix.valentine_s_day_3_en\",\"bitrix.chernaya_pyatnitsa_ru\",\"bitrix.chernaya_pyatnitsa_by\",\"bitrix.chernaya_pyatnitsa_kz\",\"bitrix.khellouin_by\",\"bitrix.khellouin_kz\",\"bitrix.easter_en\",\"bitrix.halloween_en\",\"bitrix.christmas_en\",\"bitrix.new_year_en\",\"bitrix.black_friday_en\",\"bitrix.kraytvirtualtravel_ru\",\"bitrix.kraytvirtualtravel_by\",\"bitrix.kraytvirtualtravel_kz\",\"bitrix.kraytvirtualtravel_ua\",\"bitrix.kraytnutritionist_ru\",\"bitrix.kraytnutritionist_by\",\"bitrix.delobotcorporatetraining_en\",\"bitrix.delobotblackfriday_en\",\"bitrix.delobotcleaningcompany_en\",\"bitrix.delobotfitness_en\",\"bitrix.delobotfooddelivery_en\",\"bitrix.delobotvisagiste_en\",\"bitrix.delobotpsychologist_en\",\"bitrix.delobotflorist_en\",\"bitrix.delobotdecoration_en\",\"bitrix.delobotcarservice_en\",\"bitrix.kraytagency_en\",\"bitrix.kraytagriculture_en\",\"bitrix.kraytarchitecture_en\",\"bitrix.kraytbusiness_en\",\"bitrix.kraytdelivery_en\",\"bitrix.kraytevents_en\",\"bitrix.kraythalloween_en\",\"bitrix.kraytvetclinic_en\",\"bitrix.kraytmasterforhour_en\",\"bitrix.kraytinstagramcontacts_en\",\"bitrix.kraytinstagramstock_en\",\"bitrix.kraytinstagramtarget_en\",\"bitrix.kraytonlinebabysitter_en\",\"bitrix.kraytpetservice_en\",\"bitrix.kraytsolarenergy_en\",\"bitrix.kraytsportonline_en\",\"bitrix.kraytsummersale_en\",\"bitrix.krayttravelblog_en\",\"bitrix.kraytvebinar_en\",\"bitrix.kraytartificialintelligence_en\",\"bitrix.kraytbakeryproducts_en\",\"bitrix.kraytchildrensschool_en\",\"bitrix.kraytfooddelivery_en\",\"bitrix.kraytfurniture_en\",\"bitrix.kraytvirtualtravel_en\",\"bitrix.kraytyoutubechannel_en\",\"bitrix.kraytknitting_en\",\"bitrix.kraytnutritionist_en\",\"bitrix.kraytnailservice_en\",\"bitrix.kraytmedicine_en\",\"bitrix.kraytprofipage_en\",\"bitrix.kraytsale11_en\",\"bitrix.delobotblackfriday_ua\",\"bitrix.delobotcleaning_ua\",\"bitrix.delobotcorporatetraining_ua\",\"bitrix.delobotfitness_ua\",\"bitrix.delobotfooddelivery_ua\",\"bitrix.delobotvisagiste_ua\",\"bitrix.kraytagency_ua\",\"bitrix.kraytagriculture_ua\",\"bitrix.kraytarchitecture_ua\",\"bitrix.kraytbusiness_ua\",\"bitrix.kraytevents_ua\",\"bitrix.kraythalloween_ua\",\"bitrix.kraytinstagramcontacts_ua\",\"bitrix.kraytinstagramstock_ua\",\"bitrix.kraytinstagramtarget_ua\",\"bitrix.kraytpetservice_ua\",\"bitrix.kraytsolarenergy_ua\",\"bitrix.kraytsummersale_ua\",\"bitrix.krayttravelblog_ua\",\"bitrix.kraytvebinar_ua\",\"bitrix.kraytvetclinic_ua\",\"bitrix.kraytnutritionist_ua\",\"bitrix.kraytnutritionist_kz\",\"bitrix.kraytfurniture_by\",\"bitrix.kraytfurniture_ru\",\"bitrix.kraytfurniture_kz\",\"bitrix.kraytfurniture_ua\",\"bitrix.kraytmedicine_ru\",\"bitrix.kraytmedicine_by\",\"bitrix.kraytmedicine_kz\",\"bitrix.kraytmedicine_ua\",\"bitrix.kraytsale11_ru\",\"bitrix.kraytsale11_by\",\"bitrix.kraytsale11_kz\",\"bitrix.kraytsale11_ua\",\"bitrix.kraytnailservice_ru\",\"bitrix.kraytnailservice_by\",\"bitrix.kraytnailservice_kz\",\"bitrix.kraytnailservice_ua\",\"bitrix.kraytknitting_ru\",\"bitrix.kraytknitting_by\",\"bitrix.kraytknitting_kz\",\"bitrix.kraytknitting_ua\",\"bitrix.kraytfooddelivery_ru\",\"bitrix.kraytfooddelivery_by\",\"bitrix.kraytfooddelivery_kz\",\"bitrix.kraytfooddelivery_ua\",\"bitrix.kraytbakeryproducts_ru\",\"bitrix.kraytbakeryproducts_by\",\"bitrix.kraytbakeryproducts_kz\",\"bitrix.kraytbakeryproducts_ua\",\"bitrix.kraytschoolmusic_ru\",\"bitrix.kraytschoolmusic_by\",\"bitrix.kraytschoolmusic_kz\",\"bitrix.kraytschoolmusic_ua\",\"bitrix.kraytautomechanic_ru\",\"bitrix.kraytautomechanic_by\",\"bitrix.kraytautomechanic_kz\",\"bitrix.kraytautomechanic_ua\",\"bitrix.kraytpresents_ru\",\"bitrix.kraytpresents_by\",\"bitrix.kraytpresents_kz\",\"bitrix.kraytpresents_ua\",\"bitrix.kraytportfoliophotographer_ru\",\"bitrix.kraytportfoliophotographer_by\",\"bitrix.kraytportfoliophotographer_kz\",\"bitrix.kraytportfoliophotographer_ua\",\"bitrix.kraytcrm_ru\",\"bitrix.delobotcleaningcompany_ru\",\"bitrix.delobotblackfriday_ru\",\"bitrix.delobotblackfriday_by\",\"bitrix.delobotblackfriday_kz\",\"bitrix.delobotcleaningcompany_by\",\"bitrix.delobotcleaningcompany_kz\",\"bitrix.delobotcorporatetraining_ru\",\"bitrix.delobotcorporatetraining_by\",\"bitrix.delobotcorporatetraining_kz\",\"bitrix.delobotfitness_ru\",\"bitrix.delobotfitness_by\",\"bitrix.delobotfitness_kz\",\"bitrix.delobotfooddelivery_ru\",\"bitrix.delobotfooddelivery_by\",\"bitrix.delobotfooddelivery_kz\",\"bitrix.delobotvisagiste_ru\",\"bitrix.delobotvisagiste_by\",\"bitrix.delobotvisagiste_kz\",\"bitrix.delobotgiftsforwomensday_ru\",\"bitrix.delobotgiftsforwomensday_by\",\"bitrix.delobotgiftsforwomensday_kz\",\"bitrix.delobotgiftsforwomensday_ua\",\"bitrix.delobotwebdesigner_ru\",\"bitrix.delobotwebdesigner_by\",\"bitrix.delobotwebdesigner_kz\",\"bitrix.delobotwebdesigner_ua\",\"bitrix.delobotatelier_ru\",\"bitrix.delobotatelier_by\",\"bitrix.delobotatelier_kz\",\"bitrix.delobotatelier_ua\",\"bitrix.delobotconstructioncompany_ru\",\"bitrix.delobotconstructioncompany_by\",\"bitrix.delobotconstructioncompany_ua\",\"bitrix.delobotlanguageschool_ru\",\"bitrix.delobotlanguageschool_by\",\"bitrix.delobotlanguageschool_kz\",\"bitrix.delobotlanguageschool_ua\",\"bitrix.delobotcoffee_ru\",\"bitrix.delobotcoffee_by\",\"bitrix.delobotcoffee_kz\",\"bitrix.delobotcoffee_ua\",\"bitrix.kraytcrm_by\",\"bitrix.kraytcrm_kz\",\"bitrix.kraytcrm_ua\",\"bitrix.kraytonlinebabysitter_ru\",\"bitrix.kraytonlinebabysitter_by\",\"bitrix.kraytonlinebabysitter_kz\",\"bitrix.kraytonlinebabysitter_uaa\",\"bitrix.kraytsportonline_ru\",\"bitrix.kraytsportonline_by\",\"bitrix.kraytsportonline_kz\",\"bitrix.kraytsportonline_ua\",\"bitrix.kraytmasterforhour_ru\",\"bitrix.kraytmasterforhour_by\",\"bitrix.kraytmasterforhour_kz\",\"bitrix.kraytmasterforhour_ua\",\"bitrix.kraytdelivery_ru\",\"bitrix.kraytdelivery_by\",\"bitrix.kraytdelivery_kz\",\"bitrix.kraytdelivery_ua\",\"bitrix.kraytrepairservice_ru\",\"bitrix.kraytrepairservice_by\",\"bitrix.kraytrepairservice_kz\",\"bitrix.kraytrepairservice_ua\",\"bitrix.kraytprofipage_ru\",\"bitrix.kraytprofipage_by\",\"bitrix.kraytprofipage_kz\",\"bitrix.kraytprofipage_ua\",\"bitrix.krayttutor_ru\",\"bitrix.krayttutor_by\",\"bitrix.krayttutor_kz\",\"bitrix.krayttutor_ua\",\"bitrix.kraytartificialintelligence_ru\",\"bitrix.kraytartificialintelligence_by\",\"bitrix.kraytartificialintelligence_kz\",\"bitrix.kraytartificialintelligence_ua\",\"bitrix.kraytyoutubechannel_ru\",\"bitrix.kraytyoutubechannel_by\",\"bitrix.kraytyoutubechannel_kz\",\"bitrix.kraytyoutubechannel_ua\",\"bitrix.kraytchildrensschool_ru\",\"bitrix.kraytchildrensschool_by\",\"bitrix.kraytchildrensschool_kz\",\"bitrix.kraytchildrensschool_ua\",\"bitrix.krayttravelagency_ru\",\"bitrix.krayttravelagency_by\",\"bitrix.krayttravelagency_kz\",\"bitrix.krayttravelagency_ua\",\"bitrix.krayttranslator_ru\",\"bitrix.krayttranslator_by\",\"bitrix.krayttranslator_kz\",\"bitrix.krayttranslator_ua\",\"bitrix.kraytstylist_ru\",\"bitrix.kraytstylist_by\",\"bitrix.kraytstylist_kz\",\"bitrix.kraytstylist_ua\",\"bitrix.kraytstretchingstudio_ru\",\"bitrix.kraytstretchingstudio_by\",\"bitrix.kraytstretchingstudio_kz\",\"bitrix.kraytstretchingstudio_ua\",\"bitrix.kraytsportschool_ru\",\"bitrix.kraytsportschool_by\",\"bitrix.kraytsportschool_kz\",\"bitrix.kraytsportschool_ua\",\"bitrix.kraytsitedesigner_ru\",\"bitrix.kraytsitedesigner_by\",\"bitrix.kraytsitedesigner_kz\",\"bitrix.kraytsitedesigner_ua\",\"bitrix.kraytsport_ru\",\"bitrix.kraytsport_by\",\"bitrix.kraytsport_kz\",\"bitrix.kraytsport_ua\",\"bitrix.kraytmobileapp_ru\",\"bitrix.kraytmobileapp_by\",\"bitrix.kraytmobileapp_kz\",\"bitrix.kraytmobileapp_ua\",\"bitrix.kraytrealestate_ru\",\"bitrix.kraytrealestate_by\",\"bitrix.kraytrealestate_kz\",\"bitrix.kraytrealestate_ua\",\"bitrix.delobotnewyearsale_ru\",\"bitrix.delobotnewyearsale_by\",\"bitrix.delobotnewyearsale_kz\",\"bitrix.delobotnewyearsale_ua\",\"bitrix.delobotyoga_ru\",\"bitrix.delobotyoga_by\",\"bitrix.delobotyoga_kz\",\"bitrix.delobotyoga_ua\",\"bitrix.delobotcake_ru\",\"bitrix.delobotcake_by\",\"bitrix.delobotcake_kz\",\"bitrix.delobotcake_ua\",\"bitrix.delobotveterinarian_ru\",\"bitrix.delobotveterinarian_by\",\"bitrix.delobotveterinarian_kz\",\"bitrix.delobotveterinarian_ua\",\"bitrix.delobotpsychologist_ru\",\"bitrix.delobotpsychologist_by\",\"bitrix.delobotpsychologist_kz\",\"bitrix.delobotpsychologist_ua\",\"bitrix.delobotdecoration_ru\",\"bitrix.delobotdecoration_by\",\"bitrix.delobotdecoration_kz\",\"bitrix.delobotdecoration_ua\",\"bitrix.delobotflorist_ru\",\"bitrix.delobotflorist_by\",\"bitrix.delobotflorist_kz\",\"bitrix.delobotflorist_ua\",\"bitrix.delobotcarservice_ru\",\"bitrix.delobotcarservice_by\",\"bitrix.delobotcarservice_kz\",\"bitrix.delobotcarservice_ua\",\"bitrix.delobotcargotransportation_ru\",\"bitrix.delobotcargotransportation_by\",\"bitrix.delobotcargotransportation_kz\",\"bitrix.delobotcargotransportation_ua\",\"bitrix.delobotrealtor_ru\",\"bitrix.delobotrealtor_by\",\"bitrix.delobotrealtor_kz\",\"bitrix.delobotrealtor_ua\",\"bitrix.delobotfurnituremanufacturing_ru\",\"bitrix.delobotfurnituremanufacturing_by\",\"bitrix.delobotfurnituremanufacturing_kz\",\"bitrix.delobotfurnituremanufacturing_ua\",\"bitrix.delobotorganizationofholidays_ru\",\"bitrix.delobotorganizationofholidays_by\",\"bitrix.delobotorganizationofholidays_kz\",\"bitrix.delobotorganizationofholidays_ua\",\"bitrix.delobotconcertannounce_ru\",\"bitrix.delobotconcertannounce_by\",\"bitrix.delobotconcertannounce_kz\",\"bitrix.delobotconcertannounce_ua\",\"bitrix.delobotphotographersservice_ru\",\"bitrix.delobotphotographersservice_by\",\"bitrix.delobotphotographersservice_kz\",\"bitrix.delobotphotographersservice_ua\",\"bitrix.kraytsecurityagency_ru\",\"bitrix.kraytsecurityagency_by\",\"bitrix.kraytsecurityagency_kz\",\"bitrix.kraytsecurityagency_ua\",\"bitrix.kraytrecordingstudio_ru\",\"bitrix.kraytrecordingstudio_by\",\"bitrix.kraytrecordingstudio_kz\",\"bitrix.kraytrecordingstudio_ua\",\"bitrix.kraytrealestateagent_ru\",\"bitrix.kraytrealestateagent_by\",\"bitrix.kraytrealestateagent_kz\",\"bitrix.kraytrealestateagent_ua\",\"bitrix.delobotdecorationhouses_ru\",\"bitrix.delobotdecorationhouses_by\",\"bitrix.delobotdecorationhouses_kz\",\"bitrix.delobotdecorationhouses_ua\",\"bitrix.delobotairconditioners_ru\",\"bitrix.delobotairconditioners_by\",\"bitrix.delobotairconditioners_kz\",\"bitrix.delobotairconditioners_ua\",\"bitrix.delobotdesignworkshop_ru\",\"bitrix.delobotdesignworkshop_by\",\"bitrix.delobotdesignworkshop_kz\",\"bitrix.delobotdesignworkshop_ua\",\"bitrix.delobotcitygreeningproject_ru\",\"bitrix.delobotcitygreeningproject_by\",\"bitrix.delobotcitygreeningproject_kz\",\"bitrix.delobotcitygreeningproject_ua\",\"bitrix.delobotecoproducts_ru\",\"bitrix.delobotecoproducts_by\",\"bitrix.delobotecoproducts_kz\",\"bitrix.delobotecoproducts_ua\",\"bitrix.delobotsoundrecordingservices_ru\",\"bitrix.delobotsoundrecordingservices_by\",\"bitrix.delobotsoundrecordingservices_kz\",\"bitrix.delobotsoundrecordingservices_ua\",\"bitrix.delobotsecurityservice_ru\",\"bitrix.delobotsecurityservice_by\",\"bitrix.delobotsecurityservice_kz\",\"bitrix.delobotsecurityservice_ua\",\"bitrix.delobotsportschool_ru\",\"bitrix.delobotsportschool_by\",\"bitrix.delobotsportschool_kz\",\"bitrix.delobotsportschool_ua\",\"bitrix.delobotfamilyleisure_ru\",\"bitrix.delobotfamilyleisure_by\",\"bitrix.delobotfamilyleisure_kz\",\"bitrix.delobotfamilyleisure_ua\",\"bitrix.delobotdoctortherapist_ru\",\"bitrix.delobotdoctortherapist_by\",\"bitrix.delobotdoctortherapist_kz\",\"bitrix.delobotdoctortherapist_ua\",\"bitrix.kraytagency_ru\",\"bitrix.kraytagency_by\",\"bitrix.kraytagency_kz\",\"bitrix.kraytarchitecture_ru\",\"bitrix.kraytarchitecture_by\",\"bitrix.kraytarchitecture_kz\",\"bitrix.kraytagriculture_ru\",\"bitrix.kraytagriculture_by\",\"bitrix.kraytagriculture_kz\",\"bitrix.kraytbusiness_ru\",\"bitrix.kraytbusiness_by\",\"bitrix.kraytbusiness_kz\",\"bitrix.kraytevents_ru\",\"bitrix.kraytevents_by\",\"bitrix.kraytevents_kz\",\"bitrix.kraythalloween_ru\",\"bitrix.kraythalloween_by\",\"bitrix.kraythalloween_kz\",\"bitrix.kraytinstagramtarget_ru\",\"bitrix.kraytinstagramtarget_by\",\"bitrix.kraytinstagramtarget_kz\",\"bitrix.kraytinstagramcontacts_ru\",\"bitrix.kraytinstagramcontacts_by\",\"bitrix.kraytinstagramcontacts_kz\",\"bitrix.kraytinstagramstock_ru\",\"bitrix.kraytinstagramstock_by\",\"bitrix.kraytinstagramstock_kz\",\"bitrix.kraytpetservice_ru\",\"bitrix.kraytpetservice_by\",\"bitrix.kraytpetservice_kz\",\"bitrix.kraytsolarenergy_ru\",\"bitrix.kraytsolarenergy_by\",\"bitrix.kraytsolarenergy_kz\",\"bitrix.kraytsummersale_ru\",\"bitrix.kraytsummersale_by\",\"bitrix.kraytsummersale_kz\",\"bitrix.krayttravelblog_ru\",\"bitrix.krayttravelblog_by\",\"bitrix.krayttravelblog_kz\",\"bitrix.kraytvebinar_ru\",\"bitrix.kraytvebinar_by\",\"bitrix.kraytvebinar_kz\",\"bitrix.kraytvetclinic_ru\",\"bitrix.kraytvetclinic_by\",\"bitrix.kraytvetclinic_kz\",\"bitrix.kraytrestaurant_ru\",\"bitrix.kraytrestaurant_by\",\"bitrix.kraytrestaurant_kz\",\"bitrix.kraytrestaurant_ua\",\"bitrix.kraytweddingservices_ru\",\"bitrix.kraytweddingservices_by\",\"bitrix.kraytweddingservices_kz\",\"bitrix.kraytweddingservices_ua\",\"bitrix.kraytoptics_ru\",\"bitrix.kraytoptics_by\",\"bitrix.kraytoptics_kz\",\"bitrix.kraytoptics_ua\",\"bitrix.krayt3dprint_ru\",\"bitrix.krayt3dprint_by\",\"bitrix.krayt3dprint_kz\",\"bitrix.krayt3dprint_ua\",\"bitrix.kraytbusinesspremisesdesign_ru\",\"bitrix.kraytbusinesspremisesdesign_by\",\"bitrix.kraytbusinesspremisesdesign_kz\",\"bitrix.kraytbusinesspremisesdesign_ua\",\"bitrix.kraytcentersproject_ru\",\"bitrix.kraytcentersproject_by\",\"bitrix.kraytcentersproject_kz\",\"bitrix.kraytcentersproject_ua\",\"bitrix.kraytcitygreening_ru\",\"bitrix.kraytcitygreening_by\",\"bitrix.kraytcitygreening_kz\",\"bitrix.kraytcitygreening_ua\",\"bitrix.kraytclimatesystems_ru\",\"bitrix.kraytclimatesystems_by\",\"bitrix.kraytclimatesystems_kz\",\"bitrix.kraytclimatesystems_ua\",\"bitrix.kraytclinicmomandbaby_ru\",\"bitrix.kraytclinicmomandbaby_by\",\"bitrix.kraytclinicmomandbaby_kz\",\"bitrix.kraytclinicmomandbaby_ua\",\"bitrix.kraytdesignerclothing_ru\",\"bitrix.kraytdesignerclothing_by\",\"bitrix.kraytdesignerclothing_kz\",\"bitrix.kraytdesignerclothing_ua\",\"bitrix.kraytprivatedoctor_ru\",\"bitrix.kraytprivatedoctor_by\",\"bitrix.kraytprivatedoctor_kz\",\"bitrix.kraytprivatedoctor_ua\",\"bitrix.kraytprintinghouse_ru\",\"bitrix.kraytprintinghouse_by\",\"bitrix.kraytprintinghouse_kz\",\"bitrix.kraytprintinghouse_ua\",\"bitrix.kraytpersonalcoach_ru\",\"bitrix.kraytpersonalcoach_by\",\"bitrix.kraytpersonalcoach_kz\",\"bitrix.kraytpersonalcoach_ua\",\"bitrix.kraytperfumer_ru\",\"bitrix.kraytperfumer_by\",\"bitrix.kraytperfumer_kz\",\"bitrix.kraytperfumer_ua\",\"bitrix.kraytnewsblog_ru\",\"bitrix.kraytnewsblog_by\",\"bitrix.kraytnewsblog_kz\",\"bitrix.kraytnewsblog_ua\",\"bitrix.kraytmakeupstudio_ru\",\"bitrix.kraytmakeupstudio_by\",\"bitrix.kraytmakeupstudio_kz\",\"bitrix.kraytmakeupstudio_ua\",\"bitrix.kraytlawyer_ru\",\"bitrix.kraytlawyer_by\",\"bitrix.kraytlawyer_kz\",\"bitrix.kraytlawyer_ua\",\"bitrix.kraytlandscapedesign_ru\",\"bitrix.kraytlandscapedesign_by\",\"bitrix.kraytlandscapedesign_kz\",\"bitrix.kraytlandscapedesign_ua\",\"bitrix.kraytjewelryrepairshop_ru\",\"bitrix.kraytjewelryrepairshop_by\",\"bitrix.kraytjewelryrepairshop_kz\",\"bitrix.kraytjewelryrepairshop_ua\",\"bitrix.kraytinteriordesign_ru\",\"bitrix.kraytinteriordesign_by\",\"bitrix.kraytinteriordesign_kz\",\"bitrix.kraytinsurancecompany_ru\",\"bitrix.kraytinsurancecompany_kz\",\"bitrix.kraytinsurancecompany_ua\",\"bitrix.kraytillustrator_ru\",\"bitrix.kraytillustrator_by\",\"bitrix.kraytillustrator_kz\",\"bitrix.kraytillustrator_ua\",\"bitrix.kraytgiftsvalentineday_ru\",\"bitrix.kraytgiftsvalentineday_by\",\"bitrix.kraytgiftsvalentineday_kz\",\"bitrix.kraytgiftsvalentineday_ua\",\"bitrix.kraytfebruary23_ru\",\"bitrix.kraytfebruary23_by\",\"bitrix.kraytfebruary23_kz\",\"bitrix.kraytfebruary23_ua\",\"bitrix.kraytequipmentrepair_ru\",\"bitrix.kraytequipmentrepair_by\",\"bitrix.kraytequipmentrepair_kz\",\"bitrix.kraytequipmentrepair_ua\",\"bitrix.kraytdentistry_ru\",\"bitrix.kraytdentistry_by\",\"bitrix.kraytdentistry_kz\",\"bitrix.kraytdentistry_ua\",\"bitrix.kraytdancemarathon_ru\",\"bitrix.kraytdancemarathon_by\",\"bitrix.kraytdancemarathon_kz\",\"bitrix.kraytdancemarathon_ua\",\"bitrix.kraytcourseformothers_ru\",\"bitrix.kraytcourseformothers_by\",\"bitrix.kraytcourseformothers_kz\",\"bitrix.kraytcourseformothers_ua\",\"bitrix.kraytcosmetologist_ru\",\"bitrix.kraytcosmetologist_by\",\"bitrix.kraytcosmetologist_kz\",\"bitrix.kraytcosmetologist_ua\",\"bitrix.kraytconstructionofprivatehouses_ru\",\"bitrix.kraytconstructionofprivatehouses_by\",\"bitrix.kraytconstructionofprivatehouses_kz\",\"bitrix.kraytconstructionofprivatehouses_ua\",\"bitrix.kraytconfectionery_ru\",\"bitrix.kraytconfectionery_by\",\"bitrix.kraytconfectionery_kz\",\"bitrix.kraytconfectionery_ua\",\"bitrix.kraytcoffeehouse_ru\",\"bitrix.kraytcoffeehouse_by\",\"bitrix.kraytcoffeehouse_kz\",\"bitrix.kraytcoffeehouse_ua\",\"bitrix.kraytcleaningservice_ru\",\"bitrix.kraytcleaningservice_by\",\"bitrix.kraytcleaningservice_kz\",\"bitrix.kraytcleaningservice_ua\",\"bitrix.kraytbeautystudio_ru\",\"bitrix.kraytbeautystudio_by\",\"bitrix.kraytbeautystudio_kz\",\"bitrix.kraytbeautystudio_ua\",\"bitrix.kraytbarbershop_ru\",\"bitrix.kraytbarbershop_by\",\"bitrix.kraytartworkshop_by\",\"bitrix.kraytbarbershop_kz\",\"bitrix.kraytbarbershop_ua\",\"bitrix.kraytartworkshop_ru\",\"bitrix.kraytartworkshop_kz\",\"bitrix.kraytartworkshop_ua\",\"bitrix.kraytaprilfoolsdaygifts_ru\",\"bitrix.kraytaprilfoolsdaygifts_by\",\"bitrix.kraytaprilfoolsdaygifts_kz\",\"bitrix.kraytaprilfoolsdaygifts_ua\",\"bitrix.kraytwindowinstallation_ru\",\"bitrix.kraytwindowinstallation_by\",\"bitrix.kraytwindowinstallation_kz\",\"bitrix.kraytwindowinstallation_ua\",\"bitrix.kraytwindowdesign_ru\",\"bitrix.kraytwindowdesign_by\",\"bitrix.kraytwindowdesign_kz\",\"bitrix.kraytwindowdesign_ua\",\"bitrix.krayttelecommunications_ru\",\"bitrix.krayttelecommunications_by\",\"bitrix.krayttelecommunications_kz\",\"bitrix.krayttelecommunications_ua\",\"bitrix.kraytsportsnutritionorder_ru\",\"bitrix.kraytsportsnutritionorder_by\",\"bitrix.kraytsportsnutritionorder_kz\",\"bitrix.kraytsportsnutritionorder_ua\",\"bitrix.kraytreconstructionoffices_ru\",\"bitrix.kraytreconstructionoffices_by\",\"bitrix.kraytreconstructionoffices_kz\",\"bitrix.kraytreconstructionoffices_ua\",\"bitrix.kraytpremisestrade_ru\",\"bitrix.kraytpremisestrade_by\",\"bitrix.kraytpremisestrade_ua\",\"bitrix.kraytinsulationhouses_ru\",\"bitrix.kraytinsulationhouses_by\",\"bitrix.kraytinsulationhouses_kz\",\"bitrix.kraytinsulationhouses_ua\",\"bitrix.kraytinstallsecuritysystems_ru\",\"bitrix.kraytinstallsecuritysystems_by\",\"bitrix.kraytinstallsecuritysystems_kz\",\"bitrix.kraytinstallsecuritysystems_ua\",\"bitrix.kraytinstallbathrooms_ru\",\"bitrix.kraytinstallbathrooms_by\",\"bitrix.kraytinstallbathrooms_kz\",\"bitrix.kraytinstallbathrooms_ua\",\"bitrix.kraythousedesign_ru\",\"bitrix.kraythousedesign_by\",\"bitrix.kraythousedesign_kz\",\"bitrix.kraythousedesign_ua\",\"bitrix.kraythospitalforfamily_ru\",\"bitrix.kraythospitalforfamily_by\",\"bitrix.kraythospitalforfamily_kz\",\"bitrix.kraythospitalforfamily_ua\",\"bitrix.kraythomedecoration_ru\",\"bitrix.kraythomedecoration_by\",\"bitrix.kraythomedecoration_kz\",\"bitrix.kraythomedecoration_ua\",\"bitrix.kraytfurniturettransformer_ru\",\"bitrix.kraytfurniturettransformer_by\",\"bitrix.kraytfurniturettransformer_kz\",\"bitrix.kraytfurniturettransformer_ua\",\"bitrix.kraytfloristics_ru\",\"bitrix.kraytfloristics_by\",\"bitrix.kraytfloristics_kz\",\"bitrix.kraytfloristics_ua\",\"bitrix.kraytfestiveevents_ru\",\"bitrix.kraytfestiveevents_by\",\"bitrix.kraytfestiveevents_kz\",\"bitrix.kraytfestiveevents_ua\",\"bitrix.kraytecogreen_ru\",\"bitrix.kraytecogreen_by\",\"bitrix.kraytecogreen_kz\",\"bitrix.kraytecogreen_ua\",\"bitrix.kraytdoorinstallation_ru\",\"bitrix.kraytdoorinstallation_by\",\"bitrix.kraytdoorinstallation_kz\",\"bitrix.kraytdoorinstallation_ua\",\"bitrix.kraytdoordesign_ru\",\"bitrix.kraytdoordesign_by\",\"bitrix.kraytdoordesign_kz\",\"bitrix.kraytdoordesign_ua\",\"bitrix.kraytdesigningpeopledisabilities_ru\",\"bitrix.kraytdesigningpeopledisabilities_by\",\"bitrix.kraytdesigningpeopledisabilities_kz\",\"bitrix.kraytdesigningpeopledisabilities_ua\",\"bitrix.delobotkindergarten_ru\",\"bitrix.kraytvideostudio_ru\",\"bitrix.kraytlegalservices_ru\",\"bitrix.kraytaccountingservices_ru\",\"bitrix.kraytbookannouncement_ru\",\"bitrix.kraytcharity_ru\",\"bitrix.kraytspa_ru\",\"bitrix.kraythandmadecosmetics_ru\",\"bitrix.delobotmusic_ru\",\"bitrix.kraythotelforanimals_ru\",\"bitrix.kraytcityguide_ru\",\"bitrix.delobotfoodblog_ru\",\"bitrix.delobotgamedeveloper_ru\",\"bitrix.delobotrenovationoffices_ru\",\"bitrix.delobotcourses_ru\",\"bitrix.delobotcityb__beautification_ru\",\"bitrix.delobotaidfund_ru\",\"bitrix.delobotnewsblog_ru\",\"bitrix.delobottransportservices_ru\",\"bitrix.delobotguide_ru\",\"bitrix.delobotnnturalcosmetic_ru\",\"bitrix.delobotboutiqueforsale_ru\",\"bitrix.delobotorganizationweddings_ru\",\"bitrix.delobotbeautyandrecreationcenter_ru\",\"bitrix.delobotwriter_ru\",\"bitrix.kraytotel\",\"bitrix.kraytigrovoyklub\",\"bitrix.kraytbazaotdykha\",\"bitrix.kraytkurspotiktoku\",\"bitrix.kraytkadrovoeagenstvo\",\"bitrix.kraytportfoliomodeli\",\"bitrix.kraytminecraftserver\",\"bitrix.kraytigrovayakompaniya\",\"bitrix.delobotuslugivideoproizvodstva\",\"bitrix.delobotportfolioaktera\",\"bitrix.delobotpub\",\"bitrix.delobotminihotel\",\"bitrix.delobotcamping\",\"bitrix.delobotcafe\",\"bitrix.delobotizgotovlenieduxov\",\"bitrix.delobotbuhgalterskoeobslujivanie\",\"bitrix.delobotarendanedvizimosti\",\"bitrix.delobotalternativnayaenergetika\",\"bitrix.delobotagentstvoponaimy\",\"bitrix.kraytpodarkikjenskomydny\",\"bitrix.kraytinstagramcontacts_ru1\",\"bitrix.kraytinstagramstock_ru1\",\"bitrix.kraytinstagramtarget_ru1\",\"bitrix.kraytkhimchistka\",\"bitrix.krayt_detskaya_odezhda_na_zakaz\",\"bitrix.krayt_retsepty_blyud\",\"bitrix.krayt_detskaya_mebel\",\"bitrix.krayt_biblioteka\",\"bitrix.krayt_pitomnik_rasteniy\",\"bitrix.delobot_lawyer\",\"bitrix.delobot_oformlenie_dverey\",\"bitrix.delobot_montaj_dverey\",\"bitrix.delobot_manicure_and_pedicure\",\"bitrix.delobot_printing_services\",\"bitrix.delobot_plants\",\"bitrix.delobot_nutritionist\",\"bitrix.delobot_designer_tableware\",\"bitrix.delobot_montaj_okon\",\"bitrix.delobot_oformlenie_okon\",\"bitrix.krayt_zhurnalist\",\"bitrix.krayt_tato_salon\",\"bitrix.krayt_massajist\",\"bitrix.krayt_consulting\",\"bitrix.krayt_elektromontazh\",\"bitrix.krayt_rezyume_spetsialista\",\"bitrix.kraytportfoliophotographer\",\"bitrix.kraytbeautystudio_en\",\"bitrix.kraytautomechanic_en\",\"bitrix.kraytequipmentrepair_en\",\"bitrix.delobot_furniture_for_children\",\"bitrix.delobot_architectural_projects\",\"bitrix.delobot_scientists_page\",\"bitrix.delobot_tatoo_studio\",\"bitrix.delobot_journalist_resume\",\"bitrix.delobot_leather_goods\",\"bitrix.delobot_dance_marathon\",\"bitrix.krayt_art_gallery\",\"bitrix.krayt_leather_products\",\"bitrix.krayt_scientific_researcher\",\"bitrix.krayt_bureau_of_architecture\",\"bitrix.krayt_jewelry_designer\",\"bitrix.krayt_food_photographer\",\"bitrix.krayt_acting_studio\",\"bitrix.krayt_farm\",\"bitrix.krayt_fashion_blog\",\"bitrix.krayt_birthday_cakes\",\"bitrix.krayt_plussize_fashion\",\"bitrix.krayt_diving\",\"bitrix.krayt_it_services\",\"bitrix.krayt_beauty_blog\",\"bitrix.krayt_aquarium\",\"bitrix.krayt_sport_blog\",\"bitrix.delobot_online_library\",\"bitrix.delobot_diving_center\",\"bitrix.delobot_designer_jewelry\",\"bitrix.delobot_nail_art_course\",\"bitrix.delobot_art_galery\",\"bitrix.delobot_fashion_for_everyone\",\"bitrix.delobot_handmade_chocolate\",\"bitrix.krayt_chocolate_shop\",\"bitrix.krayt_advertising_agency\",\"bitrix.krayt_asian_food\",\"bitrix.krayt_avtorskiy_master_klass\",\"bitrix.krayt_utilizatsiya_otkhodov\",\"bitrix.krayt_italyanskaya_kukhnya\",\"bitrix.krayt_kurs_po_nogtevomu_servisu\",\"bitrix.krayt_begovoy_klub\",\"bitrix.krayt_gornyy_turizm\",\"bitrix.krayt_biznes_prostranstvo\",\"bitrix.krayt_shkola_iskusstv\",\"bitrix.krayt_onlayn_intensiv_inostrannogo_yazyka\",\"bitrix.delobot_reklama_brenda\",\"bitrix.delobot_italyanskiy_restoran\",\"bitrix.delobot_modnaya_stranichka\",\"bitrix.delobot_fotografiya_edy\",\"bitrix.krayt_pishchevoe_proizvodstvo\",\"bitrix.krayt_appetitnyy_blog\",\"bitrix.krayt_uslugi_remonta\",\"bitrix.krayt_onlayn_kurs_kreativnogo_prodyusera\",\"bitrix.krayt_detskie_prazdniki\",\"bitrix.krayt_svetotekhnika\",\"bitrix.krayt_urbanistika\",\"bitrix.krayt_otdykh_na_prirode\",\"bitrix.krayt_sportivnye_ploshchadki\",\"bitrix.krayt_oborudovanie_dlya_turizma\",\"bitrix.krayt_meksikanskaya_kukhnya\",\"bitrix.delobot_sports_blog_20\",\"bitrix.delobot_aziatskie_blyuda\",\"bitrix.delobot_beauty_blog\",\"bitrix.delobot_meksikanskiy_restoran_2_0\",\"bitrix.delobot_urban_project\",\"bitrix.delobot_drawing_school\",\"bitrix.delobot_tourism\",\"bitrix.delobot_runnig_club\",\"bitrix.delobot_lighting_company\",\"bitrix.delobot_garbage_disposal\",\"bitrix.delobot_master_class\",\"bitrix.delobot_it_outsourcing\",\"bitrix.krayt_rent_car\",\"bitrix.krayt_aviation\",\"bitrix.krayt_street_sport_club\",\"bitrix.krayt_kofemaniya\",\"bitrix.krayt_corporate_events\",\"bitrix.krayt_cooking_school\",\"bitrix.krayt_blacksmith_craft\",\"bitrix.krayt_med_lab\",\"bitrix.krayt_music_studio\",\"bitrix.krayt_web_application_development\",\"bitrix.krayt_tennis_club\",\"bitrix.krayt_bank_services\",\"bitrix.krayt_smart_furniture\",\"bitrix.krayt_dom_pod_klyuch\",\"bitrix.krayt_uslugi_mediatora\",\"bitrix.krayt_child_club\",\"bitrix.delobot_custom_made_cakes\",\"bitrix.delobot_online_yoga_classes\",\"bitrix.krayt_pevitsa\",\"bitrix.krayt_ozelenenie_pomeshcheniy\",\"bitrix.krayt_internet_agentstvo\",\"bitrix.krayt_kinolog\",\"bitrix.krayt_poleznye_sneki\",\"bitrix.krayt_oformlenie_interera\",\"bitrix.delobot_tourist_equipment\",\"bitrix.delobot_creative_producer\",\"bitrix.delobot_aviation_services\",\"bitrix.delobot_blacksmith_services\",\"bitrix.delobot_coffee_subscription\",\"bitrix.delobot_construction_company\",\"bitrix.delobot_business_premises\",\"bitrix.delobot_pet_hotel\",\"bitrix.delobot_food_industry\",\"bitrix.delobot_cars_for_rent\",\"bitrix.krayt_klub_dlya_geymerov\",\"bitrix.krayt_relaks_uslugi\",\"bitrix.krayt_sportivnyy_inventar\",\"bitrix.krayt_universitet\",\"bitrix.delobot_uslugi_kinologa\",\"bitrix.delobot_business_training\",\"bitrix.krayt_vebinar\",\"bitrix.krayt_kurs_po_iskusstvennomu_intellektu\",\"bitrix.delobot_vypechka_na_zakaz\",\"bitrix.delobot_osennaya_rasprodazh\",\"bitrix.krayt_onlayn_shkola_dlya_detey\",\"bitrix.krayt_arkhitekturnaya_kompaniya\",\"bitrix.krayt_den_blagodareniya\",\"bitrix.krayt_uslugi_nyani\",\"bitrix.krayt_uslugi_repetitora\",\"bitrix.krayt_logoped\",\"bitrix.krayt_chyernaya_pyatnitsa\",\"bitrix.krayt_sladosti_na_rozhdestvo\",\"bitrix.krayt_podarki_na_novyy_god\",\"bitrix.delobot_laboratory\",\"bitrix.delobot_street_sports_grounds\",\"bitrix.delobot_about_webinar\",\"bitrix.krayt_dostavka_gruza\",\"bitrix.delobot_online_travel\",\"bitrix.delobot_youtube_channel\",\"bitrix.delobot_interior_design\",\"bitrix.krayt_kursy_po_interesam\",\"bitrix.krayt_zimnyaya_rasprodazha\",\"bitrix.krayt_tsifrovye_kommunikatsii\",\"bitrix.krayt_avtosalon\",\"bitrix.krayt_uslugi_stroitelnoy_kompanii\",\"bitrix.krayt_vysshee_uchebnoe_zavedenie\",\"bitrix.krayt_veterinar\",\"bitrix.krayt_akademiya_iskusstv\",\"bitrix.krayt_master_po_domu\",\"bitrix.krayt_onlayn_trenirovki\",\"bitrix.krayt_apart_otel\",\"bitrix.krayt_tsvety_i_bukety_na_zakaz\",\"bitrix.krayt_biznes_forum\",\"bitrix.krayt_uslugi_stomatologii\",\"bitrix.krayt_uslugi_avtoservisa\",\"bitrix.delobot_winter_sale\",\"bitrix.krayt_christmas_treats\",\"bitrix.krayt_eksperty_tochnogo_zemledeliya\",\"bitrix.krayt_servis_ukhoda_za_domom\",\"bitrix.delobot_repetitor\",\"bitrix.delobot_babysitter_for_children\",\"bitrix.delobot_speech_therapist_services\",\"bitrix.empty_template\",\"bitrix.krayt_gift_wrapping\",\"bitrix.delobot_fitness_clothes\",\"bitrix.delobot_bathroom_renovation\",\"bitrix.delobot_travel_arrangements\",\"bitrix.krayt_music_classes\",\"bitrix.delobot_klinika_dlya_mam_i_detok\",\"bitrix.delobot_bankovskie_uslugi\",\"bitrix.krayt_videoproizvodstvo\",\"bitrix.krayt_manikyur\",\"bitrix.krayt_meditsinskaya_pomoshch_onlayn\",\"bitrix.krayt_oblagorazhivanie_goroda\",\"bitrix.krayt_uslugi_barbershopa\",\"bitrix.krayt_taksi\",\"bitrix.delobot_optika\",\"bitrix.delobot_klinika_stomatologii\",\"bitrix.delobot_konditer\",\"bitrix.delobot_3d_print_services\",\"bitrix.delobot_uslugi_khimchistki\",\"bitrix.delobot_obuchenie_po_iskusstvennomu_intellektu\",\"bitrix.krayt_nutritsiologiya\",\"bitrix.krayt_salon_krasoty\",\"bitrix.krayt_uslugi_perevoda\",\"bitrix.krayt_landshaftnyy_dizayner\",\"bitrix.krayt_mebel_gotovaya_i_na_zakaz\",\"bitrix.krayt_uslugi_yurista\",\"bitrix.krayt_uslugi_po_bukhgalterii\",\"bitrix.krayt_yuvelir\",\"bitrix.krayt_stranichka_s_aktsiey\",\"bitrix.krayt_den_vsekh_vlyublennykh\",\"bitrix.krayt_stranichka_kontaktov\",\"bitrix.krayt_uslugi_massazhista\",\"bitrix.krayt_dostavka_edy_i_napitkov\",\"bitrix.krayt_podarki_na_zhenskiy_den\",\"bitrix.krayt_ekskursii\",\"bitrix.krayt_proizvodstvo_kosmetiki\",\"bitrix.krayt_logistika\",\"bitrix.krayt_fotograf\",\"bitrix.krayt_arenda_zhilya\",\"bitrix.krayt_kliningovye_uslugi\",\"bitrix.krayt_agentstvo_po_naymu\",\"bitrix.krayt_dukhi_na_zakaz\",\"bitrix.delobot_event_anounce\",\"bitrix.delobot_barbershop\",\"bitrix.delobot_italian_cafe\",\"bitrix.delobot_application_development\",\"bitrix.delobot_construction\",\"bitrix.delobot_uslugi_khudozhnika\",\"bitrix.krayt_prepodavatel\",\"bitrix.krayt_dveri_na_zakaz\",\"bitrix.krayt_kursy_po_gotovke\",\"bitrix.krayt_interernyy_dizayn\",\"bitrix.krayt_konsultatsii_po_zdorovyu\",\"bitrix.krayt_uslugi_atele\",\"bitrix.krayt_vizitka\",\"bitrix.krayt_remont_zhilya\",\"bitrix.krayt_voskhozhdenie_s_alpinistami\",\"bitrix.krayt_vesennyaya_rasprodazha\",\"bitrix.krayt_svadebnyy_salon\",\"bitrix.kraytlawyer_en\",\"bitrix.kraytinsurancecompany_en\",\"bitrix.krayt_interior_designer\",\"bitrix.delobot_bank\",\"bitrix.delobot_custom_made_clothes\",\"bitrix.delobot_telemedicine\",\"bitrix.krayt_spetsialist_po_nedvizhimosti\",\"bitrix.krayt_sportzal\",\"bitrix.krayt_mebel\",\"bitrix.krayt_tvorcheskie_kursy\",\"bitrix.krayt_kosmetologiya\",\"bitrix.krayt_remont_bytovoy_tekhniki\",\"bitrix.delobot_stylist_services\",\"bitrix.delobot_holidays_for_children\",\"bitrix.delobot_logistics_services\",\"bitrix.krayt_remont_avto\",\"bitrix.krayt_torgovoe_oborudovanie\",\"bitrix.krayt_rasteniya_i_zhivye_izgorodi\",\"bitrix.krayt_organizatsiya_meropriyatiy\",\"bitrix.krayt_o_psikhologe\",\"bitrix.krayt_prozhivanie_v_otele\",\"bitrix.krayt_dental_clinic\",\"bitrix.krayt_barbershop\",\"bitrix.krayt_personal_stylist\",\"bitrix.delobot_muzykalnaya_shkola\",\"bitrix.delobot_parfumer_services\",\"bitrix.delobot_uslugi_po_upakovke_podarkov\",\"bitrix.delobot_insurance\",\"bitrix.delobot_zabota_o_zhivotnyh\",\"bitrix.delobot_landscape_studio\",\"bitrix.krayt_dizayn_saytov\",\"bitrix.krayt_arenda_tekhniki\",\"bitrix.krayt_kursy_dlya_sotrudnikov\",\"bitrix.krayt_konditsionery_v_dom\",\"bitrix.krayt_promyshlennost\",\"bitrix.krayt_tantsy\",\"bitrix.krayt_pechat_3d_figur\",\"bitrix.krayt_o_biblioteke\",\"bitrix.krayt_vyrashchivanie_zeleni\",\"bitrix.krayt_okhrannye_sistemy\",\"bitrix.krayt_zvukozapis\",\"bitrix.krayt_rasprodazha\",\"bitrix.form_template_with_product_galery_for_social_media\",\"bitrix.form_template_with_offer\",\"bitrix.facebook_form_template_with_offer\",\"bitrix.facebook_form_template_with_product_images\",\"bitrix.facebook_form_template_with_extra_communication_channels\",\"bitrix.shablon_dlya_formy_v_vk_s_kartinkami_tovarov\",\"bitrix.shablon_dlya_formy_v_vk_s_kanalami_svyazi\",\"bitrix.shablon_dlya_formy_v_vk_s_promo_aktsiey\",\"bitrix.form_template_with_offer_for_social_media\",\"bitrix.form_template_with_contacts_for_social_media\",\"bitrix.form_template_with_product_images_for_social_media\",\"bitrix.form_template_with_communication_channels_for_social_media\",\"bitrix.krayt_vypechka\",\"bitrix.krayt_it_spetsialisty\",\"bitrix.krayt_modnyy_konsultant\",\"bitrix.krayt_agentstvo_po_turizmu\",\"bitrix.krayt_uslugi_vizazhista\",\"bitrix.krayt_fotostudiya\",\"bitrix.krayt_vyazanie\",\"bitrix.krayt_blagotvoritelnaya_organizatsiya\",\"bitrix.krayt_uslugi_illyustratora\",\"bitrix.delobot_intensiv_po_inostrannomu_yazyku\",\"bitrix.delobot_uslugi_po_remontu_tekhniki\",\"bitrix.delobot_stranichka_mobilnogo_prilozheniya\",\"bitrix.delobot_kreativnaya_mebel\",\"bitrix.delobot_klub_tsifrovykh_igr\",\"bitrix.delobot_dizayn_dlya_doma\",\"bitrix.krayt_studiya_spa\",\"bitrix.krayt_proekt_po_utepleniyu_doma\",\"bitrix.krayt_klining_kompaniya\",\"bitrix.krayt_arkhitektor\",\"bitrix.krayt_sladosti_na_zakaz\",\"bitrix.krayt_fotografiya\",\"bitrix.krayt_poligraficheskie_uslugi\",\"bitrix.krayt_manikyur_i_pedikyur\",\"bitrix.krayt_vyazanie_2\",\"bitrix.krayt_kofe\",\"bitrix.krayt_obuchenie_muzyke\",\"bitrix.krayt_novosti\",\"bitrix.delobot_spetsialist_po_tekstam\",\"bitrix.delobot_uslugi_elektrika\",\"bitrix.delobot_otslezhivanie_zdorovya\",\"bitrix.delobot_studiya_dlya_aktyerov\",\"bitrix.delobot_uslugi_kosmetologa\",\"bitrix.delobot_kottedzhnyy_posyelok\",\"bitrix.delobot_izdeliya_ot_yuvelira\",\"bitrix.krayt_montazh_panelnykh_domov\",\"bitrix.krayt_masterskaya_tekstilya\",\"bitrix.krayt_razrabotka_igr\",\"bitrix.krayt_organizatsiya_prazdnika\",\"bitrix.krayt_stilnaya_odezhda_na_zakaz\",\"bitrix.krayt_posuda_ot_dizaynera\",\"bitrix.krayt_pomeshchenie_dlya_kovorkinga\",\"bitrix.krayt_shokoladnaya_masterskaya\",\"bitrix.krayt_podbor_personala\",\"bitrix.krayt_uslugi_po_massazhu\",\"bitrix.krayt_prirodnyy_otdykh\",\"bitrix.krayt_agentstvo_po_reklame\",\"bitrix.krayt_stomatolog\",\"bitrix.krayt_povar_konditer\",\"bitrix.krayt_uslugi_po_strakhovaniyu\",\"bitrix.krayt_rasprodazha_osenyu\",\"bitrix.krayt_kukhni_na_zakaz\",\"bitrix.krayt_avtorskie_puteshestviya\",\"bitrix.krayt_remont_gadzhetov\",\"bitrix.krayt_proizvodstvo_produktsii\",\"bitrix.krayt_mezhdunarodnaya_biznes_konferentsiya\",\"bitrix.krayt_studiya_gibkosti\",\"bitrix.krayt_biznes_konsultatsii\",\"bitrix.krayt_brendingovoe_agentstvo\",\"bitrix.krayt_thanksgiving_day\",\"bitrix.krayt_architectural_company\",\"bitrix.krayt_online_school_for_children\",\"bitrix.krayt_ai_course\",\"bitrix.krayt_it_services_2\",\"bitrix.krayt_accounting_services\",\"bitrix.krayt_gaming_club\",\"bitrix.krayt_architectural_company_ru\",\"bitrix.delobot_beauty_blog_en\",\"bitrix.delobot_sladkoe_na_halloween\",\"bitrix.krayt_biznes_ru\",\"bitrix.krayt_business_en\",\"bitrix.krayt_vebinar_ru\",\"bitrix.delobot_music_band\",\"bitrix.delobot_courses\",\"bitrix.delobot_tours\",\"bitrix.krayt_uslugi_okhrany\",\"bitrix.krayt_agentstvo_nedvizhimosti\",\"bitrix.krayt_didzhital_illyustrator\",\"bitrix.krayt_landshaftnyy_dizayn\",\"bitrix.krayt_ochki_i_linzy_na_zakaz\",\"bitrix.krayt_organizatsiya_svadeb\",\"bitrix.krayt_pitanie_s_dietologom\",\"bitrix.krayt_uslugi_logistiki\",\"bitrix.krayt_uslugi_pekarya\",\"bitrix.krayt_uslugi_videostudii\",\"bitrix.krayt_home_construction_company\",\"bitrix.delobot_natural_cosmetics\",\"bitrix.krayt_real_estate_agent\",\"bitrix.krayt_spa_salon\",\"bitrix.krayt_yoga\",\"bitrix.krayt_uslugi_po_makiyajy\",\"bitrix.krayt_uslugi_psikhoterapevta\",\"bitrix.krayt_uslugi_advokat\",\"bitrix.krayt_uchitel_matematiki\",\"bitrix.krayt_portfolio_aktrisy\",\"bitrix.krayt_online_shkola_dlya_detey\",\"bitrix.krayt_odezhda_dlya_fitnesa\",\"bitrix.krayt_obuchenie_sotrudnikov\",\"bitrix.krayt_nabory_pravilnogo_pitaniya\",\"bitrix.krayt_kurs_po_ii\",\"bitrix.krayt_kontsert_gruppy\",\"bitrix.krayt_kokteylnyy_bar\",\"bitrix.krayt_khudozhnik\",\"bitrix.delobot_arenduemaya_tekhnika\",\"bitrix.delobot_franshiza_sportivnykh_zalov\",\"bitrix.delobot_massazh\",\"bitrix.delobot_oborudovanie_dlya_torgovli\",\"bitrix.delobot_remontnye_raboty\",\"bitrix.delobot_uslugi_po_remontu_avto\",\"bitrix.delobot_yuridicheskaya_kompaniya\",\"bitrix.delobot_yuridicheskiy_universitet\",\"bitrix.krayt_kiberponedelnik\",\"bitrix.krayt_koncert_gruppy\",\"bitrix.krayt_kurs_po_neyrosetyam\",\"bitrix.krayt_arenda_nedvizhimosti\",\"bitrix.krayt_nyanya_dlya_detok\",\"bitrix.krayt_uslugi_bukhgalterii\",\"bitrix.krayt_ozelenenie_goroda\",\"bitrix.krayt_proektirovanie_domov\",\"bitrix.krayt_ustanovka_konditsionerov\",\"bitrix.krayt_posuda\",\"bitrix.krayt_furniture_manufacturer\",\"bitrix.krayt_logistics\",\"bitrix.krayt_renovations\",\"bitrix.krayt_travel_agency\",\"bitrix.krayt_electrical_services\",\"bitrix.krayt_home_design_and_construction\",\"bitrix.krayt_legal_services\",\"bitrix.delobot_bathroom_renovations\",\"bitrix.delobot_it_services\",\"bitrix.delobot_konsaltingovaya_kompaniya\",\"bitrix.delobot_branding\",\"bitrix.delobot_mebel_dlya_rabochego_prostranstva\",\"bitrix.delobot_stroitelstvo_zhilya\",\"bitrix.delobot_zubnoy_vrach\",\"bitrix.delobot_furnituremanufacturing_en\",\"bitrix.krayt_university_en\",\"bitrix.delobot_newsblog_en\",\"bitrix.krayt_mobileapp_en\",\"bitrix.krayt_hotel_en\",\"bitrix.krayt_realestate_en\"]',NULL,NULL),('rest','entity_iblock_type','rest_entity',NULL,NULL),('rest','server_path','/rest',NULL,NULL),('search','dbnode_id','N',NULL,NULL),('search','dbnode_status','ok',NULL,NULL),('search','version','v2.0',NULL,NULL),('security','ipcheck_disable_file','/bitrix/modules/ipcheck_disable_8fe034534ae0ceb2a81b225798f730da',NULL,NULL),('security','redirect_sid','vg902emia2kvj1cyiv05tqsafy40x232',NULL,NULL),('socialservices','allow_encrypted_tokens','1',NULL,NULL),('socialservices','bitrix24net_domain','http://module2.dvl.to',NULL,NULL),('socialservices','bitrix24net_id','ext.65f094755e5ea2.84429573',NULL,NULL),('socialservices','bitrix24net_secret','1EWFySpilebndWxc6oCCVJET1HLDmqFWMmHwkriTgVZ21rAlVo',NULL,NULL),('socialservices','google_api_key','AIzaSyA7puwZwGDJgOjcAWsFsY7hQcrioC13A18',NULL,NULL),('socialservices','google_appid','798910771106.apps.googleusercontent.com',NULL,NULL),('vote','VOTE_COMPATIBLE_OLD_TEMPLATE','N',NULL,NULL),('vote','VOTE_DIR','',NULL,NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option_site`
--

DROP TABLE IF EXISTS `b_option_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  `VALUE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option_site`
--

LOCK TABLES `b_option_site` WRITE;
/*!40000 ALTER TABLE `b_option_site` DISABLE KEYS */;
INSERT INTO `b_option_site` VALUES ('forum','FILTER_DICT_T','en','4'),('forum','FILTER_DICT_T','ru','2'),('forum','FILTER_DICT_W','en','3'),('forum','FILTER_DICT_W','ru','1');
/*!40000 ALTER TABLE `b_option_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cache`
--

DROP TABLE IF EXISTS `b_perf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) DEFAULT NULL,
  `MODULE_NAME` text DEFAULT NULL,
  `COMPONENT_NAME` text DEFAULT NULL,
  `BASE_DIR` text DEFAULT NULL,
  `INIT_DIR` text DEFAULT NULL,
  `FILE_NAME` text DEFAULT NULL,
  `FILE_PATH` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cache`
--

LOCK TABLES `b_perf_cache` WRITE;
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cluster`
--

DROP TABLE IF EXISTS `b_perf_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cluster`
--

LOCK TABLES `b_perf_cluster` WRITE;
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_component`
--

DROP TABLE IF EXISTS `b_perf_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_component`
--

LOCK TABLES `b_perf_component` WRITE;
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_error`
--

DROP TABLE IF EXISTS `b_perf_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text DEFAULT NULL,
  `ERRFILE` text DEFAULT NULL,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_error`
--

LOCK TABLES `b_perf_error` WRITE;
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_history`
--

DROP TABLE IF EXISTS `b_perf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_history`
--

LOCK TABLES `b_perf_history` WRITE;
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_hit`
--

DROP TABLE IF EXISTS `b_perf_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) DEFAULT NULL,
  `SERVER_NAME` varchar(50) DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text DEFAULT NULL,
  `REQUEST_URI` text DEFAULT NULL,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_hit`
--

LOCK TABLES `b_perf_hit` WRITE;
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_ban`
--

DROP TABLE IF EXISTS `b_perf_index_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) DEFAULT NULL,
  `TABLE_NAME` varchar(50) DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_ban`
--

LOCK TABLES `b_perf_index_ban` WRITE;
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_complete`
--

DROP TABLE IF EXISTS `b_perf_index_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) DEFAULT NULL,
  `TABLE_NAME` varchar(50) DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) DEFAULT NULL,
  `INDEX_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_complete`
--

LOCK TABLES `b_perf_index_complete` WRITE;
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest`
--

DROP TABLE IF EXISTS `b_perf_index_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) DEFAULT NULL,
  `SQL_TEXT` text DEFAULT NULL,
  `SQL_EXPLAIN` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest`
--

LOCK TABLES `b_perf_index_suggest` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest_sql`
--

DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest_sql`
--

LOCK TABLES `b_perf_index_suggest_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql`
--

DROP TABLE IF EXISTS `b_perf_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text DEFAULT NULL,
  `COMPONENT_NAME` text DEFAULT NULL,
  `SQL_TEXT` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql`
--

LOCK TABLES `b_perf_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql_backtrace`
--

DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql_backtrace`
--

LOCK TABLES `b_perf_sql_backtrace` WRITE;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_column_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) DEFAULT NULL,
  `COLUMN_NAME` varchar(50) DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_column_stat`
--

LOCK TABLES `b_perf_tab_column_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_stat`
--

LOCK TABLES `b_perf_tab_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_test`
--

DROP TABLE IF EXISTS `b_perf_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_test`
--

LOCK TABLES `b_perf_test` WRITE;
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting`
--

DROP TABLE IF EXISTS `b_posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `STATUS` char(1) NOT NULL DEFAULT 'D',
  `VERSION` char(1) DEFAULT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `SENT_BCC` mediumtext DEFAULT NULL,
  `FROM_FIELD` varchar(255) NOT NULL,
  `TO_FIELD` varchar(255) DEFAULT NULL,
  `BCC_FIELD` mediumtext DEFAULT NULL,
  `EMAIL_FILTER` varchar(255) DEFAULT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `BODY_TYPE` varchar(4) NOT NULL DEFAULT 'text',
  `BODY` mediumtext NOT NULL,
  `DIRECT_SEND` char(1) NOT NULL DEFAULT 'N',
  `CHARSET` varchar(50) DEFAULT NULL,
  `MSG_CHARSET` varchar(255) DEFAULT NULL,
  `SUBSCR_FORMAT` varchar(4) DEFAULT NULL,
  `ERROR_EMAIL` mediumtext DEFAULT NULL,
  `AUTO_SEND_TIME` datetime DEFAULT NULL,
  `BCC_TO_SEND` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting`
--

LOCK TABLES `b_posting` WRITE;
/*!40000 ALTER TABLE `b_posting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_email`
--

DROP TABLE IF EXISTS `b_posting_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_email` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSTING_ID` int(11) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `SUBSCRIPTION_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_posting_email_status` (`POSTING_ID`,`STATUS`),
  KEY `ix_posting_email_email` (`POSTING_ID`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_email`
--

LOCK TABLES `b_posting_email` WRITE;
/*!40000 ALTER TABLE `b_posting_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_file`
--

DROP TABLE IF EXISTS `b_posting_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_file` (
  `POSTING_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_POSTING_POSTING_FILE` (`POSTING_ID`,`FILE_ID`),
  KEY `FILE_ID` (`FILE_ID`),
  CONSTRAINT `b_posting_file_ibfk_1` FOREIGN KEY (`POSTING_ID`) REFERENCES `b_posting` (`ID`),
  CONSTRAINT `b_posting_file_ibfk_2` FOREIGN KEY (`FILE_ID`) REFERENCES `b_file` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_file`
--

LOCK TABLES `b_posting_file` WRITE;
/*!40000 ALTER TABLE `b_posting_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_group`
--

DROP TABLE IF EXISTS `b_posting_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_group` (
  `POSTING_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_POSTING_POSTING_GROUP` (`POSTING_ID`,`GROUP_ID`),
  KEY `GROUP_ID` (`GROUP_ID`),
  CONSTRAINT `b_posting_group_ibfk_1` FOREIGN KEY (`POSTING_ID`) REFERENCES `b_posting` (`ID`),
  CONSTRAINT `b_posting_group_ibfk_2` FOREIGN KEY (`GROUP_ID`) REFERENCES `b_group` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_group`
--

LOCK TABLES `b_posting_group` WRITE;
/*!40000 ALTER TABLE `b_posting_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_rubric`
--

DROP TABLE IF EXISTS `b_posting_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_rubric` (
  `POSTING_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_POSTING_POSTING_RUBRIC` (`POSTING_ID`,`LIST_RUBRIC_ID`),
  KEY `LIST_RUBRIC_ID` (`LIST_RUBRIC_ID`),
  CONSTRAINT `b_posting_rubric_ibfk_1` FOREIGN KEY (`POSTING_ID`) REFERENCES `b_posting` (`ID`),
  CONSTRAINT `b_posting_rubric_ibfk_2` FOREIGN KEY (`LIST_RUBRIC_ID`) REFERENCES `b_list_rubric` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_rubric`
--

LOCK TABLES `b_posting_rubric` WRITE;
/*!40000 ALTER TABLE `b_posting_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating`
--

DROP TABLE IF EXISTS `b_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL,
  `NAME` varchar(512) NOT NULL,
  `ENTITY_ID` varchar(50) NOT NULL,
  `CALCULATION_METHOD` varchar(3) NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) DEFAULT 'N',
  `AUTHORITY` char(1) DEFAULT 'N',
  `CALCULATED` char(1) NOT NULL DEFAULT 'N',
  `CONFIGS` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating`
--

LOCK TABLES `b_rating` WRITE;
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
INSERT INTO `b_rating` VALUES (1,'N','Рейтинг','USER','SUM','2024-03-12 17:44:08',NULL,NULL,'Y','N','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),(2,'N','Авторитет','USER','SUM','2024-03-12 17:44:08',NULL,NULL,'Y','Y','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component`
--

DROP TABLE IF EXISTS `b_rating_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) NOT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `RATING_TYPE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `COMPLEX_NAME` varchar(200) NOT NULL,
  `CLASS` varchar(255) NOT NULL,
  `CALC_METHOD` varchar(255) NOT NULL,
  `EXCEPTION_METHOD` varchar(255) DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component`
--

LOCK TABLES `b_rating_component` WRITE;
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component_results`
--

DROP TABLE IF EXISTS `b_rating_component_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `RATING_TYPE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `COMPLEX_NAME` varchar(200) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component_results`
--

LOCK TABLES `b_rating_component_results` WRITE;
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_prepare`
--

DROP TABLE IF EXISTS `b_rating_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_prepare`
--

LOCK TABLES `b_rating_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_results`
--

DROP TABLE IF EXISTS `b_rating_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT 0,
  `PREVIOUS_POSITION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_results`
--

LOCK TABLES `b_rating_results` WRITE;
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule`
--

DROP TABLE IF EXISTS `b_rating_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'N',
  `NAME` varchar(256) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `CONDITION_NAME` varchar(200) NOT NULL,
  `CONDITION_MODULE` varchar(50) DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) NOT NULL,
  `CONDITION_METHOD` varchar(255) NOT NULL,
  `CONDITION_CONFIG` text DEFAULT NULL,
  `ACTION_NAME` varchar(200) NOT NULL,
  `ACTION_CONFIG` text DEFAULT NULL,
  `ACTIVATE` char(1) NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) NOT NULL,
  `ACTIVATE_METHOD` varchar(255) NOT NULL,
  `DEACTIVATE` char(1) NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule`
--

LOCK TABLES `b_rating_rule` WRITE;
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
INSERT INTO `b_rating_rule` VALUES (1,'N','Добавление в группу пользователей, имеющих право голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2024-03-12 17:44:08','2024-03-12 17:44:08',NULL),(2,'N','Удаление из группы пользователей, не имеющих права голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2024-03-12 17:44:08','2024-03-12 17:44:08',NULL),(3,'N','Добавление в группу пользователей, имеющих право голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2024-03-12 17:44:08','2024-03-12 17:44:08',NULL),(4,'N','Удаление из группы пользователей, не имеющих права голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2024-03-12 17:44:08','2024-03-12 17:44:08',NULL),(5,'Y','Автоматическое голосование за авторитет пользователя','USER','VOTE',NULL,'CRatingRulesMain','voteCheck','a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}','empty','a:0:{}','N','empty','empty','N','empty ','empty','2024-03-12 17:44:08','2024-03-12 17:44:08',NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule_vetting`
--

DROP TABLE IF EXISTS `b_rating_rule_vetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) NOT NULL DEFAULT 'N',
  `APPLIED` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule_vetting`
--

LOCK TABLES `b_rating_rule_vetting` WRITE;
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_user`
--

DROP TABLE IF EXISTS `b_rating_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT 0.0000,
  `VOTE_WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `VOTE_COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_user`
--

LOCK TABLES `b_rating_user` WRITE;
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
INSERT INTO `b_rating_user` VALUES (1,2,1,3.0000,30.0000,13);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote`
--

DROP TABLE IF EXISTS `b_rating_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) NOT NULL,
  `REACTION` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_10` (`USER_ID`,`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote`
--

LOCK TABLES `b_rating_vote` WRITE;
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote_group`
--

DROP TABLE IF EXISTS `b_rating_vote_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote_group`
--

LOCK TABLES `b_rating_vote_group` WRITE;
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
INSERT INTO `b_rating_vote_group` VALUES (5,1,'A'),(1,1,'R'),(3,1,'R'),(2,3,'R'),(4,3,'R'),(6,4,'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting`
--

DROP TABLE IF EXISTS `b_rating_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting`
--

LOCK TABLES `b_rating_voting` WRITE;
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_prepare`
--

DROP TABLE IF EXISTS `b_rating_voting_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_prepare`
--

LOCK TABLES `b_rating_voting_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_reaction`
--

DROP TABLE IF EXISTS `b_rating_voting_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_reaction`
--

LOCK TABLES `b_rating_voting_reaction` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_weight`
--

DROP TABLE IF EXISTS `b_rating_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_weight`
--

LOCK TABLES `b_rating_weight` WRITE;
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
INSERT INTO `b_rating_weight` VALUES (1,-1000000.0000,1000000.0000,1.0000,10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap`
--

DROP TABLE IF EXISTS `b_rest_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `TITLE` varchar(255) DEFAULT '',
  `COMMENT` varchar(255) DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap`
--

LOCK TABLES `b_rest_ap` WRITE;
/*!40000 ALTER TABLE `b_rest_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap_permission`
--

DROP TABLE IF EXISTS `b_rest_ap_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap_permission`
--

LOCK TABLES `b_rest_ap_permission` WRITE;
/*!40000 ALTER TABLE `b_rest_ap_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app`
--

DROP TABLE IF EXISTS `b_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) NOT NULL,
  `CODE` varchar(128) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) NOT NULL DEFAULT 'N',
  `URL` varchar(1000) NOT NULL,
  `URL_DEMO` varchar(1000) DEFAULT NULL,
  `URL_INSTALL` varchar(1000) DEFAULT NULL,
  `VERSION` varchar(4) DEFAULT '1',
  `SCOPE` varchar(2000) NOT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) DEFAULT 'N',
  `SHARED_KEY` varchar(32) DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) DEFAULT NULL,
  `APP_NAME` varchar(1000) DEFAULT NULL,
  `ACCESS` varchar(2000) DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) DEFAULT '',
  `MOBILE` char(1) DEFAULT 'N',
  `USER_INSTALL` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app`
--

LOCK TABLES `b_rest_app` WRITE;
/*!40000 ALTER TABLE `b_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_lang`
--

DROP TABLE IF EXISTS `b_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `MENU_NAME` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_lang`
--

LOCK TABLES `b_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_log`
--

DROP TABLE IF EXISTS `b_rest_app_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_app_log1` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_log`
--

LOCK TABLES `b_rest_app_log` WRITE;
/*!40000 ALTER TABLE `b_rest_app_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_configuration_storage`
--

DROP TABLE IF EXISTS `b_rest_configuration_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_configuration_storage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CONTEXT` varchar(128) NOT NULL,
  `CODE` varchar(32) NOT NULL,
  `DATA` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_configuration_storage`
--

LOCK TABLES `b_rest_configuration_storage` WRITE;
/*!40000 ALTER TABLE `b_rest_configuration_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_configuration_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event`
--

DROP TABLE IF EXISTS `b_rest_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) NOT NULL,
  `EVENT_HANDLER` varchar(255) NOT NULL,
  `USER_ID` int(11) DEFAULT 0,
  `TITLE` varchar(255) DEFAULT '',
  `COMMENT` varchar(255) DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) DEFAULT '',
  `CONNECTOR_ID` varchar(255) DEFAULT '',
  `INTEGRATION_ID` int(11) DEFAULT NULL,
  `OPTIONS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event`
--

LOCK TABLES `b_rest_event` WRITE;
/*!40000 ALTER TABLE `b_rest_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event_offline`
--

DROP TABLE IF EXISTS `b_rest_event_offline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `MESSAGE_ID` varchar(100) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) NOT NULL,
  `EVENT_DATA` text DEFAULT NULL,
  `EVENT_ADDITIONAL` text DEFAULT NULL,
  `PROCESS_ID` varchar(255) DEFAULT '',
  `CONNECTOR_ID` varchar(255) DEFAULT '',
  `ERROR` int(3) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`),
  KEY `ix_b_rest_event_offline3` (`APP_ID`,`CONNECTOR_ID`),
  KEY `ix_b_rest_event_offline4` (`PROCESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event_offline`
--

LOCK TABLES `b_rest_event_offline` WRITE;
/*!40000 ALTER TABLE `b_rest_event_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event_offline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_integration`
--

DROP TABLE IF EXISTS `b_rest_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_integration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `ELEMENT_CODE` varchar(256) NOT NULL,
  `TITLE` varchar(256) NOT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `SCOPE` text DEFAULT NULL,
  `QUERY` text DEFAULT NULL,
  `OUTGOING_EVENTS` text DEFAULT NULL,
  `OUTGOING_NEEDED` char(1) DEFAULT NULL,
  `OUTGOING_HANDLER_URL` varchar(2048) DEFAULT NULL,
  `WIDGET_NEEDED` char(1) DEFAULT NULL,
  `WIDGET_HANDLER_URL` varchar(2048) DEFAULT NULL,
  `WIDGET_LIST` text DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) DEFAULT NULL,
  `APPLICATION_NEEDED` char(1) DEFAULT NULL,
  `APPLICATION_ONLY_API` char(1) DEFAULT NULL,
  `BOT_ID` int(11) DEFAULT NULL,
  `BOT_HANDLER_URL` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_integration`
--

LOCK TABLES `b_rest_integration` WRITE;
/*!40000 ALTER TABLE `b_rest_integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_log`
--

DROP TABLE IF EXISTS `b_rest_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `CLIENT_ID` varchar(45) DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) DEFAULT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) DEFAULT NULL,
  `REQUEST_URI` varchar(255) DEFAULT NULL,
  `REQUEST_AUTH` text DEFAULT NULL,
  `REQUEST_DATA` text DEFAULT NULL,
  `RESPONSE_STATUS` varchar(20) DEFAULT NULL,
  `RESPONSE_DATA` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_log`
--

LOCK TABLES `b_rest_log` WRITE;
/*!40000 ALTER TABLE `b_rest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_owner_entity`
--

DROP TABLE IF EXISTS `b_rest_owner_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_owner_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNER_TYPE` char(1) NOT NULL,
  `OWNER` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(32) NOT NULL,
  `ENTITY` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_rest_owner_entity` (`ENTITY_TYPE`,`ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_owner_entity`
--

LOCK TABLES `b_rest_owner_entity` WRITE;
/*!40000 ALTER TABLE `b_rest_owner_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_owner_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement`
--

DROP TABLE IF EXISTS `b_rest_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `USER_ID` int(18) DEFAULT 0,
  `PLACEMENT` varchar(255) NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) NOT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT '',
  `GROUP_NAME` varchar(255) DEFAULT '',
  `COMMENT` varchar(255) DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) DEFAULT NULL,
  `OPTIONS` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100)),
  KEY `ix_b_rest_placement4` (`PLACEMENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement`
--

LOCK TABLES `b_rest_placement` WRITE;
/*!40000 ALTER TABLE `b_rest_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement_lang`
--

DROP TABLE IF EXISTS `b_rest_placement_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_placement_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLACEMENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` varchar(2) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GROUP_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `b_rest_placement_lang_unique` (`PLACEMENT_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement_lang`
--

LOCK TABLES `b_rest_placement_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_placement_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat`
--

DROP TABLE IF EXISTS `b_rest_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT 0,
  `HOUR_1` int(11) NOT NULL DEFAULT 0,
  `HOUR_2` int(11) NOT NULL DEFAULT 0,
  `HOUR_3` int(11) NOT NULL DEFAULT 0,
  `HOUR_4` int(11) NOT NULL DEFAULT 0,
  `HOUR_5` int(11) NOT NULL DEFAULT 0,
  `HOUR_6` int(11) NOT NULL DEFAULT 0,
  `HOUR_7` int(11) NOT NULL DEFAULT 0,
  `HOUR_8` int(11) NOT NULL DEFAULT 0,
  `HOUR_9` int(11) NOT NULL DEFAULT 0,
  `HOUR_10` int(11) NOT NULL DEFAULT 0,
  `HOUR_11` int(11) NOT NULL DEFAULT 0,
  `HOUR_12` int(11) NOT NULL DEFAULT 0,
  `HOUR_13` int(11) NOT NULL DEFAULT 0,
  `HOUR_14` int(11) NOT NULL DEFAULT 0,
  `HOUR_15` int(11) NOT NULL DEFAULT 0,
  `HOUR_16` int(11) NOT NULL DEFAULT 0,
  `HOUR_17` int(11) NOT NULL DEFAULT 0,
  `HOUR_18` int(11) NOT NULL DEFAULT 0,
  `HOUR_19` int(11) NOT NULL DEFAULT 0,
  `HOUR_20` int(11) NOT NULL DEFAULT 0,
  `HOUR_21` int(11) NOT NULL DEFAULT 0,
  `HOUR_22` int(11) NOT NULL DEFAULT 0,
  `HOUR_23` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat`
--

LOCK TABLES `b_rest_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_app`
--

DROP TABLE IF EXISTS `b_rest_stat_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat_app` (
  `APP_ID` int(11) NOT NULL,
  `APP_CODE` varchar(128) NOT NULL,
  PRIMARY KEY (`APP_ID`),
  KEY `ix_b_rest_stat_app_code` (`APP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_app`
--

LOCK TABLES `b_rest_stat_app` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_method`
--

DROP TABLE IF EXISTS `b_rest_stat_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `METHOD_TYPE` char(1) DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_method`
--

LOCK TABLES `b_rest_stat_method` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_usage_entity`
--

DROP TABLE IF EXISTS `b_rest_usage_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_usage_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` char(1) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_CODE` varchar(255) DEFAULT NULL,
  `SUB_ENTITY_TYPE` char(1) DEFAULT NULL,
  `SUB_ENTITY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_rest_usage_entity` (`ENTITY_TYPE`,`ENTITY_ID`,`SUB_ENTITY_TYPE`,`SUB_ENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_usage_entity`
--

LOCK TABLES `b_rest_usage_entity` WRITE;
/*!40000 ALTER TABLE `b_rest_usage_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_usage_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_usage_stat`
--

DROP TABLE IF EXISTS `b_rest_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_usage_stat` (
  `STAT_DATE` date NOT NULL,
  `ENTITY_ID` int(11) NOT NULL DEFAULT 0,
  `IS_SENT` char(1) NOT NULL DEFAULT 'N',
  `HOUR_0` int(11) NOT NULL DEFAULT 0,
  `HOUR_1` int(11) NOT NULL DEFAULT 0,
  `HOUR_2` int(11) NOT NULL DEFAULT 0,
  `HOUR_3` int(11) NOT NULL DEFAULT 0,
  `HOUR_4` int(11) NOT NULL DEFAULT 0,
  `HOUR_5` int(11) NOT NULL DEFAULT 0,
  `HOUR_6` int(11) NOT NULL DEFAULT 0,
  `HOUR_7` int(11) NOT NULL DEFAULT 0,
  `HOUR_8` int(11) NOT NULL DEFAULT 0,
  `HOUR_9` int(11) NOT NULL DEFAULT 0,
  `HOUR_10` int(11) NOT NULL DEFAULT 0,
  `HOUR_11` int(11) NOT NULL DEFAULT 0,
  `HOUR_12` int(11) NOT NULL DEFAULT 0,
  `HOUR_13` int(11) NOT NULL DEFAULT 0,
  `HOUR_14` int(11) NOT NULL DEFAULT 0,
  `HOUR_15` int(11) NOT NULL DEFAULT 0,
  `HOUR_16` int(11) NOT NULL DEFAULT 0,
  `HOUR_17` int(11) NOT NULL DEFAULT 0,
  `HOUR_18` int(11) NOT NULL DEFAULT 0,
  `HOUR_19` int(11) NOT NULL DEFAULT 0,
  `HOUR_20` int(11) NOT NULL DEFAULT 0,
  `HOUR_21` int(11) NOT NULL DEFAULT 0,
  `HOUR_22` int(11) NOT NULL DEFAULT 0,
  `HOUR_23` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`STAT_DATE`,`ENTITY_ID`),
  KEY `ix_b_rest_usage` (`ENTITY_ID`,`STAT_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_usage_stat`
--

LOCK TABLES `b_rest_usage_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_usage_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content`
--

DROP TABLE IF EXISTS `b_search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `ITEM_ID` varchar(255) NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT 0,
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) DEFAULT NULL,
  `ENTITY_ID` varchar(255) DEFAULT NULL,
  `URL` text DEFAULT NULL,
  `TITLE` text DEFAULT NULL,
  `BODY` longtext DEFAULT NULL,
  `TAGS` text DEFAULT NULL,
  `PARAM1` text DEFAULT NULL,
  `PARAM2` text DEFAULT NULL,
  `UPD` varchar(32) DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content`
--

LOCK TABLES `b_search_content` WRITE;
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
INSERT INTO `b_search_content` VALUES (1,'2024-03-19 17:36:33','main','s1|/index.php',0,NULL,NULL,NULL,'/index.php','1С-Битрикс: Управление сайтом','','','','',NULL,NULL,NULL),(2,'2024-03-13 16:18:06','iblock','1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=1&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Что такое продакш-студия и для чего она нужна?','Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения. Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения.','','articles','1',NULL,NULL,NULL),(3,'2024-03-13 17:01:41','iblock','2',0,NULL,NULL,NULL,'=ID=2&EXTERNAL_ID=2&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=1&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Личный бренд и что такое продакш- студия','Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения. Визуальный брендинг тематического ресторана «Базилик»: разработка логотипа, дизайн-концепт фирменного стиля и проработка его в носителях, таких как вывески, дизайн меню и карты вин, плейсметы, а также авторский надзор на стадии внедрения.','','articles','1',NULL,NULL,NULL),(7,'2024-03-13 16:07:27','main','s1|/statya-detalno.php',0,NULL,NULL,NULL,'/statya-detalno.php','Статья детально','','','','',NULL,NULL,NULL),(8,'2024-03-15 12:46:19','main','s1|/services.php',0,NULL,NULL,NULL,'/services.php','Услуги','','','','',NULL,NULL,NULL),(11,'2024-03-13 19:33:30','iblock','S1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Брендинг','',NULL,'articles','2',NULL,NULL,NULL),(12,'2024-03-13 20:03:52','iblock','8',0,NULL,NULL,NULL,'=ID=8&EXTERNAL_ID=8&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Аудит бренда','','','articles','2',NULL,NULL,NULL),(13,'2024-03-13 20:11:27','iblock','9',0,NULL,NULL,NULL,'=ID=9&EXTERNAL_ID=9&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Целевая аудитория','','','articles','2',NULL,NULL,NULL),(14,'2024-03-13 20:11:48','iblock','10',0,NULL,NULL,NULL,'=ID=10&EXTERNAL_ID=10&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Позиционирование','','','articles','2',NULL,NULL,NULL),(15,'2024-03-13 20:12:06','iblock','11',0,NULL,NULL,NULL,'=ID=11&EXTERNAL_ID=11&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Нейминг','','','articles','2',NULL,NULL,NULL),(16,'2024-03-13 20:12:15','iblock','12',0,NULL,NULL,NULL,'=ID=12&EXTERNAL_ID=12&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Логотип','','','articles','2',NULL,NULL,NULL),(17,'2024-03-13 20:16:05','iblock','S2',0,NULL,NULL,NULL,'=ID=2&EXTERNAL_ID=&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Массовые коммуникации','',NULL,'articles','2',NULL,NULL,NULL),(18,'2024-03-14 12:58:10','iblock','13',0,NULL,NULL,NULL,'=ID=13&EXTERNAL_ID=13&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Видеопродакшн','','','articles','2',NULL,NULL,NULL),(19,'2024-03-14 12:58:21','iblock','14',0,NULL,NULL,NULL,'=ID=14&EXTERNAL_ID=14&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Фотопродакшн','','','articles','2',NULL,NULL,NULL),(20,'2024-03-14 12:58:33','iblock','15',0,NULL,NULL,NULL,'=ID=15&EXTERNAL_ID=15&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Дизайн','','','articles','2',NULL,NULL,NULL),(21,'2024-03-14 13:17:32','iblock','16',0,NULL,NULL,NULL,'=ID=16&EXTERNAL_ID=16&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Внедрение','','','articles','2',NULL,NULL,NULL),(22,'2024-03-14 13:17:51','iblock','17',0,NULL,NULL,NULL,'=ID=17&EXTERNAL_ID=17&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Digital','','','articles','2',NULL,NULL,NULL),(23,'2024-03-14 13:18:04','iblock','18',0,NULL,NULL,NULL,'=ID=18&EXTERNAL_ID=18&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Дизайн упаковки','','','articles','2',NULL,NULL,NULL),(24,'2024-03-14 13:18:23','iblock','19',0,NULL,NULL,NULL,'=ID=19&EXTERNAL_ID=19&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Бренд-бук','','','articles','2',NULL,NULL,NULL),(25,'2024-03-14 13:18:34','iblock','20',0,NULL,NULL,NULL,'=ID=20&EXTERNAL_ID=20&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Фирменный стиль','','','articles','2',NULL,NULL,NULL),(26,'2024-03-14 13:18:46','iblock','21',0,NULL,NULL,NULL,'=ID=21&EXTERNAL_ID=21&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Логотип','','','articles','2',NULL,NULL,NULL),(27,'2024-03-14 13:18:55','iblock','22',0,NULL,NULL,NULL,'=ID=22&EXTERNAL_ID=22&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Нейминг','','','articles','2',NULL,NULL,NULL),(28,'2024-03-14 13:19:08','iblock','23',0,NULL,NULL,NULL,'=ID=23&EXTERNAL_ID=23&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Целевая аудитория','','','articles','2',NULL,NULL,NULL),(29,'2024-03-14 13:19:14','iblock','24',0,NULL,NULL,NULL,'=ID=24&EXTERNAL_ID=24&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Аудит бренда','','','articles','2',NULL,NULL,NULL),(30,'2024-03-14 13:19:40','iblock','25',0,NULL,NULL,NULL,'=ID=25&EXTERNAL_ID=25&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Тактические рекламные кампании','','','articles','2',NULL,NULL,NULL),(31,'2024-03-15 12:40:00','iblock','26',0,NULL,NULL,NULL,'=ID=26&EXTERNAL_ID=26&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Внедрение','','','articles','2',NULL,NULL,NULL),(32,'2024-03-15 12:40:13','iblock','27',0,NULL,NULL,NULL,'=ID=27&EXTERNAL_ID=27&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Сопровождение','','','articles','2',NULL,NULL,NULL),(33,'2024-03-15 12:43:06','iblock','28',0,NULL,NULL,NULL,'=ID=28&EXTERNAL_ID=28&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Контент-план','','','articles','2',NULL,NULL,NULL),(34,'2024-03-15 12:43:23','iblock','29',0,NULL,NULL,NULL,'=ID=29&EXTERNAL_ID=29&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=articles&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=','Фотосессия','','','articles','2',NULL,NULL,NULL),(37,'2024-03-19 23:16:16','main','s1|/service/index.php',0,NULL,NULL,NULL,'/service/index.php','Услуги','','','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_freq`
--

DROP TABLE IF EXISTS `b_search_content_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT 0,
  `LANGUAGE_ID` char(2) NOT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_freq`
--

LOCK TABLES `b_search_content_freq` WRITE;
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_param`
--

DROP TABLE IF EXISTS `b_search_content_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) NOT NULL,
  `PARAM_VALUE` varchar(100) NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_param`
--

LOCK TABLES `b_search_content_param` WRITE;
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_right`
--

DROP TABLE IF EXISTS `b_search_content_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_right`
--

LOCK TABLES `b_search_content_right` WRITE;
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
INSERT INTO `b_search_content_right` VALUES (1,'G2'),(2,'G1'),(3,'G1'),(7,'G2'),(8,'G2'),(11,'G1'),(12,'G1'),(13,'G1'),(14,'G1'),(15,'G1'),(16,'G1'),(17,'G1'),(18,'G1'),(19,'G1'),(20,'G1'),(21,'G1'),(22,'G1'),(23,'G1'),(24,'G1'),(25,'G1'),(26,'G1'),(27,'G1'),(28,'G1'),(29,'G1'),(30,'G1'),(31,'G1'),(32,'G1'),(33,'G1'),(34,'G1'),(37,'G2');
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_site`
--

DROP TABLE IF EXISTS `b_search_content_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  `URL` text DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_site`
--

LOCK TABLES `b_search_content_site` WRITE;
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
INSERT INTO `b_search_content_site` VALUES (1,'s1',''),(2,'s1',''),(3,'s1',''),(7,'s1',''),(8,'s1',''),(11,'s1',''),(12,'s1',''),(13,'s1',''),(14,'s1',''),(15,'s1',''),(16,'s1',''),(17,'s1',''),(18,'s1',''),(19,'s1',''),(20,'s1',''),(21,'s1',''),(22,'s1',''),(23,'s1',''),(24,'s1',''),(25,'s1',''),(26,'s1',''),(27,'s1',''),(28,'s1',''),(29,'s1',''),(30,'s1',''),(31,'s1',''),(32,'s1',''),(33,'s1',''),(34,'s1',''),(37,'s1','');
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_stem`
--

DROP TABLE IF EXISTS `b_search_content_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_stem`
--

LOCK TABLES `b_search_content_stem` WRITE;
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
INSERT INTO `b_search_content_stem` VALUES (1,'ru',1,0.2314,1),(1,'ru',2,0.2314,2),(1,'ru',3,0.2314,3),(2,'ru',4,0.1791,3),(2,'ru',5,0.1791,8),(3,'ru',6,0.2808,26),(2,'ru',6,0.2838,32),(11,'ru',7,0.2314,1),(3,'ru',7,0.2808,27),(2,'ru',7,0.2838,33),(3,'ru',8,0.2808,28),(2,'ru',8,0.2838,34),(3,'ru',9,0.2808,29),(2,'ru',9,0.2838,35),(3,'ru',10,0.2808,30),(2,'ru',10,0.2838,36),(3,'ru',11,0.2808,31),(2,'ru',11,0.2838,37),(16,'ru',12,0.2314,1),(26,'ru',12,0.2314,1),(3,'ru',12,0.2808,32),(2,'ru',12,0.2838,38),(3,'ru',13,0.2808,33),(2,'ru',13,0.2838,39),(25,'ru',14,0.2314,1),(3,'ru',14,0.2808,34),(2,'ru',14,0.2838,40),(25,'ru',15,0.2314,2),(3,'ru',15,0.2808,35),(2,'ru',15,0.2838,41),(3,'ru',16,0.2808,37),(2,'ru',16,0.2838,43),(3,'ru',17,0.2808,40),(2,'ru',17,0.2838,46),(3,'ru',18,0.2808,43),(2,'ru',18,0.2838,49),(20,'ru',19,0.2314,1),(23,'ru',19,0.2314,1),(3,'ru',19,0.2808,44),(2,'ru',19,0.2838,50),(3,'ru',20,0.2808,45),(2,'ru',20,0.2838,51),(3,'ru',21,0.2808,47),(2,'ru',21,0.2838,53),(3,'ru',22,0.2808,48),(2,'ru',22,0.2838,54),(3,'ru',23,0.2808,49),(2,'ru',23,0.2838,55),(3,'ru',24,0.2808,51),(2,'ru',24,0.2838,57),(3,'ru',25,0.2808,52),(2,'ru',25,0.2838,58),(3,'ru',26,0.2808,53),(2,'ru',26,0.2838,59),(3,'ru',27,0.2808,55),(2,'ru',27,0.2838,61),(21,'ru',28,0.2314,1),(31,'ru',28,0.2314,1),(3,'ru',28,0.2808,56),(2,'ru',28,0.2838,62),(3,'ru',29,0.1772,1),(3,'ru',30,0.1772,2),(12,'ru',30,0.2314,2),(29,'ru',30,0.2314,2),(3,'ru',31,0.1772,6),(3,'ru',32,0.1772,7),(7,'ru',36,0.2314,1),(7,'ru',37,0.2314,2),(8,'ru',42,0.2314,1),(37,'ru',42,0.2314,1),(12,'ru',47,0.2314,1),(29,'ru',47,0.2314,1),(13,'ru',48,0.2314,1),(28,'ru',48,0.2314,1),(13,'ru',49,0.2314,2),(28,'ru',49,0.2314,2),(14,'ru',50,0.2314,1),(15,'ru',51,0.2314,1),(27,'ru',51,0.2314,1),(17,'ru',52,0.2314,1),(17,'ru',53,0.2314,2),(18,'ru',54,0.2314,1),(19,'ru',55,0.2314,1),(22,'ru',56,0.2314,1),(23,'ru',57,0.2314,2),(24,'ru',58,0.2314,1),(30,'ru',59,0.2314,1),(30,'ru',60,0.2314,2),(30,'ru',61,0.2314,3),(32,'ru',62,0.2314,1),(33,'ru',63,0.2314,1),(34,'ru',64,0.2314,1);
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_text`
--

DROP TABLE IF EXISTS `b_search_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) NOT NULL,
  `SEARCHABLE_CONTENT` longtext DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_text`
--

LOCK TABLES `b_search_content_text` WRITE;
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
INSERT INTO `b_search_content_text` VALUES (1,'3dea55f7ff35793e3cfeff2e3ddba78c','1С-БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\r\n\r\n'),(2,'33966765bae3742e834273af072eb94d','ЧТО ТАКОЕ ПРОДАКШ-СТУДИЯ И ДЛЯ ЧЕГО ОНА НУЖНА?\r\nВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ. ВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ.\r\n'),(3,'688b4a15561b3c752d5211f3751f566d','ЛИЧНЫЙ БРЕНД И ЧТО ТАКОЕ ПРОДАКШ- СТУДИЯ\r\nВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ. ВИЗУАЛЬНЫЙ БРЕНДИНГ ТЕМАТИЧЕСКОГО РЕСТОРАНА «БАЗИЛИК»: РАЗРАБОТКА ЛОГОТИПА, ДИЗАЙН-КОНЦЕПТ ФИРМЕННОГО СТИЛЯ И ПРОРАБОТКА ЕГО В НОСИТЕЛЯХ, ТАКИХ КАК ВЫВЕСКИ, ДИЗАЙН МЕНЮ И КАРТЫ ВИН, ПЛЕЙСМЕТЫ, А ТАКЖЕ АВТОРСКИЙ НАДЗОР НА СТАДИИ ВНЕДРЕНИЯ.\r\n'),(7,'86ea2017faa3bdd19151f382136294f8','СТАТЬЯ ДЕТАЛЬНО\r\n\r\n'),(8,'3140fa939e82d14de3829b731863cd80','УСЛУГИ\r\n\r\n'),(11,'ee92ba7de560e09273af6590fd447aaa','БРЕНДИНГ\r\n\r\n'),(12,'92e7ac6885f0f5cf836f24ca89b79fde','АУДИТ БРЕНДА\r\n\r\n'),(13,'7dd2a003cee40fec384908029fdeba54','ЦЕЛЕВАЯ АУДИТОРИЯ\r\n\r\n'),(14,'8592fed3854b7f78b1abb241a186b687','ПОЗИЦИОНИРОВАНИЕ\r\n\r\n'),(15,'2accf4706b19c15fd8c9ef3e5c04329b','НЕЙМИНГ\r\n\r\n'),(16,'daa2de6c16eb22ac030bbe603899c050','ЛОГОТИП\r\n\r\n'),(17,'86c9e34a9173d076335c0aed42d31aca','МАССОВЫЕ КОММУНИКАЦИИ\r\n\r\n'),(18,'43df7e15102dfe97b299327f6d525ee9','ВИДЕОПРОДАКШН\r\n\r\n'),(19,'5b376ed9ca4b5349380cad6f6ede41c1','ФОТОПРОДАКШН\r\n\r\n'),(20,'400cc127fb7cde6ca3321abef767179c','ДИЗАЙН\r\n\r\n'),(21,'b0fc748e5354256fadd8c593e47804d6','ВНЕДРЕНИЕ\r\n\r\n'),(22,'a11f353fcac412b31bb0191ce6595a7d','DIGITAL\r\n\r\n'),(23,'9605a57925dce271dd279f3ad5b46af9','ДИЗАЙН УПАКОВКИ\r\n\r\n'),(24,'2dfa3d26f7b1f483e6b724412be75ea5','БРЕНД-БУК\r\n\r\n'),(25,'8c3f2a55cdbefeac8994c36375c70227','ФИРМЕННЫЙ СТИЛЬ\r\n\r\n'),(26,'daa2de6c16eb22ac030bbe603899c050','ЛОГОТИП\r\n\r\n'),(27,'2accf4706b19c15fd8c9ef3e5c04329b','НЕЙМИНГ\r\n\r\n'),(28,'7dd2a003cee40fec384908029fdeba54','ЦЕЛЕВАЯ АУДИТОРИЯ\r\n\r\n'),(29,'92e7ac6885f0f5cf836f24ca89b79fde','АУДИТ БРЕНДА\r\n\r\n'),(30,'e3ff802b27e05eb05d3bb02c5a5f3a65','ТАКТИЧЕСКИЕ РЕКЛАМНЫЕ КАМПАНИИ\r\n\r\n'),(31,'b0fc748e5354256fadd8c593e47804d6','ВНЕДРЕНИЕ\r\n\r\n'),(32,'21388fb2e748c748801a93096b1e7967','СОПРОВОЖДЕНИЕ\r\n\r\n'),(33,'d0085c6a1e18389eaccbb7f45e044d3a','КОНТЕНТ-ПЛАН\r\n\r\n'),(34,'b545be9421300a19c3b5f2c7c7d90264','ФОТОСЕССИЯ\r\n\r\n'),(37,'3140fa939e82d14de3829b731863cd80','УСЛУГИ\r\n\r\n');
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_title`
--

DROP TABLE IF EXISTS `b_search_content_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_title`
--

LOCK TABLES `b_search_content_title` WRITE;
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
INSERT INTO `b_search_content_title` VALUES (1,'s1',0,'1С-БИТРИКС'),(22,'s1',0,'DIGITAL'),(12,'s1',0,'АУДИТ'),(29,'s1',0,'АУДИТ'),(13,'s1',8,'АУДИТОРИЯ'),(28,'s1',8,'АУДИТОРИЯ'),(3,'s1',7,'БРЕНД'),(24,'s1',0,'БРЕНД-БУК'),(12,'s1',6,'БРЕНДА'),(29,'s1',6,'БРЕНДА'),(11,'s1',0,'БРЕНДИНГ'),(18,'s1',0,'ВИДЕОПРОДАКШН'),(21,'s1',0,'ВНЕДРЕНИЕ'),(31,'s1',0,'ВНЕДРЕНИЕ'),(7,'s1',7,'ДЕТАЛЬНО'),(20,'s1',0,'ДИЗАЙН'),(23,'s1',0,'ДИЗАЙН'),(2,'s1',27,'ДЛЯ'),(2,'s1',22,'И'),(3,'s1',1,'И'),(30,'s1',22,'КАМПАНИИ'),(17,'s1',9,'КОММУНИКАЦИИ'),(33,'s1',0,'КОНТЕНТ-ПЛАН'),(3,'s1',0,'ЛИЧНЫЙ'),(16,'s1',0,'ЛОГОТИП'),(26,'s1',0,'ЛОГОТИП'),(17,'s1',0,'МАССОВЫЕ'),(15,'s1',0,'НЕЙМИНГ'),(27,'s1',0,'НЕЙМИНГ'),(2,'s1',40,'НУЖНА'),(2,'s1',36,'ОНА'),(14,'s1',0,'ПОЗИЦИОНИРОВАНИЕ'),(3,'s1',25,'ПРОДАКШ-'),(2,'s1',10,'ПРОДАКШ-СТУДИЯ'),(30,'s1',12,'РЕКЛАМНЫЕ'),(1,'s1',23,'САЙТОМ'),(32,'s1',0,'СОПРОВОЖДЕНИЕ'),(7,'s1',0,'СТАТЬЯ'),(25,'s1',10,'СТИЛЬ'),(3,'s1',34,'СТУДИЯ'),(2,'s1',4,'ТАКОЕ'),(3,'s1',19,'ТАКОЕ'),(30,'s1',0,'ТАКТИЧЕСКИЕ'),(23,'s1',7,'УПАКОВКИ'),(1,'s1',12,'УПРАВЛЕНИЕ'),(8,'s1',0,'УСЛУГИ'),(37,'s1',0,'УСЛУГИ'),(25,'s1',0,'ФИРМЕННЫЙ'),(19,'s1',0,'ФОТОПРОДАКШН'),(34,'s1',0,'ФОТОСЕССИЯ'),(13,'s1',0,'ЦЕЛЕВАЯ'),(28,'s1',0,'ЦЕЛЕВАЯ'),(2,'s1',31,'ЧЕГО'),(2,'s1',0,'ЧТО'),(3,'s1',15,'ЧТО');
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_custom_rank`
--

DROP TABLE IF EXISTS `b_search_custom_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT 0,
  `SITE_ID` char(2) NOT NULL,
  `MODULE_ID` varchar(200) NOT NULL,
  `PARAM1` text DEFAULT NULL,
  `PARAM2` text DEFAULT NULL,
  `ITEM_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_custom_rank`
--

LOCK TABLES `b_search_custom_rank` WRITE;
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_phrase`
--

DROP TABLE IF EXISTS `b_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) NOT NULL,
  `PHRASE` varchar(250) DEFAULT NULL,
  `TAGS` varchar(250) DEFAULT NULL,
  `URL_TO` text DEFAULT NULL,
  `URL_TO_404` char(1) DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_phrase`
--

LOCK TABLES `b_search_phrase` WRITE;
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_stem`
--

DROP TABLE IF EXISTS `b_search_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_stem`
--

LOCK TABLES `b_search_stem` WRITE;
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
INSERT INTO `b_search_stem` VALUES (1,'1С-БИТРИКС'),(34,'DFGHJ'),(56,'DIGITAL'),(39,'HERE'),(41,'INFO'),(33,'QWRE'),(40,'SOME'),(38,'TEXT'),(65,'TITLE'),(45,'АБОБ'),(25,'АВТОРСК'),(47,'АУД'),(49,'АУДИТОР'),(10,'БАЗИЛИК'),(44,'ББББ'),(30,'БРЕНД'),(58,'БРЕНД-БУК'),(7,'БРЕНДИНГ'),(54,'ВИДЕОПРОДАКШН'),(6,'ВИЗУАЛЬН'),(22,'ВИН'),(28,'ВНЕДРЕН'),(18,'ВЫВЕСК'),(37,'ДЕТАЛЬН'),(19,'ДИЗАЙН'),(13,'ДИЗАЙН-КОНЦЕПТ'),(61,'КАМПАН'),(21,'КАРТ'),(53,'КОММУНИКАЦ'),(63,'КОНТЕНТ-ПЛА'),(29,'ЛИЧН'),(12,'ЛОГОТИП'),(52,'МАССОВ'),(20,'МЕНЮ'),(26,'НАДЗОР'),(51,'НЕЙМИНГ'),(17,'НОСИТЕЛ'),(5,'НУЖН'),(23,'ПЛЕЙСМЕТ'),(50,'ПОЗИЦИОНИРОВАН'),(31,'ПРОДАКШ-'),(4,'ПРОДАКШ-СТУД'),(16,'ПРОРАБОТК'),(11,'РАЗРАБОТК'),(60,'РЕКЛАМН'),(9,'РЕСТОРА'),(3,'САЙТ'),(66,'СЕРВИС'),(62,'СОПРОВОЖДЕН'),(27,'СТАД'),(36,'СТАТ'),(15,'СТИЛ'),(32,'СТУД'),(24,'ТАКЖ'),(59,'ТАКТИЧЕСК'),(8,'ТЕМАТИЧЕСК'),(43,'УАУАУАУ'),(57,'УПАКОВК'),(2,'УПРАВЛЕН'),(42,'УСЛУГ'),(14,'ФИРМЕН'),(55,'ФОТОПРОДАКШН'),(64,'ФОТОСЕСС'),(35,'ФФФФ'),(46,'Х2'),(48,'ЦЕЛЕВ');
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_suggest`
--

DROP TABLE IF EXISTS `b_search_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) NOT NULL,
  `FILTER_MD5` varchar(32) NOT NULL,
  `PHRASE` varchar(250) NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_suggest`
--

LOCK TABLES `b_search_suggest` WRITE;
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_tags`
--

DROP TABLE IF EXISTS `b_search_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_tags`
--

LOCK TABLES `b_search_tags` WRITE;
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_user_right`
--

DROP TABLE IF EXISTS `b_search_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_user_right`
--

LOCK TABLES `b_search_user_right` WRITE;
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_filter_mask`
--

DROP TABLE IF EXISTS `b_sec_filter_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_filter_mask` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT 10,
  `SITE_ID` char(2) DEFAULT NULL,
  `FILTER_MASK` varchar(250) DEFAULT NULL,
  `LIKE_MASK` varchar(250) DEFAULT NULL,
  `PREG_MASK` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_filter_mask`
--

LOCK TABLES `b_sec_filter_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_filter_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_filter_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_frame_mask`
--

DROP TABLE IF EXISTS `b_sec_frame_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_frame_mask` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT 10,
  `SITE_ID` char(2) DEFAULT NULL,
  `FRAME_MASK` varchar(250) DEFAULT NULL,
  `LIKE_MASK` varchar(250) DEFAULT NULL,
  `PREG_MASK` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_frame_mask`
--

LOCK TABLES `b_sec_frame_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_frame_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_frame_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule`
--

DROP TABLE IF EXISTS `b_sec_iprule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_TYPE` char(1) NOT NULL DEFAULT 'M',
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `ADMIN_SECTION` char(1) NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_FROM_TIMESTAMP` int(11) DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `ACTIVE_TO_TIMESTAMP` int(11) DEFAULT NULL,
  `NAME` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_sec_iprule_active_to` (`ACTIVE_TO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule`
--

LOCK TABLES `b_sec_iprule` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_excl_ip`
--

DROP TABLE IF EXISTS `b_sec_iprule_excl_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_excl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_IP`),
  CONSTRAINT `b_sec_iprule_excl_ip_ibfk_1` FOREIGN KEY (`IPRULE_ID`) REFERENCES `b_sec_iprule` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_excl_ip`
--

LOCK TABLES `b_sec_iprule_excl_ip` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_excl_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_excl_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_excl_mask`
--

DROP TABLE IF EXISTS `b_sec_iprule_excl_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_excl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `LIKE_MASK` varchar(250) DEFAULT NULL,
  `PREG_MASK` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`),
  CONSTRAINT `b_sec_iprule_excl_mask_ibfk_1` FOREIGN KEY (`IPRULE_ID`) REFERENCES `b_sec_iprule` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_excl_mask`
--

LOCK TABLES `b_sec_iprule_excl_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_excl_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_excl_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_incl_ip`
--

DROP TABLE IF EXISTS `b_sec_iprule_incl_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_incl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_IP`),
  CONSTRAINT `b_sec_iprule_incl_ip_ibfk_1` FOREIGN KEY (`IPRULE_ID`) REFERENCES `b_sec_iprule` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_incl_ip`
--

LOCK TABLES `b_sec_iprule_incl_ip` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_incl_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_incl_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_incl_mask`
--

DROP TABLE IF EXISTS `b_sec_iprule_incl_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_incl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `LIKE_MASK` varchar(250) DEFAULT NULL,
  `PREG_MASK` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`),
  CONSTRAINT `b_sec_iprule_incl_mask_ibfk_1` FOREIGN KEY (`IPRULE_ID`) REFERENCES `b_sec_iprule` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_incl_mask`
--

LOCK TABLES `b_sec_iprule_incl_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_incl_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_incl_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_recovery_codes`
--

DROP TABLE IF EXISTS `b_sec_recovery_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_recovery_codes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(255) NOT NULL,
  `USED` varchar(1) NOT NULL DEFAULT 'N',
  `USING_DATE` datetime DEFAULT NULL,
  `USING_IP` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_sec_recovery_codes_user_id` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_recovery_codes`
--

LOCK TABLES `b_sec_recovery_codes` WRITE;
/*!40000 ALTER TABLE `b_sec_recovery_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_recovery_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_redirect_url`
--

DROP TABLE IF EXISTS `b_sec_redirect_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_redirect_url` (
  `IS_SYSTEM` char(1) NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `URL` varchar(250) NOT NULL,
  `PARAMETER_NAME` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_redirect_url`
--

LOCK TABLES `b_sec_redirect_url` WRITE;
/*!40000 ALTER TABLE `b_sec_redirect_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_redirect_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_session`
--

DROP TABLE IF EXISTS `b_sec_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_session` (
  `SESSION_ID` varchar(250) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SESSION_DATA` longtext DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`),
  KEY `ix_b_sec_session_time` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_session`
--

LOCK TABLES `b_sec_session` WRITE;
/*!40000 ALTER TABLE `b_sec_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_user`
--

DROP TABLE IF EXISTS `b_sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_user` (
  `USER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'N',
  `SECRET` varchar(64) DEFAULT NULL,
  `TYPE` varchar(16) NOT NULL,
  `PARAMS` text DEFAULT NULL,
  `ATTEMPTS` int(18) DEFAULT NULL,
  `INITIAL_DATE` datetime DEFAULT NULL,
  `SKIP_MANDATORY` char(1) NOT NULL DEFAULT 'N',
  `DEACTIVATE_UNTIL` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  CONSTRAINT `b_sec_user_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `b_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_user`
--

LOCK TABLES `b_sec_user` WRITE;
/*!40000 ALTER TABLE `b_sec_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_virus`
--

DROP TABLE IF EXISTS `b_sec_virus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_virus` (
  `ID` varchar(32) NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  `SENT` char(1) NOT NULL DEFAULT 'N',
  `INFO` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_virus`
--

LOCK TABLES `b_sec_virus` WRITE;
/*!40000 ALTER TABLE `b_sec_virus` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_virus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_white_list`
--

DROP TABLE IF EXISTS `b_sec_white_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_white_list` (
  `ID` int(11) NOT NULL,
  `WHITE_SUBSTR` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_white_list`
--

LOCK TABLES `b_sec_white_list` WRITE;
/*!40000 ALTER TABLE `b_sec_white_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_white_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_security_sitecheck`
--

DROP TABLE IF EXISTS `b_security_sitecheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_security_sitecheck` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEST_DATE` datetime DEFAULT NULL,
  `RESULTS` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_security_sitecheck`
--

LOCK TABLES `b_security_sitecheck` WRITE;
/*!40000 ALTER TABLE `b_security_sitecheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_security_sitecheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_autolog`
--

DROP TABLE IF EXISTS `b_seo_adv_autolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT 0,
  `SUCCESS` char(1) DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_autolog`
--

LOCK TABLES `b_seo_adv_autolog` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_banner`
--

DROP TABLE IF EXISTS `b_seo_adv_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) NOT NULL,
  `OWNER_NAME` varchar(255) NOT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `XML_ID` varchar(255) NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SETTINGS` mediumtext DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_banner`
--

LOCK TABLES `b_seo_adv_banner` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_campaign`
--

DROP TABLE IF EXISTS `b_seo_adv_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) NOT NULL,
  `OWNER_NAME` varchar(255) NOT NULL,
  `XML_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_campaign`
--

LOCK TABLES `b_seo_adv_campaign` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_group`
--

DROP TABLE IF EXISTS `b_seo_adv_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) NOT NULL,
  `OWNER_NAME` varchar(255) NOT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `XML_ID` varchar(255) NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SETTINGS` text DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_group`
--

LOCK TABLES `b_seo_adv_group` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_link`
--

DROP TABLE IF EXISTS `b_seo_adv_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_link`
--

LOCK TABLES `b_seo_adv_link` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_log`
--

DROP TABLE IF EXISTS `b_seo_adv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `REQUEST_URI` varchar(100) NOT NULL,
  `REQUEST_DATA` text DEFAULT NULL,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_log`
--

LOCK TABLES `b_seo_adv_log` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_order`
--

DROP TABLE IF EXISTS `b_seo_adv_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT 0,
  `PROCESSED` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_order`
--

LOCK TABLES `b_seo_adv_order` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_region`
--

DROP TABLE IF EXISTS `b_seo_adv_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) NOT NULL,
  `OWNER_NAME` varchar(255) NOT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `XML_ID` varchar(255) NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SETTINGS` text DEFAULT NULL,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_region`
--

LOCK TABLES `b_seo_adv_region` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_keywords`
--

DROP TABLE IF EXISTS `b_seo_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `KEYWORDS` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_keywords`
--

LOCK TABLES `b_seo_keywords` WRITE;
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_search_engine`
--

DROP TABLE IF EXISTS `b_seo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `SORT` int(5) DEFAULT 100,
  `NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `SETTINGS` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_search_engine`
--

LOCK TABLES `b_seo_search_engine` WRITE;
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
INSERT INTO `b_seo_search_engine` VALUES (1,'google','Y',200,'Google','868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com','EItMlJpZLC2WRPKB6QsA5bV9','urn:ietf:wg:oauth:2.0:oob',NULL),(2,'yandex','Y',300,'Yandex','f848c7bfc1d34a94ba6d05439f81bbd7','da0e73b2d9cc4e809f3170e49cb9df01','https://oauth.yandex.ru/verification_code',NULL),(3,'yandex_direct','Y',400,'Yandex.Direct','','','https://oauth.yandex.ru/verification_code',NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_log`
--

DROP TABLE IF EXISTS `b_seo_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `CODE` varchar(20) DEFAULT NULL,
  `MESSAGE` varchar(1000) NOT NULL,
  `GROUP_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_log`
--

LOCK TABLES `b_seo_service_log` WRITE;
/*!40000 ALTER TABLE `b_seo_service_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_queue`
--

DROP TABLE IF EXISTS `b_seo_service_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL,
  `SERVICE_TYPE` varchar(20) NOT NULL,
  `CLIENT_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_QUEUE_TYPE` (`TYPE`),
  KEY `IX_B_SEO_SERVICE_SERVICE_TYPE_CLIENT_ID` (`SERVICE_TYPE`,`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_queue`
--

LOCK TABLES `b_seo_service_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_rtg_queue`
--

DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) NOT NULL,
  `CLIENT_ID` varchar(50) DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) NOT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `CONTACT_TYPE` varchar(15) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ACTION` char(3) NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_rtg_queue`
--

LOCK TABLES `b_seo_service_rtg_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_subscription`
--

DROP TABLE IF EXISTS `b_seo_service_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) NOT NULL,
  `GROUP_ID` varchar(50) NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) DEFAULT NULL,
  `HAS_AUTH` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_subscription`
--

LOCK TABLES `b_seo_service_subscription` WRITE;
/*!40000 ALTER TABLE `b_seo_service_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_webhook`
--

DROP TABLE IF EXISTS `b_seo_service_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) NOT NULL,
  `EXTERNAL_ID` varchar(50) NOT NULL,
  `SECURITY_CODE` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_webhook`
--

LOCK TABLES `b_seo_service_webhook` WRITE;
/*!40000 ALTER TABLE `b_seo_service_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap`
--

DROP TABLE IF EXISTS `b_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SITE_ID` char(2) NOT NULL,
  `ACTIVE` char(1) DEFAULT 'Y',
  `NAME` varchar(255) DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap`
--

LOCK TABLES `b_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_entity`
--

DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_entity`
--

LOCK TABLES `b_seo_sitemap_entity` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_iblock`
--

DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_iblock`
--

LOCK TABLES `b_seo_sitemap_iblock` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_runtime`
--

DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_runtime`
--

LOCK TABLES `b_seo_sitemap_runtime` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) DEFAULT NULL,
  `SUM` float DEFAULT 0,
  `SUM_SEARCH` float DEFAULT 0,
  `SUM_CONTEXT` float DEFAULT 0,
  `CLICKS` int(7) DEFAULT 0,
  `CLICKS_SEARCH` int(7) DEFAULT 0,
  `CLICKS_CONTEXT` int(7) DEFAULT 0,
  `SHOWS` int(7) DEFAULT 0,
  `SHOWS_SEARCH` int(7) DEFAULT 0,
  `SHOWS_CONTEXT` int(7) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_yandex_direct_stat`
--

LOCK TABLES `b_seo_yandex_direct_stat` WRITE;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_short_uri`
--

DROP TABLE IF EXISTS `b_short_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_short_uri` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) NOT NULL,
  `URI_CRC` int(11) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 301,
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_short_uri`
--

LOCK TABLES `b_short_uri` WRITE;
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_site_template`
--

DROP TABLE IF EXISTS `b_site_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) NOT NULL,
  `CONDITION` varchar(255) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `TEMPLATE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_site_template`
--

LOCK TABLES `b_site_template` WRITE;
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
INSERT INTO `b_site_template` VALUES (10,'s1','',1,'yanicode'),(11,'s1','CSite::InDir(\'/services.php\')',3,'services_yanicode');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sm_version_history`
--

DROP TABLE IF EXISTS `b_sm_version_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sm_version_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sm_version_history`
--

LOCK TABLES `b_sm_version_history` WRITE;
/*!40000 ALTER TABLE `b_sm_version_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sm_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile`
--

DROP TABLE IF EXISTS `b_smile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) NOT NULL DEFAULT 'S',
  `SET_ID` int(11) NOT NULL DEFAULT 0,
  `SORT` int(11) NOT NULL DEFAULT 150,
  `TYPING` varchar(100) DEFAULT NULL,
  `CLICKABLE` char(1) NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) NOT NULL,
  `IMAGE_DEFINITION` varchar(10) NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT 0,
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile`
--

LOCK TABLES `b_smile` WRITE;
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
INSERT INTO `b_smile` VALUES (1,'S',2,100,':) :-)','Y','N','bx_smile_smile.png','UHD',20,20),(2,'S',2,105,';) ;-)','Y','N','bx_smile_wink.png','UHD',20,20),(3,'S',2,110,':D :-D','Y','N','bx_smile_biggrin.png','UHD',20,20),(4,'S',2,115,'8-)','Y','N','bx_smile_cool.png','UHD',20,20),(5,'S',2,120,':facepalm:','Y','N','bx_smile_facepalm.png','UHD',20,20),(6,'S',2,125,':{} :-{}','Y','N','bx_smile_kiss.png','UHD',20,20),(7,'S',2,130,':( :-(','Y','N','bx_smile_sad.png','UHD',20,20),(8,'S',2,135,':| :-|','Y','N','bx_smile_neutral.png','UHD',20,20),(9,'S',2,140,':oops:','Y','N','bx_smile_redface.png','UHD',20,20),(10,'S',2,145,':cry: :~(','Y','N','bx_smile_cry.png','UHD',20,20),(11,'S',2,150,':evil: >:-<','Y','N','bx_smile_evil.png','UHD',20,20),(12,'S',2,155,':o :-o :shock:','Y','N','bx_smile_eek.png','UHD',20,20),(13,'S',2,160,':/ :-/','Y','N','bx_smile_confuse.png','UHD',20,20),(14,'S',2,165,':idea:','Y','N','bx_smile_idea.png','UHD',20,20),(15,'S',2,170,':?:','Y','N','bx_smile_question.png','UHD',20,20),(16,'S',2,175,':!:','Y','N','bx_smile_exclaim.png','UHD',20,20),(17,'S',2,180,':like:','Y','N','bx_smile_like.png','UHD',20,20),(18,'I',2,175,'ICON_NOTE','Y','N','bx_icon_1.gif','SD',15,15),(19,'I',2,180,'ICON_DIRRECTION','Y','N','bx_icon_2.gif','SD',15,15),(20,'I',2,185,'ICON_IDEA','Y','N','bx_icon_3.gif','SD',15,15),(21,'I',2,190,'ICON_ATTANSION','Y','N','bx_icon_4.gif','SD',15,15),(22,'I',2,195,'ICON_QUESTION','Y','N','bx_icon_5.gif','SD',15,15),(23,'I',2,200,'ICON_BAD','Y','N','bx_icon_6.gif','SD',15,15),(24,'I',2,205,'ICON_GOOD','Y','N','bx_icon_7.gif','SD',15,15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_lang`
--

DROP TABLE IF EXISTS `b_smile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_lang`
--

LOCK TABLES `b_smile_lang` WRITE;
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
INSERT INTO `b_smile_lang` VALUES (1,'P',1,'ru','Стандартная галерея'),(2,'P',1,'en','Standard gallery'),(3,'G',2,'ru','Основной набор'),(4,'G',2,'en','Default pack'),(5,'S',1,'ru','С улыбкой'),(6,'S',1,'en','Smile'),(7,'S',2,'ru','Шутливо'),(8,'S',2,'en','Wink'),(9,'S',3,'ru','Широкая улыбка'),(10,'S',3,'en','Big grin'),(11,'S',4,'ru','Здорово'),(12,'S',4,'en','Cool'),(13,'S',5,'ru','Разочарование'),(14,'S',5,'en','Facepalm'),(15,'S',6,'ru','Поцелуй'),(16,'S',6,'en','Kiss'),(17,'S',7,'ru','Печально'),(18,'S',7,'en','Sad'),(19,'S',8,'ru','Скептически'),(20,'S',8,'en','Skeptic'),(21,'S',9,'ru','Смущенный'),(22,'S',9,'en','Embarrassed'),(23,'S',10,'ru','Очень грустно'),(24,'S',10,'en','Crying'),(25,'S',11,'ru','Со злостью'),(26,'S',11,'en','Angry'),(27,'S',12,'ru','Удивленно'),(28,'S',12,'en','Surprised'),(29,'S',13,'ru','Смущенно'),(30,'S',13,'en','Confused'),(31,'S',14,'ru','Идея'),(32,'S',14,'en','Idea'),(33,'S',15,'ru','Вопрос'),(34,'S',15,'en','Question'),(35,'S',16,'ru','Восклицание'),(36,'S',16,'en','Exclamation'),(37,'S',17,'ru','Нравится'),(38,'S',17,'en','Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_set`
--

DROP TABLE IF EXISTS `b_smile_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_set` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) NOT NULL DEFAULT 'G',
  `PARENT_ID` int(11) NOT NULL DEFAULT 0,
  `STRING_ID` varchar(255) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 150,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_set`
--

LOCK TABLES `b_smile_set` WRITE;
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
INSERT INTO `b_smile_set` VALUES (1,'P',0,'bitrix',150),(2,'G',1,'bitrix_main',150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template`
--

DROP TABLE IF EXISTS `b_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) NOT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `MESSAGE` text DEFAULT NULL,
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_sms_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template`
--

LOCK TABLES `b_sms_template` WRITE;
/*!40000 ALTER TABLE `b_sms_template` DISABLE KEYS */;
INSERT INTO `b_sms_template` VALUES (1,'SMS_USER_CONFIRM_NUMBER','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код подтверждения #CODE#',NULL),(2,'SMS_USER_RESTORE_PASSWORD','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код для восстановления пароля #CODE#',NULL),(3,'SMS_EVENT_LOG_NOTIFICATION','Y','#DEFAULT_SENDER#','#PHONE_NUMBER#','#NAME#: #ADDITIONAL_TEXT# (событий: #EVENT_COUNT#)',NULL);
/*!40000 ALTER TABLE `b_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template_site`
--

DROP TABLE IF EXISTS `b_sms_template_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template_site`
--

LOCK TABLES `b_sms_template_site` WRITE;
/*!40000 ALTER TABLE `b_sms_template_site` DISABLE KEYS */;
INSERT INTO `b_sms_template_site` VALUES (1,'s1'),(2,'s1'),(3,'s1');
/*!40000 ALTER TABLE `b_sms_template_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_ap`
--

DROP TABLE IF EXISTS `b_socialservices_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) NOT NULL,
  `ENDPOINT` varchar(255) DEFAULT NULL,
  `LOGIN` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_ap`
--

LOCK TABLES `b_socialservices_ap` WRITE;
/*!40000 ALTER TABLE `b_socialservices_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact`
--

DROP TABLE IF EXISTS `b_socialservices_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact`
--

LOCK TABLES `b_socialservices_contact` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact_connect`
--

DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) NOT NULL,
  `CONNECT_TYPE` char(1) DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact_connect`
--

LOCK TABLES `b_socialservices_contact_connect` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_message`
--

DROP TABLE IF EXISTS `b_socialservices_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) NOT NULL,
  `MESSAGE` varchar(1000) DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_message`
--

LOCK TABLES `b_socialservices_message` WRITE;
/*!40000 ALTER TABLE `b_socialservices_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user`
--

DROP TABLE IF EXISTS `b_socialservices_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `LAST_NAME` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) NOT NULL,
  `CAN_DELETE` char(1) NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) DEFAULT NULL,
  `PERMISSIONS` varchar(555) DEFAULT NULL,
  `OATOKEN` text DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` text DEFAULT NULL,
  `REFRESH_TOKEN` text DEFAULT NULL,
  `SEND_ACTIVITY` char(1) DEFAULT 'Y',
  `SITE_ID` varchar(50) DEFAULT NULL,
  `INITIALIZED` char(1) DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`),
  KEY `IX_B_SOCIALSERVICES_US_4` (`USER_ID`,`EXTERNAL_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user`
--

LOCK TABLES `b_socialservices_user` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user_link`
--

DROP TABLE IF EXISTS `b_socialservices_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) NOT NULL,
  `LINK_NAME` varchar(255) DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) DEFAULT NULL,
  `LINK_PICTURE` varchar(255) DEFAULT NULL,
  `LINK_EMAIL` varchar(255) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user_link`
--

LOCK TABLES `b_socialservices_user_link` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_zoom_meeting`
--

DROP TABLE IF EXISTS `b_socialservices_zoom_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_zoom_meeting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(10) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CONFERENCE_URL` varchar(255) NOT NULL,
  `CONFERENCE_EXTERNAL_ID` bigint(20) unsigned NOT NULL,
  `CONFERENCE_PASSWORD` text DEFAULT NULL,
  `JOINED` char(1) DEFAULT NULL,
  `CONFERENCE_CREATED` datetime DEFAULT NULL,
  `CONFERENCE_STARTED` datetime DEFAULT NULL,
  `CONFERENCE_ENDED` datetime DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `TITLE` text DEFAULT NULL,
  `SHORT_LINK` varchar(255) DEFAULT NULL,
  `HAS_RECORDING` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_1` (`CONFERENCE_EXTERNAL_ID`),
  KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_zoom_meeting`
--

LOCK TABLES `b_socialservices_zoom_meeting` WRITE;
/*!40000 ALTER TABLE `b_socialservices_zoom_meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_zoom_meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_zoom_meeting_recording`
--

DROP TABLE IF EXISTS `b_socialservices_zoom_meeting_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_zoom_meeting_recording` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXTERNAL_ID` varchar(64) NOT NULL,
  `MEETING_ID` int(11) NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `FILE_TYPE` varchar(16) NOT NULL,
  `FILE_SIZE` int(11) NOT NULL,
  `PLAY_URL` varchar(500) DEFAULT NULL,
  `DOWNLOAD_URL` varchar(500) DEFAULT NULL,
  `RECORDING_TYPE` varchar(64) NOT NULL,
  `DOWNLOAD_TOKEN` text DEFAULT NULL,
  `PASSWORD` text DEFAULT NULL,
  `FILE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_RECORDING_1` (`MEETING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_zoom_meeting_recording`
--

LOCK TABLES `b_socialservices_zoom_meeting_recording` WRITE;
/*!40000 ALTER TABLE `b_socialservices_zoom_meeting_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_zoom_meeting_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker`
--

DROP TABLE IF EXISTS `b_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) DEFAULT NULL,
  `PAGE_URL` varchar(255) NOT NULL,
  `PAGE_TITLE` varchar(255) NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) NOT NULL DEFAULT 'N',
  `CONTENT` text DEFAULT NULL,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) NOT NULL DEFAULT 'N',
  `CLOSED` char(1) NOT NULL DEFAULT 'N',
  `DELETED` char(1) NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker`
--

LOCK TABLES `b_sticker` WRITE;
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker_group_task`
--

DROP TABLE IF EXISTS `b_sticker_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker_group_task`
--

LOCK TABLES `b_sticker_group_task` WRITE;
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_subscription`
--

DROP TABLE IF EXISTS `b_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `EMAIL` varchar(255) NOT NULL,
  `FORMAT` varchar(4) NOT NULL DEFAULT 'text',
  `CONFIRM_CODE` varchar(8) DEFAULT NULL,
  `CONFIRMED` char(1) NOT NULL DEFAULT 'N',
  `DATE_CONFIRM` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_SUBSCRIPTION_EMAIL` (`EMAIL`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `IX_DATE_CONFIRM` (`CONFIRMED`,`DATE_CONFIRM`),
  CONSTRAINT `b_subscription_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `b_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_subscription`
--

LOCK TABLES `b_subscription` WRITE;
/*!40000 ALTER TABLE `b_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_subscription_rubric`
--

DROP TABLE IF EXISTS `b_subscription_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_subscription_rubric` (
  `SUBSCRIPTION_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_SUBSCRIPTION_RUBRIC` (`SUBSCRIPTION_ID`,`LIST_RUBRIC_ID`),
  KEY `LIST_RUBRIC_ID` (`LIST_RUBRIC_ID`),
  CONSTRAINT `b_subscription_rubric_ibfk_1` FOREIGN KEY (`SUBSCRIPTION_ID`) REFERENCES `b_subscription` (`ID`),
  CONSTRAINT `b_subscription_rubric_ibfk_2` FOREIGN KEY (`LIST_RUBRIC_ID`) REFERENCES `b_list_rubric` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_subscription_rubric`
--

LOCK TABLES `b_subscription_rubric` WRITE;
/*!40000 ALTER TABLE `b_subscription_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_subscription_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task`
--

DROP TABLE IF EXISTS `b_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `LETTER` char(1) DEFAULT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `SYS` char(1) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `BINDING` varchar(50) DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task`
--

LOCK TABLES `b_task` WRITE;
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
INSERT INTO `b_task` VALUES (1,'main_denied','D','main','Y',NULL,'module'),(2,'main_change_profile','P','main','Y',NULL,'module'),(3,'main_view_all_settings','R','main','Y',NULL,'module'),(4,'main_view_all_settings_change_profile','T','main','Y',NULL,'module'),(5,'main_edit_subordinate_users','V','main','Y',NULL,'module'),(6,'main_full_access','W','main','Y',NULL,'module'),(7,'fm_folder_access_denied','D','main','Y',NULL,'file'),(8,'fm_folder_access_read','R','main','Y',NULL,'file'),(9,'fm_folder_access_write','W','main','Y',NULL,'file'),(10,'fm_folder_access_full','X','main','Y',NULL,'file'),(11,'fm_folder_access_workflow','U','main','Y',NULL,'file'),(12,'bitrixcloud_deny','D','bitrixcloud','Y',NULL,'module'),(13,'bitrixcloud_control','W','bitrixcloud','Y',NULL,'module'),(14,'clouds_denied','D','clouds','Y',NULL,'module'),(15,'clouds_browse','F','clouds','Y',NULL,'module'),(16,'clouds_upload','U','clouds','Y',NULL,'module'),(17,'clouds_full_access','W','clouds','Y',NULL,'module'),(18,'fileman_denied','D','fileman','Y','','module'),(19,'fileman_allowed_folders','F','fileman','Y','','module'),(20,'fileman_full_access','W','fileman','Y','','module'),(21,'medialib_denied','D','fileman','Y','','medialib'),(22,'medialib_view','F','fileman','Y','','medialib'),(23,'medialib_only_new','R','fileman','Y','','medialib'),(24,'medialib_edit_items','V','fileman','Y','','medialib'),(25,'medialib_editor','W','fileman','Y','','medialib'),(26,'medialib_full','X','fileman','Y','','medialib'),(27,'stickers_denied','D','fileman','Y','','stickers'),(28,'stickers_read','R','fileman','Y','','stickers'),(29,'stickers_edit','W','fileman','Y','','stickers'),(30,'hblock_denied','D','highloadblock','Y',NULL,'module'),(31,'hblock_read','R','highloadblock','Y',NULL,'module'),(32,'hblock_write','W','highloadblock','Y',NULL,'module'),(33,'iblock_deny','D','iblock','Y',NULL,'iblock'),(34,'iblock_read','R','iblock','Y',NULL,'iblock'),(35,'iblock_element_add','E','iblock','Y',NULL,'iblock'),(36,'iblock_admin_read','S','iblock','Y',NULL,'iblock'),(37,'iblock_admin_add','T','iblock','Y',NULL,'iblock'),(38,'iblock_limited_edit','U','iblock','Y',NULL,'iblock'),(39,'iblock_full_edit','W','iblock','Y',NULL,'iblock'),(40,'iblock_full','X','iblock','Y',NULL,'iblock'),(41,'landing_right_denied','D','landing','Y',NULL,'module'),(42,'landing_right_read','R','landing','Y',NULL,'module'),(43,'landing_right_edit','U','landing','Y',NULL,'module'),(44,'landing_right_sett','V','landing','Y',NULL,'module'),(45,'landing_right_public','W','landing','Y',NULL,'module'),(46,'landing_right_delete','X','landing','Y',NULL,'module'),(47,'security_denied','D','security','Y',NULL,'module'),(48,'security_filter','F','security','Y',NULL,'module'),(49,'security_otp','S','security','Y',NULL,'module'),(50,'security_view_all_settings','T','security','Y',NULL,'module'),(51,'security_full_access','W','security','Y',NULL,'module'),(52,'seo_denied','D','seo','Y','','module'),(53,'seo_edit','F','seo','Y','','module'),(54,'seo_full_access','W','seo','Y','','module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task_operation`
--

DROP TABLE IF EXISTS `b_task_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int(11) NOT NULL,
  `OPERATION_ID` int(11) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task_operation`
--

LOCK TABLES `b_task_operation` WRITE;
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
INSERT INTO `b_task_operation` VALUES (2,2),(2,3),(3,2),(3,4),(3,5),(3,6),(3,7),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(8,19),(8,20),(8,21),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,19),(11,20),(11,21),(11,24),(11,28),(13,36),(13,37),(15,38),(16,38),(16,39),(17,38),(17,39),(17,40),(19,43),(19,44),(19,45),(19,46),(19,47),(19,48),(19,49),(19,51),(19,52),(20,41),(20,42),(20,43),(20,44),(20,45),(20,46),(20,47),(20,48),(20,49),(20,50),(20,51),(20,52),(20,53),(22,54),(23,54),(23,55),(23,59),(24,54),(24,59),(24,60),(24,61),(25,54),(25,55),(25,56),(25,57),(25,59),(25,60),(25,61),(26,54),(26,55),(26,56),(26,57),(26,58),(26,59),(26,60),(26,61),(28,62),(29,62),(29,63),(29,64),(29,65),(31,66),(32,67),(32,68),(34,69),(34,70),(35,71),(36,69),(36,70),(36,72),(37,69),(37,70),(37,71),(37,72),(38,69),(38,70),(38,71),(38,72),(38,73),(38,74),(38,75),(38,76),(39,69),(39,70),(39,71),(39,72),(39,73),(39,74),(39,75),(39,76),(39,77),(39,78),(39,79),(39,80),(40,69),(40,70),(40,71),(40,72),(40,73),(40,74),(40,75),(40,76),(40,77),(40,78),(40,79),(40,80),(40,81),(40,82),(40,83),(40,84),(40,85),(40,86),(42,87),(43,88),(44,89),(45,90),(46,91),(48,92),(49,93),(50,94),(50,95),(50,96),(50,97),(50,98),(50,99),(50,100),(50,101),(50,102),(50,103),(50,104),(51,92),(51,93),(51,94),(51,95),(51,96),(51,97),(51,98),(51,99),(51,100),(51,101),(51,102),(51,103),(51,104),(51,105),(51,106),(51,107),(51,108),(51,109),(51,110),(51,111),(51,112),(51,113),(51,114),(51,115),(51,116),(51,117),(53,119),(54,118),(54,119);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_diff`
--

DROP TABLE IF EXISTS `b_translate_diff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_diff` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) NOT NULL,
  `AGAINST_LANG_ID` char(2) NOT NULL,
  `EXCESS_COUNT` int(18) NOT NULL DEFAULT 0,
  `DEFICIENCY_COUNT` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXU_TRNSL_DIFF` (`FILE_ID`,`LANG_ID`,`AGAINST_LANG_ID`),
  KEY `IX_TRNSL_DIFF_PATH` (`PATH_ID`,`LANG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_diff`
--

LOCK TABLES `b_translate_diff` WRITE;
/*!40000 ALTER TABLE `b_translate_diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_diff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_file`
--

DROP TABLE IF EXISTS `b_translate_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) NOT NULL,
  `FULL_PATH` varchar(500) NOT NULL,
  `PHRASE_COUNT` int(18) NOT NULL DEFAULT 0,
  `INDEXED` enum('Y','N') NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_TRNSL_FL_PATH` (`PATH_ID`,`LANG_ID`),
  KEY `IX_TRNSL_FULL_PATH` (`FULL_PATH`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_file`
--

LOCK TABLES `b_translate_file` WRITE;
/*!40000 ALTER TABLE `b_translate_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_path`
--

DROP TABLE IF EXISTS `b_translate_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_path` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) NOT NULL DEFAULT 0,
  `DEPTH_LEVEL` int(18) NOT NULL DEFAULT 0,
  `SORT` int(18) NOT NULL DEFAULT 0,
  `PATH` varchar(500) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `IS_LANG` enum('Y','N') NOT NULL DEFAULT 'N',
  `IS_DIR` enum('Y','N') NOT NULL DEFAULT 'N',
  `OBLIGATORY_LANGS` char(50) DEFAULT NULL,
  `INDEXED` enum('Y','N') NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL,
  `MODULE_ID` varchar(50) DEFAULT NULL,
  `ASSIGNMENT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_TRNSL_PTH_NAME` (`PARENT_ID`,`NAME`),
  KEY `IX_TRNSL_PTH_PARENT` (`PARENT_ID`,`IS_DIR`,`IS_LANG`),
  KEY `IX_TRNSL_PTH_PATH` (`PATH`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_path`
--

LOCK TABLES `b_translate_path` WRITE;
/*!40000 ALTER TABLE `b_translate_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_path_lang`
--

DROP TABLE IF EXISTS `b_translate_path_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_path_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PATH` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_TRNSL_LNG_PATH` (`PATH`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_path_lang`
--

LOCK TABLES `b_translate_path_lang` WRITE;
/*!40000 ALTER TABLE `b_translate_path_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_path_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_path_tree`
--

DROP TABLE IF EXISTS `b_translate_path_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_path_tree` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_TRNSL_ANCESTOR` (`PARENT_ID`,`DEPTH_LEVEL`,`PATH_ID`),
  UNIQUE KEY `IX_TRNSL_DESCENDANT` (`PATH_ID`,`PARENT_ID`,`DEPTH_LEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_path_tree`
--

LOCK TABLES `b_translate_path_tree` WRITE;
/*!40000 ALTER TABLE `b_translate_path_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_path_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_translate_phrase`
--

DROP TABLE IF EXISTS `b_translate_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_translate_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PHRASE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXU_TRNSL_PHR_PATH_CODE` (`PATH_ID`,`LANG_ID`,`CODE`),
  KEY `IX_TRNSL_PHR_PATH` (`PATH_ID`,`CODE`),
  KEY `IX_TRNSL_FILE` (`FILE_ID`),
  FULLTEXT KEY `IXF_TRNSL_PHR` (`PHRASE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_translate_phrase`
--

LOCK TABLES `b_translate_phrase` WRITE;
/*!40000 ALTER TABLE `b_translate_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_translate_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_access`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_avatar_mask_access` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_UI_AVATAR_MASK_RIGHT_3` (`ITEM_ID`,`ACCESS_CODE`),
  KEY `B_UI_AVATAR_MASK_RIGHT_1` (`ITEM_ID`),
  KEY `B_UI_AVATAR_MASK_RIGHT_2` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_access`
--

LOCK TABLES `b_ui_avatar_mask_access` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_file_deleted`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_file_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_avatar_mask_file_deleted` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ENTITY` varchar(50) NOT NULL,
  `ORIGINAL_FILE_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_UI_AVATAR_MASK_FILE_DELETED_1` (`ENTITY`),
  KEY `B_UI_AVATAR_MASK_FILE_DELETED_2` (`ITEM_ID`),
  KEY `B_UI_AVATAR_MASK_FILE_DELETED_3` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_file_deleted`
--

LOCK TABLES `b_ui_avatar_mask_file_deleted` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_file_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_file_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_group`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_avatar_mask_group` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OWNER_TYPE` varchar(100) NOT NULL,
  `OWNER_ID` varchar(20) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_B_UI_AVATAR_MASK_GROUP_OWNER` (`OWNER_ID`,`OWNER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_group`
--

LOCK TABLES `b_ui_avatar_mask_group` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_item`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_avatar_mask_item` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OWNER_TYPE` varchar(100) NOT NULL,
  `OWNER_ID` varchar(20) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  `GROUP_ID` int(10) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `B_UI_AVATAR_MASK_ITEM_OWNER` (`OWNER_TYPE`,`OWNER_ID`),
  KEY `B_UI_AVATAR_MASK_ITEM_FILE_ID` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_item`
--

LOCK TABLES `b_ui_avatar_mask_item` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_item_applied_to`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_item_applied_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_avatar_mask_item_applied_to` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ORIGINAL_FILE_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `b_ui_avatar_mask_item_applied1` (`FILE_ID`,`ITEM_ID`),
  KEY `b_ui_avatar_mask_item_applied2` (`ITEM_ID`),
  KEY `b_ui_avatar_mask_item_applied3` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_item_applied_to`
--

LOCK TABLES `b_ui_avatar_mask_item_applied_to` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item_applied_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item_applied_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_recently_used`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_recently_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_avatar_mask_recently_used` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_UI_AVATAR_MASK_ITEM_R_OWNER` (`ITEM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_recently_used`
--

LOCK TABLES `b_ui_avatar_mask_recently_used` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_recently_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_recently_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_entity_editor_config`
--

DROP TABLE IF EXISTS `b_ui_entity_editor_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_entity_editor_config` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(20) NOT NULL,
  `ENTITY_TYPE_ID` varchar(60) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CONFIG` text NOT NULL,
  `COMMON` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `CATEGORY` (`CATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_entity_editor_config`
--

LOCK TABLES `b_ui_entity_editor_config` WRITE;
/*!40000 ALTER TABLE `b_ui_entity_editor_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_entity_editor_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_entity_editor_config_ac`
--

DROP TABLE IF EXISTS `b_ui_entity_editor_config_ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_entity_editor_config_ac` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACCESS_CODE` varchar(10) NOT NULL,
  `CONFIG_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ACCESS_CODE` (`ACCESS_CODE`),
  KEY `CONFIG_ID` (`CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_entity_editor_config_ac`
--

LOCK TABLES `b_ui_entity_editor_config_ac` WRITE;
/*!40000 ALTER TABLE `b_ui_entity_editor_config_ac` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_entity_editor_config_ac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_file_uploader_temp_file`
--

DROP TABLE IF EXISTS `b_ui_file_uploader_temp_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_ui_file_uploader_temp_file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUID` char(36) NOT NULL,
  `FILE_ID` int(11) DEFAULT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `SIZE` bigint(20) NOT NULL,
  `PATH` varchar(255) NOT NULL,
  `MIMETYPE` varchar(255) NOT NULL,
  `RECEIVED_SIZE` bigint(20) NOT NULL DEFAULT 0,
  `WIDTH` int(11) NOT NULL DEFAULT 0,
  `HEIGHT` int(11) NOT NULL DEFAULT 0,
  `BUCKET_ID` int(11) DEFAULT NULL,
  `MODULE_ID` varchar(50) NOT NULL,
  `CONTROLLER` varchar(255) NOT NULL,
  `CLOUD` tinyint(1) NOT NULL DEFAULT 0,
  `UPLOADED` tinyint(1) NOT NULL DEFAULT 0,
  `DELETED` tinyint(1) NOT NULL DEFAULT 0,
  `CREATED_BY` int(11) NOT NULL DEFAULT 0,
  `CREATED_AT` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_UI_UPLOADER_GUID` (`GUID`),
  KEY `IX_B_UI_UPLOADER_FILE_ID` (`FILE_ID`),
  KEY `IX_B_UI_UPLOADER_CREATED_AT` (`CREATED_AT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_file_uploader_temp_file`
--

LOCK TABLES `b_ui_file_uploader_temp_file` WRITE;
/*!40000 ALTER TABLE `b_ui_file_uploader_temp_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_file_uploader_temp_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_undo`
--

DROP TABLE IF EXISTS `b_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_undo` (
  `ID` varchar(255) NOT NULL,
  `MODULE_ID` varchar(50) DEFAULT NULL,
  `UNDO_TYPE` varchar(50) DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) DEFAULT NULL,
  `CONTENT` mediumtext DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_undo`
--

LOCK TABLES `b_undo` WRITE;
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
INSERT INTO `b_undo` VALUES ('10bc8ad98438d645d00410fa1021c77e3','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:2040:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"news\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"#SITE_DIR#statya-detalno.php#ELEMENT_ID#\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"news\"\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710869757),('11266ad178baa3652e89563e011f6a42e','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:2032:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"news\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"#SITE_DIR#statya-detalno.php#ID#\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"news\"\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710869792),('13a8893777a9773804074102eb8fa0734','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:406:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"\",\nArray()\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710868848),('13cba682deef1d0e675a89f9b2b0ba1a3','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:46:\"/shared/httpd/module2/htdocs/service/index.php\";s:7:\"content\";s:4156:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Услуги\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\n	SITE_DIR.\"include/banner_services.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"1\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"2\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div>\n<div>\n</div>\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:form.result.new\", \n	\"calculate-project\", \n	array(\n		\"CACHE_TIME\" => \"3600\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHAIN_ITEM_LINK\" => \"\",\n		\"CHAIN_ITEM_TEXT\" => \"\",\n		\"COMPONENT_TEMPLATE\" => \"calculate-project\",\n		\"EDIT_URL\" => \"list_edit.php\",\n		\"IGNORE_CUSTOM_TEMPLATE\" => \"N\",\n		\"LIST_URL\" => \"index.php\",\n		\"SEF_MODE\" => \"N\",\n		\"SUCCESS_URL\" => \"\",\n		\"USE_EXTENDED_ERRORS\" => \"N\",\n		\"WEB_FORM_ID\" => \"1\",\n		\"VARIABLE_ALIASES\" => array(\n			\"WEB_FORM_ID\" => \"WEB_FORM_ID\",\n			\"RESULT_ID\" => \"RESULT_ID\",\n		)\n	),\n	false\n);?>\n</div>\n<div>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710890175),('15256152dab5ed3494d432c8c8af87758','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:46:\"/shared/httpd/module2/htdocs/service/index.php\";s:7:\"content\";s:4143:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Услуги\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\n	SITE_DIR.\"include/banner_services.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"1\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"2\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div>\n<div>\n</div>\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:form.result.new\", \n	\"calculate-project\", \n	array(\n		\"CACHE_TIME\" => \"3600\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHAIN_ITEM_LINK\" => \"\",\n		\"CHAIN_ITEM_TEXT\" => \"\",\n		\"COMPONENT_TEMPLATE\" => \"calculate-project\",\n		\"EDIT_URL\" => \"\",\n		\"IGNORE_CUSTOM_TEMPLATE\" => \"N\",\n		\"LIST_URL\" => \"index.php\",\n		\"SEF_MODE\" => \"N\",\n		\"SUCCESS_URL\" => \"\",\n		\"USE_EXTENDED_ERRORS\" => \"N\",\n		\"WEB_FORM_ID\" => \"1\",\n		\"VARIABLE_ALIASES\" => array(\n			\"WEB_FORM_ID\" => \"WEB_FORM_ID\",\n			\"RESULT_ID\" => \"RESULT_ID\",\n		)\n	),\n	false\n);?>\n</div>\n<div>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710890099),('15e7cfdb3ba0dc43cb073fa333a200302','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:2000:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"news\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"news\"\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710869672),('16d62a9cb9f2f12a93ec475c3a47e0c48','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:1912:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"news\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\"\",\"\"),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\"\",\"\"),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710869466),('16fe2f3c5a1202950962a8f59756d2205','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:1979:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"news\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"news\",\n		\"DETAIL_URL\" => \"#SITE_DIR#statya-detalno.php?ID=#ELEMENT_ID#\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710868781),('1777f758251402a4e8629a93bd9150393','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:2004:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"news\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"#ID#\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"news\"\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710869507),('18da7ddc74ce24211f33ad17255a1267e','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:46:\"/shared/httpd/module2/htdocs/service/index.php\";s:7:\"content\";s:4133:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Услуги\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\n	SITE_DIR.\"include/banner_services.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"1\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"2\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div>\n<div>\n</div>\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:form.result.new\",\n	\"calculate-project\",\n	Array(\n		\"CACHE_TIME\" => \"3600\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHAIN_ITEM_LINK\" => \"\",\n		\"CHAIN_ITEM_TEXT\" => \"\",\n		\"COMPONENT_TEMPLATE\" => \"calculate-project\",\n		\"EDIT_URL\" => \"result_edit.php\",\n		\"IGNORE_CUSTOM_TEMPLATE\" => \"N\",\n		\"LIST_URL\" => \"index.php\",\n		\"SEF_MODE\" => \"N\",\n		\"SUCCESS_URL\" => \"\",\n		\"USE_EXTENDED_ERRORS\" => \"N\",\n		\"VARIABLE_ALIASES\" => array(\"WEB_FORM_ID\"=>\"WEB_FORM_ID\",\"RESULT_ID\"=>\"RESULT_ID\",),\n		\"WEB_FORM_ID\" => \"1\"\n	)\n);?>\n</div>\n<div>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710889686),('1a4343e840fc569eb71f9c8086191490c','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:2011:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	 <?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n <br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"news\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"#SITE_DIR##\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"news\"\n	),\n	false\n);?><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710869735),('1aa7cfed7ee1170ba2f0720ab6d53f4fa','fileman','edit_menu','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:42:\"/shared/httpd/module2/htdocs/.top.menu.php\";s:7:\"content\";s:189:\"<?\n$aMenuLinks = Array(\n	Array(\n		\"ГЛАВНАЯ\", \n		\"/index.php\", \n		Array(), \n		Array(), \n		\"\" \n	),\n	Array(\n		\"УСЛУГИ\", \n		\"/services.php\", \n		Array(), \n		Array(), \n		\"\" \n	)\n);\n?>\";}',1,1710870806),('1b8b8fbd9b0ec3b0361a66be6f51b34bb','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:46:\"/shared/httpd/module2/htdocs/service/index.php\";s:7:\"content\";s:4152:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Услуги\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\n	SITE_DIR.\"include/banner_services.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"1\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"2\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div>\n<div>\n</div>\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:form.result.new\", \n	\"calculate-project\", \n	array(\n		\"CACHE_TIME\" => \"3600\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHAIN_ITEM_LINK\" => \"\",\n		\"CHAIN_ITEM_TEXT\" => \"\",\n		\"COMPONENT_TEMPLATE\" => \"calculate-project\",\n		\"EDIT_URL\" => \"index.php\",\n		\"IGNORE_CUSTOM_TEMPLATE\" => \"N\",\n		\"LIST_URL\" => \"index.php\",\n		\"SEF_MODE\" => \"N\",\n		\"SUCCESS_URL\" => \"\",\n		\"USE_EXTENDED_ERRORS\" => \"N\",\n		\"WEB_FORM_ID\" => \"1\",\n		\"VARIABLE_ALIASES\" => array(\n			\"WEB_FORM_ID\" => \"WEB_FORM_ID\",\n			\"RESULT_ID\" => \"RESULT_ID\",\n		)\n	),\n	false\n);?>\n</div>\n<div>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710890079),('1d799f86e89508ebe11900ffeeaa24c76','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:46:\"/shared/httpd/module2/htdocs/service/index.php\";s:7:\"content\";s:4143:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Услуги\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\n	SITE_DIR.\"include/banner_services.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"1\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"2\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div>\n<div>\n</div>\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:form.result.new\", \n	\"calculate-project\", \n	array(\n		\"CACHE_TIME\" => \"3600\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHAIN_ITEM_LINK\" => \"\",\n		\"CHAIN_ITEM_TEXT\" => \"\",\n		\"COMPONENT_TEMPLATE\" => \"calculate-project\",\n		\"EDIT_URL\" => \"\",\n		\"IGNORE_CUSTOM_TEMPLATE\" => \"N\",\n		\"LIST_URL\" => \"index.php\",\n		\"SEF_MODE\" => \"N\",\n		\"SUCCESS_URL\" => \"\",\n		\"USE_EXTENDED_ERRORS\" => \"N\",\n		\"WEB_FORM_ID\" => \"1\",\n		\"VARIABLE_ALIASES\" => array(\n			\"WEB_FORM_ID\" => \"WEB_FORM_ID\",\n			\"RESULT_ID\" => \"RESULT_ID\",\n		)\n	),\n	false\n);?>\n</div>\n<div>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710890041),('1f5d7b8de5e02c1b1ca85edfbbb995dfd','fileman','new_section','CFileman::UndoNewSection','a:4:{s:7:\"absPath\";s:36:\"/shared/httpd/module2/htdocs/service\";s:4:\"path\";s:8:\"/service\";s:4:\"site\";s:2:\"s1\";s:4:\"menu\";a:3:{s:8:\"menuFile\";s:15:\"/.left.menu.php\";s:8:\"menuName\";s:14:\"Сервисы\";s:8:\"menuPath\";s:9:\"/service/\";}}',1,1710854634),('1fb5c80817f3931f1a6092c7b2d77e520','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:38:\"/shared/httpd/module2/htdocs/index.php\";s:7:\"content\";s:2016:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"1С-Битрикс: Управление сайтом\");\n?><div>\n	<?\n$APPLICATION->IncludeFile(\nSITE_DIR.\"include/banner_main.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>&nbsp;\n</div>\n<div>\n	<br>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"news\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"news\",\n		\"DETAIL_URL\" => \"#SITE_DIR#statya-detalno.php?ID=#ELEMENT_ID#\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1710868824),('214a9ffef24a513d85c78138bfd939903','main','autosave','CAutoSave::_Restore','a:13:{s:7:\"logical\";s:0:\"\";s:6:\"filter\";s:1:\"Y\";s:10:\"set_filter\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:4:\"path\";s:18:\"/service/index.php\";s:4:\"save\";s:0:\"\";s:8:\"full_src\";s:1:\"Y\";s:8:\"template\";s:0:\"\";s:8:\"back_url\";s:0:\"\";s:7:\"filesrc\";s:4133:\"<?\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Услуги\");\n?>\n\n<?\n$APPLICATION->IncludeFile(\n	SITE_DIR.\"include/banner_services.php\", \nArray(), \nArray(\"MODE\"=>\"\") \n);\n?>\n\n\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"1\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"services\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \"services\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"2\",\n		\"IBLOCK_TYPE\" => \"articles\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"Y\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"2\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"Y\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"Y\",\n		\"SET_META_KEYWORDS\" => \"Y\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"Y\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n</div>\n<div>\n</div>\n<div>\n	 <?$APPLICATION->IncludeComponent(\n	\"bitrix:form.result.new\",\n	\"calculate-project\",\n	Array(\n		\"CACHE_TIME\" => \"3600\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHAIN_ITEM_LINK\" => \"\",\n		\"CHAIN_ITEM_TEXT\" => \"\",\n		\"COMPONENT_TEMPLATE\" => \"calculate-project\",\n		\"EDIT_URL\" => \"result_edit.php\",\n		\"IGNORE_CUSTOM_TEMPLATE\" => \"N\",\n		\"LIST_URL\" => \"index.php\",\n		\"SEF_MODE\" => \"N\",\n		\"SUCCESS_URL\" => \"\",\n		\"USE_EXTENDED_ERRORS\" => \"N\",\n		\"VARIABLE_ALIASES\" => array(\"WEB_FORM_ID\"=>\"WEB_FORM_ID\",\"RESULT_ID\"=>\"RESULT_ID\",),\n		\"WEB_FORM_ID\" => \"1\"\n	)\n);?>\n</div>\n<div>\n</div><?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";s:5:\"apply\";s:0:\"\";s:6:\"cancel\";s:0:\"\";s:21:\"tabControl_active_tab\";s:5:\"edit1\";}',1,1710870868),('2b0d35257a11e1bfc0990937ad8ed41f5','main','autosave','CAutoSave::_Restore','a:13:{s:7:\"logical\";s:0:\"\";s:6:\"filter\";s:1:\"Y\";s:10:\"set_filter\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:4:\"path\";s:71:\"/local/templates/yanicode/components/bitrix/news.list/news/template.php\";s:4:\"save\";s:0:\"\";s:8:\"full_src\";s:1:\"Y\";s:8:\"template\";s:0:\"\";s:8:\"back_url\";s:0:\"\";s:7:\"filesrc\";s:1155:\"<?if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();\n\n$this->setFrameMode(true);\n?>\n<section class=\"container\">\n	<div class=\"blog-list\">\n		<? foreach ($arResult[\"ITEMS\"] as $arItem):?>\n			<?\n			$this->AddEditAction($arItem[\'ID\'], $arItem[\'EDIT_LINK\'], CIBlock::GetArrayByID($arItem[\"IBLOCK_ID\"], \"ELEMENT_EDIT\"));\n			$this->AddDeleteAction($arItem[\'ID\'], $arItem[\'DELETE_LINK\'], CIBlock::GetArrayByID($arItem[\"IBLOCK_ID\"], \"ELEMENT_DELETE\"), array(\"CONFIRM\" => GetMessage(\'CT_BNL_ELEMENT_DELETE_CONFIRM\')));\n			?>\n		\n			<a href=\"<? echo $arItem[\"DETAIL_PAGE_URL\"] ?>\" class=\"blog\">\n			<div class=\"blog__img\">\n				<img width=\"100%\" height=\"100%\" src=\"<?= $arItem[\"PREVIEW_PICTURE\"][\"SRC\"] ?>\" alt=\"\">\n			</div>\n			<div class=\"blog__desc\">\n				<div class=\"blog__title\">\n					<? echo $arItem[\"NAME\"] ?>\n				</div>\n				<div class=\"blog__date\">\n					<?echo explode(\" \", $arItem[\"TIMESTAMP_X\"])[0]?>\n				</div>\n				<? if ($arParams[\"DISPLAY_PREVIEW_TEXT\"] != \"N\" && $arItem[\"PREVIEW_TEXT\"]): ?>\n					<div class=\"blog_article\"><? echo $arItem[\"PREVIEW_TEXT\"]; ?></div>\n				<? endif; ?>\n			</div>\n			</a>\n		<? endforeach; ?> \n		</div>\n	</section>\";s:5:\"apply\";s:0:\"\";s:6:\"cancel\";s:0:\"\";s:21:\"tabControl_active_tab\";s:5:\"edit1\";}',1,1710869316),('2b7129aa2019d3f2c9a28909a11ab519d','main','autosave','CAutoSave::_Restore','a:13:{s:7:\"logical\";s:0:\"\";s:6:\"filter\";s:1:\"Y\";s:10:\"set_filter\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:4:\"path\";s:36:\"/local/templates/yanicode/footer.php\";s:4:\"save\";s:0:\"\";s:8:\"full_src\";s:1:\"Y\";s:8:\"template\";s:0:\"\";s:8:\"back_url\";s:0:\"\";s:7:\"filesrc\";s:7479:\"</main>\n<footer class=\"footer\">\n        <div class=\"container\">\n            <div class=\"footer-wrapper\">\n				<a href=\"/\" class=\"footer__logo\">\n                    <img width=\"232\" height=\"71\" src=\"<?=SITE_TEMPLATE_PATH?>/assets/images/svg/logo-yanicode.svg\" alt=\"yanicode\">\n                </a>\n                <div class=\"footer__feedback\">\n                    <div class=\"footer__mail\">\n                        <a href=\"mailto:info@yanicode.ru\">info@yanicode.ru</a>\n                    </div>\n                    <div class=\"footer__networks\">\n                        <a href=\"\">\n                            <svg width=\"40\" height=\"40\" viewBox=\"0 0 52 52\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M25.7319 0C11.5434 0 0 11.5434 0 25.7319C0 39.9193 11.5434 51.4638 25.7319 51.4638C39.9193 51.4638 51.4638 39.9193 51.4638 25.7319C51.4638 11.5434 39.9214 0 25.7319 0ZM32.1312 26.6378H27.9448C27.9448 33.3262 27.9448 41.5591 27.9448 41.5591H21.7414C21.7414 41.5591 21.7414 33.406 21.7414 26.6378H18.7926V21.3641H21.7414V17.953C21.7414 15.51 22.9023 11.6926 28.0018 11.6926L32.5986 11.7103V16.8295C32.5986 16.8295 29.8053 16.8295 29.2622 16.8295C28.719 16.8295 27.9469 17.101 27.9469 18.266V21.3652H32.6732L32.1312 26.6378Z\" fill=\"white\" />\n                            </svg>\n                        </a>\n                        <a href=\"\">\n                            <svg width=\"40\" height=\"40\" viewBox=\"0 0 53 52\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <g clip-path=\"url(#clip0)\">\n                                    <path d=\"M31.3727 25.7319C31.3727 28.4521 29.1677 30.6571 26.4475 30.6571C23.7273 30.6571 21.5222 28.4521 21.5222 25.7319C21.5222 23.0117 23.7273 20.8066 26.4475 20.8066C29.1677 20.8066 31.3727 23.0117 31.3727 25.7319Z\" fill=\"white\" />\n                                    <path d=\"M37.9658 17.0177C37.729 16.3761 37.3513 15.7954 36.8605 15.3188C36.3839 14.828 35.8035 14.4503 35.1616 14.2135C34.6409 14.0113 33.8588 13.7706 32.4182 13.705C30.8598 13.634 30.3926 13.6187 26.4474 13.6187C22.5018 13.6187 22.0345 13.6336 20.4766 13.7046C19.036 13.7706 18.2534 14.0113 17.7332 14.2135C17.0912 14.4503 16.5105 14.828 16.0343 15.3188C15.5435 15.7954 15.1657 16.3758 14.9286 17.0177C14.7264 17.5384 14.4857 18.3209 14.4201 19.7615C14.3491 21.3194 14.3337 21.7867 14.3337 25.7323C14.3337 29.6775 14.3491 30.1448 14.4201 31.7031C14.4857 33.1437 14.7264 33.9259 14.9286 34.4465C15.1657 35.0885 15.5431 35.6688 16.0339 36.1454C16.5105 36.6362 17.0908 37.0139 17.7328 37.2507C18.2534 37.4533 19.036 37.694 20.4766 37.7596C22.0345 37.8306 22.5014 37.8456 26.447 37.8456C30.393 37.8456 30.8602 37.8306 32.4178 37.7596C33.8584 37.694 34.6409 37.4533 35.1616 37.2507C36.4502 36.7536 37.4687 35.7351 37.9658 34.4465C38.168 33.9259 38.4087 33.1437 38.4747 31.7031C38.5457 30.1448 38.5606 29.6775 38.5606 25.7323C38.5606 21.7867 38.5457 21.3194 38.4747 19.7615C38.4091 18.3209 38.1684 17.5384 37.9658 17.0177ZM26.4474 33.3192C22.2568 33.3192 18.8597 29.9225 18.8597 25.7319C18.8597 21.5413 22.2568 18.1446 26.4474 18.1446C30.6376 18.1446 34.0347 21.5413 34.0347 25.7319C34.0347 29.9225 30.6376 33.3192 26.4474 33.3192ZM34.3347 19.6178C33.3554 19.6178 32.5615 18.8238 32.5615 17.8446C32.5615 16.8654 33.3554 16.0715 34.3347 16.0715C35.3139 16.0715 36.1078 16.8654 36.1078 17.8446C36.1074 18.8238 35.3139 19.6178 34.3347 19.6178Z\" fill=\"white\" />\n                                    <path d=\"M26.4475 0C12.2383 0 0.715576 11.5227 0.715576 25.7319C0.715576 39.941 12.2383 51.4638 26.4475 51.4638C40.6566 51.4638 52.1793 39.941 52.1793 25.7319C52.1793 11.5227 40.6566 0 26.4475 0ZM41.1341 31.8236C41.0626 33.3966 40.8125 34.4704 40.4473 35.4104C39.6797 37.3952 38.1107 38.9641 36.126 39.7318C35.1864 40.0969 34.1121 40.3466 32.5396 40.4185C30.964 40.4903 30.4606 40.5076 26.4478 40.5076C22.4347 40.5076 21.9317 40.4903 20.3557 40.4185C18.7832 40.3466 17.7089 40.0969 16.7693 39.7318C15.783 39.3607 14.8902 38.7792 14.152 38.0273C13.4005 37.2896 12.819 36.3963 12.448 35.4104C12.0828 34.4708 11.8327 33.3966 11.7612 31.824C11.6886 30.248 11.6717 29.7446 11.6717 25.7319C11.6717 21.7191 11.6886 21.2158 11.7609 19.6401C11.8323 18.0672 12.082 16.9933 12.4472 16.0534C12.8182 15.0675 13.4001 14.1742 14.152 13.4364C14.8898 12.6845 15.783 12.103 16.7689 11.732C17.7089 11.3669 18.7828 11.1171 20.3557 11.0453C21.9313 10.9734 22.4347 10.9562 26.4475 10.9562C30.4602 10.9562 30.9636 10.9734 32.5392 11.0457C34.1121 11.1171 35.186 11.3669 36.126 11.7316C37.1119 12.1027 38.0051 12.6845 38.7433 13.4364C39.4948 14.1746 40.0767 15.0675 40.4473 16.0534C40.8129 16.9933 41.0626 18.0672 41.1344 19.6401C41.2063 21.2158 41.2232 21.7191 41.2232 25.7319C41.2232 29.7446 41.2063 30.248 41.1341 31.8236Z\" fill=\"white\" />\n                                </g>\n                                <defs>\n                                    <clipPath id=\"clip0\">\n                                        <rect width=\"51.4638\" height=\"51.4638\" fill=\"white\" transform=\"translate(0.715576)\" />\n                                    </clipPath>\n                                </defs>\n                            </svg>\n                        </a>\n                        <a href=\"\">\n                            <svg width=\"40\" height=\"40\" viewBox=\"0 0 52 52\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <g clip-path=\"url(#clip0)\">\n                                    <path d=\"M22.9578 30.5527L31.328 25.7319L22.9578 20.9111V30.5527Z\" fill=\"white\" />\n                                    <path d=\"M26.1628 0C11.9536 0 0.430908 11.5227 0.430908 25.7319C0.430908 39.941 11.9536 51.4638 26.1628 51.4638C40.3719 51.4638 51.8947 39.941 51.8947 25.7319C51.8947 11.5227 40.3719 0 26.1628 0ZM42.2413 25.7582C42.2413 25.7582 42.2413 30.9767 41.5793 33.4931C41.2083 34.8705 40.1222 35.9566 38.7449 36.3272C36.2284 36.9896 26.1628 36.9896 26.1628 36.9896C26.1628 36.9896 16.1234 36.9896 13.5807 36.3009C12.2034 35.9302 11.1173 34.8438 10.7463 33.4664C10.0839 30.9767 10.0839 25.7319 10.0839 25.7319C10.0839 25.7319 10.0839 20.5137 10.7463 17.9973C11.1169 16.6199 12.2297 15.5072 13.5807 15.1366C16.0971 14.4742 26.1628 14.4742 26.1628 14.4742C26.1628 14.4742 36.2284 14.4742 38.7449 15.1629C40.1222 15.5335 41.2083 16.6199 41.5793 17.9973C42.268 20.5137 42.2413 25.7582 42.2413 25.7582Z\" fill=\"white\" />\n                                </g>\n                                <defs>\n                                    <clipPath id=\"clip0\">\n                                        <rect width=\"51.4638\" height=\"51.4638\" fill=\"white\" transform=\"translate(0.430908)\" />\n                                    </clipPath>\n                                </defs>\n                            </svg>\n                        </a>\n                    </div>\n                    <div class=\"footer__phone\">\n                        <a href=\"tel:+79114510616\">+79114510616</a>\n                    </div>\n                </div>\n                <div class=\"footer__law\">\n                    YANICODE <?php echo date ( \'Y\' ) ; ?> © ВСЕ ПРАВА ЗАЩИЩЕНЫ.\n                    ЛЮБОЕ ИСПОЛЬЗОВАНИЕ МАТЕРИАЛОВ\n                    ВОЗМОЖНО ТОЛЬКО С СОГЛАСИЯ\n                    ПРАВООБЛАДАТЕЛЯ.\n                </div>\n            </div>\n        </div>\n    </footer>\n<script src=\"<?=SITE_TEMPLATE_PATH?>/assets/js/build.js\"></script>\n</body>\n\n</html>\";s:5:\"apply\";s:0:\"\";s:6:\"cancel\";s:0:\"\";s:21:\"tabControl_active_tab\";s:5:\"edit1\";}',1,1710871231),('2e8951335efff1943fe6556db38700fc7','main','autosave','CAutoSave::_Restore','a:13:{s:7:\"logical\";s:0:\"\";s:6:\"filter\";s:1:\"Y\";s:10:\"set_filter\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:4:\"path\";s:45:\"/local/templates/services_yanicode/header.php\";s:4:\"save\";s:0:\"\";s:8:\"full_src\";s:1:\"Y\";s:8:\"template\";s:0:\"\";s:8:\"back_url\";s:0:\"\";s:7:\"filesrc\";s:2051:\"<? if (!defined(\'B_PROLOG_INCLUDED\') || B_PROLOG_INCLUDED !== true) die(); ?>\n<!DOCTYPE html>\n<html lang=\"ru\">\n\n<head>\n    <meta charset=\"utf-8\">\n    <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n    <meta class=\"js-meta-viewport\" name=\"viewport\" content=\"width=device-width, height=device-height, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0\">\n    <meta name=\"format-detection\" content=\"telephone=no\">\n    <title><? $APPLICATION->ShowTitle(); ?></title>\n    <? $APPLICATION->ShowHead();  ?>\n    <link rel=\"stylesheet\" href=\"<?=SITE_TEMPLATE_PATH?>/assets/template_styles.css\">\n</head>\n\n<body>\n    <div id=\"panel\">\n		<? $APPLICATION->ShowPanel(); ?> \n    </div>\n\n    <header class=\"header\">\n        <div class=\"container\">\n            <div class=\"header-wrapper\">\n				<a href=\"/\" class=\"header__logo\">\n                    <img width=\"300\" height=\"92\" src=\"<?=SITE_TEMPLATE_PATH?>/assets/images/svg/logo-yanicode.svg\" alt=\"yanicode\">\n                </a>\n                <div class=\"header__burger header__burger_close\">\n                    <span class=\"burger-line\"></span>\n                    <span class=\"burger-line\"></span>\n                    <span class=\"burger-line\"></span>\n                </div>\n                <div class=\"header-nav\">\n                    <nav class=\"nav-list\">\n						<?$APPLICATION->IncludeComponent(\"bitrix:menu\",\"top-menu\",Array(\n								\"ROOT_MENU_TYPE\" => \"top\", \n								\"MAX_LEVEL\" => \"1\", \n								\"CHILD_MENU_TYPE\" => \"top\", \n								\"USE_EXT\" => \"Y\",\n								\"DELAY\" => \"N\",\n								\"ALLOW_MULTI_SELECT\" => \"Y\",\n								\"MENU_CACHE_TYPE\" => \"N\", \n								\"MENU_CACHE_TIME\" => \"3600\", \n								\"MENU_CACHE_USE_GROUPS\" => \"Y\", \n								\"MENU_CACHE_GET_VARS\" => \"\" \n							)\n						);?>\n                    </nav>\n                    <div class=\"header__phone\">\n                        <a href=\"tel:+79114510616\">+79114510616</a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </header>\n    <main class=\"website-workarea\">\n\n\";s:5:\"apply\";s:0:\"\";s:6:\"cancel\";s:0:\"\";s:21:\"tabControl_active_tab\";s:5:\"edit1\";}',1,1710870441);
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_metadata`
--

DROP TABLE IF EXISTS `b_urlpreview_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(2000) NOT NULL,
  `TYPE` char(1) NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) DEFAULT NULL,
  `EMBED` mediumtext DEFAULT NULL,
  `EXTRA` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_metadata`
--

LOCK TABLES `b_urlpreview_metadata` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_route`
--

DROP TABLE IF EXISTS `b_urlpreview_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(2000) NOT NULL,
  `MODULE` varchar(50) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `PARAMETERS` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_route`
--

LOCK TABLES `b_urlpreview_route` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
INSERT INTO `b_urlpreview_route` VALUES (1,'/knowledge/#knowledgeCode#/','landing','\\Bitrix\\Landing\\Landing\\UrlPreview','a:3:{s:13:\"knowledgeCode\";s:14:\"$knowledgeCode\";s:5:\"scope\";s:9:\"knowledge\";s:12:\"allowSlashes\";s:1:\"N\";}'),(2,'/knowledge/group/#knowledgeCode#/','landing','\\Bitrix\\Landing\\Landing\\UrlPreview','a:3:{s:13:\"knowledgeCode\";s:14:\"$knowledgeCode\";s:5:\"scope\";s:5:\"group\";s:12:\"allowSlashes\";s:1:\"N\";}');
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LOGIN` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `CHECKWORD` varchar(255) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) DEFAULT NULL,
  `PERSONAL_GENDER` char(1) DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) DEFAULT NULL,
  `PERSONAL_STREET` text DEFAULT NULL,
  `PERSONAL_MAILBOX` varchar(255) DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) DEFAULT NULL,
  `PERSONAL_NOTES` text DEFAULT NULL,
  `WORK_COMPANY` varchar(255) DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) DEFAULT NULL,
  `WORK_POSITION` varchar(255) DEFAULT NULL,
  `WORK_WWW` varchar(255) DEFAULT NULL,
  `WORK_PHONE` varchar(255) DEFAULT NULL,
  `WORK_FAX` varchar(255) DEFAULT NULL,
  `WORK_PAGER` varchar(255) DEFAULT NULL,
  `WORK_STREET` text DEFAULT NULL,
  `WORK_MAILBOX` varchar(255) DEFAULT NULL,
  `WORK_CITY` varchar(255) DEFAULT NULL,
  `WORK_STATE` varchar(255) DEFAULT NULL,
  `WORK_ZIP` varchar(255) DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) DEFAULT NULL,
  `WORK_PROFILE` text DEFAULT NULL,
  `WORK_LOGO` int(11) DEFAULT NULL,
  `WORK_NOTES` text DEFAULT NULL,
  `ADMIN_NOTES` text DEFAULT NULL,
  `STORED_HASH` varchar(32) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(11) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) DEFAULT NULL,
  `TIME_ZONE` varchar(50) DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(11) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `BX_USER_ID` varchar(32) DEFAULT NULL,
  `LANGUAGE_ID` char(2) DEFAULT NULL,
  `BLOCKED` char(1) NOT NULL DEFAULT 'N',
  `PASSWORD_EXPIRED` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`),
  KEY `ix_user_last_login` (`LAST_LOGIN`),
  KEY `ix_user_date_register` (`DATE_REGISTER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'2024-03-12 17:44:31','admin','$6$6oD0d83TxR3TzfZ7$4efOBnhSaxqCM0TgrVTUkYmBpLcqrACOMEIGWFzuwLVrodSntRD.oyl2mfk.Vx09GLt6RN5Uozjt9BU04Oq7y0','$6$gxFaZtQZPcNG7bql$Y3mWjjH3YO/QfcpZniqbbnZI76niYM6ZW6SsKu2VP23sPBIW1kePeZ89wFNXH7XIp5IK3ehUtbGJEqMMOADqk0','Y','Глеб','Шерстобитов','gleb221199@gmail.com','2024-03-19 20:58:20','2024-03-12 17:44:31',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-12 17:44:31',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N');
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access`
--

DROP TABLE IF EXISTS `b_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) DEFAULT NULL,
  `ACCESS_CODE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`),
  KEY `ix_ua_provider` (`PROVIDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access`
--

LOCK TABLES `b_user_access` WRITE;
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
INSERT INTO `b_user_access` VALUES (1,0,'group','G2'),(2,1,'group','G1'),(3,1,'group','G3'),(4,1,'group','G4'),(5,1,'group','G2'),(9,1,'user','U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access_check`
--

DROP TABLE IF EXISTS `b_user_access_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) DEFAULT NULL,
  UNIQUE KEY `ux_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access_check`
--

LOCK TABLES `b_user_access_check` WRITE;
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_action`
--

DROP TABLE IF EXISTS `b_user_auth_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT 100,
  `ACTION` varchar(20) DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_action`
--

LOCK TABLES `b_user_auth_action` WRITE;
/*!40000 ALTER TABLE `b_user_auth_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_auth_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_code`
--

DROP TABLE IF EXISTS `b_user_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_auth_code` (
  `USER_ID` int(11) NOT NULL,
  `CODE_TYPE` varchar(20) NOT NULL DEFAULT 'email',
  `OTP_SECRET` text DEFAULT NULL,
  `ATTEMPTS` int(11) DEFAULT 0,
  `DATE_SENT` datetime DEFAULT NULL,
  `DATE_RESENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_code`
--

LOCK TABLES `b_user_auth_code` WRITE;
/*!40000 ALTER TABLE `b_user_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_counter`
--

DROP TABLE IF EXISTS `b_user_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_counter` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SITE_ID` char(2) NOT NULL DEFAULT '**',
  `CODE` varchar(50) NOT NULL,
  `CNT` int(11) NOT NULL DEFAULT 0,
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) DEFAULT NULL,
  `PARAMS` text DEFAULT NULL,
  `SENT` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_counter_user_site_code` (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_counter`
--

LOCK TABLES `b_user_counter` WRITE;
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_device`
--

DROP TABLE IF EXISTS `b_user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_device` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) unsigned NOT NULL,
  `DEVICE_UID` varchar(50) NOT NULL,
  `DEVICE_TYPE` int(10) unsigned NOT NULL DEFAULT 0,
  `BROWSER` varchar(100) DEFAULT NULL,
  `PLATFORM` varchar(25) DEFAULT NULL,
  `USER_AGENT` varchar(1000) DEFAULT NULL,
  `COOKABLE` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_user_device_user` (`USER_ID`,`DEVICE_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_device`
--

LOCK TABLES `b_user_device` WRITE;
/*!40000 ALTER TABLE `b_user_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_device_login`
--

DROP TABLE IF EXISTS `b_user_device_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_device_login` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` bigint(20) unsigned NOT NULL,
  `LOGIN_DATE` datetime DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `CITY_GEOID` bigint(20) DEFAULT NULL,
  `REGION_GEOID` bigint(20) DEFAULT NULL,
  `COUNTRY_ISO_CODE` varchar(10) DEFAULT NULL,
  `APP_PASSWORD_ID` bigint(20) unsigned DEFAULT NULL,
  `STORED_AUTH_ID` bigint(20) unsigned DEFAULT NULL,
  `HIT_AUTH_ID` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_user_device_login_device` (`DEVICE_ID`),
  KEY `ix_user_device_login_date` (`LOGIN_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_device_login`
--

LOCK TABLES `b_user_device_login` WRITE;
/*!40000 ALTER TABLE `b_user_device_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_device_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_digest`
--

DROP TABLE IF EXISTS `b_user_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_digest`
--

LOCK TABLES `b_user_digest` WRITE;
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field`
--

DROP TABLE IF EXISTS `b_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(50) DEFAULT NULL,
  `FIELD_NAME` varchar(50) DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) DEFAULT NULL,
  `XML_ID` varchar(255) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) NOT NULL DEFAULT 'N',
  `SETTINGS` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field`
--

LOCK TABLES `b_user_field` WRITE;
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
INSERT INTO `b_user_field` VALUES (1,'BLOG_POST','UF_BLOG_POST_DOC','file','UF_BLOG_POST_DOC',100,'Y','N','N','N','Y','Y','a:0:{}'),(2,'BLOG_COMMENT','UF_BLOG_COMMENT_DOC','file','UF_BLOG_COMMENT_DOC',100,'Y','N','N','N','Y','Y','a:0:{}'),(3,'BLOG_POST','UF_BLOG_POST_URL_PRV','url_preview','UF_BLOG_POST_URL_PRV',100,'N','N','N','N','Y','Y','a:0:{}'),(4,'BLOG_COMMENT','UF_BLOG_COMM_URL_PRV','url_preview','UF_BLOG_COMM_URL_PRV',100,'N','N','N','N','Y','Y','a:0:{}'),(5,'BLOG_POST','UF_GRATITUDE','integer','UF_GRATITUDE',100,'N','N','N','N','Y','N','a:0:{}'),(6,'FORUM_MESSAGE','UF_FORUM_MES_URL_PRV','url_preview','UF_FORUM_MES_URL_PRV',100,'N','N','N','N','Y','N','a:0:{}'),(7,'FORUM_MESSAGE','UF_TASK_COMMENT_TYPE','integer','UF_TASK_COMMENT_TYPE',100,'N','N','N','N','Y','N','a:0:{}');
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_confirm`
--

DROP TABLE IF EXISTS `b_user_field_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_confirm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FIELD` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) NOT NULL,
  `CONFIRM_CODE` varchar(32) NOT NULL,
  `ATTEMPTS` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_confirm`
--

LOCK TABLES `b_user_field_confirm` WRITE;
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_enum`
--

DROP TABLE IF EXISTS `b_user_field_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL,
  `DEF` char(1) NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_enum`
--

LOCK TABLES `b_user_field_enum` WRITE;
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_lang`
--

DROP TABLE IF EXISTS `b_user_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_lang`
--

LOCK TABLES `b_user_field_lang` WRITE;
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_permission`
--

DROP TABLE IF EXISTS `b_user_field_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_permission` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` tinyint(3) unsigned NOT NULL,
  `USER_FIELD_ID` int(10) unsigned NOT NULL,
  `ACCESS_CODE` varchar(8) NOT NULL,
  `PERMISSION_ID` varchar(32) NOT NULL,
  `VALUE` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ROLE_ID` (`ENTITY_TYPE_ID`),
  KEY `GROUP_ID` (`USER_FIELD_ID`),
  KEY `PERMISSION_ID` (`PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_permission`
--

LOCK TABLES `b_user_field_permission` WRITE;
/*!40000 ALTER TABLE `b_user_field_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_group`
--

DROP TABLE IF EXISTS `b_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_group` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_group`
--

LOCK TABLES `b_user_group` WRITE;
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
INSERT INTO `b_user_group` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_hit_auth`
--

DROP TABLE IF EXISTS `b_user_hit_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_hit_auth` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `HASH` varchar(32) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `SITE_ID` char(2) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `VALID_UNTIL` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_hit_auth`
--

LOCK TABLES `b_user_hit_auth` WRITE;
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index`
--

DROP TABLE IF EXISTS `b_user_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text DEFAULT NULL,
  `SEARCH_DEPARTMENT_CONTENT` text DEFAULT NULL,
  `SEARCH_ADMIN_CONTENT` text DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `SECOND_NAME` varchar(50) DEFAULT NULL,
  `WORK_POSITION` varchar(255) DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index`
--

LOCK TABLES `b_user_index` WRITE;
/*!40000 ALTER TABLE `b_user_index` DISABLE KEYS */;
INSERT INTO `b_user_index` VALUES (1,'001 Глеб Шерстобитов ','','001 Глеб Шерстобитов tyro221199 tznvy pbz tyro221199@tznvy.pbz nqzva','Глеб','Шерстобитов','','','');
/*!40000 ALTER TABLE `b_user_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_option`
--

DROP TABLE IF EXISTS `b_user_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` mediumtext DEFAULT NULL,
  `COMMON` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2330 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_option`
--

LOCK TABLES `b_user_option` WRITE;
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
INSERT INTO `b_user_option` VALUES (1,0,'intranet','~gadgets_admin_index','a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}','Y'),(2,1,'admin_panel','settings','a:3:{s:4:\"edit\";s:2:\"on\";s:3:\"fix\";s:2:\"on\";s:9:\"collapsed\";s:2:\"on\";}','N'),(3,1,'hot_keys','user_defined','b:1;','N'),(4,1,'html_editor','user_settings_','a:3:{s:13:\"taskbar_shown\";s:1:\"1\";s:14:\"split_vertical\";s:1:\"1\";s:4:\"view\";s:5:\"split\";}','N'),(5,1,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"N\";}','N'),(6,1,'socialservices','networkPopup','a:1:{s:9:\"showcount\";s:2:\"20\";}','N'),(9,1,'admin_menu','pos','a:3:{s:8:\"sections\";s:194:\"menu_site,iblock_admin,menu_marketplace,menu_fileman,menu_iblock_%2Farticles%2F2,menu_webforms,menu_webforms_list,menu_perfmon,menu_iblock_/articles,menu_iblock,menu_fileman_file_s1_,menu_system\";s:5:\"width\";s:3:\"369\";s:3:\"ver\";s:2:\"on\";}','N'),(20,1,'fileman','code_editor','a:2:{s:5:\"theme\";s:5:\"light\";s:9:\"highlight\";s:1:\"1\";}','N'),(29,1,'fileman','last_pathes','s:422:\"a:10:{i:0;s:60:\"/bitrix/components/bitrix/form.result.new/templates/.default\";i:1;s:51:\"/bitrix/components/bitrix/form.result.new/templates\";i:2;s:41:\"/bitrix/components/bitrix/form.result.new\";i:3;s:6:\"/local\";i:4;s:7:\"/bitrix\";i:5;s:25:\"/local/templates/yanicode\";i:6;s:32:\"/local/templates/yanicode/assets\";i:7;s:16:\"/local/templates\";i:8;s:8:\"/include\";i:9;s:52:\"/local/templates/services_yanicode/components/bitrix\";}\";','N'),(138,1,'main.interface.grid','tbl_iblock_admin_dba5d91846ce1a5e63734dfcbcb481cb','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(173,1,'main.ui.filter','tbl_iblock_section_729f69bbdbc6c423526ea2cb8dac177b','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(179,1,'main.interface.grid','tbl_iblock_section_729f69bbdbc6c423526ea2cb8dac177b','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(180,1,'main.ui.filter','tbl_iblock_element_729f69bbdbc6c423526ea2cb8dac177b','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:14:\"default_filter\";a:0:{}}}','N'),(185,1,'main.interface.grid','tbl_iblock_element_729f69bbdbc6c423526ea2cb8dac177b','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:5:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}s:12:\"last_sort_by\";s:11:\"timestamp_x\";s:15:\"last_sort_order\";s:4:\"desc\";}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(236,1,'fileman','file_dialog_config','s:60:\"s1;/local/templates/yanicode/components/bitrix;list;type;asc\";','N'),(335,1,'main.interface.grid','tbl_iblock_dba5d91846ce1a5e63734dfcbcb481cb','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(570,1,'main.ui.filter','tbl_iblock_section_86c5d4b5c8a3e34844192ae6be8300a2','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(576,1,'main.interface.grid','tbl_iblock_section_86c5d4b5c8a3e34844192ae6be8300a2','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(590,1,'main.ui.filter','tbl_iblock_element_86c5d4b5c8a3e34844192ae6be8300a2','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(595,1,'main.interface.grid','tbl_iblock_element_86c5d4b5c8a3e34844192ae6be8300a2','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_password`
--

DROP TABLE IF EXISTS `b_user_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_password` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `DATE_CHANGE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_user_password_user_date` (`USER_ID`,`DATE_CHANGE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_password`
--

LOCK TABLES `b_user_password` WRITE;
/*!40000 ALTER TABLE `b_user_password` DISABLE KEYS */;
INSERT INTO `b_user_password` VALUES (1,1,'$6$6oD0d83TxR3TzfZ7$4efOBnhSaxqCM0TgrVTUkYmBpLcqrACOMEIGWFzuwLVrodSntRD.oyl2mfk.Vx09GLt6RN5Uozjt9BU04Oq7y0','2024-03-12 17:44:31');
/*!40000 ALTER TABLE `b_user_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_phone_auth`
--

DROP TABLE IF EXISTS `b_user_phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) NOT NULL,
  `OTP_SECRET` text DEFAULT NULL,
  `ATTEMPTS` int(11) DEFAULT 0,
  `CONFIRMED` char(1) DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_phone_auth`
--

LOCK TABLES `b_user_phone_auth` WRITE;
/*!40000 ALTER TABLE `b_user_phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_history`
--

DROP TABLE IF EXISTS `b_user_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) DEFAULT NULL,
  `USER_AGENT` text DEFAULT NULL,
  `REQUEST_URI` text DEFAULT NULL,
  `UPDATED_BY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_history_user` (`USER_ID`),
  KEY `ix_profile_history_date` (`DATE_INSERT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_history`
--

LOCK TABLES `b_user_profile_history` WRITE;
/*!40000 ALTER TABLE `b_user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_record`
--

DROP TABLE IF EXISTS `b_user_profile_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) DEFAULT NULL,
  `DATA` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_record`
--

LOCK TABLES `b_user_profile_record` WRITE;
/*!40000 ALTER TABLE `b_user_profile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_session`
--

DROP TABLE IF EXISTS `b_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_session` (
  `SESSION_ID` varchar(250) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SESSION_DATA` longtext DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`),
  KEY `ix_user_session_time` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_session`
--

LOCK TABLES `b_user_session` WRITE;
/*!40000 ALTER TABLE `b_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_stored_auth`
--

DROP TABLE IF EXISTS `b_user_stored_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_stored_auth` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) NOT NULL,
  `TEMP_HASH` char(1) NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_stored_auth`
--

LOCK TABLES `b_user_stored_auth` WRITE;
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
INSERT INTO `b_user_stored_auth` VALUES (1,1,'2024-03-12 17:44:31','2024-03-12 17:44:31','B69N68Evs75SOxGlnB5ko61EUmG7O3et','N',2886790657),(2,1,'2024-03-19 16:58:04','2024-03-19 20:58:20','EJyVwMq3fQluzZ722dnhkb7UXelIIjf0','N',2886790657);
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_utm_blog_comment`
--

DROP TABLE IF EXISTS `b_utm_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_utm_blog_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_utm_BLOG_COMMENT_2` (`VALUE_ID`),
  KEY `ix_utm_BLOG_COMMENT_4` (`FIELD_ID`,`VALUE_ID`,`VALUE_INT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_utm_blog_comment`
--

LOCK TABLES `b_utm_blog_comment` WRITE;
/*!40000 ALTER TABLE `b_utm_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_utm_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_utm_blog_post`
--

DROP TABLE IF EXISTS `b_utm_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_utm_blog_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_utm_BLOG_POST_2` (`VALUE_ID`),
  KEY `ix_utm_BLOG_POST_4` (`FIELD_ID`,`VALUE_ID`,`VALUE_INT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_utm_blog_post`
--

LOCK TABLES `b_utm_blog_post` WRITE;
/*!40000 ALTER TABLE `b_utm_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_utm_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_utm_forum_message`
--

DROP TABLE IF EXISTS `b_utm_forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_utm_forum_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_utm_FORUM_MESSAGE_2` (`VALUE_ID`),
  KEY `ix_utm_FORUM_MESSAGE_4` (`FIELD_ID`,`VALUE_ID`,`VALUE_INT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_utm_forum_message`
--

LOCK TABLES `b_utm_forum_message` WRITE;
/*!40000 ALTER TABLE `b_utm_forum_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_utm_forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_uts_blog_comment`
--

DROP TABLE IF EXISTS `b_uts_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_uts_blog_comment` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_COMMENT_DOC` text DEFAULT NULL,
  `UF_BLOG_COMM_URL_PRV` int(11) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_uts_blog_comment`
--

LOCK TABLES `b_uts_blog_comment` WRITE;
/*!40000 ALTER TABLE `b_uts_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_uts_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_uts_blog_post`
--

DROP TABLE IF EXISTS `b_uts_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_uts_blog_post` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_POST_DOC` text DEFAULT NULL,
  `UF_BLOG_POST_URL_PRV` int(11) DEFAULT NULL,
  `UF_GRATITUDE` int(18) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_uts_blog_post`
--

LOCK TABLES `b_uts_blog_post` WRITE;
/*!40000 ALTER TABLE `b_uts_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_uts_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_uts_forum_message`
--

DROP TABLE IF EXISTS `b_uts_forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_uts_forum_message` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_FORUM_MES_URL_PRV` int(11) DEFAULT NULL,
  `UF_TASK_COMMENT_TYPE` int(18) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_uts_forum_message`
--

LOCK TABLES `b_uts_forum_message` WRITE;
/*!40000 ALTER TABLE `b_uts_forum_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_uts_forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote`
--

DROP TABLE IF EXISTS `b_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT 0,
  `C_SORT` int(18) DEFAULT 100,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `ANONYMITY` int(11) NOT NULL DEFAULT 0,
  `NOTIFY` char(1) NOT NULL DEFAULT 'N',
  `AUTHOR_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `DESCRIPTION_TYPE` varchar(4) NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(255) DEFAULT NULL,
  `EVENT2` varchar(255) DEFAULT NULL,
  `EVENT3` varchar(255) DEFAULT NULL,
  `UNIQUE_TYPE` int(18) NOT NULL DEFAULT 2,
  `KEEP_IP_SEC` int(18) DEFAULT NULL,
  `OPTIONS` int(18) DEFAULT 1,
  `TEMPLATE` varchar(255) DEFAULT NULL,
  `RESULT_TEMPLATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CHANNEL_ID` (`CHANNEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote`
--

LOCK TABLES `b_vote` WRITE;
/*!40000 ALTER TABLE `b_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_answer`
--

DROP TABLE IF EXISTS `b_vote_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `QUESTION_ID` int(18) NOT NULL DEFAULT 0,
  `C_SORT` int(18) DEFAULT 100,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `MESSAGE` text DEFAULT NULL,
  `MESSAGE_TYPE` varchar(4) NOT NULL DEFAULT 'html',
  `COUNTER` int(18) NOT NULL DEFAULT 0,
  `FIELD_TYPE` int(5) NOT NULL DEFAULT 0,
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` varchar(255) DEFAULT NULL,
  `COLOR` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_QUESTION_ID` (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_answer`
--

LOCK TABLES `b_vote_answer` WRITE;
/*!40000 ALTER TABLE `b_vote_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_attached_object`
--

DROP TABLE IF EXISTS `b_vote_attached_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_attached_object` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OBJECT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(32) NOT NULL,
  `ENTITY_TYPE` varchar(100) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_VOTE_AO_1` (`OBJECT_ID`),
  KEY `IX_VOTE_AO_2` (`MODULE_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_attached_object`
--

LOCK TABLES `b_vote_attached_object` WRITE;
/*!40000 ALTER TABLE `b_vote_attached_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_attached_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_channel`
--

DROP TABLE IF EXISTS `b_vote_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_channel` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SYMBOLIC_NAME` varchar(255) NOT NULL,
  `C_SORT` int(18) DEFAULT 100,
  `FIRST_SITE_ID` char(2) DEFAULT NULL,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) NOT NULL DEFAULT 'N',
  `TIMESTAMP_X` datetime NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `VOTE_SINGLE` char(1) NOT NULL DEFAULT 'Y',
  `USE_CAPTCHA` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_channel`
--

LOCK TABLES `b_vote_channel` WRITE;
/*!40000 ALTER TABLE `b_vote_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_channel_2_group`
--

DROP TABLE IF EXISTS `b_vote_channel_2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_channel_2_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT 0,
  `GROUP_ID` int(18) NOT NULL DEFAULT 0,
  `PERMISSION` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_VOTE_CHANNEL_ID_GROUP_ID` (`CHANNEL_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_channel_2_group`
--

LOCK TABLES `b_vote_channel_2_group` WRITE;
/*!40000 ALTER TABLE `b_vote_channel_2_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_channel_2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_channel_2_site`
--

DROP TABLE IF EXISTS `b_vote_channel_2_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_channel_2_site` (
  `CHANNEL_ID` int(18) NOT NULL DEFAULT 0,
  `SITE_ID` char(2) NOT NULL,
  PRIMARY KEY (`CHANNEL_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_channel_2_site`
--

LOCK TABLES `b_vote_channel_2_site` WRITE;
/*!40000 ALTER TABLE `b_vote_channel_2_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_channel_2_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_event`
--

DROP TABLE IF EXISTS `b_vote_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `VOTE_ID` int(18) NOT NULL DEFAULT 0,
  `VOTE_USER_ID` int(18) NOT NULL DEFAULT 0,
  `DATE_VOTE` datetime NOT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `VALID` char(1) NOT NULL DEFAULT 'Y',
  `VISIBLE` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `IX_USER_ID` (`VOTE_USER_ID`),
  KEY `IX_B_VOTE_EVENT_2` (`VOTE_ID`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_event`
--

LOCK TABLES `b_vote_event` WRITE;
/*!40000 ALTER TABLE `b_vote_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_event_answer`
--

DROP TABLE IF EXISTS `b_vote_event_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_event_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_QUESTION_ID` int(18) NOT NULL DEFAULT 0,
  `ANSWER_ID` int(18) NOT NULL DEFAULT 0,
  `MESSAGE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EVENT_QUESTION_ID` (`EVENT_QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_event_answer`
--

LOCK TABLES `b_vote_event_answer` WRITE;
/*!40000 ALTER TABLE `b_vote_event_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_event_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_event_question`
--

DROP TABLE IF EXISTS `b_vote_event_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_event_question` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(18) NOT NULL DEFAULT 0,
  `QUESTION_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_EVENT_ID` (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_event_question`
--

LOCK TABLES `b_vote_event_question` WRITE;
/*!40000 ALTER TABLE `b_vote_event_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_event_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_question`
--

DROP TABLE IF EXISTS `b_vote_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_question` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT 0,
  `C_SORT` int(18) DEFAULT 100,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `QUESTION` text NOT NULL,
  `QUESTION_TYPE` varchar(4) NOT NULL DEFAULT 'html',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT 0,
  `REQUIRED` char(1) NOT NULL DEFAULT 'N',
  `COUNTER` int(11) NOT NULL DEFAULT 0,
  `DIAGRAM` char(1) NOT NULL DEFAULT 'Y',
  `DIAGRAM_TYPE` varchar(10) NOT NULL DEFAULT 'histogram',
  `TEMPLATE` varchar(255) DEFAULT NULL,
  `TEMPLATE_NEW` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_VOTE_ID` (`VOTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_question`
--

LOCK TABLES `b_vote_question` WRITE;
/*!40000 ALTER TABLE `b_vote_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_user`
--

DROP TABLE IF EXISTS `b_vote_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `COOKIE_ID` int(18) NOT NULL,
  `AUTH_USER_ID` int(18) DEFAULT NULL,
  `COUNTER` int(18) NOT NULL DEFAULT 0,
  `DATE_FIRST` datetime NOT NULL,
  `DATE_LAST` datetime NOT NULL,
  `LAST_IP` varchar(15) DEFAULT NULL,
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_VOTE_COOKIE_USER` (`COOKIE_ID`,`AUTH_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_user`
--

LOCK TABLES `b_vote_user` WRITE;
/*!40000 ALTER TABLE `b_vote_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 23:53:27
