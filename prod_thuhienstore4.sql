-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: prod_thuhienstore4
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks',NULL,NULL,NULL,'2018-12-30 02:36:54'),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,31,23,'Customer','fa-user-md','shop_customer',NULL,'2018-01-13 08:27:55','2019-04-17 07:05:09'),(9,25,18,'Orders','fa-shopping-cart','shop_order',NULL,'2018-01-13 08:33:55','2019-04-17 07:05:09'),(10,15,11,'All products','fa-file-photo-o','shop_product',NULL,'2018-01-13 08:44:02','2019-04-17 07:05:09'),(11,15,13,'Brand','fa-bank','shop_brand',NULL,'2018-01-13 08:47:15','2019-04-17 07:05:09'),(13,15,10,'Categories','fa-folder-open-o','shop_category',NULL,'2018-01-13 08:52:17','2019-04-17 07:05:09'),(14,15,12,'Special price','fa-paw','shop_special_price',NULL,'2018-02-06 11:07:21','2019-04-17 07:05:09'),(15,0,9,'Product Manager','fa-folder-open',NULL,NULL,'2018-02-08 23:04:43','2019-04-17 07:05:09'),(18,23,43,'Config info','fa-cog','config_info',NULL,'2018-02-10 02:07:45','2019-04-17 07:05:10'),(22,0,8,'Pages','fa-clone','shop_page',NULL,'2018-02-10 02:19:50','2019-02-08 09:21:24'),(23,0,41,'Settings','fa-cogs',NULL,NULL,'2018-02-11 08:01:24','2019-04-17 07:05:10'),(24,62,37,'Banners','fa-simplybuilt','banner',NULL,'2018-03-13 13:10:22','2019-04-17 07:05:09'),(25,0,17,'Order Manager','fa-cart-arrow-down',NULL,NULL,'2018-05-06 07:59:14','2019-04-17 07:05:09'),(26,25,19,'Order status','fa-asterisk','shop_order_status',NULL,'2018-05-06 08:56:14','2019-04-17 07:05:09'),(27,25,20,'Payment Status','fa-recycle','shop_payment_status',NULL,'2018-05-06 08:57:12','2019-04-17 07:05:09'),(28,25,21,'Shipping status','fa-ambulance','shop_shipping_status',NULL,'2018-05-06 16:46:53','2019-04-17 07:05:09'),(30,0,25,'Extensions','fa-puzzle-piece',NULL,NULL,'2018-05-07 06:47:33','2019-04-17 07:05:09'),(31,0,22,'Customer Manager','fa-group',NULL,NULL,'2018-05-07 06:52:20','2019-04-17 07:05:09'),(51,23,44,'Config global','fa-cogs','config_global',NULL,'2018-09-19 13:51:31','2019-04-17 07:05:10'),(52,56,46,'Config Language','fa-pagelines','language',NULL,'2018-10-14 14:58:23','2019-04-17 07:05:10'),(53,101,34,'Layout','fa-bars','layout',NULL,'2018-10-16 23:16:09','2019-04-17 07:05:09'),(56,23,45,'Localisation','fa-shirtsinbulk',NULL,NULL,'2018-11-01 23:04:12','2019-04-17 07:05:10'),(57,15,14,'Vendor','fa-user-secret','shop_vendor',NULL,'2018-11-07 15:15:33','2019-04-17 07:05:09'),(58,0,50,'Report & Analytics','fa-pie-chart',NULL,NULL,'2018-11-07 22:59:47','2019-04-17 07:05:10'),(59,58,51,'Customer','fa-bars','report/customer',NULL,'2018-11-07 23:00:54','2019-04-17 07:05:10'),(60,58,52,'Product','fa-bars','report/product',NULL,'2018-11-07 23:01:21','2019-04-17 07:05:10'),(61,15,15,'Import multi product','fa-save','process/productImport',NULL,'2018-11-11 09:10:14','2019-04-17 07:05:09'),(62,0,36,'Images manager','fa-image',NULL,NULL,'2018-11-12 12:25:16','2019-04-17 07:05:09'),(63,62,38,'Images','fa-file-image-o','documents',NULL,'2018-11-12 12:26:13','2019-04-17 07:05:09'),(64,56,47,'Currencies','fa-dollar','currencies',NULL,'2018-12-03 23:55:44','2019-04-17 07:05:10'),(65,0,39,'Api manager','fa-plug',NULL,NULL,'2018-12-16 02:51:06','2019-04-17 07:05:09'),(66,65,40,'Shop Api','fa-usb','modules/api/shop_api',NULL,'2018-12-16 02:53:09','2019-04-17 07:05:10'),(70,15,16,'Attributes group','fa-bars','shop_attribute_group',NULL,'2018-12-27 15:32:39','2019-04-17 07:05:09'),(71,30,26,'Payment','fa-money','extensions/Payment',NULL,'2019-02-01 08:50:26','2019-04-17 07:05:09'),(72,30,27,'Shipping','fa-ambulance','extensions/Shipping',NULL,'2019-02-01 08:51:58','2019-04-17 07:05:09'),(73,30,28,'Total','fa-cog','extensions/Total',NULL,'2019-02-01 08:52:33','2019-04-17 07:05:09'),(74,30,29,'Other','fa-circle-thin','extensions/Other',NULL,'2019-02-01 08:53:09','2019-04-17 07:05:09'),(75,0,30,'Modules','fa-codepen',NULL,NULL,'2019-02-08 05:17:59','2019-04-17 07:05:09'),(76,75,31,'Cms','fa-modx','modules/Cms',NULL,'2019-02-08 05:25:13','2019-04-17 07:05:09'),(81,23,48,'Templates manager','fa-columns','config_template',NULL,'2019-02-25 03:26:36','2019-04-17 07:05:10'),(82,23,49,'Backup & Restore','fa-save','backup_database',NULL,'2019-02-25 03:32:26','2019-04-17 07:05:10'),(83,31,24,'Subscribe manager','fa-user-md','subscribe',NULL,'2019-02-27 01:39:41','2019-04-17 07:05:09'),(100,0,9,'CMS Manager','fa-coffee',NULL,NULL,NULL,NULL),(101,0,33,'Design Layout','fa-object-ungroup',NULL,NULL,'2019-03-23 08:28:31','2019-04-17 07:05:09'),(102,75,32,'Other','fa-bars','modules/Other',NULL,'2019-03-23 08:31:19','2019-04-17 07:05:09'),(105,101,35,'URL','fa-chrome','layout_url',NULL,'2019-03-31 01:45:43','2019-04-17 07:05:09'),(106,23,42,'Xu Hướng Tìm Kiếm','fa-align-justify','shop_xuhuongtimkiem','*','2019-04-17 07:04:27','2019-04-17 07:05:10'),(107,100,10,'Blog & News','fa-file-powerpoint-o','modules/cms/cms_news',NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_operation_log_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'system_admin','GET','127.0.0.1','[]','2019-03-31 01:58:42','2019-03-31 01:58:42'),(2,1,'system_admin/layout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 01:58:49','2019-03-31 01:58:49'),(3,1,'system_admin/auth/setting','GET','127.0.0.1','[]','2019-03-31 01:58:54','2019-03-31 01:58:54'),(4,1,'system_admin/auth/setting','PUT','127.0.0.1','{\"name\":\"Administrator\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"_token\":\"I2IMslcPFzFycSNmH70LCIF2F7DGH4CcXoQFzVim\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demoshop.local\\/system_admin\\/layout\"}','2019-03-31 01:59:05','2019-03-31 01:59:05'),(5,1,'system_admin/auth/setting','GET','127.0.0.1','[]','2019-03-31 01:59:05','2019-03-31 01:59:05'),(6,1,'system_admin/backup_database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 01:59:14','2019-03-31 01:59:14'),(7,1,'system_admin/backup','POST','127.0.0.1','{\"_token\":\"I2IMslcPFzFycSNmH70LCIF2F7DGH4CcXoQFzVim\"}','2019-03-31 01:59:15','2019-03-31 01:59:15'),(8,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-31 01:59:19','2019-03-31 01:59:19'),(9,1,'system_admin/backup_database','GET','127.0.0.1','{\"download\":\"backup-2019-03-31-08-59-18.sql\"}','2019-03-31 01:59:23','2019-03-31 01:59:23'),(10,1,'system_admin/shop_product','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 02:27:45','2019-03-31 02:27:45'),(11,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-31 02:27:48','2019-03-31 02:27:48'),(12,1,'system_admin/shop_product','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 02:27:56','2019-03-31 02:27:56'),(13,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-31 02:27:57','2019-03-31 02:27:57'),(14,1,'system_admin/shop_product','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 02:28:58','2019-03-31 02:28:58'),(15,1,'system_admin/backup_database','GET','127.0.0.1','[]','2019-03-31 02:28:59','2019-03-31 02:28:59'),(16,1,'system_admin/shop_product','GET','127.0.0.1','[]','2019-03-31 02:29:02','2019-03-31 02:29:02'),(17,1,'system_admin/shop_product','GET','127.0.0.1','[]','2019-03-31 02:30:33','2019-03-31 02:30:33'),(18,1,'system_admin','GET','127.0.0.1','[]','2019-03-31 03:23:05','2019-03-31 03:23:05'),(19,1,'system_admin/auth/setting','GET','127.0.0.1','[]','2019-03-31 03:23:10','2019-03-31 03:23:10'),(20,1,'system_admin/modules/Other','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:23:15','2019-03-31 03:23:15'),(21,1,'system_admin/modules/Cms','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:23:16','2019-03-31 03:23:16'),(22,1,'system_admin/layout_url','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:23:20','2019-03-31 03:23:20'),(23,1,'system_admin/layout_url/1/edit','GET','127.0.0.1','[]','2019-03-31 03:23:22','2019-03-31 03:23:22'),(24,1,'system_admin/layout_url','GET','127.0.0.1','[]','2019-03-31 03:23:27','2019-03-31 03:23:27'),(25,1,'system_admin/layout_url/6/edit','GET','127.0.0.1','[]','2019-03-31 03:23:32','2019-03-31 03:23:32'),(26,1,'system_admin/layout_url/5/edit','GET','127.0.0.1','[]','2019-03-31 03:23:37','2019-03-31 03:23:37'),(27,1,'system_admin/layout_url/3/edit','GET','127.0.0.1','[]','2019-03-31 03:23:42','2019-03-31 03:23:42'),(28,1,'system_admin/layout_url','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:24:12','2019-03-31 03:24:12'),(29,1,'system_admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:24:17','2019-03-31 03:24:17'),(30,1,'system_admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:24:18','2019-03-31 03:24:18'),(31,1,'system_admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:24:19','2019-03-31 03:24:19'),(32,1,'system_admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:24:19','2019-03-31 03:24:19'),(33,1,'system_admin/auth/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 03:24:21','2019-03-31 03:24:21'),(34,1,'system_admin/auth/logout','GET','127.0.0.1','[]','2019-03-31 03:24:27','2019-03-31 03:24:27'),(35,1,'system_admin','GET','127.0.0.1','[]','2019-03-31 09:49:18','2019-03-31 09:49:18'),(36,1,'system_admin/backup_database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-03-31 09:49:28','2019-03-31 09:49:28'),(37,1,'system_admin/backup','POST','127.0.0.1','{\"_token\":\"l1Cirsi3etHK1FSvUYkLao2HfqEZmvMTfXvlV2mO\"}','2019-03-31 09:49:31','2019-03-31 09:49:31'),(38,1,'system_admin','GET','14.161.6.250','[]','2019-04-16 09:04:16','2019-04-16 09:04:16'),(39,1,'system_admin/layout_url','GET','14.161.6.250','[]','2019-04-16 09:04:28','2019-04-16 09:04:28'),(40,1,'system_admin/layout_url/1/edit','GET','14.161.6.250','[]','2019-04-16 09:04:45','2019-04-16 09:04:45'),(41,1,'system_admin/layout','GET','14.161.6.250','[]','2019-04-16 09:05:00','2019-04-16 09:05:00'),(42,1,'system_admin/layout/8/edit','GET','14.161.6.250','[]','2019-04-16 09:05:23','2019-04-16 09:05:23'),(43,1,'system_admin','GET','14.161.6.250','[]','2019-04-16 15:03:29','2019-04-16 15:03:29'),(44,1,'system_admin','GET','118.69.248.116','[]','2019-04-17 06:54:56','2019-04-17 06:54:56'),(45,1,'system_admin/auth/menu','GET','118.69.248.116','[]','2019-04-17 07:02:36','2019-04-17 07:02:36'),(46,1,'system_admin/auth/menu/22/edit','GET','118.69.248.116','[]','2019-04-17 07:03:20','2019-04-17 07:03:20'),(47,1,'system_admin/auth/menu','GET','118.69.248.116','[]','2019-04-17 07:03:34','2019-04-17 07:03:34'),(48,1,'system_admin/auth/menu','POST','118.69.248.116','{\"parent_id\":\"0\",\"title\":\"Xu H\\u01b0\\u1edbng T\\u00ecm Ki\\u1ebfm\",\"icon\":\"fa-align-justify\",\"uri\":\"shop_xuhuongtimkiem\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"OPOOkFRA7flqyfqWI9tm9qNSABwCqsmtGH2tkbZz\"}','2019-04-17 07:04:26','2019-04-17 07:04:26'),(49,1,'system_admin/auth/menu','GET','118.69.248.116','[]','2019-04-17 07:04:27','2019-04-17 07:04:27'),(50,1,'system_admin/auth/menu','POST','118.69.248.116','{\"_token\":\"OPOOkFRA7flqyfqWI9tm9qNSABwCqsmtGH2tkbZz\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":22},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":10},{\\\"id\\\":14},{\\\"id\\\":11},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":70}]},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":26},{\\\"id\\\":27},{\\\"id\\\":28}]},{\\\"id\\\":31,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":83}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":71},{\\\"id\\\":72},{\\\"id\\\":73},{\\\"id\\\":74}]},{\\\"id\\\":75,\\\"children\\\":[{\\\"id\\\":76},{\\\"id\\\":102}]},{\\\"id\\\":101,\\\"children\\\":[{\\\"id\\\":53},{\\\"id\\\":105}]},{\\\"id\\\":62,\\\"children\\\":[{\\\"id\\\":24},{\\\"id\\\":63}]},{\\\"id\\\":65,\\\"children\\\":[{\\\"id\\\":66}]},{\\\"id\\\":23,\\\"children\\\":[{\\\"id\\\":106},{\\\"id\\\":18},{\\\"id\\\":51},{\\\"id\\\":56,\\\"children\\\":[{\\\"id\\\":52},{\\\"id\\\":64}]},{\\\"id\\\":81},{\\\"id\\\":82}]},{\\\"id\\\":58,\\\"children\\\":[{\\\"id\\\":59},{\\\"id\\\":60}]}]\"}','2019-04-17 07:05:08','2019-04-17 07:05:08'),(51,1,'system_admin/auth/menu','GET','118.69.248.116','[]','2019-04-17 07:05:10','2019-04-17 07:05:10'),(52,1,'system_admin/auth/menu','GET','118.69.248.116','[]','2019-04-17 07:05:15','2019-04-17 07:05:15'),(53,1,'system_admin/auth/logout','GET','118.69.248.116','[]','2019-04-17 07:05:22','2019-04-17 07:05:22'),(54,1,'system_admin','GET','118.69.248.116','[]','2019-04-17 07:05:28','2019-04-17 07:05:28'),(55,1,'system_admin/auth/menu','GET','118.69.248.116','[]','2019-04-17 07:31:02','2019-04-17 07:31:02'),(56,1,'system_admin','GET','118.69.248.116','[]','2019-04-17 10:38:04','2019-04-17 10:38:04'),(57,1,'system_admin/banner','GET','118.69.248.116','[]','2019-04-17 10:38:12','2019-04-17 10:38:12'),(58,1,'system_admin/banner/17/edit','GET','118.69.248.116','[]','2019-04-17 10:38:23','2019-04-17 10:38:23'),(59,1,'system_admin/layout','GET','118.69.248.116','[]','2019-04-17 10:39:02','2019-04-17 10:39:02'),(60,1,'system_admin/layout/7/edit','GET','118.69.248.116','[]','2019-04-17 10:39:11','2019-04-17 10:39:11'),(61,1,'system_admin','GET','171.246.171.126','[]','2019-04-17 17:58:53','2019-04-17 17:58:53'),(62,1,'system_admin/language','GET','171.246.171.126','[]','2019-04-17 17:59:02','2019-04-17 17:59:02'),(63,1,'system_admin/language/2/edit','GET','171.246.171.126','[]','2019-04-17 17:59:07','2019-04-17 17:59:07'),(64,1,'system_admin/config_global','GET','171.246.171.126','[]','2019-04-17 17:59:18','2019-04-17 17:59:18'),(65,1,'system_admin/config_global/1/edit','GET','171.246.171.126','[]','2019-04-17 17:59:21','2019-04-17 17:59:21'),(66,1,'system_admin/config_global/1','PUT','171.246.171.126','{\"en__title\":\"Demo S-cart: Free open source - eCommerce Platform for Business\",\"en__keyword\":null,\"en__description\":\"Free website shopping cart for business\",\"vi__title\":\"Demo S-cart: x\\u00e2y d\\u1ef1ng website b\\u00e1n h\\u00e0ng mi\\u1ec5n ph\\u00ed cho doanh nghi\\u1ec7p\",\"vi__keyword\":null,\"vi__description\":\"Free website shopping cart for business\",\"phone\":\"0123456789\",\"long_phone\":\"Support: 0987654321\",\"time_active\":null,\"address\":\"123st - abc - xyz\",\"email\":\"admin@admin.com\",\"locale\":\"vi\",\"currency\":\"USD\",\"_token\":\"wiXBER12AOydoDh5JzF9ynvKqLqyrpuNJXHycf7K\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tragiamcan.demo88.info\\/system_admin\\/config_global\"}','2019-04-17 17:59:35','2019-04-17 17:59:35'),(67,1,'system_admin/config_global','GET','171.246.171.126','[]','2019-04-17 17:59:36','2019-04-17 17:59:36'),(68,1,'system_admin','GET','171.246.171.126','[]','2019-04-17 21:40:00','2019-04-17 21:40:00'),(69,1,'system_admin/modules/Cms','GET','171.246.171.126','[]','2019-04-17 21:40:09','2019-04-17 21:40:09'),(70,1,'system_admin/modules/installModule','POST','171.246.171.126','{\"_token\":\"pmEG59nwufbD3JUpHC37TYDnL0km56iQMQqUFiTM\",\"key\":\"News\",\"group\":\"Cms\"}','2019-04-17 21:40:13','2019-04-17 21:40:13'),(71,1,'system_admin/modules/Cms','GET','171.246.171.126','[]','2019-04-17 21:40:14','2019-04-17 21:40:14'),(72,1,'system_admin/modules/cms/cms_news','GET','171.246.171.126','[]','2019-04-17 21:40:53','2019-04-17 21:40:53'),(73,1,'system_admin/modules/cms/cms_news/create','GET','171.246.171.126','[]','2019-04-17 21:40:56','2019-04-17 21:40:56'),(74,1,'system_admin/modules/cms/cms_news','POST','171.246.171.126','{\"en__title\":\"B\\u00e1n H\\u00e0ng Online, Thi\\u1ebft K\\u1ebf Website, Thi\\u1ebft K\\u1ebf Th\\u01b0\\u01a1ng Hi\\u1ec7u Gi\\u00e1 T\\u1ed1t Nh\\u1ea5t\",\"en__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"en__description\":\"Thu\\u1ed1c & L\\u00e0m \\u0110\\u1eb9p\",\"en__content\":\"dfgdfgdfgdf\",\"vi__title\":\"B\\u00e1n H\\u00e0ng Online, Thi\\u1ebft K\\u1ebf Website, Thi\\u1ebft K\\u1ebf Th\\u01b0\\u01a1ng Hi\\u1ec7u Gi\\u00e1 r\\u1ebb\",\"vi__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"vi__description\":\"Thu\\u1ed1c & L\\u00e0m \\u0110\\u1eb9p\",\"vi__content\":\"aaaaaaaaaaaa\",\"status\":\"on\",\"sort\":\"0\",\"_token\":\"pmEG59nwufbD3JUpHC37TYDnL0km56iQMQqUFiTM\",\"_previous_\":\"http:\\/\\/tragiamcan.demo88.info\\/system_admin\\/modules\\/cms\\/cms_news\"}','2019-04-17 21:41:32','2019-04-17 21:41:32'),(75,1,'system_admin/modules/cms/cms_news','GET','171.246.171.126','[]','2019-04-17 21:41:33','2019-04-17 21:41:33'),(76,1,'system_admin/layout','GET','171.246.171.126','[]','2019-04-17 22:05:36','2019-04-17 22:05:36'),(77,1,'system_admin','GET','14.161.6.250','[]','2019-04-18 06:03:58','2019-04-18 06:03:58'),(78,1,'system_admin/auth/menu','GET','14.161.6.250','[]','2019-04-18 06:08:25','2019-04-18 06:08:25'),(79,1,'system_admin','GET','118.69.65.108','[]','2019-04-18 11:23:52','2019-04-18 11:23:52'),(80,1,'system_admin/layout','GET','118.69.65.108','[]','2019-04-18 11:32:51','2019-04-18 11:32:51'),(81,1,'system_admin/layout/8/edit','GET','118.69.65.108','[]','2019-04-18 11:33:57','2019-04-18 11:33:57'),(82,1,'system_admin/layout','GET','118.69.65.108','[]','2019-04-18 11:34:06','2019-04-18 11:34:06'),(83,1,'system_admin/config_info','GET','118.69.65.108','[]','2019-04-18 11:34:55','2019-04-18 11:34:55'),(84,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:35:00','2019-04-18 11:35:00'),(85,1,'system_admin/config_global/1/edit','GET','118.69.65.108','[]','2019-04-18 11:35:10','2019-04-18 11:35:10'),(86,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:35:20','2019-04-18 11:35:20'),(87,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:35:33','2019-04-18 11:35:33'),(88,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:35:50','2019-04-18 11:35:50'),(89,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 11:41:30','2019-04-18 11:41:30'),(90,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:41:31','2019-04-18 11:41:31'),(91,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 11:41:36','2019-04-18 11:41:36'),(92,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:41:36','2019-04-18 11:41:36'),(93,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 11:41:45','2019-04-18 11:41:45'),(94,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:41:45','2019-04-18 11:41:45'),(95,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:42:58','2019-04-18 11:42:58'),(96,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 11:43:08','2019-04-18 11:43:08'),(97,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:43:08','2019-04-18 11:43:08'),(98,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 11:43:12','2019-04-18 11:43:12'),(99,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 11:43:12','2019-04-18 11:43:12'),(100,1,'system_admin','GET','118.69.65.108','[]','2019-04-18 12:59:26','2019-04-18 12:59:26'),(101,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 12:59:34','2019-04-18 12:59:34'),(102,1,'system_admin','GET','118.69.65.108','[]','2019-04-18 12:59:34','2019-04-18 12:59:34'),(103,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 12:59:38','2019-04-18 12:59:38'),(104,1,'system_admin','GET','118.69.65.108','[]','2019-04-18 12:59:39','2019-04-18 12:59:39'),(105,1,'system_admin/config_info','GET','118.69.65.108','[]','2019-04-18 12:59:43','2019-04-18 12:59:43'),(106,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 12:59:54','2019-04-18 12:59:54'),(107,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:05:06','2019-04-18 13:05:06'),(108,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 13:05:07','2019-04-18 13:05:07'),(109,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:05:11','2019-04-18 13:05:11'),(110,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 13:05:11','2019-04-18 13:05:11'),(111,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 13:07:01','2019-04-18 13:07:01'),(112,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:07:25','2019-04-18 13:07:25'),(113,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:14:03','2019-04-18 13:14:03'),(114,1,'system_admin/shop_xuhuongtimkiem/1/edit','GET','118.69.65.108','[]','2019-04-18 13:24:15','2019-04-18 13:24:15'),(115,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:27:42','2019-04-18 13:27:42'),(116,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:29:56','2019-04-18 13:29:56'),(117,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:31:07','2019-04-18 13:31:07'),(118,1,'system_admin/shop_xuhuongtimkiem/1/edit','GET','118.69.65.108','[]','2019-04-18 13:31:18','2019-04-18 13:31:18'),(119,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:33:40','2019-04-18 13:33:40'),(120,1,'system_admin/shop_xuhuongtimkiem/1/edit','GET','118.69.65.108','[]','2019-04-18 13:33:48','2019-04-18 13:33:48'),(121,1,'system_admin/shop_xuhuongtimkiem/1','PUT','118.69.65.108','{\"title\":\"Tiet Kiem\",\"url\":\"\\/Tiet-Kiem\",\"_token\":\"kDBhf7Nr0BXwJsHFzWxcXd7xOrfl9LpSwPhjQS2u\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tragiamcan.demo88.info\\/system_admin\\/shop_xuhuongtimkiem\"}','2019-04-18 13:34:13','2019-04-18 13:34:13'),(122,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:34:13','2019-04-18 13:34:13'),(123,1,'system_admin/config_global','GET','118.69.65.108','[]','2019-04-18 13:34:34','2019-04-18 13:34:34'),(124,1,'system_admin/config_info','GET','118.69.65.108','[]','2019-04-18 13:34:38','2019-04-18 13:34:38'),(125,1,'system_admin/language','GET','118.69.65.108','[]','2019-04-18 13:34:45','2019-04-18 13:34:45'),(126,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:35:50','2019-04-18 13:35:50'),(127,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:35:52','2019-04-18 13:35:52'),(128,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:35:57','2019-04-18 13:35:57'),(129,1,'system_admin/language','GET','118.69.65.108','[]','2019-04-18 13:37:40','2019-04-18 13:37:40'),(130,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:39:43','2019-04-18 13:39:43'),(131,1,'system_admin/shop_xuhuongtimkiem/create','GET','118.69.65.108','[]','2019-04-18 13:39:50','2019-04-18 13:39:50'),(132,1,'system_admin/shop_xuhuongtimkiem','POST','118.69.65.108','{\"title\":\"dfgfd\",\"url\":\"\\/gfdgfd\",\"_token\":\"kDBhf7Nr0BXwJsHFzWxcXd7xOrfl9LpSwPhjQS2u\",\"_previous_\":\"http:\\/\\/tragiamcan.demo88.info\\/system_admin\\/shop_xuhuongtimkiem\"}','2019-04-18 13:40:01','2019-04-18 13:40:01'),(133,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:40:01','2019-04-18 13:40:01'),(134,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:40:54','2019-04-18 13:40:54'),(135,1,'system_admin/shop_xuhuongtimkiem/2','DELETE','118.69.65.108','{\"_method\":\"delete\",\"_token\":\"kDBhf7Nr0BXwJsHFzWxcXd7xOrfl9LpSwPhjQS2u\"}','2019-04-18 13:41:03','2019-04-18 13:41:03'),(136,1,'system_admin/shop_xuhuongtimkiem','GET','118.69.65.108','[]','2019-04-18 13:41:03','2019-04-18 13:41:03'),(137,1,'system_admin','GET','118.69.65.108','[]','2019-04-18 14:15:48','2019-04-18 14:15:48'),(138,1,'quanly/shop_product','GET','14.161.6.250','[]','2019-04-18 14:37:24','2019-04-18 14:37:24'),(139,1,'quanly/layout','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-18 14:37:35','2019-04-18 14:37:35'),(140,1,'quanly/layout_url','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-18 14:37:44','2019-04-18 14:37:44'),(141,1,'quanly','GET','14.161.6.250','[]','2019-04-18 14:59:11','2019-04-18 14:59:11'),(142,1,'quanly/backup_database','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-18 14:59:32','2019-04-18 14:59:32'),(143,1,'quanly/config_template','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-18 14:59:39','2019-04-18 14:59:39'),(144,1,'quanly/config_global','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-18 14:59:53','2019-04-18 14:59:53'),(145,1,'quanly','GET','14.161.6.250','[]','2019-04-18 15:00:03','2019-04-18 15:00:03'),(146,1,'quanly','GET','14.161.6.250','[]','2019-04-19 11:42:20','2019-04-19 11:42:20'),(147,1,'quanly/config_global','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-19 11:42:33','2019-04-19 11:42:33'),(148,1,'quanly/config_global/1/edit','GET','14.161.6.250','[]','2019-04-19 11:42:36','2019-04-19 11:42:36'),(149,1,'quanly/config_global/1','PUT','14.161.6.250','{\"en__title\":\"Demo S-cart: Free open source - eCommerce Platform for Business\",\"en__keyword\":null,\"en__description\":\"Free website shopping cart for business\",\"vi__title\":\"Demo S-cart: x\\u00e2y d\\u1ef1ng website b\\u00e1n h\\u00e0ng mi\\u1ec5n ph\\u00ed cho doanh nghi\\u1ec7p\",\"vi__keyword\":null,\"vi__description\":\"Free website shopping cart for business\",\"phone\":\"0984350829-0976522437\",\"long_phone\":\"0984350829\",\"time_active\":\"08:00-23h59\",\"address\":\"c2\\/22 Khu d\\u00e2n c\\u01b0 thu\\u1eadn giao , th\\u1ecb x\\u00e3 thu\\u1eadn an , t\\u1ec9nh b\\u1ec9nh d\\u01b0\\u01a1ng\",\"email\":\"tuannguyen0719@gmail.com\",\"locale\":\"vi\",\"currency\":\"VND\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\\/config_global\"}','2019-04-19 11:43:16','2019-04-19 11:43:16'),(150,1,'quanly/config_global','GET','14.161.6.250','[]','2019-04-19 11:43:17','2019-04-19 11:43:17'),(151,1,'quanly/config_global/1/edit','GET','14.161.6.250','[]','2019-04-19 11:43:22','2019-04-19 11:43:22'),(152,1,'quanly/config_global/1','PUT','14.161.6.250','{\"en__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"en__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"en__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"vi__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"phone\":\"0984350829-0976522437\",\"long_phone\":\"0984350829\",\"time_active\":\"08:00-23h59\",\"address\":\"c2\\/22 Khu d\\u00e2n c\\u01b0 thu\\u1eadn giao , th\\u1ecb x\\u00e3 thu\\u1eadn an , t\\u1ec9nh b\\u1ec9nh d\\u01b0\\u01a1ng\",\"email\":\"tuannguyen0719@gmail.com\",\"locale\":\"vi\",\"currency\":\"VND\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\\/config_global\"}','2019-04-19 11:45:58','2019-04-19 11:45:58'),(153,1,'quanly/config_global','GET','14.161.6.250','[]','2019-04-19 11:45:59','2019-04-19 11:45:59'),(154,1,'quanly/config_global/1/edit','GET','14.161.6.250','[]','2019-04-19 12:11:53','2019-04-19 12:11:53'),(155,1,'quanly','GET','118.69.65.108','[]','2019-04-19 13:55:50','2019-04-19 13:55:50'),(156,1,'quanly/config_global','GET','118.69.65.108','{\"_pjax\":\"#pjax-container\"}','2019-04-19 13:55:56','2019-04-19 13:55:56'),(157,1,'quanly/config_global/1/edit','GET','118.69.65.108','[]','2019-04-19 13:55:59','2019-04-19 13:55:59'),(158,1,'quanly/config_global/1','PUT','118.69.65.108','{\"en__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"en__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"en__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"vi__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"phone\":\"0984350829-0976522437\",\"long_phone\":\"0984350829\",\"time_active\":\"08:00-23h59\",\"address\":\"c2\\/22 Khu d\\u00e2n c\\u01b0 thu\\u1eadn giao , th\\u1ecb x\\u00e3 thu\\u1eadn an , t\\u1ec9nh b\\u1ec9nh d\\u01b0\\u01a1ng\",\"email\":\"tuannguyen0719@gmail.com\",\"locale\":\"vi\",\"currency\":\"VND\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\\/config_global\"}','2019-04-19 13:57:18','2019-04-19 13:57:18'),(159,1,'quanly/config_global','GET','118.69.65.108','[]','2019-04-19 13:57:19','2019-04-19 13:57:19'),(160,1,'quanly/banner','GET','118.69.65.108','{\"_pjax\":\"#pjax-container\"}','2019-04-19 13:57:28','2019-04-19 13:57:28'),(161,1,'quanly/banner/17','PUT','118.69.65.108','{\"status\":\"off\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\"}','2019-04-19 13:57:33','2019-04-19 13:57:33'),(162,1,'quanly/banner/16','PUT','118.69.65.108','{\"status\":\"off\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\"}','2019-04-19 13:57:34','2019-04-19 13:57:34'),(163,1,'quanly/banner/8','PUT','118.69.65.108','{\"status\":\"off\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\"}','2019-04-19 13:57:35','2019-04-19 13:57:35'),(164,1,'quanly/banner/create','GET','118.69.65.108','[]','2019-04-19 13:57:41','2019-04-19 13:57:41'),(165,1,'quanly/banner','POST','118.69.65.108','{\"html\":null,\"url\":null,\"status\":\"on\",\"sort\":\"0\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\\/banner\"}','2019-04-19 13:57:55','2019-04-19 13:57:55'),(166,1,'quanly/banner','GET','118.69.65.108','[]','2019-04-19 13:57:55','2019-04-19 13:57:55'),(167,1,'quanly','GET','118.69.65.108','[]','2019-04-19 15:00:01','2019-04-19 15:00:01'),(168,1,'quanly/config_global','GET','118.69.65.108','{\"_pjax\":\"#pjax-container\"}','2019-04-19 15:00:07','2019-04-19 15:00:07'),(169,1,'quanly/config_global/1/edit','GET','118.69.65.108','[]','2019-04-19 15:00:13','2019-04-19 15:00:13'),(170,1,'quanly/config_global/1','PUT','118.69.65.108','{\"en__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"en__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"en__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"vi__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"phone\":\"0984350829-0976522437\",\"long_phone\":\"0984350829\",\"time_active\":\"08:00-23h59\",\"address\":\"c2\\/22 Khu d\\u00e2n c\\u01b0 thu\\u1eadn giao , th\\u1ecb x\\u00e3 thu\\u1eadn an , t\\u1ec9nh b\\u1ec9nh d\\u01b0\\u01a1ng\",\"email\":\"tuannguyen0719@gmail.com\",\"website\":\"https:\\/\\/thuhienstore.club\\/\",\"locale\":\"vi\",\"currency\":\"VND\",\"_token\":\"QVD4rbbU8q0HQSlyivZFa79WNtyWFVJC3434N16X\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\\/config_global\"}','2019-04-19 15:00:45','2019-04-19 15:00:45'),(171,1,'quanly/config_global','GET','118.69.65.108','[]','2019-04-19 15:00:46','2019-04-19 15:00:46'),(172,1,'quanly/shop_category','GET','171.246.171.126','{\"_pjax\":\"#pjax-container\"}','2019-04-19 19:00:53','2019-04-19 19:00:53'),(173,1,'quanly/shop_category/18','DELETE','171.246.171.126','{\"_method\":\"delete\",\"_token\":\"0LIKFTMoWal6InjR9KMfmigk5e76406KEnHLIKai\"}','2019-04-19 19:01:12','2019-04-19 19:01:12'),(174,1,'quanly/shop_category','GET','171.246.171.126','{\"_pjax\":\"#pjax-container\"}','2019-04-19 19:01:13','2019-04-19 19:01:13'),(175,1,'quanly','GET','14.161.6.250','[]','2019-04-20 09:04:21','2019-04-20 09:04:21'),(176,1,'quanly/auth/setting','GET','14.161.6.250','[]','2019-04-20 09:04:52','2019-04-20 09:04:52'),(177,1,'quanly/auth/setting','PUT','14.161.6.250','{\"name\":\"Administrator\",\"password\":\"$2y$10$XisO29cFPf1fJQp1toGt7uYSy7lQMGj67ceC\\/x6x0JJ9Wbn7KLL7e\",\"password_confirmation\":\"$2y$10$XisO29cFPf1fJQp1toGt7uYSy7lQMGj67ceC\\/x6x0JJ9Wbn7KLL7e\",\"_token\":\"lsRc0UzwLnMZ5iVg6mel30Q82WpH6U6h5Zzz1Kb5\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\"}','2019-04-20 09:06:22','2019-04-20 09:06:22'),(178,1,'quanly/auth/setting','GET','14.161.6.250','[]','2019-04-20 09:06:24','2019-04-20 09:06:24'),(179,1,'quanly','GET','14.161.6.250','[]','2019-04-20 09:06:32','2019-04-20 09:06:32'),(180,1,'quanly/report/customer','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-20 09:07:31','2019-04-20 09:07:31'),(181,1,'quanly/layout_url','GET','14.161.6.250','{\"_pjax\":\"#pjax-container\"}','2019-04-20 09:07:54','2019-04-20 09:07:54'),(182,1,'quanly/layout_url/create','GET','14.161.6.250','[]','2019-04-20 09:08:00','2019-04-20 09:08:00'),(183,1,'quanly/config_global','GET','171.246.171.126','[]','2019-04-20 15:28:55','2019-04-20 15:28:55'),(184,1,'quanly/config_global/1/edit','GET','171.246.171.126','[]','2019-04-20 15:28:59','2019-04-20 15:28:59'),(185,1,'quanly/config_global/1','PUT','171.246.171.126','{\"en__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"en__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"en__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__title\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"vi__keyword\":\"H\\u00e0 th\\u1ee7 \\u00f4 vi\\u00ean m\\u1eadt ong, h\\u00e0 th\\u1ee7 \\u00f4\",\"vi__description\":\"B\\u00e1n H\\u00e0ng Online,Th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, S\\u1ea3n ph\\u1ea9m cho m\\u1eb9 v\\u00e0 b\\u00e9\",\"phone\":\"0984350829-0976522437\",\"long_phone\":\"0988697425\",\"time_active\":\"08:00-23h59\",\"address\":\"c2\\/22 Khu d\\u00e2n c\\u01b0 thu\\u1eadn giao , th\\u1ecb x\\u00e3 thu\\u1eadn an , t\\u1ec9nh b\\u1ec9nh d\\u01b0\\u01a1ng\",\"email\":\"tuannguyen0719@gmail.com\",\"website\":\"thuhienstore.club\",\"support\":\"Ms.H\\u00e0\",\"facebook\":\"https:\\/\\/www.facebook.com\\/thuhienmom\\/\",\"locale\":\"vi\",\"currency\":\"VND\",\"_token\":\"JcFvoRsgmFuiOOeZ7udx0iWwfdwT6T9qXgZJ7Qcf\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/thuhienstore.club\\/quanly\\/config_global\"}','2019-04-20 15:29:37','2019-04-20 15:29:37'),(186,1,'quanly/config_global','GET','171.246.171.126','[]','2019-04-20 15:29:38','2019-04-20 15:29:38'),(187,1,'quanly','GET','14.161.6.250','[]','2019-04-22 08:50:37','2019-04-22 08:50:37');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_permissions_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,'2018-07-26 07:29:38'),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT,DELETE','/auth/setting',NULL,'2018-08-25 04:19:26'),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(10,'View','view','GET','*','2018-09-23 11:56:03','2019-02-09 10:41:53');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,12,NULL,NULL),(1,106,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(3,3,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(4,3,NULL,NULL),(4,4,NULL,NULL),(3,10,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(3,3,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_roles_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2018-01-12 10:27:40','2018-01-12 10:27:40'),(2,'Admin','admin','2018-01-12 11:02:33','2018-01-12 11:02:33'),(3,'User','user','2018-01-12 11:03:14','2018-01-12 11:03:14'),(4,'Content','content','2018-01-13 01:27:11','2018-01-13 01:27:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$XisO29cFPf1fJQp1toGt7uYSy7lQMGj67ceC/x6x0JJ9Wbn7KLL7e','Administrator','images/9059843dcc9f32a00f896caba999f130.png','lXYhQDKMbwWWb4nSk3ADQuj3EEcua0r5sCMJcaVE5IvSq1snbxB8ppMACMrW','2018-01-12 10:27:40','2019-04-20 09:06:23'),(3,'test','$2y$10$Ao7Uey2z5jPFta/rZG51XuG1OZiWdlbdf3QSgsAjKn9Hfpcp14Ami','User',NULL,'5JS9Sgy0dX24uyOwFjR5w5rCgimd7B2Y1DLvxQgnZ2w0IJY7nNO9vqTg2AOl','2018-01-12 11:05:28','2018-09-23 11:56:26');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (19,'banner/ee05d0e67a31cac50fd688d1a9703815.png',NULL,NULL,1,0,0,0,'2019-04-20 18:53:33','2019-04-20 18:53:33');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_news`
--

