-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel-shop
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,NULL,'2019-03-05 09:19:00'),(2,0,2,'系统管理','fa-tasks',NULL,NULL,NULL,'2019-03-05 09:19:16'),(3,2,3,'管理员','fa-users','auth/users',NULL,NULL,'2019-03-05 09:19:32'),(4,2,4,'角色','fa-user','auth/roles',NULL,NULL,'2019-03-05 09:19:42'),(5,2,5,'权限','fa-ban','auth/permissions',NULL,NULL,'2019-03-05 09:19:52'),(6,2,6,'菜单','fa-bars','auth/menu',NULL,NULL,'2019-03-05 09:20:04'),(7,2,7,'操作日志','fa-history','auth/logs',NULL,NULL,'2019-03-05 09:20:16'),(8,0,0,'用户管理','fa-bars','/users',NULL,'2019-03-05 09:21:13','2019-03-05 09:21:13'),(9,0,0,'商品管理','fa-bars','/products',NULL,'2019-03-05 09:26:01','2019-03-05 09:26:01'),(10,0,0,'订单管理','fa-bars','/orders',NULL,'2019-03-06 06:58:30','2019-03-06 06:58:30'),(11,0,0,'优惠券管理','fa-bars','/coupon_codes',NULL,'2019-03-06 10:08:48','2019-03-06 10:08:48'),(12,0,0,'类目管理','fa-bars','/categories',NULL,'2019-03-07 00:39:26','2019-03-07 00:39:26'),(13,9,0,'众筹商品','fa-bars','/crowdfunding_products',NULL,'2019-03-07 01:20:58','2019-03-07 01:20:58'),(14,9,0,'普通商品','fa-bars','/products',NULL,'2019-03-07 01:22:29','2019-03-07 01:22:29'),(15,9,0,'秒杀商品','fa-bars','/seckill_products',NULL,'2019-03-12 01:24:03','2019-03-12 01:24:03');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2019-03-05 09:24:09','2019-03-05 09:24:09'),(7,'商品管理','products','','/products*','2019-03-06 11:07:34','2019-03-06 11:07:34'),(8,'优惠券管理','coupon_codes','','/coupon_codes*','2019-03-06 11:10:51','2019-03-06 11:10:51'),(9,'订单管理','orders','','/orders*','2019-03-06 11:12:30','2019-03-06 11:12:30');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-03-05 08:57:50','2019-03-05 08:57:50');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
INSERT INTO `admin_user_permissions` VALUES (2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$76l0C/BRFU9pz7eOQCaMqeSnPtNyFLce5RoWQ/TgAVDHUTk6/I1dW','Administrator',NULL,'jcGXsQv4e76eZZ4I6xYtNEKa5ZUSaQ0YGeoYWsEDOldgTldSx4BFrwVK6xBp','2019-03-05 08:57:50','2019-03-05 08:57:50'),(2,'operator','$2y$10$s4a9ZdGTLHXW/DZ3/090LOm82EJVjesZ4whd20NiXzHnbmE9dCDAe','运营',NULL,NULL,'2019-03-06 11:15:33','2019-03-06 11:15:33');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12  1:32:23
