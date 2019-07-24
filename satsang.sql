-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: satsangvihar
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `arghyapras`
--

DROP TABLE IF EXISTS `arghyapras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arghyapras` (
  `fam_code` varchar(50) DEFAULT NULL,
  `swasta` varchar(45) DEFAULT NULL,
  `istavi` varchar(45) DEFAULT NULL,
  `acharya` varchar(45) DEFAULT NULL,
  `dakshina` varchar(45) DEFAULT NULL,
  `sang` varchar(45) DEFAULT NULL,
  `anan` varchar(45) DEFAULT NULL,
  `pronami_bhog` varchar(45) DEFAULT NULL,
  `sri_mandir` varchar(45) DEFAULT NULL,
  `ritwiki` varchar(45) DEFAULT NULL,
  `utsav` varchar(45) DEFAULT NULL,
  `cent` varchar(45) DEFAULT NULL,
  `miscel` varchar(45) DEFAULT NULL,
  `gt` varchar(45) DEFAULT NULL,
  `sc` varchar(45) DEFAULT NULL,
  KEY `arg_idx` (`fam_code`),
  CONSTRAINT `argpras` FOREIGN KEY (`fam_code`) REFERENCES `mandir` (`fc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arghyapras`
--

LOCK TABLES `arghyapras` WRITE;
/*!40000 ALTER TABLE `arghyapras` DISABLE KEYS */;
/*!40000 ALTER TABLE `arghyapras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countryadmin`
--

DROP TABLE IF EXISTS `countryadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countryadmin` (
  `register_id` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admintype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`register_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countryadmin`
--

LOCK TABLES `countryadmin` WRITE;
/*!40000 ALTER TABLE `countryadmin` DISABLE KEYS */;
INSERT INTO `countryadmin` VALUES ('naba1725','Nabajyoti','','Medhi','nabajyotimedhi21@gmail.com','9401817254','Assam','Sonitpur','india',784028,'16jnt80','STATE'),('nsin8829','Navinder','Kumar','Singh','nsingh15054@gmail.com','7636088298','Assam','Tinsukia','india',786188,'63prp68','DISTRICT'),('shre1101','Shree','','Kanti','shreekanti97@gmail.com','7086811015','Assam','Tinsukia','india',784028,'32zuq03','DISTRICT');
/*!40000 ALTER TABLE `countryadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mandir`
--

DROP TABLE IF EXISTS `mandir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mandir` (
  `fc` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `thakurbhog` varchar(45) NOT NULL,
  `arghya_praswasti` varchar(45) NOT NULL,
  PRIMARY KEY (`fc`,`thakurbhog`,`arghya_praswasti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandir`
--

LOCK TABLES `mandir` WRITE;
/*!40000 ALTER TABLE `mandir` DISABLE KEYS */;
/*!40000 ALTER TABLE `mandir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp` (
  `phno` decimal(10,0) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `data` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`phno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (7569856456,3649,NULL),(7636088297,724275,'33'),(7636088298,718041,'15'),(9401817254,493063,'39'),(9954650980,437847,'17');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `fam_code` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gotra` varchar(255) DEFAULT NULL,
  `initiation` varchar(255) DEFAULT NULL,
  `swastayani_initiation` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `edu` varchar(255) DEFAULT NULL,
  `ocu` varchar(255) DEFAULT NULL,
  `adhar/pan` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `contact` (`contact`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('dawddawddwadawd','Navinder','Singh','23247887','432432','M','Mahabhairab, Tezpur, Assam, India','','Assam',784001,'India','dwadwa@gmail.com','kjkjkjy','dwadw','dwdw','2018-11-16','dwad','dwadaw','dawd','bikash');
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

-- Dump completed on 2018-11-16 12:47:10