DROP TABLE IF EXISTS `cms_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_news`
--

LOCK TABLES `cms_news` WRITE;
/*!40000 ALTER TABLE `cms_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_news_description`
--

DROP TABLE IF EXISTS `cms_news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_news_description` (
  `cms_news_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `cms_news_description_cms_news_id_lang_id_unique` (`cms_news_id`,`lang_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_news_description`
--

LOCK TABLES `cms_news_description` WRITE;
/*!40000 ALTER TABLE `cms_news_description` DISABLE KEYS */;
INSERT INTO `cms_news_description` VALUES (1,1,'Bán Hàng Online, Thiết Kế Website, Thiết Kế Thương Hiệu Giá Tốt Nhất','Hà thủ ô viên mật ong, hà thủ ô','Thuốc & Làm Đẹp','dfgdfgdfgdf'),(1,2,'Bán Hàng Online, Thiết Kế Website, Thiết Kế Thương Hiệu Giá rẻ','Hà thủ ô viên mật ong, hà thủ ô','Thuốc & Làm Đẹp','aaaaaaaaaaaa');
/*!40000 ALTER TABLE `cms_news_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (10,NULL,'config','shop_allow_guest','1',11,'language.admin.shop_allow_guest'),(11,NULL,'smtp','smtp_host',NULL,8,'language.admin.smtp_host'),(12,NULL,'smtp','smtp_user','',7,'language.admin.smtp_user'),(13,NULL,'smtp','smtp_password','',6,'language.admin.smtp_password'),(14,NULL,'smtp','smtp_security','',5,'language.admin.smtp_security'),(15,NULL,'smtp','smtp_port','',4,'language.admin.smtp_port'),(16,NULL,'smtp','smtp_mode','0',9,'language.admin.smtp_mode'),(18,NULL,'config','product_preorder','1',18,'language.admin.product_preorder'),(19,NULL,'config','product_display_out_of_stock','1',19,'language.admin.product_display_out_of_stock'),(20,NULL,'config','product_buy_out_of_stock','1',20,'language.admin.product_buy_out_of_stock'),(22,NULL,'config','show_date_available','1',21,'language.admin.show_date_available'),(26,NULL,'display','product_hot','6',0,'language.admin.hot_product'),(27,NULL,'display','product_new','6',0,'language.admin.new_product'),(28,NULL,'display','product_list','18',0,'language.admin.list_product'),(29,NULL,'display','product_relation','4',0,'language.admin.relation_product'),(30,NULL,'config','site_ssl','0',0,'language.admin.enable_https'),(32,NULL,'config','watermark','1',0,'language.admin.enable_watermark'),(44,NULL,'config','site_status','1',100,'language.admin.site_status'),(45,NULL,'display','product_viewed','4',0,'language.admin.viewed_product'),(47,'Extensions','Payment','Cash','1',0,'Extensions/Payment/Cash.title'),(48,'Extensions','Shipping','ShippingStandard','1',0,'Shipping Standard'),(55,'Extensions','Total','Discount','1',0,'Extensions/Total/Discount.title'),(64,'Modules','Other','LastViewProduct','1',0,'Modules/Other/LastViewProduct.title'),(65,NULL,'display','item_list','12',0,'language.admin.item_list'),(66,NULL,'config','show_product_of_category_children','1',21,'language.admin.show_product_of_category_children'),(67,'Modules','Cms','News','1',0,'Modules/Cms/News.title');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_global`
--

DROP TABLE IF EXISTS `config_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_global`
--

LOCK TABLES `config_global` WRITE;
/*!40000 ALTER TABLE `config_global` DISABLE KEYS */;
INSERT INTO `config_global` VALUES (1,'images/logo-thu-hien-store.png','images/e9a7599a7a03be6a9b71b2b8cf8ae4c5.png','default','0984350829-0976522437','0988697425','tuannguyen0719@gmail.com','08:00-23h59','c2/22 Khu dân cư thuận giao , thị xã thuận an , tỉnh bỉnh dương','vi','VND','thuhienstore.club','Ms.Hà','https://www.facebook.com/thuhienmom/');
/*!40000 ALTER TABLE `config_global` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_global_description`
--

DROP TABLE IF EXISTS `config_global_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_global_description` (
  `config_id` int(11) NOT NULL,
  `lang_id` tinyint(4) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `config_id_lang_id` (`config_id`,`lang_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_global_description`
--

LOCK TABLES `config_global_description` WRITE;
/*!40000 ALTER TABLE `config_global_description` DISABLE KEYS */;
INSERT INTO `config_global_description` VALUES (1,1,'Bán Hàng Online,Thực phẩm chức năng, Sản phẩm cho mẹ và bé','Bán Hàng Online,Thực phẩm chức năng, Sản phẩm cho mẹ và bé','Hà thủ ô viên mật ong, hà thủ ô'),(1,2,'Bán Hàng Online,Thực phẩm chức năng, Sản phẩm cho mẹ và bé','Bán Hàng Online,Thực phẩm chức năng, Sản phẩm cho mẹ và bé','Hà thủ ô viên mật ong, hà thủ ô');
/*!40000 ALTER TABLE `config_global_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English','en','language/flag_uk.png',1,1),(2,'Tiếng Việt','vi','language/flag_vn.png',1,1);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Facebook code','top','','html','<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\n</script>',1,0),(2,'Google Analytics','header','','html','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-138697257-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-138697257-1\');\r\n</script>',1,0),(4,'Product last view','left','','module','\\App\\Modules\\Other\\Controllers\\LastViewProduct',1,0),(5,'Product special','left','home,product_list','view','product_special',1,1),(6,'Brands','left','home,item_list','view','brands_left',1,3),(7,'Banner home','banner_top','home','view','banner_image',1,0),(8,'Categories','left','home,product_list,product_detail,shop_wishlist','view','categories',1,4);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_page`
--

DROP TABLE IF EXISTS `layout_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniquekey` (`uniquekey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_page`
--

LOCK TABLES `layout_page` WRITE;
/*!40000 ALTER TABLE `layout_page` DISABLE KEYS */;
INSERT INTO `layout_page` VALUES (1,'home','Home page'),(2,'product_list','Product list'),(3,'product_detail','Product detail'),(4,'shop_cart','Shop cart'),(5,'shop_account','Account'),(6,'shop_profile','Profile'),(7,'shop_compare','Compare page'),(8,'shop_wishlist','Wishlist page'),(9,'item_list','Item list');
/*!40000 ALTER TABLE `layout_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_position`
--

DROP TABLE IF EXISTS `layout_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniquekey` (`uniquekey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_position`
--

LOCK TABLES `layout_position` WRITE;
/*!40000 ALTER TABLE `layout_position` DISABLE KEYS */;
INSERT INTO `layout_position` VALUES (1,'meta','Meta'),(2,'header','Header'),(3,'top','Top'),(4,'bottom','Bottom'),(5,'footer','Footer'),(6,'left','Column left'),(7,'right','Column right'),(8,'banner_top','Banner top');
/*!40000 ALTER TABLE `layout_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_type`
--

DROP TABLE IF EXISTS `layout_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniquekey` (`uniquekey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_type`
--

LOCK TABLES `layout_type` WRITE;
/*!40000 ALTER TABLE `layout_type` DISABLE KEYS */;
INSERT INTO `layout_type` VALUES (1,'html','Html'),(2,'view','View'),(4,'module','Module');
/*!40000 ALTER TABLE `layout_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_url`
--

DROP TABLE IF EXISTS `layout_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `target` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `sort` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout_url`
--

LOCK TABLES `layout_url` WRITE;
/*!40000 ALTER TABLE `layout_url` DISABLE KEYS */;
INSERT INTO `layout_url` VALUES (1,'language.contact','/contact.html','_self','menu',NULL,1,3),(2,'language.about','/about.html','_self','menu',NULL,1,4),(3,'S-Cart','https://s-cart.org','_blank','menu',NULL,0,0),(4,'language.my_profile','/member/login.html','_self','footer',NULL,1,5),(5,'language.compare_page','/compare.html','_self','footer',NULL,1,4),(6,'language.wishlist_page','/wishlist.html','_self','footer',NULL,1,3);
/*!40000 ALTER TABLE `layout_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_standard`
--

DROP TABLE IF EXISTS `shipping_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_standard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_standard`
--

LOCK TABLES `shipping_standard` WRITE;
/*!40000 ALTER TABLE `shipping_standard` DISABLE KEYS */;
INSERT INTO `shipping_standard` VALUES (1,20000,100000);
/*!40000 ALTER TABLE `shipping_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_api`
--

DROP TABLE IF EXISTS `shop_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hidden_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'private - secret - public',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_api`
--

LOCK TABLES `shop_api` WRITE;
/*!40000 ALTER TABLE `shop_api` DISABLE KEYS */;
INSERT INTO `shop_api` VALUES (1,'api_product_list',NULL,'secret'),(2,'api_product_detail','cost,sold,stock,sort','private'),(3,'api_order_list','','public'),(4,'api_order_detail','','secret');
/*!40000 ALTER TABLE `shop_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_api_process`
--

DROP TABLE IF EXISTS `shop_api_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_api_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL DEFAULT '0',
  `secret_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hidden_fileds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_allow` text COLLATE utf8_unicode_ci,
  `ip_deny` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exp` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `secret_key` (`secret_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_api_process`
--

LOCK TABLES `shop_api_process` WRITE;
/*!40000 ALTER TABLE `shop_api_process` DISABLE KEYS */;
INSERT INTO `shop_api_process` VALUES (1,1,'!CVCBsd$6j9ds3%flh[^d','descriptions,cost','','127.0.0.11,1233.2.2.3','2018-12-16 07:13:16','2018-12-16 07:17:33','2019-12-14 09:20:33',1),(4,1,'%GSFf13gkLtP@d','descriptions,brand_id',NULL,NULL,'2018-12-16 07:13:16','2018-12-16 07:13:16',NULL,1);
/*!40000 ALTER TABLE `shop_api_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attribute_detail`
--

DROP TABLE IF EXISTS `shop_attribute_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_attribute_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `attribute_id` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attribute_detail`
--

LOCK TABLES `shop_attribute_detail` WRITE;
/*!40000 ALTER TABLE `shop_attribute_detail` DISABLE KEYS */;
INSERT INTO `shop_attribute_detail` VALUES (5,'Blue',1,48,0),(6,'White',1,48,0),(7,'S',2,48,0),(8,'XL',2,48,0),(9,'Blue',1,49,0),(10,'Red',1,49,0),(11,'S',2,49,0),(12,'M',2,49,0);
/*!40000 ALTER TABLE `shop_attribute_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attribute_group`
--

DROP TABLE IF EXISTS `shop_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_attribute_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attribute_group`
--

LOCK TABLES `shop_attribute_group` WRITE;
/*!40000 ALTER TABLE `shop_attribute_group` DISABLE KEYS */;
INSERT INTO `shop_attribute_group` VALUES (1,'Color',1,1,'radio'),(2,'Size',1,2,'select');
/*!40000 ALTER TABLE `shop_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_brand`
--

DROP TABLE IF EXISTS `shop_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_brand`
--

LOCK TABLES `shop_brand` WRITE;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` VALUES (1,'Husq','brand/1ca28f797c0f2edb635c4b51c2e7e952.png',NULL,1,0),(2,'Ideal','brand/0a778de7e1e2f2a0635d6a1727e3de8d.png',NULL,1,0),(3,'Apex','brand/d3abfcfc8c0fef7e1356fc637ab9d8d8.png',NULL,1,0),(4,'CST','brand/185c50c85b83644e02e8b96639370341.png',NULL,1,0),(5,'Klein','brand/3e11cc022e9f30774ab5f6a0c6c36451.png',NULL,1,0),(6,'Metabo','brand/7868b0924b8f115aef70292aea1a67b8.png',NULL,1,0);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `top` int(11) DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (19,NULL,0,1,1,1),(22,NULL,0,1,4,1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category_description`
--

DROP TABLE IF EXISTS `shop_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category_description` (
  `shop_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `shop_category_id_lang_id` (`shop_category_id`,`lang_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category_description`
--

LOCK TABLES `shop_category_description` WRITE;
/*!40000 ALTER TABLE `shop_category_description` DISABLE KEYS */;
INSERT INTO `shop_category_description` VALUES (19,1,'Thực phầm chức năng',NULL,NULL),(19,2,'Thực phầm chức năng',NULL,NULL),(22,1,'Mẹ và bé',NULL,NULL),(22,2,'Mẹ và bé',NULL,NULL);
/*!40000 ALTER TABLE `shop_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_currency`
--

DROP TABLE IF EXISTS `shop_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` float NOT NULL,
  `precision` tinyint(1) NOT NULL DEFAULT '2',
  `symbol_first` tinyint(4) NOT NULL DEFAULT '0',
  `thousands` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_currency`
--

LOCK TABLES `shop_currency` WRITE;
/*!40000 ALTER TABLE `shop_currency` DISABLE KEYS */;
INSERT INTO `shop_currency` VALUES (1,'USD Dola','USD','$',1,0,1,',',1,0),(2,'VietNam Dong','VND','₫',20,0,0,',',1,1);
/*!40000 ALTER TABLE `shop_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount`
--

DROP TABLE IF EXISTS `shop_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `number_uses` int(11) NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login` int(11) NOT NULL DEFAULT '0',
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `shop_discount_code_unique` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount`
--

LOCK TABLES `shop_discount` WRITE;
/*!40000 ALTER TABLE `shop_discount` DISABLE KEYS */;
INSERT INTO `shop_discount` VALUES (1,'TEST',10,0,NULL,10,0,1,0,NULL);
/*!40000 ALTER TABLE `shop_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_discount_user`
--

DROP TABLE IF EXISTS `shop_discount_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount_user` (
  `user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `used_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount_user`
--

LOCK TABLES `shop_discount_user` WRITE;
/*!40000 ALTER TABLE `shop_discount_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_discount_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-not send 1-pp send 2-sent',
  `shipping_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-notship 1-sending 2-pp send 3-shipped',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-new 1-processing 2-hold 3-cancel 4-Completed',
  `tax` tinyint(4) DEFAULT '0' COMMENT '%',
  `total` int(11) DEFAULT '0',
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange_rate` float DEFAULT NULL,
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `toname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0' COMMENT 'Price: price of product or type',
  `qty` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `sku` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange_rate` float DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_history`
--

DROP TABLE IF EXISTS `shop_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_history`
--

LOCK TABLES `shop_order_history` WRITE;
/*!40000 ALTER TABLE `shop_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_status`
--

DROP TABLE IF EXISTS `shop_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_status`
--

LOCK TABLES `shop_order_status` WRITE;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
INSERT INTO `shop_order_status` VALUES (1,'Processing'),(2,'Hold'),(3,'Canceled'),(4,'Done'),(5,'Failed'),(6,'New');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_total`
--

DROP TABLE IF EXISTS `shop_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_total`
--

LOCK TABLES `shop_order_total` WRITE;
/*!40000 ALTER TABLE `shop_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_page`
--

DROP TABLE IF EXISTS `shop_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`uniquekey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_page`
--

LOCK TABLES `shop_page` WRITE;
/*!40000 ALTER TABLE `shop_page` DISABLE KEYS */;
INSERT INTO `shop_page` VALUES (1,'','about',1),(2,NULL,'contact',1);
/*!40000 ALTER TABLE `shop_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_page_description`
--

DROP TABLE IF EXISTS `shop_page_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `cms_page_id_lang_id` (`page_id`,`lang_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_page_description`
--

LOCK TABLES `shop_page_description` WRITE;
/*!40000 ALTER TABLE `shop_page_description` DISABLE KEYS */;
INSERT INTO `shop_page_description` VALUES (1,1,'About',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(1,2,'Giới thiệu',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>'),(2,1,'Contact','',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(2,2,'Liên hệ với chúng tôi','',NULL,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.');
/*!40000 ALTER TABLE `shop_page_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_payment_status`
--

DROP TABLE IF EXISTS `shop_payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_payment_status`
--

LOCK TABLES `shop_payment_status` WRITE;
/*!40000 ALTER TABLE `shop_payment_status` DISABLE KEYS */;
INSERT INTO `shop_payment_status` VALUES (1,'Partial payment'),(2,'Paid'),(3,'Refurn'),(4,'Unpaid');
/*!40000 ALTER TABLE `shop_payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT '0',
  `vendor_id` int(10) unsigned DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_other` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cost` int(11) DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-Nomal 1-New 2-Hot',
  `option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0- inactive 1-active ',
  `view` int(11) DEFAULT '0',
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (1,'HTO001','product/4e53dfb9ac7b950c8734dfd50e90b490.jpg',0,0,19,NULL,100000,140000,9999,0,1,NULL,1,1,22,'2019-04-23 00:43:30','2019-03-20 23:00:00','2019-03-21 22:12:19','2019-04-23 00:43:30'),(2,'BSD001','product/017419d508eb6dc98a30c97c06bdf196.jpg',0,0,22,NULL,120000,130000,9999,0,1,NULL,1,1,57,'2019-04-23 00:44:13','2019-03-20 23:00:00','2019-03-21 22:33:10','2019-04-23 00:44:13'),(5,'RGHT001','product/bb543f4434ea3cb0b98a15aff44f0a60.jpg',0,0,22,NULL,140000,150000,999,0,1,NULL,1,1,24,'2019-04-21 11:02:40','2019-03-20 23:00:00','2019-03-21 22:50:49','2019-04-21 20:14:49'),(6,'NHTT001','product/ad0e6da289e3cb368997785b54350168.jpg',0,0,19,NULL,1200000,1200000,999,0,1,NULL,4,1,103,'2019-04-18 00:16:32','2019-03-21 23:00:00','2019-03-22 08:44:56','2019-04-21 20:14:24'),(8,'CVLS001','product/c540cd8e203f11b96b4d72ed3a7b2265.jpg',0,0,22,NULL,90000,100000,999,0,1,NULL,1,1,37,'2019-04-23 00:44:06','2019-03-22 23:00:00','2019-03-23 22:29:21','2019-04-23 00:44:06'),(9,'TDTH001','product/4bdcfed8c7981575da1ab6761220292c.jpg',0,0,19,NULL,70000,80000,9999,0,1,NULL,1,1,60,'2019-04-21 12:13:12','2019-03-22 23:00:00','2019-03-23 22:41:29','2019-04-21 20:13:50'),(10,'HMDN001','product/c27989cb3ec92f92608095e0f4d744d5.jpg',0,0,19,NULL,90000,100000,999,0,1,NULL,1,1,31,'2019-04-22 20:53:39','2019-03-23 23:00:00','2019-03-23 23:07:02','2019-04-22 20:53:39'),(11,'DDXL001','product/3a7a60b9e4aacb58f4b413899541d075.jpg',0,0,22,NULL,45000,45000,9999,0,1,NULL,1,1,50,'2019-04-22 09:43:42','2019-03-24 23:00:00','2019-03-25 21:15:06','2019-04-22 09:43:42'),(12,'KBT001','product/1a1eee88c3705c91a98f22a8299e1428.png',0,0,19,NULL,420000,420000,9999,0,0,NULL,1,1,23,'2019-04-22 13:31:35','2019-03-26 23:00:00','2019-03-27 20:51:11','2019-04-22 13:31:35'),(13,'TBM001','product/13852b240778abf3bcbad32ceab895c0.jpg',0,0,19,NULL,900000,900000,9999,0,0,NULL,7,1,31,'2019-04-21 09:56:11',NULL,'2019-03-27 21:00:21','2019-04-21 09:56:11'),(14,'TX001','product/55444d14f1e0413d8eddc36ee9a9a339.png',0,0,19,NULL,480000,480000,999,0,0,NULL,0,1,17,'2019-04-22 17:54:47','2019-04-20 22:00:00','2019-04-21 21:22:32','2019-04-22 17:54:47');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_description`
--

DROP TABLE IF EXISTS `shop_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `product_id_lang_id` (`product_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_description`
--

LOCK TABLES `shop_product_description` WRITE;
/*!40000 ALTER TABLE `shop_product_description` DISABLE KEYS */;
INSERT INTO `shop_product_description` VALUES (1,1,'Hà thủ ô viên mật ong','Nhà mình chuyên bỏ sỉ đảm bảo giá tốt nhất\r\nSản phẩm được viên hoàn toàn bằng máy, không sử dụng tay nên rất vệ sinh và an toàn.\r\nViên hà Thủ Ô mật ong rất tốt cho mẹ sau sinh bổ gan thận, tăng cường','Hà thủ ô viên mật ong, hà thủ ô','Nh&agrave; m&igrave;nh chuy&ecirc;n bỏ sỉ đảm bảo gi&aacute; tốt nhất\r\n<ul>\r\n	<li>Sản phẩm được vi&ecirc;n ho&agrave;n to&agrave;n bằng m&aacute;y, kh&ocirc;ng sử dụng tay n&ecirc;n rất vệ sinh v&agrave; an to&agrave;n.</li>\r\n	<li>Vi&ecirc;n h&agrave; Thủ &Ocirc; mật ong rất tốt cho mẹ sau sinh bổ gan thận, tăng cường lưu th&ocirc;ng kh&iacute; huyết phục hồi sức khỏe sau sinh v&agrave; trị rụng t&oacute;c sau sinh hiệu quả.&nbsp;</li>\r\n	<li>L&agrave;m đẹp da d&ugrave;ng h&agrave; thủ &ocirc; l&acirc;u ng&agrave;y sẽ c&oacute; l&agrave;n da đẹp căng mịn trẻ h&oacute;a.</li>\r\n	<li>T&Aacute;C DỤNG CỦA H&Agrave; THỦ &Ocirc; ĐỎ MẬT ONG DẠNG VI&Ecirc;N\r\n	<ul>\r\n		<li>1. Tăng cường, bồi bổ sức khỏe: H&agrave; thủ &ocirc; chế c&oacute; t&aacute;c dụng bổ gan, thận, &iacute;ch tinh huyết, d&ugrave;ng l&agrave;m thuốc an thần, bổ v&agrave; tăng lực trong c&aacute;c chứng đau th&acirc;n thể suy yếu, hoa mắt, ch&oacute;ng mặt, tim hồi hộp, nhức đầu, mất ngủ, suy nhược thần kinh, c&ograve;i xương, bệnh tạng rỉ dịch v&agrave; để hồi phục sức khoẻ cho người gi&agrave; sau khi bị bệnh.</li>\r\n		<li>2. Giải nhiệt, lợi tiểu: C&ograve;n d&ugrave;ng để chữa đau mỏi ch&acirc;n tay, di tinh, chữa sốt r&eacute;t l&acirc;u ng&agrave;y, kh&iacute; huyết suy nhược, giải nhiệt v&agrave; lợi tiểu v&agrave; l&agrave;m chất săn trong điều trị phối hợp chữa ỉa chảy.</li>\r\n		<li>3. Trị ngo&agrave;i da: Y học cổ tryền Trung Quốc v&agrave; Nhật Bản d&ugrave;ng h&agrave; thủ &ocirc; để điều trị vi&ecirc;m da mủ, bệnh lậu, bệnh nấm gavut ở ch&acirc;n, bệnh vi&ecirc;m v&agrave; tăng lipid m&aacute;u.</li>\r\n		<li>4. Tốt cho tim mạch, khả năng miễn dịch: H&agrave; thủ &ocirc; gi&uacute;p ngăn ngừa t&igrave;nh trạng vữa xơ động mạch, bảo vệ gan, th&uacute;c đẩy qu&aacute; tr&igrave;nh sản sinh hồng cầu, tăng khả năng miễn dịch, cải thiện hoạt động của hệ thống c&aacute;c tuyến nội tiết, đặc biệt l&agrave; tuyến thượng thận v&agrave; gi&aacute;p trạng.</li>\r\n		<li>5. Giải độc, ti&ecirc;u vi&ecirc;m: Trong y học cổ truyền Trung Quốc, h&agrave; thủ &ocirc; c&oacute; t&aacute;c dụng th&ocirc;ng tiểu, giải độc, ti&ecirc;u ung thủng, chữa t&aacute;o b&oacute;n cho phụ nữ sau khi đẻ hoặc người gi&agrave;, mụn nhọt, ghẻ lở, eczema, tr&agrave;ng nhạc.</li>\r\n		<li>6. Trị t&oacute;c bạc sớm, l&agrave;m đen t&oacute;c: Rễ h&agrave; thủ &ocirc; đỏ được d&ugrave;ng l&agrave;m thuốc bổ, chống bệnh scorbut v&agrave; khi h&agrave; thủ &ocirc; kết hợp với 1 số loại dược liệu kh&aacute;c c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đen t&oacute;c, trị t&oacute;c bạc sớm. N&oacute; c&ograve;n c&oacute; t&aacute;c dụng đối với bệnh tăng đường m&aacute;u. Rễ h&agrave; thủ &ocirc; c&oacute; t&aacute;c dụng bổ m&aacute;u,.</li>\r\n		<li>7. Kh&aacute;ng khuẩn, nhuận tr&agrave;ng: Ngo&agrave;i ra, h&agrave; thủ &ocirc; c&ograve;n c&oacute; t&aacute;c dụng kh&aacute;ng khuẩn, nhuận tr&agrave;ng, giải độc, tăng khả năng chống r&eacute;t của cơ thể, chống l&atilde;o h&oacute;a v&agrave; gi&uacute;p trẻ h&oacute;a da.</li>\r\n	</ul>\r\n	</li>\r\n	<li>HƯỚNG DẪN SỬ DỤNG H&Agrave; THỦ &Ocirc; ĐỎ NG&Acirc;M MẬT ONG DẠNG VI&Ecirc;N HO&Agrave;N Mỗi ng&agrave;y d&ugrave;ng 20 &ndash; 30 vi&ecirc;n, vi&ecirc;n h&agrave; thủ &ocirc; mật ong rất mềm v&agrave; thơm ngon n&ecirc;n c&oacute; thể nhai được.</li>\r\n	<li>BẢO QUẢN VI&Ecirc;N H&Agrave; THỦ &Ocirc; NG&Acirc;M MẬT ONG - Nơi tho&aacute;ng m&aacute;t, tr&aacute;nh ẩm mốc. N&ecirc;n bảo quản trong ngăn m&aacute;t tủ lạnh. - Ngưng sử dụng sản phẩm khi sản phẩm bị ẩm mốc.</li>\r\n	<li>HSD 1 năm. H&agrave;ng nh&agrave; m&igrave;nh&nbsp;đều l&agrave; h&agrave;ng mới n&ecirc;n kh&aacute;ch y&ecirc;n t&acirc;m ạ.:)</li>\r\n	<li>Xuất xứ: Việt Nam Sản phẩm ko phải thuốc, kh&ocirc;ng&nbsp;c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh...</li>\r\n</ul>'),(1,2,'Hà thủ ô viên mật ong','Nhà mình chuyên bỏ sỉ đảm bảo giá tốt nhất\r\nSản phẩm được viên hoàn toàn bằng máy, không sử dụng tay nên rất vệ sinh và an toàn.\r\nViên hà Thủ Ô mật ong rất tốt cho mẹ sau sinh bổ gan thận, tăng cường','Hà thủ ô viên mật ong, hà thủ ô','Nh&agrave; m&igrave;nh chuy&ecirc;n bỏ sỉ đảm bảo gi&aacute; tốt nhất\r\n<ul>\r\n	<li>Sản phẩm được vi&ecirc;n ho&agrave;n to&agrave;n bằng m&aacute;y, kh&ocirc;ng sử dụng tay n&ecirc;n rất vệ sinh v&agrave; an to&agrave;n.</li>\r\n	<li>Vi&ecirc;n h&agrave; Thủ &Ocirc; mật ong rất tốt cho mẹ sau sinh bổ gan thận, tăng cường lưu th&ocirc;ng kh&iacute; huyết phục hồi sức khỏe sau sinh v&agrave; trị rụng t&oacute;c sau sinh hiệu quả.&nbsp;</li>\r\n	<li>L&agrave;m đẹp da d&ugrave;ng h&agrave; thủ &ocirc; l&acirc;u ng&agrave;y sẽ c&oacute; l&agrave;n da đẹp căng mịn trẻ h&oacute;a.</li>\r\n	<li>T&Aacute;C DỤNG CỦA H&Agrave; THỦ &Ocirc; ĐỎ MẬT ONG DẠNG VI&Ecirc;N\r\n	<ul>\r\n		<li>1. Tăng cường, bồi bổ sức khỏe: H&agrave; thủ &ocirc; chế c&oacute; t&aacute;c dụng bổ gan, thận, &iacute;ch tinh huyết, d&ugrave;ng l&agrave;m thuốc an thần, bổ v&agrave; tăng lực trong c&aacute;c chứng đau th&acirc;n thể suy yếu, hoa mắt, ch&oacute;ng mặt, tim hồi hộp, nhức đầu, mất ngủ, suy nhược thần kinh, c&ograve;i xương, bệnh tạng rỉ dịch v&agrave; để hồi phục sức khoẻ cho người gi&agrave; sau khi bị bệnh.</li>\r\n		<li>2. Giải nhiệt, lợi tiểu: C&ograve;n d&ugrave;ng để chữa đau mỏi ch&acirc;n tay, di tinh, chữa sốt r&eacute;t l&acirc;u ng&agrave;y, kh&iacute; huyết suy nhược, giải nhiệt v&agrave; lợi tiểu v&agrave; l&agrave;m chất săn trong điều trị phối hợp chữa ỉa chảy.</li>\r\n		<li>3. Trị ngo&agrave;i da: Y học cổ tryền Trung Quốc v&agrave; Nhật Bản d&ugrave;ng h&agrave; thủ &ocirc; để điều trị vi&ecirc;m da mủ, bệnh lậu, bệnh nấm gavut ở ch&acirc;n, bệnh vi&ecirc;m v&agrave; tăng lipid m&aacute;u.</li>\r\n		<li>4. Tốt cho tim mạch, khả năng miễn dịch: H&agrave; thủ &ocirc; gi&uacute;p ngăn ngừa t&igrave;nh trạng vữa xơ động mạch, bảo vệ gan, th&uacute;c đẩy qu&aacute; tr&igrave;nh sản sinh hồng cầu, tăng khả năng miễn dịch, cải thiện hoạt động của hệ thống c&aacute;c tuyến nội tiết, đặc biệt l&agrave; tuyến thượng thận v&agrave; gi&aacute;p trạng.</li>\r\n		<li>5. Giải độc, ti&ecirc;u vi&ecirc;m: Trong y học cổ truyền Trung Quốc, h&agrave; thủ &ocirc; c&oacute; t&aacute;c dụng th&ocirc;ng tiểu, giải độc, ti&ecirc;u ung thủng, chữa t&aacute;o b&oacute;n cho phụ nữ sau khi đẻ hoặc người gi&agrave;, mụn nhọt, ghẻ lở, eczema, tr&agrave;ng nhạc.</li>\r\n		<li>6. Trị t&oacute;c bạc sớm, l&agrave;m đen t&oacute;c: Rễ h&agrave; thủ &ocirc; đỏ được d&ugrave;ng l&agrave;m thuốc bổ, chống bệnh scorbut v&agrave; khi h&agrave; thủ &ocirc; kết hợp với 1 số loại dược liệu kh&aacute;c c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đen t&oacute;c, trị t&oacute;c bạc sớm. N&oacute; c&ograve;n c&oacute; t&aacute;c dụng đối với bệnh tăng đường m&aacute;u. Rễ h&agrave; thủ &ocirc; c&oacute; t&aacute;c dụng bổ m&aacute;u,.</li>\r\n		<li>7. Kh&aacute;ng khuẩn, nhuận tr&agrave;ng: Ngo&agrave;i ra, h&agrave; thủ &ocirc; c&ograve;n c&oacute; t&aacute;c dụng kh&aacute;ng khuẩn, nhuận tr&agrave;ng, giải độc, tăng khả năng chống r&eacute;t của cơ thể, chống l&atilde;o h&oacute;a v&agrave; gi&uacute;p trẻ h&oacute;a da.</li>\r\n	</ul>\r\n	</li>\r\n	<li>HƯỚNG DẪN SỬ DỤNG H&Agrave; THỦ &Ocirc; ĐỎ NG&Acirc;M MẬT ONG DẠNG VI&Ecirc;N HO&Agrave;N Mỗi ng&agrave;y d&ugrave;ng 20 &ndash; 30 vi&ecirc;n, vi&ecirc;n h&agrave; thủ &ocirc; mật ong rất mềm v&agrave; thơm ngon n&ecirc;n c&oacute; thể nhai được.</li>\r\n	<li>BẢO QUẢN VI&Ecirc;N H&Agrave; THỦ &Ocirc; NG&Acirc;M MẬT ONG - Nơi tho&aacute;ng m&aacute;t, tr&aacute;nh ẩm mốc. N&ecirc;n bảo quản trong ngăn m&aacute;t tủ lạnh. - Ngưng sử dụng sản phẩm khi sản phẩm bị ẩm mốc.</li>\r\n	<li>HSD 1 năm. H&agrave;ng nh&agrave; m&igrave;nh&nbsp;đều l&agrave; h&agrave;ng mới n&ecirc;n kh&aacute;ch y&ecirc;n t&acirc;m ạ.:)</li>\r\n	<li>Xuất xứ: Việt Nam Sản phẩm ko phải thuốc, kh&ocirc;ng&nbsp;c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh...</li>\r\n</ul>'),(2,1,'BỘT SẮN DÂY NHÀ LÀM','-Theo Đông y, củ sắn dây có vị ngọt, mát, tính bình, đi vào kinh tỳ, vị, phế, bàng quang. Tinh bột sắn dây được coi là một thực phẩm quý có rất nhiều công dụng khác nhau như: thanh nhiệt, sinh tân dịc','BỘT SẮN DÂY , Sắn dây','<p><strong>-Theo Đ&ocirc;ng y, củ sắn d&acirc;y c&oacute; vị ngọt, m&aacute;t, t&iacute;nh b&igrave;nh, đi v&agrave;o kinh tỳ, vị, phế, b&agrave;ng quang. Tinh bột sắn d&acirc;y được coi l&agrave; một&nbsp;thực phẩm&nbsp;qu&yacute; c&oacute; rất nhiều c&ocirc;ng dụng kh&aacute;c nhau như: thanh nhiệt, sinh t&acirc;n dịch, trừ phiền nhiệt, th&ocirc;ng đại tiểu tiện, l&agrave;m ra mồ h&ocirc;i, giải độc. Thường d&ugrave;ng trong c&aacute;c trường hợp ti&ecirc;u kh&aacute;t (đ&aacute;i th&aacute;o đường), cơ thể n&oacute;ng nực, ngực bụng n&oacute;ng bức muốn ph&aacute;t cuồng, n&ocirc;n mửa, lỵ ra m&aacute;u, tiểu trường kh&ocirc;ng th&ocirc;ng lợi v&agrave; ngộ độc rượu.&nbsp;</strong></p>\r\n\r\n<p><strong>-&nbsp;<strong>Theo y học hiện đạ</strong>i, tinh bột sắn d&acirc;y c&oacute; nhiều c&ocirc;ng dụng như&nbsp;<strong>cải thiện tuần ho&agrave;n m&aacute;u</strong>,&nbsp;<strong>chống rối loạn nhịp tim</strong>, trị mụn, tăng khả năng chống l&atilde;o h&oacute;a, giải độc cơ thể v&agrave; hiện c&ograve;n được d&ugrave;ng trong l&agrave;m đẹp, chăm s&oacute;c sức khỏe cũng như chữa bệnh.</strong></p>\r\n\r\n<p><img alt=\"\" height=\"418\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/anh%20mau%20san%20day.jpg\" width=\"640\" /><br />\r\n<strong>+ C&ocirc;ng dụng chi tiết v&agrave; c&aacute;ch sử dụng:</strong></p>\r\n\r\n<p><strong>- C&ocirc;ng dụng hỗ trợ điều trị&nbsp;c&aacute;ch triệu chứng như:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Cảm sốt phong nhiệt, nhức đầu, mụn nhọt v&agrave; ph&ograve;ng ngừa c&aacute;c loại r&ocirc;m sảy do thời tiết qu&aacute; n&oacute;ng bức: (&nbsp;</strong><strong>Ng&agrave;y d&ugrave;ng 10 - 16gr tinh bột, pha với nước để uống. )</strong></li>\r\n	<li><strong>Cảm nắng, sốt n&oacute;ng, nhức đầu, kh&aacute;t nước, c&oacute; mồ h&ocirc;i, n&oacute;ng ruột, n&ocirc;n ọe: ( Tinh bột sắn d&acirc;y 12g h&ograve;a đường uống; hoặc d&ugrave;ng c&aacute;t căn 20g, đậu v&aacute;n(sao) 12g, gi&atilde; giập, sắc nước uống trong ng&agrave;y. )</strong></li>\r\n	<li><strong>V&ugrave;ng ngực bụng n&oacute;ng cồn c&agrave;o, kh&aacute;t nước: ( Tinh bột sắn d&acirc;y 120g, gạo tẻ 15g. Gạo tẻ ng&acirc;m nước một đ&ecirc;m, chắt bỏ nước, trộn đều với bột sắn d&acirc;y, nấu ch&aacute;o ăn trong ng&agrave;y. )</strong></li>\r\n	<li><strong>Ngộ độc thức ăn, đại tiện ra m&aacute;u do ăn phải đồ n&oacute;ng, độc.</strong></li>\r\n	<li><strong>Vi&ecirc;m họng, vi&ecirc;m thanh quản cấp t&iacute;nh.</strong></li>\r\n	<li><strong>Trị mụn trứng c&aacute;, mụn nhọt, hoặc uống nhiều rượu đi cầu ra m&aacute;u.</strong></li>\r\n	<li><strong>Ngộ độc rượu.</strong></li>\r\n	<li><strong>Ngực n&oacute;ng, thổ huyết kh&ocirc;ng ngừng...</strong></li>\r\n</ul>\r\n\r\n<p>Tham khảo 3 c&aacute;ch pha uống tinh bột sắn d&acirc;y tốt nhất</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>C&aacute;ch 1: Pha bột sắn d&acirc;y uống ch&iacute;n</strong></p>\r\n\r\n	<p>Cho&nbsp;3 th&igrave;a tinh bột sắn d&acirc;y v&agrave;o cốc, d&ugrave;ng đũa h&ograve;a tan với 1 ch&uacute;t nước lọc. Tiếp tục đổ 150ml nước n&oacute;ng v&agrave;o khuấy đều tay trong 2 ph&uacute;t. L&uacute;c n&agrave;y bột sắn d&acirc;y sẽ keo lại sền sệt, c&oacute; m&agrave;u trắng trong. khi uống bạn c&oacute; thể c&oacute; th&ecirc;m một ch&uacute;t đường trắng nhằm k&iacute;ch th&iacute;ch vị gi&aacute;c uống ngon miệng hơn. Sử dụng đều đặn mỗi ng&agrave;y 1 lần v&agrave;o c&aacute;c buổi s&aacute;ng hoặc tối trước khi ngủ.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" height=\"405\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/BBS943a.jpg\" width=\"500\" /><br />\r\n<strong>C&aacute;ch 2: Pha lo&atilde;ng bột sắn d&acirc;y uống giải kh&aacute;t</strong></p>\r\n\r\n<p>Cho 2 &ndash; 3 th&igrave;a tinh bột sắn d&acirc;y v&agrave;o cốc, d&ugrave;ng đũa khuấy đều với 200ml nước lọc, 2 th&igrave;a đường trắng, 1 th&igrave;a nước cốt chanh tươi. Hỗn hợp thu được n&ecirc;n thưởng thức ngay sau khi ho&agrave;n th&agrave;nh để mang lại hiệu quả tối ưu nhất.</p>\r\n\r\n<p><img alt=\"\" height=\"300\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/huong_dan_su_dung_bot_san_day_cho_phu_nu_mang_thai.jpg\" width=\"430\" /></p>\r\n\r\n<p><strong>C&aacute;ch 3: Pha bột sắn d&acirc;y với sữa đặc</strong></p>\r\n\r\n<p>Cho&nbsp;3 th&igrave;a sữa đặc v&agrave;o nồi, đặt l&ecirc;n bếp đun s&ocirc;i với 200ml nước. Nếu muốn uống đặc chỉ việc đổ bột sắn d&acirc;y đ&atilde; được h&ograve;a tan với một ch&uacute;t nước lọc v&agrave;o nồi, d&ugrave;ng đũa khuấy đều đến khi hỗn hợp s&aacute;nh lại l&agrave; ho&agrave;n th&agrave;nh. Ngược lại nếu muốn uống sữa lo&atilde;ng h&atilde;y đợi nguội hẳn th&igrave; cho bột sắn d&acirc;y v&agrave;o rồi khuấy đều. C&oacute; thể thay thế sữa đặc bằng sữa tươi t&ugrave;y chọn</p>\r\n\r\n<p><img alt=\"\" height=\"331\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/bot-san-day-va-sua-tuoi-giai-nhiet.png\" width=\"500\" /></p>\r\n\r\n<p><strong>- C&ocirc;ng dụng trong l&agrave;m đẹp:&nbsp;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Trị t&agrave;n nhang:&nbsp;</strong>Nhờ nh&oacute;m hoạt chất isoflavone c&oacute; trong củ sắn d&acirc;y m&agrave; sắn d&acirc;y c&oacute; t&aacute;c dụng đặt biệt đ&oacute; l&agrave; trị t&agrave;n nhang. Chất n&agrave;y c&oacute; hoạt t&iacute;nh Estrogen tương tự như hormone estrogen ở người phụ nữ. Ch&iacute;nh những chất n&agrave;y sẽ thay thế hormone bị rối loạn, l&agrave;m ổn định hoạt động của ch&uacute;ng, ngăn chặn sự b&agrave;i tiết qu&aacute; nhiều sắc tố melanin, l&agrave;m giảm th&acirc;m n&aacute;m, t&agrave;n nhang. Ngo&agrave;i ra, isoflavone c&ograve;n l&agrave; chất chống oxi h&oacute;a, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a trong cơ thể.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Trị mụn:&nbsp;</strong>Tinh bột sắn d&acirc;y c&oacute; t&aacute;c dụng thanh nhiệt, giải độc rất cao, sẽ nhanh ch&oacute;ng đẩy l&ugrave;i c&aacute;c loại độc tố t&iacute;ch tụ b&ecirc;n trong cơ thể, l&agrave;m giảm mụn v&agrave; trả lại cho bạn l&agrave;n da l&aacute;ng mịn như ban đầu. Uống một cốc tinh bột sắn d&acirc;y nẫu ch&iacute;n mỗi ng&agrave;y, bạn sẽ bất ngờ v&igrave; hiệu quả trị mụn đấy!</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tẩy da chết:&nbsp;</strong>Sắn d&acirc;y d&ugrave;ng để tẩy da chết nghe c&oacute; vẻ lạ l&ugrave;ng, nhưng việc tự chế cho m&igrave;nh loại tẩy da đặc biệt n&agrave;y lại v&ocirc; c&ugrave;ng đơn giản. Bạn chỉ cần trộn 1 th&igrave;a tinh bột sắn d&acirc;y với nước &eacute;p quả c&agrave; chua, thoa hỗn hợp đ&oacute; l&ecirc;n da, massage nhẹ nh&agrave;ng cho đến khi hỗn hợp se lại th&igrave; rửa mặt bằng nước ấm.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Chống l&atilde;o h&oacute;a da:&nbsp;</strong>Củ sắn d&acirc;y c&oacute; chứa plavonoid, c&oacute; t&aacute;c dụng tăng cường hoạt động của hệ ti&ecirc;u h&oacute;a, tuần ho&agrave;n &ndash; l&agrave; chất chống oxi h&oacute;a cao, gi&uacute;p lưu th&ocirc;ng m&aacute;u, ngăn ngừa những triệu chứng l&atilde;o h&oacute;a sớm ở con người.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Cải thiện v&ograve;ng một:&nbsp;</strong>Theo kết quả nghi&ecirc;n cứu của c&aacute;c nh&agrave; khoa học, trong th&agrave;nh phần của sắn d&acirc;y rất gi&agrave;u protein v&agrave; lexithin, c&oacute; t&aacute;c dụng k&iacute;ch th&iacute;ch sản sinh ra estrogen &ndash; nội tiết tố nữ, nhờ vậy gi&uacute;p n&uacute;i đ&ocirc;i của phụ nữ tr&ograve;n đầy v&agrave; săn chắc. Phụ nữ xưa cho rằng, uống bột sắn d&acirc;y vừa gi&uacute;p điều h&ograve;a cơ thể sau k&igrave; nguyệt san vừa k&iacute;ch th&iacute;ch v&ograve;ng một ph&aacute;t triển tự nhi&ecirc;n, gi&uacute;p khu&ocirc;n ngực nảy nở hơn.</li>\r\n</ul>\r\n\r\n<p>Tham khảo 3 c&aacute;ch&nbsp;l&agrave;m mặt nạ tinh bột sắn d&acirc;y hiệu quả.</p>\r\n\r\n<p>Lưu &yacute;: Lớp mặt nạ phải đạt độ mỏng th&iacute;ch hợp để gi&uacute;p da vừa hấp thụ dưỡng chất vừa kh&ocirc;ng bị qu&aacute; b&iacute;.&nbsp;Đắp hỗn hợp l&ecirc;n da mặt massage nhẹ nh&agrave;ng trong v&ograve;ng 2-3 ph&uacute;t. Sau đ&oacute; đợi 10-15 ph&uacute;t sau th&igrave; rửa mặt với nước lạnh.&nbsp;</p>\r\n\r\n<p><strong>Trị mụn hiệu quả</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: 20g bột đậu xanh, 20g tinh bột sắn d&acirc;y, 1 th&igrave;a cafe&nbsp;mật ong nguy&ecirc;n chất</li>\r\n	<li>Sử dụng ch&eacute;n nhỏ hoặc dụng cụ đắp mặt trộn đều hỗn hợp tr&ecirc;n đến khi thu được hỗn hợp dạng sệt.</li>\r\n	<li>Sự kết hợp tinh bột sắn d&acirc;y với mật ong đắp mặt&nbsp;n&agrave;y gi&uacute;p giải độc, l&agrave;m dịu da, x&oacute;a bỏ c&aacute;c đốm th&acirc;m do mụn để lại cũng như ngăn ngừa mụn mọc trở lại.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>X&oacute;a bay t&agrave;n&nbsp;nhang</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: tinh bột sắn d&acirc;y lượng vừa đủ, nửa ch&eacute;n nhỏ nước &eacute;p c&agrave; chua nguy&ecirc;n chất.&nbsp;</li>\r\n	<li>Lượng tinh bột vừa đủ l&agrave; khi trộn với nước &eacute;p c&agrave; chua thu được hỗn hợp dạng sệt đủ b&aacute;m tr&ecirc;n da mặt.&nbsp;</li>\r\n	<li>Sử dụng đều đặn loại mặt nạ n&agrave;y sẽ l&agrave;m cho những vết t&agrave;n hương mờ dẫn v&agrave; biết mất. Khi đ&oacute; l&agrave;n da của bạn sẽ ng&agrave;y c&agrave;ng trở n&ecirc;n tươi tắn v&agrave; căn tr&agrave;n sức sống.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Tẩy tế b&agrave;o chết tiềm ẩn cho da</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: tinh bột sắn d&acirc;y với sữa tươi</li>\r\n	<li>Trộn tinh bột sắn d&acirc;y với&nbsp;sữa tươi&nbsp;thu được hỗn hợp dạng sệt đủ b&aacute;m tr&ecirc;n da mặt.</li>\r\n</ul>\r\n\r\n<p><strong>TINH BỘT SẮN D&Acirc;Y</strong></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<caption>\r\n	<p><strong>Tinh bột sắn d&acirc;y được chiết xuất 100% từ củ sắn d&acirc;y Việt Nam</strong></p>\r\n\r\n	<p><strong>KHUY&Ecirc;N D&Ugrave;NG:&nbsp;SỬ DỤNG&nbsp;PHA ĐỒ UỐNG</strong></p>\r\n\r\n	<p><strong><img alt=\"\" height=\"765\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/anh%20mau%20san%20day%201.jpg\" width=\"1000\" /></strong></p>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td><strong>Đơn gi&aacute;/ 100gr</strong></td>\r\n			<td><strong>Tổng tiền</strong></td>\r\n			<td><strong>Khuyến m&atilde;i</strong></td>\r\n			<td><strong>Phạm vi giao h&agrave;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>500gr</td>\r\n			<td>15.000đ</td>\r\n			<td>75.000đ</td>\r\n			<td>\r\n			<p>Ph&iacute; ship 20k giao h&agrave;ng tất cả c&aacute;c quận Hồ Ch&iacute; Minh</p>\r\n\r\n			<p>Ph&iacute; ship 35k giao h&agrave;ng to&agrave;n quốc</p>\r\n			</td>\r\n			<td>Giao h&agrave;ng to&agrave;n quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1kg</td>\r\n			<td>12.000đ</td>\r\n			<td>120.000đ</td>\r\n			<td>\r\n			<p>Ph&iacute; ship 20k giao h&agrave;ng tất cả c&aacute;c quận Hồ Ch&iacute; Minh</p>\r\n\r\n			<p>Ph&iacute; ship 35k giao h&agrave;ng to&agrave;n quốc</p>\r\n			</td>\r\n			<td>Giao h&agrave;ng to&agrave;n quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2kg</td>\r\n			<td>Li&ecirc;n hệ...</td>\r\n			<td>Li&ecirc;n hệ...</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i</strong></em></p>\r\n\r\n<ul>\r\n	<li>Khối lượng tịnh: 500g v&agrave; 1kg</li>\r\n	<li>Dạng: cục vu&ocirc;ng hoặc dạng bột</li>\r\n</ul>\r\n\r\n<p><em><strong>C&aacute;ch bảo quản</strong></em></p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t</li>\r\n	<li>Buộc chặt miệng t&uacute;i k&iacute;n sau khi d&ugrave;ng</li>\r\n	<li>Sử dụng trong 12 th&aacute;ng sau khi mở t&uacute;i, ngưng sử dụng sản phẩm khi c&oacute; dấu hiệu ẩm mốc, đổi m&agrave;u.</li>\r\n</ul>'),(2,2,'BỘT SẮN DÂY NHÀ LÀM','-Theo Đông y, củ sắn dây có vị ngọt, mát, tính bình, đi vào kinh tỳ, vị, phế, bàng quang. Tinh bột sắn dây được coi là một thực phẩm quý có rất nhiều công dụng khác nhau như: thanh nhiệt, sinh tân dịc','BỘT SẮN DÂY , Sắn dây','<p><strong>-Theo Đ&ocirc;ng y, củ sắn d&acirc;y c&oacute; vị ngọt, m&aacute;t, t&iacute;nh b&igrave;nh, đi v&agrave;o kinh tỳ, vị, phế, b&agrave;ng quang. Tinh bột sắn d&acirc;y được coi l&agrave; một&nbsp;thực phẩm&nbsp;qu&yacute; c&oacute; rất nhiều c&ocirc;ng dụng kh&aacute;c nhau như: thanh nhiệt, sinh t&acirc;n dịch, trừ phiền nhiệt, th&ocirc;ng đại tiểu tiện, l&agrave;m ra mồ h&ocirc;i, giải độc. Thường d&ugrave;ng trong c&aacute;c trường hợp ti&ecirc;u kh&aacute;t (đ&aacute;i th&aacute;o đường), cơ thể n&oacute;ng nực, ngực bụng n&oacute;ng bức muốn ph&aacute;t cuồng, n&ocirc;n mửa, lỵ ra m&aacute;u, tiểu trường kh&ocirc;ng th&ocirc;ng lợi v&agrave; ngộ độc rượu.&nbsp;</strong></p>\r\n\r\n<p><strong>-&nbsp;<strong>Theo y học hiện đạ</strong>i, tinh bột sắn d&acirc;y c&oacute; nhiều c&ocirc;ng dụng như&nbsp;<strong>cải thiện tuần ho&agrave;n m&aacute;u</strong>,&nbsp;<strong>chống rối loạn nhịp tim</strong>, trị mụn, tăng khả năng chống l&atilde;o h&oacute;a, giải độc cơ thể v&agrave; hiện c&ograve;n được d&ugrave;ng trong l&agrave;m đẹp, chăm s&oacute;c sức khỏe cũng như chữa bệnh.</strong></p>\r\n\r\n<p><img alt=\"\" height=\"418\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/anh%20mau%20san%20day.jpg\" width=\"640\" /><br />\r\n<strong>+ C&ocirc;ng dụng chi tiết v&agrave; c&aacute;ch sử dụng:</strong></p>\r\n\r\n<p><strong>- C&ocirc;ng dụng hỗ trợ điều trị&nbsp;c&aacute;ch triệu chứng như:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Cảm sốt phong nhiệt, nhức đầu, mụn nhọt v&agrave; ph&ograve;ng ngừa c&aacute;c loại r&ocirc;m sảy do thời tiết qu&aacute; n&oacute;ng bức: (&nbsp;</strong><strong>Ng&agrave;y d&ugrave;ng 10 - 16gr tinh bột, pha với nước để uống. )</strong></li>\r\n	<li><strong>Cảm nắng, sốt n&oacute;ng, nhức đầu, kh&aacute;t nước, c&oacute; mồ h&ocirc;i, n&oacute;ng ruột, n&ocirc;n ọe: ( Tinh bột sắn d&acirc;y 12g h&ograve;a đường uống; hoặc d&ugrave;ng c&aacute;t căn 20g, đậu v&aacute;n(sao) 12g, gi&atilde; giập, sắc nước uống trong ng&agrave;y. )</strong></li>\r\n	<li><strong>V&ugrave;ng ngực bụng n&oacute;ng cồn c&agrave;o, kh&aacute;t nước: ( Tinh bột sắn d&acirc;y 120g, gạo tẻ 15g. Gạo tẻ ng&acirc;m nước một đ&ecirc;m, chắt bỏ nước, trộn đều với bột sắn d&acirc;y, nấu ch&aacute;o ăn trong ng&agrave;y. )</strong></li>\r\n	<li><strong>Ngộ độc thức ăn, đại tiện ra m&aacute;u do ăn phải đồ n&oacute;ng, độc.</strong></li>\r\n	<li><strong>Vi&ecirc;m họng, vi&ecirc;m thanh quản cấp t&iacute;nh.</strong></li>\r\n	<li><strong>Trị mụn trứng c&aacute;, mụn nhọt, hoặc uống nhiều rượu đi cầu ra m&aacute;u.</strong></li>\r\n	<li><strong>Ngộ độc rượu.</strong></li>\r\n	<li><strong>Ngực n&oacute;ng, thổ huyết kh&ocirc;ng ngừng...</strong></li>\r\n</ul>\r\n\r\n<p>Tham khảo 3 c&aacute;ch pha uống tinh bột sắn d&acirc;y tốt nhất</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>C&aacute;ch 1: Pha bột sắn d&acirc;y uống ch&iacute;n</strong></p>\r\n\r\n	<p>Cho&nbsp;3 th&igrave;a tinh bột sắn d&acirc;y v&agrave;o cốc, d&ugrave;ng đũa h&ograve;a tan với 1 ch&uacute;t nước lọc. Tiếp tục đổ 150ml nước n&oacute;ng v&agrave;o khuấy đều tay trong 2 ph&uacute;t. L&uacute;c n&agrave;y bột sắn d&acirc;y sẽ keo lại sền sệt, c&oacute; m&agrave;u trắng trong. khi uống bạn c&oacute; thể c&oacute; th&ecirc;m một ch&uacute;t đường trắng nhằm k&iacute;ch th&iacute;ch vị gi&aacute;c uống ngon miệng hơn. Sử dụng đều đặn mỗi ng&agrave;y 1 lần v&agrave;o c&aacute;c buổi s&aacute;ng hoặc tối trước khi ngủ.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" height=\"405\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/BBS943a.jpg\" width=\"500\" /><br />\r\n<strong>C&aacute;ch 2: Pha lo&atilde;ng bột sắn d&acirc;y uống giải kh&aacute;t</strong></p>\r\n\r\n<p>Cho 2 &ndash; 3 th&igrave;a tinh bột sắn d&acirc;y v&agrave;o cốc, d&ugrave;ng đũa khuấy đều với 200ml nước lọc, 2 th&igrave;a đường trắng, 1 th&igrave;a nước cốt chanh tươi. Hỗn hợp thu được n&ecirc;n thưởng thức ngay sau khi ho&agrave;n th&agrave;nh để mang lại hiệu quả tối ưu nhất.</p>\r\n\r\n<p><img alt=\"\" height=\"300\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/huong_dan_su_dung_bot_san_day_cho_phu_nu_mang_thai.jpg\" width=\"430\" /></p>\r\n\r\n<p><strong>C&aacute;ch 3: Pha bột sắn d&acirc;y với sữa đặc</strong></p>\r\n\r\n<p>Cho&nbsp;3 th&igrave;a sữa đặc v&agrave;o nồi, đặt l&ecirc;n bếp đun s&ocirc;i với 200ml nước. Nếu muốn uống đặc chỉ việc đổ bột sắn d&acirc;y đ&atilde; được h&ograve;a tan với một ch&uacute;t nước lọc v&agrave;o nồi, d&ugrave;ng đũa khuấy đều đến khi hỗn hợp s&aacute;nh lại l&agrave; ho&agrave;n th&agrave;nh. Ngược lại nếu muốn uống sữa lo&atilde;ng h&atilde;y đợi nguội hẳn th&igrave; cho bột sắn d&acirc;y v&agrave;o rồi khuấy đều. C&oacute; thể thay thế sữa đặc bằng sữa tươi t&ugrave;y chọn</p>\r\n\r\n<p><img alt=\"\" height=\"331\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/bot-san-day-va-sua-tuoi-giai-nhiet.png\" width=\"500\" /></p>\r\n\r\n<p><strong>- C&ocirc;ng dụng trong l&agrave;m đẹp:&nbsp;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Trị t&agrave;n nhang:&nbsp;</strong>Nhờ nh&oacute;m hoạt chất isoflavone c&oacute; trong củ sắn d&acirc;y m&agrave; sắn d&acirc;y c&oacute; t&aacute;c dụng đặt biệt đ&oacute; l&agrave; trị t&agrave;n nhang. Chất n&agrave;y c&oacute; hoạt t&iacute;nh Estrogen tương tự như hormone estrogen ở người phụ nữ. Ch&iacute;nh những chất n&agrave;y sẽ thay thế hormone bị rối loạn, l&agrave;m ổn định hoạt động của ch&uacute;ng, ngăn chặn sự b&agrave;i tiết qu&aacute; nhiều sắc tố melanin, l&agrave;m giảm th&acirc;m n&aacute;m, t&agrave;n nhang. Ngo&agrave;i ra, isoflavone c&ograve;n l&agrave; chất chống oxi h&oacute;a, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a trong cơ thể.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Trị mụn:&nbsp;</strong>Tinh bột sắn d&acirc;y c&oacute; t&aacute;c dụng thanh nhiệt, giải độc rất cao, sẽ nhanh ch&oacute;ng đẩy l&ugrave;i c&aacute;c loại độc tố t&iacute;ch tụ b&ecirc;n trong cơ thể, l&agrave;m giảm mụn v&agrave; trả lại cho bạn l&agrave;n da l&aacute;ng mịn như ban đầu. Uống một cốc tinh bột sắn d&acirc;y nẫu ch&iacute;n mỗi ng&agrave;y, bạn sẽ bất ngờ v&igrave; hiệu quả trị mụn đấy!</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tẩy da chết:&nbsp;</strong>Sắn d&acirc;y d&ugrave;ng để tẩy da chết nghe c&oacute; vẻ lạ l&ugrave;ng, nhưng việc tự chế cho m&igrave;nh loại tẩy da đặc biệt n&agrave;y lại v&ocirc; c&ugrave;ng đơn giản. Bạn chỉ cần trộn 1 th&igrave;a tinh bột sắn d&acirc;y với nước &eacute;p quả c&agrave; chua, thoa hỗn hợp đ&oacute; l&ecirc;n da, massage nhẹ nh&agrave;ng cho đến khi hỗn hợp se lại th&igrave; rửa mặt bằng nước ấm.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Chống l&atilde;o h&oacute;a da:&nbsp;</strong>Củ sắn d&acirc;y c&oacute; chứa plavonoid, c&oacute; t&aacute;c dụng tăng cường hoạt động của hệ ti&ecirc;u h&oacute;a, tuần ho&agrave;n &ndash; l&agrave; chất chống oxi h&oacute;a cao, gi&uacute;p lưu th&ocirc;ng m&aacute;u, ngăn ngừa những triệu chứng l&atilde;o h&oacute;a sớm ở con người.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Cải thiện v&ograve;ng một:&nbsp;</strong>Theo kết quả nghi&ecirc;n cứu của c&aacute;c nh&agrave; khoa học, trong th&agrave;nh phần của sắn d&acirc;y rất gi&agrave;u protein v&agrave; lexithin, c&oacute; t&aacute;c dụng k&iacute;ch th&iacute;ch sản sinh ra estrogen &ndash; nội tiết tố nữ, nhờ vậy gi&uacute;p n&uacute;i đ&ocirc;i của phụ nữ tr&ograve;n đầy v&agrave; săn chắc. Phụ nữ xưa cho rằng, uống bột sắn d&acirc;y vừa gi&uacute;p điều h&ograve;a cơ thể sau k&igrave; nguyệt san vừa k&iacute;ch th&iacute;ch v&ograve;ng một ph&aacute;t triển tự nhi&ecirc;n, gi&uacute;p khu&ocirc;n ngực nảy nở hơn.</li>\r\n</ul>\r\n\r\n<p>Tham khảo 3 c&aacute;ch&nbsp;l&agrave;m mặt nạ tinh bột sắn d&acirc;y hiệu quả.</p>\r\n\r\n<p>Lưu &yacute;: Lớp mặt nạ phải đạt độ mỏng th&iacute;ch hợp để gi&uacute;p da vừa hấp thụ dưỡng chất vừa kh&ocirc;ng bị qu&aacute; b&iacute;.&nbsp;Đắp hỗn hợp l&ecirc;n da mặt massage nhẹ nh&agrave;ng trong v&ograve;ng 2-3 ph&uacute;t. Sau đ&oacute; đợi 10-15 ph&uacute;t sau th&igrave; rửa mặt với nước lạnh.&nbsp;</p>\r\n\r\n<p><strong>Trị mụn hiệu quả</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: 20g bột đậu xanh, 20g tinh bột sắn d&acirc;y, 1 th&igrave;a cafe&nbsp;mật ong nguy&ecirc;n chất</li>\r\n	<li>Sử dụng ch&eacute;n nhỏ hoặc dụng cụ đắp mặt trộn đều hỗn hợp tr&ecirc;n đến khi thu được hỗn hợp dạng sệt.</li>\r\n	<li>Sự kết hợp tinh bột sắn d&acirc;y với mật ong đắp mặt&nbsp;n&agrave;y gi&uacute;p giải độc, l&agrave;m dịu da, x&oacute;a bỏ c&aacute;c đốm th&acirc;m do mụn để lại cũng như ngăn ngừa mụn mọc trở lại.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>X&oacute;a bay t&agrave;n&nbsp;nhang</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: tinh bột sắn d&acirc;y lượng vừa đủ, nửa ch&eacute;n nhỏ nước &eacute;p c&agrave; chua nguy&ecirc;n chất.&nbsp;</li>\r\n	<li>Lượng tinh bột vừa đủ l&agrave; khi trộn với nước &eacute;p c&agrave; chua thu được hỗn hợp dạng sệt đủ b&aacute;m tr&ecirc;n da mặt.&nbsp;</li>\r\n	<li>Sử dụng đều đặn loại mặt nạ n&agrave;y sẽ l&agrave;m cho những vết t&agrave;n hương mờ dẫn v&agrave; biết mất. Khi đ&oacute; l&agrave;n da của bạn sẽ ng&agrave;y c&agrave;ng trở n&ecirc;n tươi tắn v&agrave; căn tr&agrave;n sức sống.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Tẩy tế b&agrave;o chết tiềm ẩn cho da</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: tinh bột sắn d&acirc;y với sữa tươi</li>\r\n	<li>Trộn tinh bột sắn d&acirc;y với&nbsp;sữa tươi&nbsp;thu được hỗn hợp dạng sệt đủ b&aacute;m tr&ecirc;n da mặt.</li>\r\n</ul>\r\n\r\n<p><strong>TINH BỘT SẮN D&Acirc;Y</strong></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<caption>\r\n	<p><strong>Tinh bột sắn d&acirc;y được chiết xuất 100% từ củ sắn d&acirc;y Việt Nam</strong></p>\r\n\r\n	<p><strong>KHUY&Ecirc;N D&Ugrave;NG:&nbsp;SỬ DỤNG&nbsp;PHA ĐỒ UỐNG</strong></p>\r\n\r\n	<p><strong><img alt=\"\" height=\"765\" src=\"http://tinhbotnghedamhuy.com.vn/asset/upload/anh%20mau%20san%20day%201.jpg\" width=\"1000\" /></strong></p>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td><strong>Đơn gi&aacute;/ 100gr</strong></td>\r\n			<td><strong>Tổng tiền</strong></td>\r\n			<td><strong>Khuyến m&atilde;i</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>500gr</td>\r\n			<td>15.000đ</td>\r\n			<td>75.000đ</td>\r\n			<td>\r\n			<p>Ph&iacute; ship 20k giao h&agrave;ng tất cả c&aacute;c quận Hồ Ch&iacute; Minh</p>\r\n\r\n			<p>Ph&iacute; ship 35k giao h&agrave;ng to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1kg</td>\r\n			<td>12.000đ</td>\r\n			<td>120.000đ</td>\r\n			<td>\r\n			<p>Ph&iacute; ship 20k giao h&agrave;ng tất cả c&aacute;c quận Hồ Ch&iacute; Minh</p>\r\n\r\n			<p>Ph&iacute; ship 35k giao h&agrave;ng to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2kg</td>\r\n			<td>Li&ecirc;n hệ...</td>\r\n			<td>Li&ecirc;n hệ...</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i</strong></em></p>\r\n\r\n<ul>\r\n	<li>Khối lượng tịnh: 500g v&agrave; 1kg</li>\r\n	<li>Dạng: cục vu&ocirc;ng hoặc dạng bột</li>\r\n</ul>\r\n\r\n<p><em><strong>C&aacute;ch bảo quản</strong></em></p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t</li>\r\n	<li>Buộc chặt miệng t&uacute;i k&iacute;n sau khi d&ugrave;ng</li>\r\n	<li>Sử dụng trong 12 th&aacute;ng sau khi mở t&uacute;i, ngưng sử dụng sản phẩm khi c&oacute; dấu hiệu ẩm mốc, đổi m&agrave;u.</li>\r\n</ul>'),(4,1,'RƯỢU GỪNG NGHỆ HẠ THỔ','RƯỢU GỪNG NGHỆ HẠ THỔ HÒA BÌNH ĐÁNH TAN MỠ \r\n- Phù hợp với: Người làm văn phòng, phụ nữ sau khi sinh, béo bia, béo do ăn nhiều....\r\n- Giảm mỡ các vùng: bụng, mông, đùi, bắp tay, bả vai ...\r\n_ ','RƯỢU GỪNG NGHỆ HẠ THỔ','<h1><strong>Rượu gừng nghệ hạ thổ giảm nhanh mỡ bụng, đẹp da sau sinh</strong></h1>\r\n\r\n<ul>\r\n	<li><strong><u>Ruou gừng nghệ hạ thổ</u></strong><strong>:</strong>D&ugrave;ng cho to&agrave;n th&acirc;n vừa gi&uacute;p giảm bụng, săn lại v&ograve;ng eo, vừa c&oacute; t&aacute;c dụng dưỡng da (mờ vểt rạn, sạch vết th&acirc;m). Sau sinh d&ugrave;ng loại n&agrave;y phổ biến nhất v&igrave; mẹ sinh xong thường vừa bị sổ bụng vừa bị th&acirc;m/ rạn da. Ngo&agrave;i ra, dung ruou gừng nghệ hạ thổ lau người hoặc pha nước tắm sau sinh để&nbsp;chống lạnh, ph&ograve;ng bệnh hậu sản\r\n\r\n	<ul>\r\n		<li><strong>Th&agrave;nh phần nguy&ecirc;n liệu Ruou gừng nghệ hạ thổ</strong>\r\n\r\n		<ul>\r\n			<li>Gừng ta, Nghệ ta, Rượu gạo men ta chuẩn 50 độ.</li>\r\n			<li>Rượu gạo men ta, chưng cất theo phương ph&aacute;p truyền thống (chưng cất ruou từ 1995 đến nay).</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2>&nbsp;<img alt=\"rượu gừng hạ thổ\" src=\"https://thuhienstore.club/documents/photos/55437963_2297976753772704_1190708102891044864_n.jpg\" style=\"width: 720px; height: 960px;\" /><br />\r\n<strong>C&aacute;ch sử dụng ruou gừng nghệ hạ thổ</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 1 &ndash; D&ugrave;ng rượu gừng nghệ m&aacute;t xa bụng (Nếu kh&ocirc;ng chườm muối, chỉ cần d&ugrave;ng bước 1)</strong><br />\r\n	Sinh em b&eacute; xong khoảng 1 tuần (sinh thường) v&agrave; sau khi vết mổ liền (sinh mổ thường phải 2 tuần trở đi), mẹ m&aacute;t xa nhẹ nh&agrave;ng bằng rượu 1-2 lần/ ng&agrave;y, mỗi lần khoảng 15-20p, tr&aacute;nh l&uacute;c no qu&aacute; hay đ&oacute;i qu&aacute;. Nếu vết mổ c&ograve;n đau, mẹ n&ecirc;n tr&aacute;nh m&aacute;t xa gần khu vực vết mổ.</li>\r\n	<li>D&ugrave;ng 20-30ml rượu cho mỗi lần. Sử dụng khăn mềm để thấm ruou thoa một lượt cho ướt v&ugrave;ng cần m&aacute;t xa, sau đ&oacute; m&aacute;t xa đều bằng tay. Ruou rất nhanh kh&ocirc;, n&ecirc;n kể cả khi ruou kh&ocirc; mẹ vẫn m&aacute;t xa v&ograve;ng tr&ograve;n theo chiều kim đồng hồ v&agrave; ngược lại.</li>\r\n	<li>\r\n	<p><strong>D&ugrave;ng </strong>rượu&nbsp;<strong>gừng nghệ hạ thổ lau người/&nbsp;</strong>pha<strong>&nbsp;nước tắm hoặc thoa to&agrave;n to&agrave;n th&acirc;n&nbsp; trong những th&aacute;ng sau sinh để tăng cường sức khỏe, ph&ograve;ng cảm gi&oacute;,dưỡng s&aacute;ng da.&nbsp;</strong>Khi d&ugrave;ng ruou để lau người, pha nước tắm, thoa dưỡng da mẹ c&oacute; thể sử dụng ngay sau khi sinh 3 ng&agrave;y (nếu sinh mổ mẹ tr&aacute;nh lau v&ugrave;ng vết mổ nếu vết mổ chưa l&agrave;nh).</p>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Lau người l&agrave;m sạch m&ugrave;i cơ thể: mẹ lấy lượng ruou như tr&ecirc;n pha với nước ấm vừa đủ d&ugrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tắm ph&ograve;ng hậu sản, chống lạnh: Vẫn một lượng như tr&ecirc;n pha c&ugrave;ng chậu nước đủ tắm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thoa to&agrave;n to&agrave;n th&acirc;n dưỡng da: lấy lượng ruou gừng nghệ đủ thoa một lượt to&agrave;n to&agrave;n th&acirc;n, để nguy&ecirc;n h&ocirc;m sau tắm hoặc để lưu tr&ecirc;n da &iacute;t nhất 30p rồi mới tắm.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;<img src=\"https://media3.scdn.vn/img2/2017/10_11/9qXLzF_simg_d0daf0_800x1200_max.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Bước 2: Chườm muối, sau khi m&aacute;t xa ruou</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ cắt t&uacute;i nguy&ecirc;n liệu ra, đổ đầy muối v&agrave;o t&uacute;i vải quay cả t&uacute;i vải trong l&ograve; vi s&oacute;ng chừng 3-4 ph&uacute;t hoặc cho muối l&ecirc;n chảo rang nhẹ 8 ph&uacute;t rồi bỏ muối v&agrave;o t&uacute;i vải k&eacute;o kh&oacute;a k&iacute;n, thực hiện chườm muối v&agrave;o bụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nếu d&ugrave;ng l&ograve; vi s&oacute;ng, c&aacute;c lần d&ugrave;ng muối tiếp theo mẹ chỉ cần bỏ cả t&uacute;i vải đang đựng sẵn muối v&agrave;o quay.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ nằm &uacute;p l&ecirc;n t&uacute;i muối nếu sinh thường, sinh mổ&nbsp;chườm t&uacute;i muối tr&ecirc;n bụng, chườm t&uacute;i muối ng&agrave;y 2 - 3 lần đến khi muối hết n&oacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với người sinh thường, sau khoảng 1 tuần c&oacute; thể chườm t&uacute;i muối.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với người sinh mổ, sau khoảng 3 tuần c&oacute; thể chườm&nbsp;t&uacute;i muối.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ c&oacute; thể d&ugrave;ng&nbsp;<a href=\"https://www.sendo.vn/\">gen nịt bụng</a>sau khi sinh để giữ form, sau sinh &iacute;t nhất 1 th&aacute;ng mới gen bụng nh&eacute; mẹ. Thậm ch&iacute; mẹ sinh mổ c&oacute; thể chờ tới 2 th&aacute;ng mới gen cho an t&acirc;m</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>'),(5,1,'RƯỢU GỪNG NGHỆ HẠ THỔ','RƯỢU GỪNG NGHỆ HẠ THỔ HÒA BÌNH ĐÁNH TAN MỠ \r\n- Phù hợp với: Người làm văn phòng, phụ nữ sau khi sinh, béo bia, béo do ăn nhiều....\r\n- Giảm mỡ các vùng: bụng, mông, đùi, bắp tay, bả vai ...\r\n_','RƯỢU GỪNG NGHỆ HẠ THỔ','<h1><strong>Rượu gừng nghệ hạ thổ giảm nhanh mỡ bụng, đẹp da sau sinh</strong></h1>\r\n\r\n<ul>\r\n	<li><strong><u>Ruou gừng nghệ hạ thổ</u></strong><strong>:</strong>D&ugrave;ng cho to&agrave;n th&acirc;n vừa gi&uacute;p giảm bụng, săn lại v&ograve;ng eo, vừa c&oacute; t&aacute;c dụng dưỡng da (mờ vểt rạn, sạch vết th&acirc;m). Sau sinh d&ugrave;ng loại n&agrave;y phổ biến nhất v&igrave; mẹ sinh xong thường vừa bị sổ bụng vừa bị th&acirc;m/ rạn da. Ngo&agrave;i ra, dung ruou gừng nghệ hạ thổ lau người hoặc pha nước tắm sau sinh để&nbsp;chống lạnh, ph&ograve;ng bệnh hậu sản\r\n\r\n	<ul>\r\n		<li><strong>Th&agrave;nh phần nguy&ecirc;n liệu Ruou gừng nghệ hạ thổ</strong>\r\n\r\n		<ul>\r\n			<li>Gừng ta, Nghệ ta, Rượu gạo men ta chuẩn 50 độ.</li>\r\n			<li>Rượu gạo men ta, chưng cất theo phương ph&aacute;p truyền thống (chưng cất ruou từ 1995 đến nay).</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2>&nbsp;<img alt=\"rượu gừng hạ thổ\" src=\"https://thuhienstore.club/documents/photos/55437963_2297976753772704_1190708102891044864_n.jpg\" style=\"width: 720px; height: 960px;\" /><br />\r\n<strong>C&aacute;ch sử dụng ruou gừng nghệ hạ thổ</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 1 &ndash; D&ugrave;ng rượu gừng nghệ m&aacute;t xa bụng (Nếu kh&ocirc;ng chườm muối, chỉ cần d&ugrave;ng bước 1)</strong><br />\r\n	Sinh em b&eacute; xong khoảng 1 tuần (sinh thường) v&agrave; sau khi vết mổ liền (sinh mổ thường phải 2 tuần trở đi), mẹ m&aacute;t xa nhẹ nh&agrave;ng bằng rượu 1-2 lần/ ng&agrave;y, mỗi lần khoảng 15-20p, tr&aacute;nh l&uacute;c no qu&aacute; hay đ&oacute;i qu&aacute;. Nếu vết mổ c&ograve;n đau, mẹ n&ecirc;n tr&aacute;nh m&aacute;t xa gần khu vực vết mổ.</li>\r\n	<li>D&ugrave;ng 20-30ml rượu cho mỗi lần. Sử dụng khăn mềm để thấm ruou thoa một lượt cho ướt v&ugrave;ng cần m&aacute;t xa, sau đ&oacute; m&aacute;t xa đều bằng tay. Ruou rất nhanh kh&ocirc;, n&ecirc;n kể cả khi ruou kh&ocirc; mẹ vẫn m&aacute;t xa v&ograve;ng tr&ograve;n theo chiều kim đồng hồ v&agrave; ngược lại.</li>\r\n	<li>\r\n	<p><strong>D&ugrave;ng </strong>rượu&nbsp;<strong>gừng nghệ hạ thổ lau người/&nbsp;</strong>pha<strong>&nbsp;nước tắm hoặc thoa to&agrave;n to&agrave;n th&acirc;n&nbsp; trong những th&aacute;ng sau sinh để tăng cường sức khỏe, ph&ograve;ng cảm gi&oacute;,dưỡng s&aacute;ng da.&nbsp;</strong>Khi d&ugrave;ng ruou để lau người, pha nước tắm, thoa dưỡng da mẹ c&oacute; thể sử dụng ngay sau khi sinh 3 ng&agrave;y (nếu sinh mổ mẹ tr&aacute;nh lau v&ugrave;ng vết mổ nếu vết mổ chưa l&agrave;nh).</p>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Lau người l&agrave;m sạch m&ugrave;i cơ thể: mẹ lấy lượng ruou như tr&ecirc;n pha với nước ấm vừa đủ d&ugrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tắm ph&ograve;ng hậu sản, chống lạnh: Vẫn một lượng như tr&ecirc;n pha c&ugrave;ng chậu nước đủ tắm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thoa to&agrave;n to&agrave;n th&acirc;n dưỡng da: lấy lượng ruou gừng nghệ đủ thoa một lượt to&agrave;n to&agrave;n th&acirc;n, để nguy&ecirc;n h&ocirc;m sau tắm hoặc để lưu tr&ecirc;n da &iacute;t nhất 30p rồi mới tắm.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;<img src=\"https://media3.scdn.vn/img2/2017/10_11/9qXLzF_simg_d0daf0_800x1200_max.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Bước 2: Chườm muối, sau khi m&aacute;t xa ruou</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ cắt t&uacute;i nguy&ecirc;n liệu ra, đổ đầy muối v&agrave;o t&uacute;i vải quay cả t&uacute;i vải trong l&ograve; vi s&oacute;ng chừng 3-4 ph&uacute;t hoặc cho muối l&ecirc;n chảo rang nhẹ 8 ph&uacute;t rồi bỏ muối v&agrave;o t&uacute;i vải k&eacute;o kh&oacute;a k&iacute;n, thực hiện chườm muối v&agrave;o bụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nếu d&ugrave;ng l&ograve; vi s&oacute;ng, c&aacute;c lần d&ugrave;ng muối tiếp theo mẹ chỉ cần bỏ cả t&uacute;i vải đang đựng sẵn muối v&agrave;o quay.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ nằm &uacute;p l&ecirc;n t&uacute;i muối nếu sinh thường, sinh mổ&nbsp;chườm t&uacute;i muối tr&ecirc;n bụng, chườm t&uacute;i muối ng&agrave;y 2 - 3 lần đến khi muối hết n&oacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với người sinh thường, sau khoảng 1 tuần c&oacute; thể chườm t&uacute;i muối.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với người sinh mổ, sau khoảng 3 tuần c&oacute; thể chườm&nbsp;t&uacute;i muối.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ c&oacute; thể d&ugrave;ng&nbsp;<a href=\"https://www.sendo.vn/\">gen nịt bụng</a>sau khi sinh để giữ form, sau sinh &iacute;t nhất 1 th&aacute;ng mới gen bụng nh&eacute; mẹ. Thậm ch&iacute; mẹ sinh mổ c&oacute; thể chờ tới 2 th&aacute;ng mới gen cho an t&acirc;m</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>'),(5,2,'RƯỢU GỪNG NGHỆ HẠ THỔ','RƯỢU GỪNG NGHỆ HẠ THỔ HÒA BÌNH ĐÁNH TAN MỠ \r\n- Phù hợp với: Người làm văn phòng, phụ nữ sau khi sinh, béo bia, béo do ăn nhiều....\r\n- Giảm mỡ các vùng: bụng, mông, đùi, bắp tay, bả vai ...\r\n_','RƯỢU GỪNG NGHỆ HẠ THỔ','<h1><strong>Rượu gừng nghệ hạ thổ giảm nhanh mỡ bụng, đẹp da sau sinh</strong></h1>\r\n\r\n<ul>\r\n	<li><strong><u>Ruou gừng nghệ hạ thổ</u></strong><strong>:</strong>D&ugrave;ng cho to&agrave;n th&acirc;n vừa gi&uacute;p giảm bụng, săn lại v&ograve;ng eo, vừa c&oacute; t&aacute;c dụng dưỡng da (mờ vểt rạn, sạch vết th&acirc;m). Sau sinh d&ugrave;ng loại n&agrave;y phổ biến nhất v&igrave; mẹ sinh xong thường vừa bị sổ bụng vừa bị th&acirc;m/ rạn da. Ngo&agrave;i ra, dung ruou gừng nghệ hạ thổ lau người hoặc pha nước tắm sau sinh để&nbsp;chống lạnh, ph&ograve;ng bệnh hậu sản\r\n\r\n	<ul>\r\n		<li><strong>Th&agrave;nh phần nguy&ecirc;n liệu Ruou gừng nghệ hạ thổ</strong>\r\n\r\n		<ul>\r\n			<li>Gừng ta, Nghệ ta, Rượu gạo men ta chuẩn 50 độ.</li>\r\n			<li>Rượu gạo men ta, chưng cất theo phương ph&aacute;p truyền thống (chưng cất ruou từ 1995 đến nay).</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2>&nbsp;<img alt=\"rượu gừng hạ thổ\" src=\"https://thuhienstore.club/documents/photos/55437963_2297976753772704_1190708102891044864_n.jpg\" style=\"width: 720px; height: 960px;\" /><br />\r\n<strong>C&aacute;ch sử dụng ruou gừng nghệ hạ thổ</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 1 &ndash; D&ugrave;ng rượu gừng nghệ m&aacute;t xa bụng (Nếu kh&ocirc;ng chườm muối, chỉ cần d&ugrave;ng bước 1)</strong><br />\r\n	Sinh em b&eacute; xong khoảng 1 tuần (sinh thường) v&agrave; sau khi vết mổ liền (sinh mổ thường phải 2 tuần trở đi), mẹ m&aacute;t xa nhẹ nh&agrave;ng bằng rượu 1-2 lần/ ng&agrave;y, mỗi lần khoảng 15-20p, tr&aacute;nh l&uacute;c no qu&aacute; hay đ&oacute;i qu&aacute;. Nếu vết mổ c&ograve;n đau, mẹ n&ecirc;n tr&aacute;nh m&aacute;t xa gần khu vực vết mổ.</li>\r\n	<li>D&ugrave;ng 20-30ml rượu cho mỗi lần. Sử dụng khăn mềm để thấm ruou thoa một lượt cho ướt v&ugrave;ng cần m&aacute;t xa, sau đ&oacute; m&aacute;t xa đều bằng tay. Ruou rất nhanh kh&ocirc;, n&ecirc;n kể cả khi ruou kh&ocirc; mẹ vẫn m&aacute;t xa v&ograve;ng tr&ograve;n theo chiều kim đồng hồ v&agrave; ngược lại.</li>\r\n	<li>\r\n	<p><strong>D&ugrave;ng </strong>rượu&nbsp;<strong>gừng nghệ hạ thổ lau người/&nbsp;</strong>pha<strong>&nbsp;nước tắm hoặc thoa to&agrave;n to&agrave;n th&acirc;n&nbsp; trong những th&aacute;ng sau sinh để tăng cường sức khỏe, ph&ograve;ng cảm gi&oacute;,dưỡng s&aacute;ng da.&nbsp;</strong>Khi d&ugrave;ng ruou để lau người, pha nước tắm, thoa dưỡng da mẹ c&oacute; thể sử dụng ngay sau khi sinh 3 ng&agrave;y (nếu sinh mổ mẹ tr&aacute;nh lau v&ugrave;ng vết mổ nếu vết mổ chưa l&agrave;nh).</p>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Lau người l&agrave;m sạch m&ugrave;i cơ thể: mẹ lấy lượng ruou như tr&ecirc;n pha với nước ấm vừa đủ d&ugrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tắm ph&ograve;ng hậu sản, chống lạnh: Vẫn một lượng như tr&ecirc;n pha c&ugrave;ng chậu nước đủ tắm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thoa to&agrave;n to&agrave;n th&acirc;n dưỡng da: lấy lượng ruou gừng nghệ đủ thoa một lượt to&agrave;n to&agrave;n th&acirc;n, để nguy&ecirc;n h&ocirc;m sau tắm hoặc để lưu tr&ecirc;n da &iacute;t nhất 30p rồi mới tắm.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;<img src=\"https://media3.scdn.vn/img2/2017/10_11/9qXLzF_simg_d0daf0_800x1200_max.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Bước 2: Chườm muối, sau khi m&aacute;t xa ruou</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ cắt t&uacute;i nguy&ecirc;n liệu ra, đổ đầy muối v&agrave;o t&uacute;i vải quay cả t&uacute;i vải trong l&ograve; vi s&oacute;ng chừng 3-4 ph&uacute;t hoặc cho muối l&ecirc;n chảo rang nhẹ 8 ph&uacute;t rồi bỏ muối v&agrave;o t&uacute;i vải k&eacute;o kh&oacute;a k&iacute;n, thực hiện chườm muối v&agrave;o bụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nếu d&ugrave;ng l&ograve; vi s&oacute;ng, c&aacute;c lần d&ugrave;ng muối tiếp theo mẹ chỉ cần bỏ cả t&uacute;i vải đang đựng sẵn muối v&agrave;o quay.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ nằm &uacute;p l&ecirc;n t&uacute;i muối nếu sinh thường, sinh mổ&nbsp;chườm t&uacute;i muối tr&ecirc;n bụng, chườm t&uacute;i muối ng&agrave;y 2 - 3 lần đến khi muối hết n&oacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với người sinh thường, sau khoảng 1 tuần c&oacute; thể chườm t&uacute;i muối.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với người sinh mổ, sau khoảng 3 tuần c&oacute; thể chườm&nbsp;t&uacute;i muối.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mẹ c&oacute; thể d&ugrave;ng&nbsp;<a href=\"https://www.sendo.vn/\">gen nịt bụng</a>sau khi sinh để giữ form, sau sinh &iacute;t nhất 1 th&aacute;ng mới gen bụng nh&eacute; mẹ. Thậm ch&iacute; mẹ sinh mổ c&oacute; thể chờ tới 2 th&aacute;ng mới gen cho an t&acirc;m</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>'),(6,1,'Nụ Hoa Tam Thất','Nụ tam thất là loại thảo dược quý có nguồn gốc hoàn toàn từ thiên nhiên rất tốt cho sức khỏe và hỗ trợ làm đẹp. Những tác dụng mà nụ hoa tam thất mang lại thì không phải bàn cãi gì nữa bởi đã được kiể','Nụ Hoa Tam Thất','<h2 style=\"text-align: center;\">Nụ hoa tam thất sấy kh&ocirc;</h2>\r\n\r\n<p><strong>Hoa tam thất</strong>&nbsp;sở hữu trong m&igrave;nh vị ngọt t&iacute;nh m&aacute;t. Loại hoa n&agrave;y hiện nay đang được sấy kh&ocirc; dưới dạng tr&agrave; để sử dụng l&acirc;u d&agrave;i, đ&oacute;ng g&oacute;i ph&acirc;n phối tới thị trường. Trong&nbsp;<strong>nụ tam thất</strong>&nbsp;c&oacute; chứa rất nhiều hoạt chất hiếm c&oacute; trong tự nhi&ecirc;n, c&oacute; t&aacute;c dụng tuyệt vời cho sức khỏe của bạn.</p>\r\n\r\n<p><strong>Th&agrave;nh phần của &nbsp;Nụ hoa tam thất</strong></p>\r\n\r\n<ul>\r\n	<li>Th&agrave;nh phần: 100% nụ tam thất sấy kh&ocirc;</li>\r\n	<li>M&ugrave;i vị: Vị ngọt, t&iacute;nh m&aacute;t dễ uống</li>\r\n	<li>Đ&oacute;ng g&oacute;i t&uacute;i zip: 500gam</li>\r\n	<li>Bảo quản: Nơi tho&aacute;ng m&aacute;t, kh&ocirc; gi&aacute;o</li>\r\n	<li>Hạn sử dụng: Được in trực tiếp tr&ecirc;n bao b&igrave;</li>\r\n</ul>\r\n\r\n<h2>Bảng gi&aacute; của nụ hoa tam thất</h2>\r\n\r\n<p><strong>Hoa tam thất</strong>&nbsp;sau khi được thu hoạch những nụ hoa tươi nhất, chất lượng nhất th&igrave; được sấy kh&ocirc; đ&oacute;ng g&oacute;i ph&acirc;n phối tới người ti&ecirc;u d&ugrave;ng theo từng t&uacute;i c&oacute; trọng lượng 0.5kg. Hiện tại nụ tam thất được ph&acirc;n phối bởi&nbsp;<strong>Thu Hiền Store</strong>&nbsp;c&oacute; gi&aacute; 530.000vnđ/0.5kg, v&agrave; khi mua 01kg sẽ được khuyến m&atilde;i giảm gi&aacute; chỉ c&ograve;n 1.100.000vnđ v&agrave; miễn ph&iacute; vận chuyển.</p>\r\n\r\n<table align=\"center\" border=\"2\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td><strong>Gi&aacute; ni&ecirc;m yết</strong></td>\r\n			<td><strong>Ph&iacute; ship</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nụ Hoa tam thất - 0.5kg</td>\r\n			<td>700.000vnđ</td>\r\n			<td>Miễn ph&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nụ Hoa tam thất - 01kg</td>\r\n			<td>1.500.000vnđ</td>\r\n			<td>Miễn ph&iacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đ&acirc;y hiện đang l&agrave; mức gi&aacute; được đ&aacute;nh gi&aacute; l&agrave; cạnh tranh nhất tr&ecirc;n thị trường. Tất cả sản phẩm&nbsp;<strong>Thu Hiền Store</strong>&nbsp;ph&acirc;n phối đều được lựa chọn chất lượng kỹ c&agrave;ng v&agrave; c&oacute; những ch&iacute;nh s&aacute;ch hỗ trợ, đổi trả hợp l&yacute; nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng.</p>\r\n\r\n<h2>Hoa tam thất mua ở đ&acirc;u?</h2>\r\n\r\n<p>T&igrave;m địa chỉ b&aacute;n tr&agrave; hoa tam thất kh&ocirc;ng kh&oacute; nhưng để t&igrave;m được nơi b&aacute;n uy t&iacute;n th&igrave; kh&ocirc;ng phải kh&aacute;ch h&agrave;ng n&agrave;o cũng biết. Nếu uy t&iacute;n l&agrave; điều m&agrave; kh&aacute;ch h&agrave;ng băn khoăn th&igrave; h&atilde;y thử mua h&agrave;ng một lần tại&nbsp;<strong>Thu Hiền Store</strong>. Với ch&iacute;nh s&aacute;ch đảm bảo v&agrave; gi&aacute; cả cạnh tranh chắc chắn <strong>Thu Hiền Store</strong> sẽ kh&ocirc;ng l&agrave;m kh&aacute;ch h&agrave;ng thất vọng.</p>\r\n\r\n<p><strong>5 cam kết khi mua h&agrave;ng tại Thu Hiền Store</strong></p>\r\n\r\n<ol>\r\n	<li>Sản phẩm đ&uacute;ng chất lượng, kh&ocirc;ng chất bảo quản.</li>\r\n	<li>Được kiểm tra sản phẩm trước khi thanh to&aacute;n.</li>\r\n	<li>Giao h&agrave;ng tại nh&agrave; tr&ecirc;n to&agrave;n quốc.</li>\r\n	<li>Miễn ph&iacute; Ship khi mua từ 01kg trở l&ecirc;n.</li>\r\n</ol>\r\n\r\n<p>Uống nụ&nbsp;<strong>hoa tam thất</strong>&nbsp;đều đặn trong một thời gian chắc chắn qu&yacute; kh&aacute;ch sẽ cảm thấy sức khỏe được cải thiện đ&aacute;ng kể. Qu&yacute; kh&aacute;ch c&oacute; nhu cầu đặt h&agrave;ng hoặc cần tư vấn th&ecirc;m về sản phẩm vui l&ograve;ng li&ecirc;n hệ&nbsp;<strong>Thu Hiền Store</strong>&nbsp;theo th&ocirc;ng tin b&ecirc;n dưới để được hỗ trợ tốt nhất.</p>'),(6,2,'Nụ Hoa Tam Thất','Nụ tam thất là loại thảo dược quý có nguồn gốc hoàn toàn từ thiên nhiên rất tốt cho sức khỏe và hỗ trợ làm đẹp. Những tác dụng mà nụ hoa tam thất mang lại thì không phải bàn cãi gì nữa bởi đã được kiể','Nụ Hoa Tam Thất','<h2 style=\"text-align: center;\">Tr&agrave; nụ hoa tam thất sấy kh&ocirc;</h2>\r\n\r\n<p><strong>Hoa tam thất</strong>&nbsp;sở hữu trong m&igrave;nh vị ngọt t&iacute;nh m&aacute;t. Loại hoa n&agrave;y hiện nay đang được sấy kh&ocirc; dưới dạng tr&agrave; để sử dụng l&acirc;u d&agrave;i, đ&oacute;ng g&oacute;i ph&acirc;n phối tới thị trường. Trong&nbsp;<strong>nụ tam thất</strong>&nbsp;c&oacute; chứa rất nhiều hoạt chất hiếm c&oacute; trong tự nhi&ecirc;n, c&oacute; t&aacute;c dụng tuyệt vời cho sức khỏe của bạn.</p>\r\n\r\n<p><strong>Th&agrave;nh phần của tr&agrave; nụ hoa tam thất</strong></p>\r\n\r\n<ul>\r\n	<li>Th&agrave;nh phần: 100% nụ tam thất sấy kh&ocirc;</li>\r\n	<li>M&ugrave;i vị: Vị ngọt, t&iacute;nh m&aacute;t dễ uống</li>\r\n	<li>Đ&oacute;ng g&oacute;i t&uacute;i zip: 500gam</li>\r\n	<li>Bảo quản: Nơi tho&aacute;ng m&aacute;t, kh&ocirc; gi&aacute;o</li>\r\n	<li>Hạn sử dụng: Được in trực tiếp tr&ecirc;n bao b&igrave;</li>\r\n</ul>\r\n\r\n<h2>Bảng gi&aacute; của nụ hoa tam thất</h2>\r\n\r\n<p><strong>Hoa tam thất</strong>&nbsp;sau khi được thu hoạch những nụ hoa tươi nhất, chất lượng nhất th&igrave; được sấy kh&ocirc; đ&oacute;ng g&oacute;i ph&acirc;n phối tới người ti&ecirc;u d&ugrave;ng theo từng t&uacute;i c&oacute; trọng lượng 0.5kg. Hiện tại nụ tam thất được ph&acirc;n phối bởi&nbsp;<strong>Thu Hiền Store</strong>&nbsp;c&oacute; gi&aacute; 530.000vnđ/0.5kg, v&agrave; khi mua 01kg sẽ được khuyến m&atilde;i giảm gi&aacute; chỉ c&ograve;n 1.100.000vnđ v&agrave; miễn ph&iacute; vận chuyển.</p>\r\n\r\n<table align=\"center\" border=\"2\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td><strong>Gi&aacute; ni&ecirc;m yết</strong></td>\r\n			<td><strong>Ph&iacute; ship</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nụ Hoa tam thất - 0.5kg</td>\r\n			<td>700.000vnđ</td>\r\n			<td>Miễn ph&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nụ Hoa tam thất - 01kg</td>\r\n			<td>1.500.000vnđ</td>\r\n			<td>Miễn ph&iacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đ&acirc;y hiện đang l&agrave; mức gi&aacute; được đ&aacute;nh gi&aacute; l&agrave; cạnh tranh nhất tr&ecirc;n thị trường. Tất cả sản phẩm&nbsp;<strong>Thu Hiền Store</strong>&nbsp;ph&acirc;n phối đều được lựa chọn chất lượng kỹ c&agrave;ng v&agrave; c&oacute; những ch&iacute;nh s&aacute;ch hỗ trợ, đổi trả hợp l&yacute; nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng.</p>\r\n\r\n<h2>Hoa tam thất mua ở đ&acirc;u?</h2>\r\n\r\n<p>T&igrave;m địa chỉ b&aacute;n tr&agrave; hoa tam thất kh&ocirc;ng kh&oacute; nhưng để t&igrave;m được nơi b&aacute;n uy t&iacute;n th&igrave; kh&ocirc;ng phải kh&aacute;ch h&agrave;ng n&agrave;o cũng biết. Nếu uy t&iacute;n l&agrave; điều m&agrave; kh&aacute;ch h&agrave;ng băn khoăn th&igrave; h&atilde;y thử mua h&agrave;ng một lần tại&nbsp;<strong>Thu Hiền Store</strong>. Với ch&iacute;nh s&aacute;ch đảm bảo v&agrave; gi&aacute; cả cạnh tranh chắc chắn <strong>Thu Hiền Store</strong> sẽ kh&ocirc;ng l&agrave;m kh&aacute;ch h&agrave;ng thất vọng.</p>\r\n\r\n<p><strong>5 cam kết khi mua h&agrave;ng tại Thu Hiền Store</strong></p>\r\n\r\n<ol>\r\n	<li>Sản phẩm đ&uacute;ng chất lượng, kh&ocirc;ng chất bảo quản.</li>\r\n	<li>Được kiểm tra sản phẩm trước khi thanh to&aacute;n.</li>\r\n	<li>Giao h&agrave;ng tại nh&agrave; tr&ecirc;n to&agrave;n quốc.</li>\r\n	<li>Miễn ph&iacute; Ship khi mua từ 01kg trở l&ecirc;n.</li>\r\n</ol>\r\n\r\n<p>Uống nụ&nbsp;<strong>hoa tam thất</strong>&nbsp;đều đặn trong một thời gian chắc chắn qu&yacute; kh&aacute;ch sẽ cảm thấy sức khỏe được cải thiện đ&aacute;ng kể. Qu&yacute; kh&aacute;ch c&oacute; nhu cầu đặt h&agrave;ng hoặc cần tư vấn th&ecirc;m về sản phẩm vui l&ograve;ng li&ecirc;n hệ&nbsp;<strong>Thu Hiền Store</strong>&nbsp;theo th&ocirc;ng tin b&ecirc;n dưới để được hỗ trợ tốt nhất.</p>'),(8,1,'Chè vằng sẻ lợi sữa giảm cân 1kg','CHÈ VẰNG SẺ LỢI SỮA_GIẢM CÂN_TIÊU MỠ\r\nMẹ nào ít sữa thì nhớ uống chè vằng sẻ nhé ạ. Uốg ấm trc Cữ bú của bé 5-10\' \r\nMẹ nào sắp sinh nên chuẩn bị trước để lúc sinh sẵn đun ạ \r\nChè vằng sẻ mát gan,giảm','Chè vằng sẻ','<ul>\r\n	<li>NHỮNG C&Ocirc;NG DỤNG CH&Iacute;NH CỦA CH&Egrave; VẰNG</li>\r\n	<li>Gi&uacute;p tăng tiết sữa cho c&aacute;c mẹ đang cho con b&uacute;.</li>\r\n	<li>Gi&uacute;p giảm c&acirc;n cho c&aacute;c mẹ sau sinh v&agrave; cả người b&igrave;nh thường.</li>\r\n	<li>Co b&oacute;p tử cung, l&agrave;m sạch tử cung sau sinh, phục hồi nhanh sức khỏe sau sinh.</li>\r\n	<li>Gi&uacute;p th&ocirc;ng huyết, điều kinh, hỗ trợ điều trị đau bụng ở phụ nữ sau khi sinh.</li>\r\n	<li>Hỗ trợ điều trị bệnh thiếu m&aacute;u sau sinh.</li>\r\n	<li>Ngo&agrave;i ra c&ograve;n giảm thiểu t&igrave;nh trạng mệt mỏi, k&eacute;m ăn, gi&uacute;p phục hồi sức khỏe sau sinh.</li>\r\n	<li>Gi&uacute;p giảm b&eacute;o bụng, th&iacute;ch hợp cho người đang giảm c&acirc;n.</li>\r\n	<li>Hỗ trợ điều trị nghẽn tiết sữa ở phụ nữ sau khi sinh.</li>\r\n	<li>Lưu ý: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng. Ch&egrave; vằng( cao ch&egrave; vằng ) chỉ thật sự ph&aacute;t huy t&aacute;c dụng khi bạn sử dụng đ&uacute;ng c&aacute;ch. N&ecirc;n duy tr&igrave; d&ugrave;ng ch&egrave; vằng đều đặn, ch&iacute;nh từ th&oacute;i quen ăn uống tốt, d&ugrave;ng ch&egrave; vằng đều đặn, sẽ gi&uacute;p cơ thể bạn khoẻ hơn, lợi sữa hơn.</li>\r\n</ul>\r\n<br />\r\nNHỮNG C&Ocirc;NG DỤNG CH&Iacute;NH CỦA CH&Egrave; VẰNG Gi&uacute;p tăng tiết sữa cho c&aacute;c mẹ đang cho con b&uacute;. Gi&uacute;p giảm c&acirc;n cho c&aacute;c mẹ sau sinh v&agrave; cả người b&igrave;nh thường. Co b&oacute;p tử cung, l&agrave;m sạch tử cung sau sinh, phục hồi nhanh sức khỏe sau sinh. Gi&uacute;p th&ocirc;ng huyết, điều kinh, hỗ trợ điều trị đau bụng ở phụ nữ sau khi sinh. Hỗ trợ điều trị bệnh thiếu m&aacute;u sau sinh. Ngo&agrave;i ra c&ograve;n giảm thiểu t&igrave;nh trạng mệt mỏi, k&eacute;m ăn, gi&uacute;p phục hồi sức khỏe sau sinh. Gi&uacute;p giảm b&eacute;o bụng, th&iacute;ch hợp cho người đang giảm c&acirc;n. Hỗ trợ điều trị nghẽn tiết sữa ở phụ nữ sau khi sinh. Lưu ý: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng. Ch&egrave; vằng( cao ch&egrave; vằng ) chỉ thật sự ph&aacute;t huy t&aacute;c dụng khi bạn sử dụng đ&uacute;ng c&aacute;ch. N&ecirc;n duy tr&igrave; d&ugrave;ng ch&egrave; vằng đều đặn, ch&iacute;nh từ th&oacute;i quen ăn uống tốt, d&ugrave;ng ch&egrave; vằng đều đặn, sẽ gi&uacute;p cơ thể bạn khoẻ hơn, lợi sữa hơn.'),(8,2,'Chè vằng sẻ lợi sữa giảm cân 1kg','CHÈ VẰNG SẺ LỢI SỮA_GIẢM CÂN_TIÊU MỠ\r\nMẹ nào ít sữa thì nhớ uống chè vằng sẻ nhé ạ. Uốg ấm trc Cữ bú của bé 5-10\' \r\nMẹ nào sắp sinh nên chuẩn bị trước để lúc sinh sẵn đun ạ \r\nChè vằng sẻ mát gan,giảm','Chè vằng sẻ','<ul>\r\n	<li>NHỮNG C&Ocirc;NG DỤNG CH&Iacute;NH CỦA CH&Egrave; VẰNG</li>\r\n	<li>Gi&uacute;p tăng tiết sữa cho c&aacute;c mẹ đang cho con b&uacute;.</li>\r\n	<li>Gi&uacute;p giảm c&acirc;n cho c&aacute;c mẹ sau sinh v&agrave; cả người b&igrave;nh thường.</li>\r\n	<li>Co b&oacute;p tử cung, l&agrave;m sạch tử cung sau sinh, phục hồi nhanh sức khỏe sau sinh.</li>\r\n	<li>Gi&uacute;p th&ocirc;ng huyết, điều kinh, hỗ trợ điều trị đau bụng ở phụ nữ sau khi sinh.</li>\r\n	<li>Hỗ trợ điều trị bệnh thiếu m&aacute;u sau sinh.</li>\r\n	<li>Ngo&agrave;i ra c&ograve;n giảm thiểu t&igrave;nh trạng mệt mỏi, k&eacute;m ăn, gi&uacute;p phục hồi sức khỏe sau sinh.</li>\r\n	<li>Gi&uacute;p giảm b&eacute;o bụng, th&iacute;ch hợp cho người đang giảm c&acirc;n.</li>\r\n	<li>Hỗ trợ điều trị nghẽn tiết sữa ở phụ nữ sau khi sinh.</li>\r\n	<li>Lưu ý: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng. Ch&egrave; vằng( cao ch&egrave; vằng ) chỉ thật sự ph&aacute;t huy t&aacute;c dụng khi bạn sử dụng đ&uacute;ng c&aacute;ch. N&ecirc;n duy tr&igrave; d&ugrave;ng ch&egrave; vằng đều đặn, ch&iacute;nh từ th&oacute;i quen ăn uống tốt, d&ugrave;ng ch&egrave; vằng đều đặn, sẽ gi&uacute;p cơ thể bạn khoẻ hơn, lợi sữa hơn.</li>\r\n</ul>\r\n<br />\r\nNHỮNG C&Ocirc;NG DỤNG CH&Iacute;NH CỦA CH&Egrave; VẰNG Gi&uacute;p tăng tiết sữa cho c&aacute;c mẹ đang cho con b&uacute;. Gi&uacute;p giảm c&acirc;n cho c&aacute;c mẹ sau sinh v&agrave; cả người b&igrave;nh thường. Co b&oacute;p tử cung, l&agrave;m sạch tử cung sau sinh, phục hồi nhanh sức khỏe sau sinh. Gi&uacute;p th&ocirc;ng huyết, điều kinh, hỗ trợ điều trị đau bụng ở phụ nữ sau khi sinh. Hỗ trợ điều trị bệnh thiếu m&aacute;u sau sinh. Ngo&agrave;i ra c&ograve;n giảm thiểu t&igrave;nh trạng mệt mỏi, k&eacute;m ăn, gi&uacute;p phục hồi sức khỏe sau sinh. Gi&uacute;p giảm b&eacute;o bụng, th&iacute;ch hợp cho người đang giảm c&acirc;n. Hỗ trợ điều trị nghẽn tiết sữa ở phụ nữ sau khi sinh. Lưu ý: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng. Ch&egrave; vằng( cao ch&egrave; vằng ) chỉ thật sự ph&aacute;t huy t&aacute;c dụng khi bạn sử dụng đ&uacute;ng c&aacute;ch. N&ecirc;n duy tr&igrave; d&ugrave;ng ch&egrave; vằng đều đặn, ch&iacute;nh từ th&oacute;i quen ăn uống tốt, d&ugrave;ng ch&egrave; vằng đều đặn, sẽ gi&uacute;p cơ thể bạn khoẻ hơn, lợi sữa hơn.'),(9,1,'TINH DẦU TRÀM HUẾ NGUYÊN CHẤT 100ml','CÓ TINH DẦU TRÀM HUẾ SỢ GÌ HO CẢM, LO GÌ CẢM CÚM \r\n 70k 1 hũ. Mua 2 hũ miễn phí gửi\r\n XÓA TAN NỖI LO TRẺ HO NGÀY LẠNH \r\nCÔNG DỤNG TINH DẦU TRÀM \r\nGiữ ấm cơ thể, phòng ngừa cảm cúm, cảm lạnh, ho, sổ mũ','TINH DẦU TRÀM HUẾ','* C&Aacute;CH SỬ DỤNG:\r\n<ol>\r\n	<li>C&aacute;ch sử dụng dầu tr&agrave;m để tăng hiệu quả tối đa\r\n	<ol>\r\n		<li>1. Điều trị mụn v&agrave; da nhờn Để trị mụn v&agrave; chăm s&oacute;c da nhờn, bạn chỉ cần d&ugrave;ng miếng vải cotton nh&uacute;ng v&agrave;o dầu Tr&agrave;m v&agrave; thoa trực tiếp l&ecirc;n đầu mụn. Ngay cả mụn đầu đen v&agrave; đầu trắng cũng bị dầu tr&agrave;m tr&agrave; loại bỏ dễ d&agrave;ng. Ban n&ecirc;n thoa dầu tr&agrave;m 2 lần/ng&agrave;y, trước l&uacute;c đi ngủ v&agrave; sau khi thức dậy v&agrave;o buổi s&aacute;ng. Bạn cũng c&oacute; thể sử dụng v&agrave;i giọt tinh dầu tr&agrave;m trộn v&agrave;o sữa rửa mặt để sử dụng h&agrave;ng ng&agrave;y. C&aacute;ch sử dụng tinh dầu tr&agrave;m n&agrave;y gi&uacute;p c&acirc;n bằng lượng dầu nhờn tr&ecirc;n da hiệu quả.</li>\r\n		<li>2. L&agrave;m sạch cơ thể v&agrave; giữ ấm Bạn nhỏ 10-12 giọt tinh dầu tr&agrave;m v&agrave;o bồn nước v&agrave; ng&acirc;m m&igrave;nh. Thực hiện khoảng 30 ph&uacute;t/2 lần/tuần. Ngo&agrave;i việc l&agrave;m sạch, tinh dầu tự nhi&ecirc;n n&agrave;y sẽ gi&uacute;p cơ thể bạn thư gi&atilde;n sau khi l&agrave;m việc hoặc chơi thể thao.</li>\r\n		<li>3. Ngừa cảm lạnh v&agrave; ngăn muỗi đốt con hiệu quả Để chống cảm lạnh cho b&eacute;, khi tắm, bạn h&atilde;y nhỏ v&agrave; giọt tinh dầu tr&agrave;m v&agrave;o chậu nước của con. B&eacute; tắm nước c&oacute; tinh dầu tr&agrave;m sẽ giữ được cơ thể ấm &aacute;p, chống cảm, chống ho đồng thời chống cả muỗi nữa (muỗi rất sợ dầu tr&agrave;m). Lưu &yacute; kh&ocirc;ng n&ecirc;n rửa nước mặt v&agrave;o mặt v&igrave; tinh dầu tr&agrave;m c&oacute; thể d&acirc;y v&agrave;o mắt con. Bạn cũng c&oacute; thể h&ograve;a tinh dầu tr&agrave;m với nước ấm v&agrave; thoa v&agrave;o l&ograve;ng b&agrave;n ch&acirc;n, th&aacute;i dương của b&eacute; trước khi cho con ra ngo&agrave;i trời lạnh.</li>\r\n		<li>4. Ngăn ngừa vi&ecirc;m nhiễm mũi họng m&ugrave;a lạnh Đối với b&eacute; (v&agrave; cả người lớn), những h&ocirc;m trời lạnh n&ecirc;n massage l&ograve;ng b&agrave;n ch&acirc;n với một &iacute;t dầu tr&agrave;m rồi đeo vớ đi ngủ, dầu tr&agrave;m sẽ gi&uacute;p cả gia đ&igrave;nh miễn nhiễm c&aacute;c bệnh đường mũi họng suốt cả m&ugrave;a đ&ocirc;ng lạnh. C&aacute;ch sử dụng tinh dầu tr&agrave;m n&agrave;y rất đơn giản v&agrave; kh&ocirc;ng mất thời gian của bạn, nhưng hiệu quả lại ưu việt.</li>\r\n		<li>5. Chống h&ocirc;i miệng, vi&ecirc;m lợi Bạn nhỏ 3 giọt tinh dầu tr&agrave;m v&agrave;o cốc nước ấm. D&ugrave;ng dung dịch n&agrave;y s&uacute;c miệng từ 2-3 lần/ ng&agrave;y, cũng c&oacute; thể nhỏ tinh dầu v&agrave;o kem đ&aacute;nh răng, nhưng tuyệt đối kh&ocirc;ng được uống.</li>\r\n		<li>6. Khử độc kh&ocirc;ng kh&iacute;, ức chế virus l&acirc;y bệnh Cho v&agrave;i giọt dầu tr&agrave;m trong ch&eacute;n nước n&oacute;ng, hoặc thấm dầu tr&agrave;m trong miếng b&ocirc;ng g&ograve;n để ở c&aacute;c g&oacute;c nh&agrave; sẽ gi&uacute;p bầu kh&ocirc;ng kh&iacute; trong sạch hơn, chưa kể hương tr&agrave;m thoang thoảng cũng tạo cảm gi&aacute;c dễ chịu. Bạn cũng c&oacute; thể sử dụng đ&egrave;n x&ocirc;ng tinh dầu để m&ugrave;i hương lan tỏa dễ chịu hơn.</li>\r\n		<li>7. Trị g&agrave;u Nhỏ 1 &ndash; 2 giọt tinh dầu tr&agrave;m v&agrave;o dầu gội v&agrave; sử dụng b&igrave;nh thường. Mỗi tuần gội từ 3 &ndash; 4 lần, nấm mốc v&agrave; g&agrave;u sẽ giảm đ&aacute;ng kể, t&oacute;c cũng su&ocirc;n mượt &oacute;ng ả hơn. Với trẻ em c&oacute; chấy, c&aacute;ch l&agrave;m n&agrave;y c&oacute; thể loại bỏ chấy hiệu quả.</li>\r\n		<li>8. Chống nấm b&agrave;n ch&acirc;n Bạn h&atilde;y thoa dầu tr&agrave;m v&agrave;o những v&ugrave;ng da bị nấm để vi khuẩn kh&ocirc;ng lan ra những v&ugrave;ng xung quanh.</li>\r\n		<li>9. Giảm đau Khi bị nhức mỏi xương khớp, sử dụng tinh dầu tr&agrave;m xoa b&oacute;p cũng c&oacute; t&aacute;c dụng cải thiện đ&aacute;ng kể t&igrave;nh h&igrave;nh. 10. Trị ho</li>\r\n	</ol>\r\n	</li>\r\n</ol>'),(9,2,'TINH DẦU TRÀM HUẾ NGUYÊN CHẤT 100ml','CÓ TINH DẦU TRÀM HUẾ SỢ GÌ HO CẢM, LO GÌ CẢM CÚM \r\n 70k 1 hũ. Mua 2 hũ miễn phí gửi\r\n XÓA TAN NỖI LO TRẺ HO NGÀY LẠNH \r\nCÔNG DỤNG TINH DẦU TRÀM \r\nGiữ ấm cơ thể, phòng ngừa cảm cúm, cảm lạnh, ho, sổ mũ','TINH DẦU TRÀM HUẾ','* C&Aacute;CH SỬ DỤNG:\r\n<ol>\r\n	<li>C&aacute;ch sử dụng dầu tr&agrave;m để tăng hiệu quả tối đa\r\n	<ol>\r\n		<li>1. Điều trị mụn v&agrave; da nhờn Để trị mụn v&agrave; chăm s&oacute;c da nhờn, bạn chỉ cần d&ugrave;ng miếng vải cotton nh&uacute;ng v&agrave;o dầu Tr&agrave;m v&agrave; thoa trực tiếp l&ecirc;n đầu mụn. Ngay cả mụn đầu đen v&agrave; đầu trắng cũng bị dầu tr&agrave;m tr&agrave; loại bỏ dễ d&agrave;ng. Ban n&ecirc;n thoa dầu tr&agrave;m 2 lần/ng&agrave;y, trước l&uacute;c đi ngủ v&agrave; sau khi thức dậy v&agrave;o buổi s&aacute;ng. Bạn cũng c&oacute; thể sử dụng v&agrave;i giọt tinh dầu tr&agrave;m trộn v&agrave;o sữa rửa mặt để sử dụng h&agrave;ng ng&agrave;y. C&aacute;ch sử dụng tinh dầu tr&agrave;m n&agrave;y gi&uacute;p c&acirc;n bằng lượng dầu nhờn tr&ecirc;n da hiệu quả.</li>\r\n		<li>2. L&agrave;m sạch cơ thể v&agrave; giữ ấm Bạn nhỏ 10-12 giọt tinh dầu tr&agrave;m v&agrave;o bồn nước v&agrave; ng&acirc;m m&igrave;nh. Thực hiện khoảng 30 ph&uacute;t/2 lần/tuần. Ngo&agrave;i việc l&agrave;m sạch, tinh dầu tự nhi&ecirc;n n&agrave;y sẽ gi&uacute;p cơ thể bạn thư gi&atilde;n sau khi l&agrave;m việc hoặc chơi thể thao.</li>\r\n		<li>3. Ngừa cảm lạnh v&agrave; ngăn muỗi đốt con hiệu quả Để chống cảm lạnh cho b&eacute;, khi tắm, bạn h&atilde;y nhỏ v&agrave; giọt tinh dầu tr&agrave;m v&agrave;o chậu nước của con. B&eacute; tắm nước c&oacute; tinh dầu tr&agrave;m sẽ giữ được cơ thể ấm &aacute;p, chống cảm, chống ho đồng thời chống cả muỗi nữa (muỗi rất sợ dầu tr&agrave;m). Lưu &yacute; kh&ocirc;ng n&ecirc;n rửa nước mặt v&agrave;o mặt v&igrave; tinh dầu tr&agrave;m c&oacute; thể d&acirc;y v&agrave;o mắt con. Bạn cũng c&oacute; thể h&ograve;a tinh dầu tr&agrave;m với nước ấm v&agrave; thoa v&agrave;o l&ograve;ng b&agrave;n ch&acirc;n, th&aacute;i dương của b&eacute; trước khi cho con ra ngo&agrave;i trời lạnh.</li>\r\n		<li>4. Ngăn ngừa vi&ecirc;m nhiễm mũi họng m&ugrave;a lạnh Đối với b&eacute; (v&agrave; cả người lớn), những h&ocirc;m trời lạnh n&ecirc;n massage l&ograve;ng b&agrave;n ch&acirc;n với một &iacute;t dầu tr&agrave;m rồi đeo vớ đi ngủ, dầu tr&agrave;m sẽ gi&uacute;p cả gia đ&igrave;nh miễn nhiễm c&aacute;c bệnh đường mũi họng suốt cả m&ugrave;a đ&ocirc;ng lạnh. C&aacute;ch sử dụng tinh dầu tr&agrave;m n&agrave;y rất đơn giản v&agrave; kh&ocirc;ng mất thời gian của bạn, nhưng hiệu quả lại ưu việt.</li>\r\n		<li>5. Chống h&ocirc;i miệng, vi&ecirc;m lợi Bạn nhỏ 3 giọt tinh dầu tr&agrave;m v&agrave;o cốc nước ấm. D&ugrave;ng dung dịch n&agrave;y s&uacute;c miệng từ 2-3 lần/ ng&agrave;y, cũng c&oacute; thể nhỏ tinh dầu v&agrave;o kem đ&aacute;nh răng, nhưng tuyệt đối kh&ocirc;ng được uống.</li>\r\n		<li>6. Khử độc kh&ocirc;ng kh&iacute;, ức chế virus l&acirc;y bệnh Cho v&agrave;i giọt dầu tr&agrave;m trong ch&eacute;n nước n&oacute;ng, hoặc thấm dầu tr&agrave;m trong miếng b&ocirc;ng g&ograve;n để ở c&aacute;c g&oacute;c nh&agrave; sẽ gi&uacute;p bầu kh&ocirc;ng kh&iacute; trong sạch hơn, chưa kể hương tr&agrave;m thoang thoảng cũng tạo cảm gi&aacute;c dễ chịu. Bạn cũng c&oacute; thể sử dụng đ&egrave;n x&ocirc;ng tinh dầu để m&ugrave;i hương lan tỏa dễ chịu hơn.</li>\r\n		<li>7. Trị g&agrave;u Nhỏ 1 &ndash; 2 giọt tinh dầu tr&agrave;m v&agrave;o dầu gội v&agrave; sử dụng b&igrave;nh thường. Mỗi tuần gội từ 3 &ndash; 4 lần, nấm mốc v&agrave; g&agrave;u sẽ giảm đ&aacute;ng kể, t&oacute;c cũng su&ocirc;n mượt &oacute;ng ả hơn. Với trẻ em c&oacute; chấy, c&aacute;ch l&agrave;m n&agrave;y c&oacute; thể loại bỏ chấy hiệu quả.</li>\r\n		<li>8. Chống nấm b&agrave;n ch&acirc;n Bạn h&atilde;y thoa dầu tr&agrave;m v&agrave;o những v&ugrave;ng da bị nấm để vi khuẩn kh&ocirc;ng lan ra những v&ugrave;ng xung quanh.</li>\r\n		<li>9. Giảm đau Khi bị nhức mỏi xương khớp, sử dụng tinh dầu tr&agrave;m xoa b&oacute;p cũng c&oacute; t&aacute;c dụng cải thiện đ&aacute;ng kể t&igrave;nh h&igrave;nh. 10. Trị ho</li>\r\n	</ol>\r\n	</li>\r\n</ol>'),(10,1,'Hạt MẦM ĐẬU NÀNH','Hạt MẦM ĐẬU NÀNH Matcha Hồng sâm\r\nThành phần của bột đậu làm đẹp : mầm đậu nành , mat cha , hồng sâm ..','Hạt MẦM ĐẬU NÀNH','<div style=\"text-align: center;\">Hạt MẦM ĐẬU N&Agrave;NH Matcha Hồng s&acirc;m</div>\r\n\r\n<ol>\r\n	<li>Th&agrave;nh phần của bột đậu l&agrave;m đẹp : mầm đậu n&agrave;nh , mat cha , hồng s&acirc;m ..\r\n	<ol>\r\n		<li>C&Ocirc;NG DỤNG CỦA MẦM ĐẬU N&Agrave;NH L&Agrave;M ĐẸP</li>\r\n		<li>Nở ngực, săn chắc ngực, giảm mỡ bụng</li>\r\n		<li>Giảm c&acirc;n (hoặc gi&uacute;p hỗ trợ tăng c&acirc;n nếu uống c&oacute; đường v&agrave; sữa)</li>\r\n		<li>S&aacute;ng da, trị n&aacute;m, t&agrave;n nhang, mụn nhọt</li>\r\n		<li>Đẹp t&oacute;c, chống rụng t&oacute;c</li>\r\n		<li>Giảm nếp nhăn, ph&ograve;ng chống ung thư</li>\r\n		<li>Lợi sữa</li>\r\n		<li>Chống l&atilde;o h&oacute;a, tăng cường hệ miễn dịch, tốt cho tim mạch...</li>\r\n		<li>Sử dụng &iacute;t nhất 1 th&aacute;ng để c&oacute; kết quả như mong muốn. Nếu sử dụng được thường xuy&ecirc;n th&igrave; rất tốt cho sức khỏe, giữ da v&agrave; d&aacute;ng được l&acirc;u.</li>\r\n	</ol>\r\n	</li>\r\n	<li>&nbsp;LƯU &Yacute;&nbsp;</li>\r\n</ol>\r\nNhiều người kh&ocirc;ng đủ ki&ecirc;n nhẫn, uống ngắt qu&atilde;ng m&agrave; đ&atilde; đ&ograve;i hỏi kết quả sau 1 th&aacute;ng th&igrave; kh&oacute; lắm!! Muốn nhanh như vậy chỉ c&oacute; đi thẩm mỹ th&ocirc;i.<br />\r\n&Iacute;t nhất 1 th&aacute;ng th&igrave; ngực của m&igrave;nh mới th&iacute;ch nghi v&agrave; ph&aacute;t triển được.'),(10,2,'Hạt MẦM ĐẬU NÀNH','Hạt MẦM ĐẬU NÀNH Matcha Hồng sâm\r\nThành phần của bột đậu làm đẹp : mầm đậu nành , mat cha , hồng sâm ..','Hạt MẦM ĐẬU NÀNH','<div style=\"text-align: center;\">Hạt MẦM ĐẬU N&Agrave;NH Matcha Hồng s&acirc;m</div>\r\n\r\n<ol>\r\n	<li>Th&agrave;nh phần của bột đậu l&agrave;m đẹp : mầm đậu n&agrave;nh , mat cha , hồng s&acirc;m ..\r\n	<ol>\r\n		<li>C&Ocirc;NG DỤNG CỦA MẦM ĐẬU N&Agrave;NH L&Agrave;M ĐẸP</li>\r\n		<li>Nở ngực, săn chắc ngực, giảm mỡ bụng</li>\r\n		<li>Giảm c&acirc;n (hoặc gi&uacute;p hỗ trợ tăng c&acirc;n nếu uống c&oacute; đường v&agrave; sữa)</li>\r\n		<li>S&aacute;ng da, trị n&aacute;m, t&agrave;n nhang, mụn nhọt</li>\r\n		<li>Đẹp t&oacute;c, chống rụng t&oacute;c</li>\r\n		<li>Giảm nếp nhăn, ph&ograve;ng chống ung thư</li>\r\n		<li>Lợi sữa</li>\r\n		<li>Chống l&atilde;o h&oacute;a, tăng cường hệ miễn dịch, tốt cho tim mạch...</li>\r\n		<li>Sử dụng &iacute;t nhất 1 th&aacute;ng để c&oacute; kết quả như mong muốn. Nếu sử dụng được thường xuy&ecirc;n th&igrave; rất tốt cho sức khỏe, giữ da v&agrave; d&aacute;ng được l&acirc;u.</li>\r\n	</ol>\r\n	</li>\r\n	<li>&nbsp;LƯU &Yacute;&nbsp;</li>\r\n</ol>\r\nNhiều người kh&ocirc;ng đủ ki&ecirc;n nhẫn, uống ngắt qu&atilde;ng m&agrave; đ&atilde; đ&ograve;i hỏi kết quả sau 1 th&aacute;ng th&igrave; kh&oacute; lắm!! Muốn nhanh như vậy chỉ c&oacute; đi thẩm mỹ th&ocirc;i.<br />\r\n&Iacute;t nhất 1 th&aacute;ng th&igrave; ngực của m&igrave;nh mới th&iacute;ch nghi v&agrave; ph&aacute;t triển được.'),(11,1,'Đậu Đen Xanh Lòng','Đậu Đen Xanh Lòng theo sách dinh dưỡng ghi lại, trong đỗ đen có chứa hàm lượng cao protein 24.4 g%, lipid 1.7g%, glucid 53.3 g% và rất nhiều axit amin thiết yếu.','Đậu Đen Xanh Lòng','<ul>\r\n	<li><strong>Đậu Đen Xanh L&ograve;ng&nbsp;&nbsp;</strong>theo s&aacute;ch dinh dưỡng ghi lại, trong đỗ đen c&oacute; chứa h&agrave;m lượng cao protein 24.4 g%, lipid 1.7g%, glucid 53.3 g% v&agrave; rất nhiều axit amin thiết yếu.</li>\r\n	<li>Ngo&agrave;i ra, đỗ đen c&ograve;n chứa rất nhiều vitamin quan trọng như vitamin A 5mg, B1 0.5mg, B2 0.21mg.</li>\r\n	<li>Với những th&agrave;nh phần dinh dưỡng tr&ecirc;n, đỗ đen được v&iacute; như l&agrave; một nh&oacute;m thực phẩm ch&iacute;nh gi&uacute;p ngăn ngừa bệnh v&agrave; bảo vệ sức khỏe như gi&uacute;p bổ thận, bổ m&aacute;u v&agrave; c&oacute; t&aacute;c dụng l&agrave;m s&aacute;ng mắt. Đ</li>\r\n	<li>Đặc biệt nước đỗ đen c&oacute; t&aacute;c dụng điều trị đối với thận yếu, lưng eo nhức mỏi, mặt sưng ph&ugrave;, phong thấp t&ecirc; liệt, thấp khớp hoặc c&aacute;c bệnh lở lo&eacute;t. Phụ nữ d&ugrave;ng l&acirc;u ng&agrave;y da sẽ hồng h&agrave;o, s&aacute;ng mịn.</li>\r\n	<li><strong>C&ocirc;ng dụng của đỗ đen:</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Gi&uacute;p thanh lọc cơ thể: Mỗi ng&agrave;y uống nước đỗ đen để thanh lọc cơ thể. D&ugrave;ng từ 20 đến 40g đỗ đen để nấu ch&egrave; hoặc nấu th&agrave;nh nước để uống, k&egrave;m th&ecirc;m ch&uacute;t gừng để k&iacute;ch th&iacute;ch vị gi&aacute;c khi uống.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>Gi&uacute;p giải rượu, chữa nhức xương: Đem đỗ đen nấu với nước dừa xi&ecirc;m uống 2 lần/th&aacute;ng để c&oacute; bộ xương chắc khỏe hơn, đồng thời việc n&agrave;y cũng hỗ trợ chứng nghiện rượu, giải rượu. Đối với người đau nhức xương, chỉ cần d&ugrave;ng 200g đỗ đen sao v&agrave;ng rồi ng&acirc;m rượu, uống c&aacute;ch 2 ng&agrave;y 1 ch&eacute;n nhỏ điều độ để chữa đau nhức xương.</li>\r\n	</ul>\r\n	</li>\r\n</ul>'),(11,2,'Đậu Đen Xanh Lòng','Đậu Đen Xanh Lòng theo sách dinh dưỡng ghi lại, trong đỗ đen có chứa hàm lượng cao protein 24.4 g%, lipid 1.7g%, glucid 53.3 g% và rất nhiều axit amin thiết yếu.','Đậu Đen Xanh Lòng','<ul>\r\n	<li><strong>Đậu Đen Xanh L&ograve;ng&nbsp;&nbsp;</strong>theo s&aacute;ch dinh dưỡng ghi lại, trong đỗ đen c&oacute; chứa h&agrave;m lượng cao protein 24.4 g%, lipid 1.7g%, glucid 53.3 g% v&agrave; rất nhiều axit amin thiết yếu.</li>\r\n	<li>Ngo&agrave;i ra, đỗ đen c&ograve;n chứa rất nhiều vitamin quan trọng như vitamin A 5mg, B1 0.5mg, B2 0.21mg.</li>\r\n	<li>Với những th&agrave;nh phần dinh dưỡng tr&ecirc;n, đỗ đen được v&iacute; như l&agrave; một nh&oacute;m thực phẩm ch&iacute;nh gi&uacute;p ngăn ngừa bệnh v&agrave; bảo vệ sức khỏe như gi&uacute;p bổ thận, bổ m&aacute;u v&agrave; c&oacute; t&aacute;c dụng l&agrave;m s&aacute;ng mắt. Đ</li>\r\n	<li>Đặc biệt nước đỗ đen c&oacute; t&aacute;c dụng điều trị đối với thận yếu, lưng eo nhức mỏi, mặt sưng ph&ugrave;, phong thấp t&ecirc; liệt, thấp khớp hoặc c&aacute;c bệnh lở lo&eacute;t. Phụ nữ d&ugrave;ng l&acirc;u ng&agrave;y da sẽ hồng h&agrave;o, s&aacute;ng mịn.</li>\r\n	<li><strong>C&ocirc;ng dụng của đỗ đen:</strong></li>\r\n	<li>\r\n	<ul>\r\n		<li>Gi&uacute;p thanh lọc cơ thể: Mỗi ng&agrave;y uống nước đỗ đen để thanh lọc cơ thể. D&ugrave;ng từ 20 đến 40g đỗ đen để nấu ch&egrave; hoặc nấu th&agrave;nh nước để uống, k&egrave;m th&ecirc;m ch&uacute;t gừng để k&iacute;ch th&iacute;ch vị gi&aacute;c khi uống.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>Gi&uacute;p giải rượu, chữa nhức xương: Đem đỗ đen nấu với nước dừa xi&ecirc;m uống 2 lần/th&aacute;ng để c&oacute; bộ xương chắc khỏe hơn, đồng thời việc n&agrave;y cũng hỗ trợ chứng nghiện rượu, giải rượu. Đối với người đau nhức xương, chỉ cần d&ugrave;ng 200g đỗ đen sao v&agrave;ng rồi ng&acirc;m rượu, uống c&aacute;ch 2 ng&agrave;y 1 ch&eacute;n nhỏ điều độ để chữa đau nhức xương.</li>\r\n	</ul>\r\n	</li>\r\n</ul>'),(12,1,'Kem bôi trĩ','Kem bôi trĩ chữ A của Nhật có tác dụng giúp giảm đau, giảm nhức, nóng rát, ngứa và khó chịu của vùng hậu môn do trĩ.\r\nKem bôi trĩ Nhật Bản A 20g làm co lại mô trĩ tạm thời, giúp giảm đau hiệu quả.','Kem bôi trĩ','<h2>Kem b&ocirc;i trĩ A 20g</h2>\r\n\r\n<h2><em>1. C&ocirc;ng dụng&nbsp;</em></h2>\r\n\r\n<ul>\r\n	<li>Kem b&ocirc;i trĩ chữ A của Nhật&nbsp;c&oacute; t&aacute;c dụng gi&uacute;p giảm đau, giảm nhức, n&oacute;ng r&aacute;t, ngứa v&agrave; kh&oacute; chịu của v&ugrave;ng hậu m&ocirc;n do trĩ.</li>\r\n	<li>Kem b&ocirc;i trĩ Nhật Bản A 20g&nbsp;l&agrave;m co lại m&ocirc; trĩ tạm thời, gi&uacute;p giảm đau hiệu quả.</li>\r\n	<li>C&ocirc;ng dụng của kem b&ocirc;i trĩ Nhật Bản A 20g&nbsp;l&agrave; sản phẩm điều trị trĩ hiệu quả, hoạt động tr&ecirc;n nguy&ecirc;n tắc phục hồi (bảo tồn) c&aacute;c tổ chức m&ocirc; cơ ở v&ugrave;ng trực tr&agrave;ng hậu m&ocirc;n bị tổn thương do triệu chứng bệnh trĩ g&acirc;y ra.</li>\r\n	<li>Loại&nbsp;kem b&ocirc;i trĩ của Nhật&nbsp;n&agrave;y ho&agrave;n to&agrave;n kh&ocirc;ng l&agrave;m cho bạn c&oacute; cảm gi&aacute;c đau khi sử dụng v&agrave; mọi sinh hoạt hằng ng&agrave;y vẫn diễn ra b&igrave;nh thường.</li>\r\n	<li>Kem b&ocirc;i trĩ Nhật Bản&nbsp;gi&uacute;p bạn ngăn chặn c&aacute;c t&iacute;n hiệu đau đớn từ c&aacute;c đầu d&acirc;y thần kinh ở da v&agrave; giảm c&aacute;c m&ocirc; bị sưng.</li>\r\n</ul>\r\n\r\n<h2><em>2. Th&agrave;nh phần c&oacute; trong kem b&ocirc;i trĩ Nhật Bản A 20 g</em></h2>\r\n\r\n<p>Được chiết xuất từ c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n,&nbsp;kem b&ocirc;i trĩ Nhật Bản&nbsp;l&agrave; sự lựa chọn h&agrave;ng đầu tại Nhật Bản của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, sản phẩm&nbsp;kem b&ocirc;i trĩ Nhật Bản A 20g&nbsp;c&ograve;n kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần h&oacute;a học độc hại như chất bảo quản, hương liệu tổng hợp hay chất tạo m&agrave;u, v&igrave; vậy ho&agrave;n to&agrave;n an to&agrave;n v&agrave; l&agrave;nh t&iacute;nh đối với người d&ugrave;ng, hầu như kh&ocirc;ng g&acirc;y n&ecirc;n t&aacute;c dụng phụ đ&aacute;ng kể n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng.</p>'),(12,2,'Kem bôi trĩ','Kem bôi trĩ chữ A của Nhật có tác dụng giúp giảm đau, giảm nhức, nóng rát, ngứa và khó chịu của vùng hậu môn do trĩ.\r\nKem bôi trĩ Nhật Bản A 20g làm co lại mô trĩ tạm thời, giúp giảm đau hiệu quả.','Kem bôi trĩ','<h2>Kem b&ocirc;i trĩ A 20g</h2>\r\n\r\n<h2><em>1. C&ocirc;ng dụng&nbsp;</em></h2>\r\n\r\n<ul>\r\n	<li>Kem b&ocirc;i trĩ chữ A của Nhật&nbsp;c&oacute; t&aacute;c dụng gi&uacute;p giảm đau, giảm nhức, n&oacute;ng r&aacute;t, ngứa v&agrave; kh&oacute; chịu của v&ugrave;ng hậu m&ocirc;n do trĩ.</li>\r\n	<li>Kem b&ocirc;i trĩ Nhật Bản A 20g&nbsp;l&agrave;m co lại m&ocirc; trĩ tạm thời, gi&uacute;p giảm đau hiệu quả.</li>\r\n	<li>C&ocirc;ng dụng của kem b&ocirc;i trĩ Nhật Bản A 20g&nbsp;l&agrave; sản phẩm điều trị trĩ hiệu quả, hoạt động tr&ecirc;n nguy&ecirc;n tắc phục hồi (bảo tồn) c&aacute;c tổ chức m&ocirc; cơ ở v&ugrave;ng trực tr&agrave;ng hậu m&ocirc;n bị tổn thương do triệu chứng bệnh trĩ g&acirc;y ra.</li>\r\n	<li>Loại&nbsp;kem b&ocirc;i trĩ của Nhật&nbsp;n&agrave;y ho&agrave;n to&agrave;n kh&ocirc;ng l&agrave;m cho bạn c&oacute; cảm gi&aacute;c đau khi sử dụng v&agrave; mọi sinh hoạt hằng ng&agrave;y vẫn diễn ra b&igrave;nh thường.</li>\r\n	<li>Kem b&ocirc;i trĩ Nhật Bản&nbsp;gi&uacute;p bạn ngăn chặn c&aacute;c t&iacute;n hiệu đau đớn từ c&aacute;c đầu d&acirc;y thần kinh ở da v&agrave; giảm c&aacute;c m&ocirc; bị sưng.</li>\r\n</ul>\r\n\r\n<h2><em>2. Th&agrave;nh phần c&oacute; trong kem b&ocirc;i trĩ Nhật Bản A 20 g</em></h2>\r\n\r\n<p>Được chiết xuất từ c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n,&nbsp;kem b&ocirc;i trĩ Nhật Bản&nbsp;l&agrave; sự lựa chọn h&agrave;ng đầu tại Nhật Bản của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, sản phẩm&nbsp;kem b&ocirc;i trĩ Nhật Bản A 20g&nbsp;c&ograve;n kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần h&oacute;a học độc hại như chất bảo quản, hương liệu tổng hợp hay chất tạo m&agrave;u, v&igrave; vậy ho&agrave;n to&agrave;n an to&agrave;n v&agrave; l&agrave;nh t&iacute;nh đối với người d&ugrave;ng, hầu như kh&ocirc;ng g&acirc;y n&ecirc;n t&aacute;c dụng phụ đ&aacute;ng kể n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng.</p>'),(13,1,'Thuốc bổ máu RUBINA 180v','Thuốc bổ máu RUBINA 180v\r\nThời kỳ mãn kinh bởi các triệu chứng sau \r\ntuần hoàn kém, cơn nóng bừng, chóng mặt, cơn nóng bừng (bốc hỏa), phù nề, đau đầu, cứng cổ, đau lưng, đánh trống ngực, táo bón, mệt','Thuốc bổ máu RUBINA 180v','Thuốc bổ m&aacute;u RUBINA 180v<br />\r\nThời kỳ m&atilde;n kinh bởi c&aacute;c triệu chứng sau&nbsp;<br />\r\ntuần ho&agrave;n k&eacute;m, cơn n&oacute;ng bừng, ch&oacute;ng mặt, cơn n&oacute;ng bừng (bốc hỏa), ph&ugrave; nề, đau đầu, cứng cổ, đau lưng, đ&aacute;nh trống ngực, t&aacute;o b&oacute;n, mệt mỏi mệt mỏi, mất ngủ<br />\r\n【Tư vấn】<br />\r\n1. Người tiếp theo tham khảo &yacute; kiến ​​b&aacute;c sĩ hoặc dược sĩ trước khi d&ugrave;ng một người&nbsp;<br />\r\n● Một người được b&aacute;c sĩ điều trị.&nbsp;<br />\r\n● Phụ nữ mang thai hoặc những người c&oacute; thai.&nbsp;<br />\r\n● Người yếu của cơ thể (người c&oacute; sức mạnh thể chất yếu, người yếu).&nbsp;<br />\r\n● Những người bị rối loạn ti&ecirc;u h&oacute;a yếu.&nbsp;<br />\r\n● Một người chịu tr&aacute;ch nhiệm ti&ecirc;u chảy.&nbsp;<br />\r\nNhững người đ&atilde; từng bị nổi mẩn đỏ, ngứa, ngứa cho đến b&acirc;y giờ.&nbsp;<br />\r\n2. Trong trường hợp sau đ&acirc;y, ngưng d&ugrave;ng thuốc ngay lập tức, v&agrave; rằng để tham khảo &yacute; kiến b&aacute;c sĩ hoặc dược sĩ để mang lại t&agrave;i liệu n&agrave;y&nbsp;<br />\r\nsau ● lấy, nếu c&aacute;c triệu chứng sau đ&acirc;y c&oacute; thể xảy ra.&nbsp;<br />\r\nDa: đỏ, ph&aacute;t ban, ngứa&nbsp;<br />\r\nGastroenterology: dạ d&agrave;y kh&oacute; chịu , mất cảm gi&aacute;c ngon miệng, tức bụng, buồn n&ocirc;n, n&ocirc;n mửa, đau bụng&nbsp;<br />\r\n● th&aacute;ng vị tr&iacute; 1 khi thậm ch&iacute; c&oacute; c&aacute;c triệu chứng thường kh&ocirc;ng&nbsp;<br />\r\nv&igrave; n&oacute; c&oacute; thể 3. c&aacute;c triệu chứng sau đ&acirc;y c&oacute; thể xảy ra, được xem tiếp hoặc tăng cường c&aacute;c triệu chứng như vậy Trong trường hợp ngưng thuốc, tham khảo &yacute; kiến ​​b&aacute;c sĩ hoặc dược sĩ&nbsp;<br />\r\nti&ecirc;u chảy<br />\r\nLiều h&agrave;ng ng&agrave;y (9 vi&ecirc;n) trung&nbsp;<br />\r\nRenju uống chiết xuất ph&acirc;n phối 3150mg, dong quai (bạch) 1500mg, hoa mẫu đơn (hoa mẫu đơn) 1500mg, 1000mg Sinensis, Rehmannia (Rehmannia) 500mg, Bukuryou (茯苓) 2000mg, quế (quế) 1500mg, sōjutsu ( Aoiokera) 1500 mg, cam thảo (Glycyrrhiza) 500 mg&nbsp;<br />\r\n※ chiết xuất từ thuốc th&ocirc;&nbsp;<br />\r\n[phụ] axit silixic khan, carmellose Ca, mg stearate&nbsp;<br />\r\n<br />\r\nlưu &yacute; li&ecirc;n quan đến ● th&agrave;nh phần&nbsp;<br />\r\ntừ c&aacute;c sản phẩm thuốc n&agrave;y bằng c&aacute;ch sử dụng thảo dược, m&agrave;u sắc của chiếc m&aacute;y t&iacute;nh bảng theo sản phẩm Mặc d&ugrave; n&oacute; c&oacute; thể kh&aacute;c đ&ocirc;i ch&uacute;t, nhưng hiệu ứng kh&ocirc;ng thay đổi.<br />\r\nC&aacute;c khoản sau đ&acirc;y, ngay lập tức sau khi ăn với nước hoặc nước n&oacute;ng, được thực hiện m&agrave; kh&ocirc;ng cần nhai&nbsp;<br />\r\n<br />\r\n(tuổi: một liều: h&agrave;ng ng&agrave;y số lượng liều)&nbsp;<br />\r\n● người lớn (15 tuổi trở l&ecirc;n): 3 vi&ecirc;n: ba lần một ng&agrave;y<br />\r\n<br />\r\n● Dưới 15 tuổi: Kh&ocirc;ng d&ugrave;ng&nbsp;<br />\r\n<br />\r\n【Th&ocirc;ng b&aacute;o li&ecirc;n quan đến việc sử dụng v&agrave; liều lượng】<br />\r\nTu&acirc;n theo việc sử dụng v&agrave; liều lượng<br />\r\n● Giữ k&iacute;n ở nơi tho&aacute;ng m&aacute;t với độ ẩm thấp kh&ocirc;ng tiếp x&uacute;c trực tiếp với &aacute;nh s&aacute;ng mặt trời.&nbsp;<br />\r\n● Để xa tầm với của trẻ em.&nbsp;<br />\r\n● Kh&ocirc;ng thay thế bằng c&aacute;c vật chứa kh&aacute;c (g&acirc;y sử dụng sai hoặc thay đổi chất lượng).&nbsp;<br />\r\n● Nh&eacute;t trong chai l&agrave; để r&atilde; đ&ocirc;ng sau khi mở nắp (C&aacute;c nhồi l&agrave; để ngăn chặn c&aacute;c m&aacute;y t&iacute;nh bảng bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển, nhưng n&oacute; sẽ trở th&agrave;nh một nguồn thay đổi chất lượng bao gồm cả độ ẩm) .&nbsp;<br />\r\n● Uống một chai thuốc mạnh thắt chặt (hấp thụ độ ẩm v&agrave; thay đổi chất lượng).&nbsp;<br />\r\n● Kh&ocirc;ng sử dụng c&aacute;c sản phẩm đ&atilde; hết hạn sử dụng.&nbsp;<br />\r\n● Ghi ng&agrave;y mở chai trong hộp &quot;ng&agrave;y mở&quot; của hộp v&agrave; chai.&nbsp;<br />\r\n● Khi được mở, h&atilde;y thực hiện c&agrave;ng nhanh c&agrave;ng tốt trong v&ograve;ng 6 th&aacute;ng kể từ ng&agrave;y mở cửa bảo quản chất lượng l&agrave;m hướng dẫn.'),(13,2,'Thuốc bổ máu RUBINA 180v','Thuốc bổ máu RUBINA 180v\r\nThời kỳ mãn kinh bởi các triệu chứng sau \r\ntuần hoàn kém, cơn nóng bừng, chóng mặt, cơn nóng bừng (bốc hỏa), phù nề, đau đầu, cứng cổ, đau lưng, đánh trống ngực, táo bón, mệt','Thuốc bổ máu RUBINA 180v','Thuốc bổ m&aacute;u RUBINA 180v<br />\r\nThời kỳ m&atilde;n kinh bởi c&aacute;c triệu chứng sau&nbsp;<br />\r\ntuần ho&agrave;n k&eacute;m, cơn n&oacute;ng bừng, ch&oacute;ng mặt, cơn n&oacute;ng bừng (bốc hỏa), ph&ugrave; nề, đau đầu, cứng cổ, đau lưng, đ&aacute;nh trống ngực, t&aacute;o b&oacute;n, mệt mỏi mệt mỏi, mất ngủ<br />\r\n【Tư vấn】<br />\r\n1. Người tiếp theo tham khảo &yacute; kiến ​​b&aacute;c sĩ hoặc dược sĩ trước khi d&ugrave;ng một người&nbsp;<br />\r\n● Một người được b&aacute;c sĩ điều trị.&nbsp;<br />\r\n● Phụ nữ mang thai hoặc những người c&oacute; thai.&nbsp;<br />\r\n● Người yếu của cơ thể (người c&oacute; sức mạnh thể chất yếu, người yếu).&nbsp;<br />\r\n● Những người bị rối loạn ti&ecirc;u h&oacute;a yếu.&nbsp;<br />\r\n● Một người chịu tr&aacute;ch nhiệm ti&ecirc;u chảy.&nbsp;<br />\r\nNhững người đ&atilde; từng bị nổi mẩn đỏ, ngứa, ngứa cho đến b&acirc;y giờ.&nbsp;<br />\r\n2. Trong trường hợp sau đ&acirc;y, ngưng d&ugrave;ng thuốc ngay lập tức, v&agrave; rằng để tham khảo &yacute; kiến b&aacute;c sĩ hoặc dược sĩ để mang lại t&agrave;i liệu n&agrave;y&nbsp;<br />\r\nsau ● lấy, nếu c&aacute;c triệu chứng sau đ&acirc;y c&oacute; thể xảy ra.&nbsp;<br />\r\nDa: đỏ, ph&aacute;t ban, ngứa&nbsp;<br />\r\nGastroenterology: dạ d&agrave;y kh&oacute; chịu , mất cảm gi&aacute;c ngon miệng, tức bụng, buồn n&ocirc;n, n&ocirc;n mửa, đau bụng&nbsp;<br />\r\n● th&aacute;ng vị tr&iacute; 1 khi thậm ch&iacute; c&oacute; c&aacute;c triệu chứng thường kh&ocirc;ng&nbsp;<br />\r\nv&igrave; n&oacute; c&oacute; thể 3. c&aacute;c triệu chứng sau đ&acirc;y c&oacute; thể xảy ra, được xem tiếp hoặc tăng cường c&aacute;c triệu chứng như vậy Trong trường hợp ngưng thuốc, tham khảo &yacute; kiến ​​b&aacute;c sĩ hoặc dược sĩ&nbsp;<br />\r\nti&ecirc;u chảy<br />\r\nLiều h&agrave;ng ng&agrave;y (9 vi&ecirc;n) trung&nbsp;<br />\r\nRenju uống chiết xuất ph&acirc;n phối 3150mg, dong quai (bạch) 1500mg, hoa mẫu đơn (hoa mẫu đơn) 1500mg, 1000mg Sinensis, Rehmannia (Rehmannia) 500mg, Bukuryou (茯苓) 2000mg, quế (quế) 1500mg, sōjutsu ( Aoiokera) 1500 mg, cam thảo (Glycyrrhiza) 500 mg&nbsp;<br />\r\n※ chiết xuất từ thuốc th&ocirc;&nbsp;<br />\r\n[phụ] axit silixic khan, carmellose Ca, mg stearate&nbsp;<br />\r\n<br />\r\nlưu &yacute; li&ecirc;n quan đến ● th&agrave;nh phần&nbsp;<br />\r\ntừ c&aacute;c sản phẩm thuốc n&agrave;y bằng c&aacute;ch sử dụng thảo dược, m&agrave;u sắc của chiếc m&aacute;y t&iacute;nh bảng theo sản phẩm Mặc d&ugrave; n&oacute; c&oacute; thể kh&aacute;c đ&ocirc;i ch&uacute;t, nhưng hiệu ứng kh&ocirc;ng thay đổi.<br />\r\nC&aacute;c khoản sau đ&acirc;y, ngay lập tức sau khi ăn với nước hoặc nước n&oacute;ng, được thực hiện m&agrave; kh&ocirc;ng cần nhai&nbsp;<br />\r\n<br />\r\n(tuổi: một liều: h&agrave;ng ng&agrave;y số lượng liều)&nbsp;<br />\r\n● người lớn (15 tuổi trở l&ecirc;n): 3 vi&ecirc;n: ba lần một ng&agrave;y<br />\r\n<br />\r\n● Dưới 15 tuổi: Kh&ocirc;ng d&ugrave;ng&nbsp;<br />\r\n<br />\r\n【Th&ocirc;ng b&aacute;o li&ecirc;n quan đến việc sử dụng v&agrave; liều lượng】<br />\r\nTu&acirc;n theo việc sử dụng v&agrave; liều lượng<br />\r\n● Giữ k&iacute;n ở nơi tho&aacute;ng m&aacute;t với độ ẩm thấp kh&ocirc;ng tiếp x&uacute;c trực tiếp với &aacute;nh s&aacute;ng mặt trời.&nbsp;<br />\r\n● Để xa tầm với của trẻ em.&nbsp;<br />\r\n● Kh&ocirc;ng thay thế bằng c&aacute;c vật chứa kh&aacute;c (g&acirc;y sử dụng sai hoặc thay đổi chất lượng).&nbsp;<br />\r\n● Nh&eacute;t trong chai l&agrave; để r&atilde; đ&ocirc;ng sau khi mở nắp (C&aacute;c nhồi l&agrave; để ngăn chặn c&aacute;c m&aacute;y t&iacute;nh bảng bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển, nhưng n&oacute; sẽ trở th&agrave;nh một nguồn thay đổi chất lượng bao gồm cả độ ẩm) .&nbsp;<br />\r\n● Uống một chai thuốc mạnh thắt chặt (hấp thụ độ ẩm v&agrave; thay đổi chất lượng).&nbsp;<br />\r\n● Kh&ocirc;ng sử dụng c&aacute;c sản phẩm đ&atilde; hết hạn sử dụng.&nbsp;<br />\r\n● Ghi ng&agrave;y mở chai trong hộp &quot;ng&agrave;y mở&quot; của hộp v&agrave; chai.&nbsp;<br />\r\n● Khi được mở, h&atilde;y thực hiện c&agrave;ng nhanh c&agrave;ng tốt trong v&ograve;ng 6 th&aacute;ng kể từ ng&agrave;y mở cửa bảo quản chất lượng l&agrave;m hướng dẫn.<br />\r\n&nbsp;'),(14,1,'Tảo Xoắn Spirulina Nhật Bản Hộp 2200 Viên Tem Đỏ - Hàng Chính Hãng','Tác dụng của tảo xoắn Spirulina Nhật Bản: Giải độc và thanh lọc cơ thể, bổ sung các chất chống oxy hóa, làm giảm quá trình lão hóa','Tảo Xoắn Spirulina Nhật Bản,tảo xoắn nhật bản,tảo xoắn spirulina,tảo xoắn nhật bản 2200 viên,viên tảo nhật bản','<ol>\r\n	<li style=\"text-align: justify;\">T&aacute;c dụng của tảo xoắn Spirulina Nhật Bản: Giải độc v&agrave; thanh lọc cơ thể, bổ sung c&aacute;c chất chống oxy h&oacute;a, l&agrave;m giảm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a</li>\r\n	<li style=\"text-align: justify;\"><strong>Tảo spirulina Nhật Bản</strong> gi&uacute;p c&acirc;n nặng được ổn định.</li>\r\n	<li style=\"text-align: justify;\"><strong>Tảo spirulina 2200</strong> vi&ecirc;n c&oacute; giảm c&acirc;n, được d&ugrave;ng thay cho 1 phần khẩu phần ăn, gi&uacute;p cung cấp năng lượng thiết yếu cho cơ thể Hỗ trợ ti&ecirc;u h&oacute;a, v&agrave; sức khỏe đường ruột, chống t&aacute;o b&oacute;n, bổ sung chất sơ Tạo cảm gi&aacute;c no m&agrave; kh&ocirc;ng nạp chất b&eacute;o năng lượng v&agrave;o cơ thể. Đồng thời chất xơ c&oacute; t&aacute;c dụng gi&uacute;p trẻ suy dinh dưỡng tăng c&acirc;n một c&aacute;ch hiệu quả Bổ sung protein, vitamin B v&agrave; sắt một c&aacute;ch tự nhi&ecirc;n.</li>\r\n	<li style=\"text-align: justify;\"><strong>Tảo xoắn spirulina Nhật Bản</strong> tốt với người bị tiểu đường, gi&uacute;p cholesterol ổn định Hỗ trợ cải thiện chức năng gan. Tăng cường hệ thống miễn dịch, cải thiện tr&iacute; nhớ, tăng năng lượng v&agrave; trao đổi chất, ngăn ngừa bệnh tim Giảm c&aacute;c hiện tượng thiếu ch&uacute; &yacute;, rối loạn tăng động (ADHD). Giảm c&aacute;c hiện tượng mệt mỏi (stress, lo &acirc;u, trầm cảm, hội chứng tiền kinh nguyệt &ndash; PMS, c&aacute;c triệu chứng tiền m&atilde;n kinh. Hỗ trợ điều trị v&agrave; ngăn ngừa c&aacute;c bệnh tim mạch: Chất xơ, canxi, magie, K2, Chlorophyll a (diệp lục) ngăn ngừa v&agrave; hỗ trợ c&aacute;c bệnh về tim mạch, bảo vệ th&agrave;nh mạch, ngăn ngừa sơ vữa động mạch. Gi&uacute;p x&acirc;y dựng khối cơ vững chắc, tăng khả năng đ&agrave;n hồi cho c&aacute;c cơ, giảm mệt mỏi cơ bắp</li>\r\n	<li style=\"text-align: justify;\"><strong>C&aacute;ch d&ugrave;ng</strong>:\r\n	<ol>\r\n		<li style=\"text-align: justify;\">Liệu tr&igrave;nh sử dụng: Từ 3-5 vi&ecirc;n tảo xoắn spirulina một ng&agrave;y đối với trẻ dưới 5 tuổi, 10-20 vi&ecirc;n tảo xoắn spirulina một ng&agrave;y với trẻ tr&ecirc;n 5 tuổi, Người lớn d&ugrave;ng từ 30 vi&ecirc;n tảo xoắn spirulina trở l&ecirc;n một ng&agrave;y. Ch&uacute; &yacute;: Trong thời gian đầu n&ecirc;n sử dụng số lượng tảo nhỏ (10 - 15 vi&ecirc;n) để th&iacute;ch nghi với h&agrave;m lượng chất xơ cao trong tảo xoắn Đối tượng sử dụng: Th&iacute;ch hợp với trẻ từ 1 tuổi trở l&ecirc;n</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align: justify;\"><strong>Lưu &yacute;</strong>: Sản phẩm kh&ocirc;ng phải l&agrave; thuốc kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh</li>\r\n</ol>'),(14,2,'Tảo Xoắn Spirulina Nhật Bản Hộp 2200 Viên Tem Đỏ - Hàng Chính Hãng','Tác dụng của tảo xoắn Spirulina Nhật Bản: Giải độc và thanh lọc cơ thể, bổ sung các chất chống oxy hóa, làm giảm quá trình lão hóa','Tảo Xoắn Spirulina Nhật Bản,tảo xoắn nhật bản,tảo xoắn spirulina,tảo xoắn nhật bản 2200 viên,viên tảo nhật bản','<ol>\r\n	<li style=\"text-align: justify;\">T&aacute;c dụng của tảo xoắn Spirulina Nhật Bản: Giải độc v&agrave; thanh lọc cơ thể, bổ sung c&aacute;c chất chống oxy h&oacute;a, l&agrave;m giảm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a</li>\r\n	<li style=\"text-align: justify;\"><strong>Tảo spirulina Nhật Bản</strong> gi&uacute;p c&acirc;n nặng được ổn định.</li>\r\n	<li style=\"text-align: justify;\"><strong>Tảo spirulina 2200</strong> vi&ecirc;n c&oacute; giảm c&acirc;n, được d&ugrave;ng thay cho 1 phần khẩu phần ăn, gi&uacute;p cung cấp năng lượng thiết yếu cho cơ thể Hỗ trợ ti&ecirc;u h&oacute;a, v&agrave; sức khỏe đường ruột, chống t&aacute;o b&oacute;n, bổ sung chất sơ Tạo cảm gi&aacute;c no m&agrave; kh&ocirc;ng nạp chất b&eacute;o năng lượng v&agrave;o cơ thể. Đồng thời chất xơ c&oacute; t&aacute;c dụng gi&uacute;p trẻ suy dinh dưỡng tăng c&acirc;n một c&aacute;ch hiệu quả Bổ sung protein, vitamin B v&agrave; sắt một c&aacute;ch tự nhi&ecirc;n.</li>\r\n	<li style=\"text-align: justify;\"><strong>Tảo xoắn spirulina Nhật Bản</strong> tốt với người bị tiểu đường, gi&uacute;p cholesterol ổn định Hỗ trợ cải thiện chức năng gan. Tăng cường hệ thống miễn dịch, cải thiện tr&iacute; nhớ, tăng năng lượng v&agrave; trao đổi chất, ngăn ngừa bệnh tim Giảm c&aacute;c hiện tượng thiếu ch&uacute; &yacute;, rối loạn tăng động (ADHD). Giảm c&aacute;c hiện tượng mệt mỏi (stress, lo &acirc;u, trầm cảm, hội chứng tiền kinh nguyệt &ndash; PMS, c&aacute;c triệu chứng tiền m&atilde;n kinh. Hỗ trợ điều trị v&agrave; ngăn ngừa c&aacute;c bệnh tim mạch: Chất xơ, canxi, magie, K2, Chlorophyll a (diệp lục) ngăn ngừa v&agrave; hỗ trợ c&aacute;c bệnh về tim mạch, bảo vệ th&agrave;nh mạch, ngăn ngừa sơ vữa động mạch. Gi&uacute;p x&acirc;y dựng khối cơ vững chắc, tăng khả năng đ&agrave;n hồi cho c&aacute;c cơ, giảm mệt mỏi cơ bắp</li>\r\n	<li style=\"text-align: justify;\"><strong>C&aacute;ch d&ugrave;ng</strong>:\r\n	<ol>\r\n		<li style=\"text-align: justify;\">Liệu tr&igrave;nh sử dụng: Từ 3-5 vi&ecirc;n tảo xoắn spirulina một ng&agrave;y đối với trẻ dưới 5 tuổi, 10-20 vi&ecirc;n tảo xoắn spirulina một ng&agrave;y với trẻ tr&ecirc;n 5 tuổi, Người lớn d&ugrave;ng từ 30 vi&ecirc;n tảo xoắn spirulina trở l&ecirc;n một ng&agrave;y. Ch&uacute; &yacute;: Trong thời gian đầu n&ecirc;n sử dụng số lượng tảo nhỏ (10 - 15 vi&ecirc;n) để th&iacute;ch nghi với h&agrave;m lượng chất xơ cao trong tảo xoắn Đối tượng sử dụng: Th&iacute;ch hợp với trẻ từ 1 tuổi trở l&ecirc;n</li>\r\n	</ol>\r\n	</li>\r\n	<li style=\"text-align: justify;\"><strong>Lưu &yacute;</strong>: Sản phẩm kh&ocirc;ng phải l&agrave; thuốc kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh</li>\r\n</ol>');
/*!40000 ALTER TABLE `shop_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_image`
--

DROP TABLE IF EXISTS `shop_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(2) unsigned NOT NULL DEFAULT '0',
  `status` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_image`
--

LOCK TABLES `shop_product_image` WRITE;
/*!40000 ALTER TABLE `shop_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_like`
--

DROP TABLE IF EXISTS `shop_product_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_like`
--

LOCK TABLES `shop_product_like` WRITE;
/*!40000 ALTER TABLE `shop_product_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_option`
--

DROP TABLE IF EXISTS `shop_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_price` int(11) DEFAULT NULL,
  `opt_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_sku` (`opt_sku`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_option`
--

LOCK TABLES `shop_product_option` WRITE;
/*!40000 ALTER TABLE `shop_product_option` DISABLE KEYS */;
INSERT INTO `shop_product_option` VALUES (3,'Sản phẩm xanh','BX-5UT-s',454,'product/4c28c6a2fc6a3fa79197798707d55b5c.png',48),(4,'34324234','BX-5UT-T',1111,'product/293da323794f89ee2d7962f44f930393.png',48),(12,'fdgdfg','fgdfgd',NULL,'product/68f8a4d063e4ddef447616116dd03e0f.png',42),(13,'bnmbnmbn','BX-5U0-1fgfgjghjhgj',NULL,'product/2702691387f97f5985843cbb243d267c.png',42),(16,'Sản phẩm xanh','BX-5U0-1fgfgkjh',NULL,'product/777274d55ff7adeef36ca930022a8db9.jpg',29),(17,'Sản phẩm xanh','BX-5U0-1fgfgl',NULL,'product/0ba3c6a927bb0e2cd2d54ce0c13df919.jpg',30),(18,'Sản phẩm xanh','BX-5U0-1fgfgg',NULL,'product/7eb3eefcb94b7548cc4942a42f36e186.jpg',27);
/*!40000 ALTER TABLE `shop_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shipping`
--

DROP TABLE IF EXISTS `shop_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shipping`
--

LOCK TABLES `shop_shipping` WRITE;
/*!40000 ALTER TABLE `shop_shipping` DISABLE KEYS */;
INSERT INTO `shop_shipping` VALUES (1,0,20000,10000000,1);
/*!40000 ALTER TABLE `shop_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shipping_status`
--

DROP TABLE IF EXISTS `shop_shipping_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shipping_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shipping_status`
--

LOCK TABLES `shop_shipping_status` WRITE;
/*!40000 ALTER TABLE `shop_shipping_status` DISABLE KEYS */;
INSERT INTO `shop_shipping_status` VALUES (0,'Not sent'),(1,'Sending'),(2,'Shipping done');
/*!40000 ALTER TABLE `shop_shipping_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shoppingcart`
--

DROP TABLE IF EXISTS `shop_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shoppingcart`
--

LOCK TABLES `shop_shoppingcart` WRITE;
/*!40000 ALTER TABLE `shop_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_special_price`
--

DROP TABLE IF EXISTS `shop_special_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_special_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) DEFAULT '0',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_special_price`
--

LOCK TABLES `shop_special_price` WRITE;
/*!40000 ALTER TABLE `shop_special_price` DISABLE KEYS */;
INSERT INTO `shop_special_price` VALUES (1,21,150000,0,'2018-01-27 17:00:00','2019-04-29 17:00:00',1,NULL,'2018-02-06 05:05:20','2018-04-12 07:45:17'),(4,6,900000,0,'2019-03-21 23:00:00','2019-08-23 17:00:00',0,NULL,'2018-02-06 05:44:40','2019-04-02 07:10:32'),(6,8,90000,0,'2018-02-06 17:00:00','2018-12-30 17:00:00',1,NULL,'2018-02-07 07:45:19','2019-04-22 17:32:42'),(7,10,15000,0,'2018-02-05 17:00:00','2018-03-28 17:00:00',1,NULL,'2018-02-07 07:49:48','2018-03-10 22:36:43'),(9,11,100000,0,'2018-03-18 17:00:00','2018-03-30 17:00:00',1,NULL,'2018-02-08 08:51:45','2018-03-24 19:49:07'),(11,12,360000,0,'2019-03-26 23:00:00','2019-09-21 22:00:00',1,NULL,'2018-03-27 07:13:47','2019-03-27 20:52:11'),(12,7,320000,0,'2011-10-25 17:00:00','2019-05-07 17:00:00',1,NULL,'2018-04-12 07:46:40','2018-08-31 17:05:12'),(13,23,198000,10,'2018-05-07 17:00:00','2018-06-07 17:00:00',0,'test giam gia','2018-05-09 08:15:37','2018-08-28 15:13:45'),(14,49,10000,0,NULL,NULL,1,NULL,'2018-09-22 11:19:07','2018-09-22 11:19:07'),(15,3,200000,0,NULL,NULL,1,NULL,'2018-09-22 11:20:14','2018-09-22 11:20:14');
/*!40000 ALTER TABLE `shop_special_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_users`
--

DROP TABLE IF EXISTS `shop_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_users`
--

LOCK TABLES `shop_users` WRITE;
/*!40000 ALTER TABLE `shop_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_vendor`
--

DROP TABLE IF EXISTS `shop_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_vendor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_vendor`
--

LOCK TABLES `shop_vendor` WRITE;
/*!40000 ALTER TABLE `shop_vendor` DISABLE KEYS */;
INSERT INTO `shop_vendor` VALUES (1,'ABC distributor','abc@abc.com','012496657567',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `shop_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_xuhuongtimkiem`
--

DROP TABLE IF EXISTS `shop_xuhuongtimkiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_xuhuongtimkiem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT 'Danh mục sản phẩm\r\n',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url Danh mục sản phẩm',
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_xuhuongtimkiem`
--

LOCK TABLES `shop_xuhuongtimkiem` WRITE;
/*!40000 ALTER TABLE `shop_xuhuongtimkiem` DISABLE KEYS */;
INSERT INTO `shop_xuhuongtimkiem` VALUES (1,'THỰC PHẦM CHỨC NĂNG','https://thuhienstore.club/category/thuc-pham-chuc-nang_19',NULL),(4,'THUỐC TÂY','https://thuhienstore.club/category/thuoc-tay_21',NULL),(5,'MẸ VÀ BÉ','https://thuhienstore.club/category/me-va-be_22',NULL),(6,'THUỐC ĐÔNG Y','https://thuhienstore.club/category/thuoc-dong-y_23',NULL);
/*!40000 ALTER TABLE `shop_xuhuongtimkiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'lanhktc@gmail.com');
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23  2:00:12
