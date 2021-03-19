-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: db_263MF
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `account_managers`
--

DROP TABLE IF EXISTS `account_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_managers`
--

LOCK TABLES `account_managers` WRITE;
/*!40000 ALTER TABLE `account_managers` DISABLE KEYS */;
INSERT INTO `account_managers` VALUES (1,'Daniel Govo','2021-03-18 13:36:33','2021-03-18 13:36:33',NULL),(2,'Joseph Govo','2021-03-18 14:29:27','2021-03-19 12:31:11','2021-03-19 12:31:11'),(3,'Ora Spencer','1970-10-25 00:50:46','2014-01-14 14:25:04',NULL),(4,'Prof. Schuyler Lang Jr.','2013-04-05 07:50:51','1986-09-25 17:00:22',NULL),(5,'Sierra Langworth','1999-12-13 02:51:27','1990-07-11 04:14:24',NULL),(6,'Giles Stracke','1999-02-24 20:23:49','2002-12-15 12:19:19',NULL),(7,'Prof. Ted Balistreri Sr.','1971-12-08 12:21:09','2011-09-27 16:05:21',NULL),(8,'Tobin Hagenes DDS','1988-02-12 01:20:26','1995-04-28 18:39:20',NULL),(9,'Tess Conroy','1982-04-05 05:23:43','1987-01-01 05:42:18',NULL),(10,'Miss Nayeli Koch II','1986-06-11 10:28:44','1980-05-21 13:46:29',NULL),(11,'Mr. Lane Littel II','1991-07-29 01:19:44','1972-07-13 00:39:30',NULL),(12,'Dr. Lonie Wuckert III','1987-05-02 12:53:19','1982-04-04 02:40:31',NULL),(13,'Nettie Murphy','1984-08-26 20:08:22','2007-05-29 19:43:52',NULL),(14,'Deonte Hermiston I','2019-11-07 23:23:54','1973-03-21 07:06:00',NULL),(15,'Dr. Doris Schaden DVM','2014-08-01 03:42:10','2016-12-22 13:33:42',NULL),(16,'Dr. Kristoffer Watsica','2018-03-14 01:10:58','2001-07-05 10:12:47',NULL),(17,'Mrs. Megane Brakus','2011-03-21 01:39:04','2015-03-31 18:52:36',NULL),(18,'Gianni Goyette MD','1999-03-22 16:49:36','1982-11-12 03:21:24',NULL),(19,'Merl Rippin','2006-05-30 05:09:11','2010-07-17 13:02:10',NULL),(20,'Casper Bode','1998-08-27 17:56:54','1987-06-22 07:12:18',NULL),(21,'Ludwig Balistreri','1997-03-08 00:37:34','2016-05-12 20:02:07',NULL),(22,'Giovani Erdman','2015-05-13 03:30:24','1981-08-24 19:19:19',NULL),(23,'Emma Bode','1996-07-18 14:53:01','2004-04-16 14:01:06',NULL),(24,'Elsie Rempel','1974-05-03 00:51:49','2001-07-29 22:47:04',NULL),(25,'Mr. Clyde Reynolds','1992-11-08 08:23:47','1970-11-16 18:57:06',NULL),(26,'Bennett Kilback','1996-12-20 13:52:18','1970-07-25 12:38:24',NULL),(27,'Mr. Consuelo Bahringer DVM','2016-03-28 07:25:43','1981-04-15 17:50:18',NULL);
/*!40000 ALTER TABLE `account_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_types`
--

DROP TABLE IF EXISTS `account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
INSERT INTO `account_types` VALUES (1,'Individual','2021-03-18 13:12:49','2021-03-18 13:12:49',NULL),(2,'Business','2021-03-18 13:13:06','2021-03-18 13:13:16',NULL);
/*!40000 ALTER TABLE `account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklisted_clients`
--

DROP TABLE IF EXISTS `blacklisted_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklisted_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type_id` int(10) unsigned NOT NULL,
  `manager_id` int(10) unsigned NOT NULL,
  `date_blacklisted` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blacklisted_clients_account_type_id_foreign` (`account_type_id`),
  KEY `blacklisted_clients_manager_id_foreign` (`manager_id`),
  CONSTRAINT `blacklisted_clients_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blacklisted_clients_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `account_managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklisted_clients`
--

LOCK TABLES `blacklisted_clients` WRITE;
/*!40000 ALTER TABLE `blacklisted_clients` DISABLE KEYS */;
INSERT INTO `blacklisted_clients` VALUES (1,'Dineo','Dube','Golden Knot Legal Aid',2,1,'2020-10-21','2021-03-18 13:37:32','2021-03-18 23:25:20',NULL),(2,'Jada','Schneider','Gibson Inc',2,7,'2021-03-25','2006-02-12 05:26:01','1993-03-01 21:43:15',NULL),(3,'Verdie','McLaughlin','Altenwerth Group',2,3,'2021-03-25','1996-01-31 01:57:20','2016-05-26 19:13:58',NULL),(4,'Alanis','Jaskolski','Klocko PLC',1,1,'2021-03-25','2019-07-26 07:45:52','2001-08-04 10:00:32',NULL),(5,'Erik','Borer','Reichert LLC',2,15,'2021-03-25','1973-03-13 05:30:02','1999-05-14 14:12:25',NULL),(6,'Pattie','Hammes','Robel Group',1,13,'2021-03-25','1990-10-09 12:45:45','1994-01-02 12:21:13',NULL),(7,'Nelle','Haag','Lakin PLC',1,4,'2021-03-25','2010-05-08 15:15:13','2010-10-05 23:33:16',NULL),(8,'Dominic','Pfeffer','Gerhold, Brown and Walter',1,21,'2021-03-25','2013-04-01 19:41:10','1973-01-15 08:29:15',NULL),(9,'Annalise','Bartoletti','West PLC',2,16,'2021-03-25','2009-02-11 11:53:51','1984-04-10 10:12:49',NULL),(10,'Dan','Nolan','Herman-Kulas',2,19,'2021-03-25','1973-01-07 11:06:59','2019-08-08 12:17:01',NULL),(11,'Leif','Balistreri','Rohan LLC',1,22,'2021-03-25','2002-09-02 06:58:08','2010-12-09 09:11:53',NULL),(12,'Rosa','Cartwright','Beahan-Parker',1,16,'2021-03-25','1986-06-03 21:13:07','2017-01-09 22:41:41',NULL),(13,'Julianne','Swift','Effertz-Bashirian',1,11,'2021-03-25','1976-09-06 03:18:51','1998-08-14 17:46:01',NULL),(14,'Angela','Wisoky','Gaylord and Sons',1,22,'2021-03-25','2005-10-03 18:33:33','1976-02-27 06:20:18',NULL),(15,'Mathew','Conn','Gulgowski, Reinger and Thompson',1,1,'2021-03-25','2005-08-24 16:50:23','2006-10-19 11:22:59',NULL),(16,'Fern','Prosacco','Kshlerin, Reichert and Nicolas',2,23,'2021-03-25','1971-06-04 20:36:02','1997-12-28 20:46:49',NULL),(17,'Cara','Wehner','Greenholt-Little',1,1,'2021-03-25','1986-08-23 17:08:47','1988-07-25 20:57:38',NULL),(18,'Mercedes','Jacobson','Denesik, Jacobs and Turner',2,24,'2021-03-25','1994-01-16 16:53:49','1982-11-29 21:53:56',NULL),(19,'Roger','Walsh','Schmitt, Walter and Nolan',1,12,'2021-03-25','1979-05-06 20:18:12','2008-12-19 22:46:37',NULL),(20,'Deborah','Monahan','Goldner Group',1,25,'2021-03-25','1980-01-27 13:51:51','1988-01-26 06:22:23',NULL),(21,'Jeffery','Sanford','Jakubowski, Berge and Toy',2,18,'2021-03-25','1970-12-11 10:36:12','1983-08-25 05:28:55',NULL),(22,'Darion','Schmeler','Tromp-Witting',2,13,'2021-03-25','2006-05-09 20:31:38','2015-10-12 00:27:58',NULL),(23,'Sonya','Schroeder','Hermiston, Bednar and Grimes',1,23,'2021-03-25','1988-12-22 17:05:16','1989-05-24 17:08:13',NULL),(24,'Palma','Mertz','Doyle, Bahringer and Kshlerin',1,26,'2021-03-25','2005-04-05 00:58:34','2018-12-28 10:51:59',NULL),(25,'Reuben','Daugherty','Bauch LLC',2,21,'2021-03-25','2005-03-19 04:36:07','1995-01-14 22:58:50',NULL),(26,'Lilly','Hamill','Bruen-Klocko',1,6,'2021-03-25','2005-07-10 23:17:20','1975-05-09 20:04:48',NULL),(27,'Zelda','O\'Conner','Murphy and Sons',1,13,'2021-03-25','1980-03-16 10:33:38','2006-10-20 14:21:37',NULL),(28,'Kurtis','Feeney','O\'Hara-Padberg',2,19,'2021-03-25','1974-08-12 15:44:10','1973-08-05 05:44:40',NULL),(29,'Elisabeth','Pfeffer','Turcotte, Bauch and Reynolds',2,25,'2021-03-25','1971-09-09 12:09:12','1973-04-27 14:36:11',NULL),(30,'Davin','Durgan','Luettgen, Quigley and Goyette',2,26,'2021-03-25','2010-02-05 23:58:09','2001-12-04 04:16:03',NULL),(31,'Saige','Hickle','Simonis Inc',2,19,'2021-03-25','1971-03-19 11:57:03','1987-07-06 06:02:58',NULL),(32,'Vance','Stroman','Haley, Streich and Balistreri',2,3,'2021-03-25','1990-01-01 07:05:41','1980-05-03 01:40:48',NULL),(33,'Kamron','Wilkinson','Mohr LLC',1,10,'2021-03-25','2016-07-15 03:07:14','2007-07-23 22:17:01',NULL),(34,'Lindsay','Reichert','Swift, Lang and Boyle',2,17,'2021-03-25','2005-04-27 05:25:03','1976-03-17 03:04:12',NULL),(35,'Dexter','Koelpin','Weber LLC',1,4,'2021-03-25','1990-03-11 02:40:17','2006-12-21 19:21:21',NULL),(36,'Alexis','Bauch','Beier-Anderson',1,3,'2021-03-25','2008-06-27 22:33:00','1973-09-15 04:34:41',NULL),(37,'Antwan','Conroy','Rath, Witting and Parker',2,8,'2021-03-25','1988-01-02 19:16:26','2014-07-09 08:09:41',NULL),(38,'Justine','Adams','Quitzon, Hill and Beatty',2,8,'2021-03-25','1979-01-29 19:24:37','1995-03-28 07:10:30',NULL),(39,'Cayla','Reilly','Stracke, Boehm and Keebler',1,1,'2021-03-25','2001-08-30 17:45:51','2010-06-02 21:38:30',NULL),(40,'Gladys','Beatty','Padberg-Yundt',2,26,'2021-03-25','2009-07-11 08:26:57','2001-12-17 13:06:05',NULL),(41,'Marc','Bartell','Goodwin Inc',1,4,'2021-03-25','1997-12-26 14:03:28','2014-10-11 02:22:27',NULL),(42,'Hardy','Rowe','Davis Ltd',1,18,'2021-03-25','1987-12-07 17:03:25','1998-11-12 02:17:35',NULL),(43,'Bradford','Kassulke','Bashirian, Kling and Dietrich',1,9,'2021-03-25','2010-02-21 11:29:48','2002-05-30 02:24:55',NULL),(44,'Chase','Spinka','Langworth-Steuber',2,14,'2021-03-25','1995-05-11 12:04:31','1975-05-13 16:06:52',NULL),(45,'Abraham','Boyer','Purdy-Leannon',2,10,'2021-03-25','2000-11-27 04:03:17','2002-10-19 00:25:08',NULL),(46,'Vito','Lockman','Fahey-Balistreri',2,22,'2021-03-25','1991-12-17 07:21:27','1998-01-11 21:42:55',NULL),(47,'Aubree','Corkery','Adams-Jakubowski',1,20,'2021-03-25','1971-08-15 20:53:56','2014-05-18 14:21:54',NULL),(48,'Constantin','McCullough','Sipes, Grant and Schuster',1,19,'2021-03-25','2020-04-15 10:50:00','2013-01-31 22:41:18',NULL),(49,'Francisco','Dare','Hagenes-Corkery',2,18,'2021-03-25','1994-11-20 16:14:08','2010-06-10 18:21:13',NULL),(50,'Selina','Kuvalis','Kertzmann, Durgan and Hodkiewicz',2,5,'2021-03-25','1996-08-11 02:01:59','2002-08-17 23:13:37',NULL),(51,'Jayme','Ferry','Cummerata, Doyle and Senger',1,11,'2021-03-25','1981-05-09 13:35:59','2016-06-24 00:54:01',NULL),(52,'Kenyon','Monahan','Cummings-Vandervort',2,27,'2021-03-25','1984-05-22 14:28:42','1984-03-17 14:13:31',NULL),(53,'Sarina','O\'Conner','Barrows and Sons',1,1,'2021-03-25','1984-11-28 18:26:55','1971-02-09 16:22:06',NULL),(54,'Josephine','Kshlerin','Bednar Group',2,13,'2021-03-25','1995-04-26 01:43:08','1973-02-21 03:34:29',NULL),(55,'Alicia','Wuckert','Predovic LLC',2,20,'2021-03-25','2010-11-14 21:59:04','1981-01-08 10:40:05',NULL),(56,'Nola','Price','Borer, Schulist and Wuckert',1,10,'2021-03-25','1980-05-14 09:13:01','1985-04-17 08:03:07',NULL),(57,'Berenice','Quigley','Willms, Torphy and Heller',1,16,'2021-03-25','1994-04-28 15:45:40','2017-02-28 12:48:50',NULL),(58,'Noah','Jacobson','Collins, Hessel and Abbott',2,3,'2021-03-25','1991-05-03 04:04:52','1994-10-11 20:19:33',NULL),(59,'Forrest','Farrell','Wolf-Hauck',2,12,'2021-03-25','1982-12-30 00:59:22','1986-12-18 20:48:12',NULL),(60,'Emil','Oberbrunner','Morar Ltd',1,27,'2021-03-25','2008-10-13 08:19:08','2013-01-28 15:54:40',NULL),(61,'Vance','Donnelly','Powlowski-Mills',2,20,'2021-03-25','2009-11-01 03:22:49','1990-01-06 02:47:20',NULL),(62,'Kimberly','Keeling','Marquardt, Reichel and Schmidt',1,6,'2021-03-25','1995-08-11 12:25:47','1976-08-08 17:33:47',NULL),(63,'Daphney','Adams','Grimes-Crist',2,4,'2021-03-25','1972-10-01 06:59:13','2009-04-23 02:20:06',NULL),(64,'Alba','Ondricka','Douglas PLC',2,21,'2021-03-25','1994-03-15 02:12:13','2010-10-04 12:18:57',NULL),(65,'Krystina','Feest','Wisoky and Sons',1,18,'2021-03-25','1980-10-30 02:38:33','1981-12-21 04:59:36',NULL),(66,'Buddy','McCullough','Reichert-Goldner',1,7,'2021-03-25','1975-01-13 05:33:36','1983-11-06 15:27:10',NULL),(67,'Petra','Bartell','Schulist, Sipes and Reynolds',1,20,'2021-03-25','2017-10-24 08:57:31','2007-08-27 09:31:55',NULL),(68,'Finn','Hegmann','Mraz, Beatty and Buckridge',2,17,'2021-03-25','2000-03-30 22:53:17','2002-03-08 12:21:50',NULL),(69,'Thaddeus','Lind','Rodriguez-Volkman',2,6,'2021-03-25','2013-11-14 21:21:35','1974-02-22 21:39:33',NULL),(70,'Andre','Haag','Wisoky-Bergstrom',2,6,'2021-03-25','2010-07-10 21:20:53','2007-09-27 11:54:32',NULL),(71,'Neil','Daniel','Klein, Gottlieb and Dach',2,22,'2021-03-25','2005-03-08 10:37:46','2002-04-26 08:08:24',NULL),(72,'Keyon','Greenfelder','Stiedemann Group',1,8,'2021-03-25','1979-12-01 23:38:12','2012-12-28 09:29:45',NULL),(73,'Catalina','Grant','Powlowski, Steuber and Gottlieb',2,13,'2021-03-25','1973-02-13 04:28:42','1990-09-24 05:09:46',NULL),(74,'Dalton','Greenholt','Flatley, Effertz and Smitham',2,21,'2021-03-25','2008-10-23 13:53:53','1997-02-06 12:12:43',NULL),(75,'Katheryn','Emmerich','Runolfsdottir-Weimann',1,20,'2021-03-25','1993-03-14 16:37:08','2007-08-16 18:32:23',NULL),(76,'Carolanne','Adams','Boehm LLC',1,25,'2021-03-25','2013-06-07 21:18:02','2020-02-20 01:29:49',NULL),(77,'Claud','Windler','Hodkiewicz Ltd',2,7,'2021-03-25','2001-06-02 12:38:04','2005-05-20 16:54:23',NULL),(78,'Muhammad','Walker','Gerhold, O\'Connell and Bruen',2,5,'2021-03-25','1970-10-23 03:14:32','1985-07-19 00:15:20',NULL),(79,'Stephon','Jacobi','Torphy, Anderson and Hettinger',2,1,'2021-03-25','1978-03-09 07:31:17','1980-03-04 05:29:59',NULL),(80,'Dandre','Block','Murphy-Goodwin',2,13,'2021-03-25','1995-04-01 20:09:32','1979-10-15 11:58:19',NULL),(81,'Lisandro','Bayer','Larkin LLC',2,13,'2021-03-25','2018-01-04 02:49:52','1974-05-06 18:33:09',NULL),(82,'Georgette','Tremblay','Jacobi Ltd',2,4,'2021-03-25','2010-10-07 05:04:30','1971-10-12 17:19:29',NULL),(83,'Ivory','Pacocha','Collins, Bailey and Wisoky',2,27,'2021-03-25','1983-05-21 18:08:56','2000-12-23 00:15:45',NULL),(84,'Emmy','Boyer','McGlynn, Nienow and Funk',1,9,'2021-03-25','1995-12-26 12:04:08','2005-02-10 12:56:00',NULL),(85,'Isai','Sawayn','Cruickshank, Nikolaus and McLaughlin',1,11,'2021-03-25','2011-12-21 23:51:11','2004-10-10 22:08:43',NULL),(86,'Noemie','Beahan','Hilpert LLC',1,8,'2021-03-25','1987-11-24 22:49:49','1984-02-15 17:11:49',NULL),(87,'Ocie','Larson','Schaefer, Corwin and Leffler',2,17,'2021-03-25','2005-10-04 18:07:37','2002-11-26 23:07:00',NULL),(88,'Edythe','Ferry','Bode, Carroll and Baumbach',1,16,'2021-03-25','1978-06-30 12:10:59','2019-11-03 02:31:08',NULL),(89,'Chloe','Olson','Quigley and Sons',2,9,'2021-03-25','2011-12-28 14:18:12','2010-03-19 06:25:47',NULL),(90,'Garry','Bogisich','Schroeder-Mayer',1,12,'2021-03-25','1996-11-14 17:38:49','1994-12-02 05:42:15',NULL),(91,'Ernestina','Kiehn','Fisher, Mann and Zieme',2,7,'2021-03-25','1973-10-04 17:22:01','1992-04-23 06:38:30',NULL),(92,'Montana','Bartell','Rogahn, O\'Connell and Mraz',2,16,'2021-03-25','1974-12-11 13:04:49','1994-05-03 01:57:36',NULL),(93,'Zelma','Runolfsdottir','Kassulke-Dickinson',1,4,'2021-03-25','1994-12-09 19:56:53','1991-07-16 04:03:01',NULL),(94,'Stevie','Weissnat','Moore-Ledner',1,22,'2021-03-25','2017-06-23 10:25:23','2020-11-27 02:47:18',NULL),(95,'Roselyn','Russel','Jones-Bosco',1,26,'2021-03-25','2003-05-20 12:23:53','1974-01-06 19:25:03',NULL),(96,'Jerel','Jaskolski','Koelpin-Graham',1,13,'2021-03-25','2005-05-11 15:08:26','1975-09-30 11:51:17',NULL),(97,'Korbin','Sipes','Kutch Inc',1,15,'2021-03-25','1977-07-07 20:54:41','1985-06-08 10:03:18',NULL),(98,'Cathy','Schultz','Tremblay-Spinka',2,23,'2021-03-25','1984-06-24 12:46:53','2013-09-02 06:26:55',NULL),(99,'Stephanie','Marvin','Gleichner, Smitham and Altenwerth',1,10,'2021-03-25','2006-09-08 05:12:40','2005-11-27 11:16:13',NULL),(100,'Leif','Waters','Smith, Ankunding and Rice',1,7,'2021-03-25','1988-09-04 22:28:16','1978-12-25 05:16:52',NULL),(101,'Jewel','Turcotte','Littel-Windler',1,22,'2021-03-25','1980-01-07 01:03:33','2005-07-21 22:01:11',NULL),(102,'Shayna','Funk','Glover, Schmidt and Cormier',2,15,'2021-03-25','2012-10-15 17:03:05','1977-02-10 21:12:16',NULL),(103,'Selena','O\'Hara','Rogahn and Sons',2,15,'2021-03-25','2018-05-11 13:24:48','1972-10-13 08:51:30',NULL),(104,'Paige','Reinger','Dibbert-Erdman',1,8,'2021-03-25','2005-06-24 14:32:12','2008-01-13 12:31:08',NULL),(105,'Frances','Pouros','Durgan-Jaskolski',2,22,'2021-03-25','1972-09-20 22:56:55','1978-05-22 10:24:19',NULL),(106,'Gabrielle','Marks','King-O\'Kon',2,13,'2021-03-25','2015-06-20 14:13:32','1979-12-27 20:25:02',NULL),(107,'Jeffrey','Dare','Nitzsche-Crona',1,7,'2021-03-25','2013-02-15 07:20:07','2020-07-01 12:46:31',NULL),(108,'Gavin','Raynor','Walter Group',2,4,'2021-03-25','2003-06-06 05:08:59','1978-04-11 20:33:29',NULL),(109,'Garry','Murazik','Lueilwitz-Douglas',2,10,'2021-03-25','1979-07-14 03:33:41','1973-01-03 11:54:45',NULL),(110,'Cynthia','O\'Connell','Ryan Inc',2,9,'2021-03-25','1974-05-29 04:32:37','2019-01-22 01:52:55',NULL),(111,'Zoe','Cormier','Kunde-Oberbrunner',1,9,'2021-03-25','1970-06-04 11:19:25','1980-03-02 07:10:20',NULL),(112,'Johnathan','Berge','Boyle, Skiles and Kuhlman',2,16,'2021-03-25','1973-09-02 16:34:32','2000-08-28 10:10:14',NULL),(113,'Francesca','Hoeger','Rodriguez-Nader',2,24,'2021-03-25','1984-06-07 03:59:20','1999-10-24 14:07:51',NULL),(114,'Nova','Williamson','Daniel-Ullrich',1,23,'2021-03-25','1972-04-22 01:46:31','2014-10-12 11:32:57',NULL),(115,'Mozelle','Kautzer','Pouros, Brown and Hyatt',2,13,'2021-03-25','1984-10-17 03:05:57','2006-02-10 09:05:01',NULL),(116,'Denis','Fisher','Lynch, Stanton and Rosenbaum',2,18,'2021-03-25','2020-10-29 02:13:14','1999-05-29 12:49:31',NULL),(117,'Kenny','Baumbach','Turner-Kohler',1,25,'2021-03-25','2009-09-09 08:25:57','1996-06-13 11:23:10',NULL),(118,'Deangelo','Simonis','Kling, Hickle and Kreiger',1,6,'2021-03-25','1990-03-31 15:28:50','1974-05-30 22:08:17',NULL),(119,'Carlos','Hilpert','Torphy, Schumm and Schumm',1,25,'2021-03-25','1991-12-07 16:09:39','2004-04-14 22:24:39',NULL),(120,'Lilian','Altenwerth','Marquardt-Nolan',2,12,'2021-03-25','2007-07-12 05:24:02','2001-02-16 22:58:35',NULL),(121,'Emmet','Mante','Wunsch-Simonis',2,1,'2021-03-25','2002-04-04 22:26:07','2000-10-15 10:59:21',NULL),(122,'Elijah','Pagac','O\'Kon, Beer and Reynolds',2,10,'2021-03-25','1973-07-29 17:37:10','2019-04-23 12:06:58',NULL),(123,'Etha','Carroll','West, Cremin and Mitchell',1,14,'2021-03-25','1977-12-01 18:41:39','1985-06-19 11:59:51',NULL),(124,'Amy','Gerlach','Pacocha-Reichel',1,22,'2021-03-25','2012-08-19 08:36:49','1987-10-18 04:15:06',NULL),(125,'Dashawn','Denesik','Sipes, Doyle and Jaskolski',1,9,'2021-03-25','1974-03-30 10:41:32','2016-12-17 00:04:56',NULL),(126,'Ollie','McKenzie','Hintz, Baumbach and Pollich',2,9,'2021-03-25','2000-04-24 22:03:39','1986-10-17 20:12:31',NULL),(127,'Harmony','Daniel','Mayer, Lindgren and Hirthe',1,9,'2021-03-25','1979-09-08 09:07:03','2018-10-02 06:37:50',NULL),(128,'Luz','Fay','Brekke-Erdman',2,27,'2021-03-25','2012-01-12 18:36:26','1978-12-23 20:14:44',NULL),(129,'Murray','McKenzie','Jacobs and Sons',1,8,'2021-03-25','1991-03-18 06:49:22','1981-10-01 13:29:28',NULL),(130,'Gabriella','Quitzon','Mann, Bergnaum and Sipes',2,1,'2021-03-25','1972-10-16 13:15:26','2010-12-28 22:41:49',NULL),(131,'Orin','Collier','Rolfson-McGlynn',2,9,'2021-03-25','1990-05-09 17:19:23','1993-10-21 14:06:35',NULL),(132,'Joan','Daugherty','Rau Ltd',1,17,'2021-03-25','2015-10-09 15:09:43','1985-10-18 22:26:23',NULL),(133,'Savanna','Erdman','Daugherty, Mosciski and Dickinson',1,14,'2021-03-25','1990-04-10 01:25:23','2020-11-23 06:00:43',NULL),(134,'Josiah','Greenfelder','Botsford-Ritchie',1,23,'2021-03-25','1976-09-19 00:33:01','2017-05-03 14:59:17',NULL),(135,'Janie','Leannon','Daugherty-Carter',1,22,'2021-03-25','1985-06-06 16:38:10','1981-10-02 23:17:21',NULL),(136,'Tristin','Johnston','Cartwright-Lesch',2,18,'2021-03-25','1995-01-19 17:38:42','2002-11-06 01:46:45',NULL),(137,'Delphine','Pollich','Thiel-Mills',2,20,'2021-03-25','1972-07-28 17:56:31','2002-09-27 07:35:32',NULL),(138,'Charity','Blanda','Runte, Ruecker and Lebsack',2,9,'2021-03-25','2020-02-29 14:17:41','2021-01-21 05:10:25',NULL),(139,'Markus','Emard','Borer and Sons',2,27,'2021-03-25','1990-05-18 07:10:24','1998-08-12 21:24:15',NULL),(140,'Neha','Heaney','Feeney and Sons',1,12,'2021-03-25','2012-01-20 09:30:29','1996-10-07 17:05:17',NULL),(141,'Viva','Wilderman','Volkman-Trantow',2,18,'2021-03-25','2006-03-24 22:26:51','2016-12-14 04:43:14',NULL),(142,'Liliana','Christiansen','Marvin, Padberg and Miller',2,22,'2021-03-25','1998-09-25 18:44:07','1999-05-25 14:22:49',NULL),(143,'Marlene','Bode','Reichert-Turner',2,9,'2021-03-25','1970-07-23 17:13:01','1981-11-03 11:57:16',NULL),(144,'Otha','Flatley','Douglas Group',2,17,'2021-03-25','2001-08-19 22:29:15','2014-01-24 08:22:11',NULL),(145,'Roscoe','Bosco','Bruen Group',2,27,'2021-03-25','1970-04-23 22:37:58','2000-03-28 02:47:30',NULL),(146,'Branson','Cole','Daugherty Ltd',1,11,'2021-03-25','2012-11-16 10:49:43','1990-07-19 07:44:49',NULL),(147,'Candice','Schultz','Little, Bashirian and Schultz',2,11,'2021-03-25','1989-11-15 23:10:39','2012-01-17 18:33:36',NULL),(148,'Citlalli','Mills','Bosco-Huel',1,9,'2021-03-25','2007-10-04 03:45:30','1990-04-15 07:16:59',NULL),(149,'Aliyah','Nikolaus','Champlin, Pfannerstill and Luettgen',2,26,'2021-03-25','1972-02-24 14:26:09','2019-08-25 22:16:01',NULL),(150,'Christophe','Kub','Huel LLC',1,3,'2021-03-25','2004-11-05 14:29:21','1981-06-29 22:54:24',NULL),(151,'Trycia','Emmerich','Ward, Rodriguez and McDermott',1,3,'2021-03-25','1980-10-04 08:30:04','1993-01-01 15:49:18',NULL);
/*!40000 ALTER TABLE `blacklisted_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_03_18_151045_create_account_types_table',2),(5,'2021_03_18_151407_create_account_managers_table',3),(6,'2021_03_18_152643_create_blacklisted_clients_table',4),(7,'2021_03_19_015248_create_accounts_table',5),(9,'2021_03_19_104933_create_client_accounts_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Daniel Govo','govodan@gmail.com',NULL,'$2y$10$SBQzLNIgByDnMt5d8b86/.FxUrUEXPDRsTaZYIgHYriGjKe5aKtja',NULL,'2021-03-18 13:11:21','2021-03-18 13:11:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 17:14:17
