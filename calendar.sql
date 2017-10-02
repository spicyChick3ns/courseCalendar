-- MySQL dump 10.13  Distrib 5.7.19, for osx10.12 (x86_64)
--
-- Host: localhost    Database: calendar
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `contact` text COLLATE utf8_unicode_ci,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_start` (`start`),
  KEY `idx_end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'CS3DB3 MIDTERM 1','First midterm of the semester','TSH 120','Fei Chiang','2017-09-05 17:00:00','2017-09-05 20:00:00'),(2,'CS3SD3 MIDTERM 1','First midterm of the semester','BSB 119','Janicki','2017-09-11 17:00:00','2017-09-11 20:00:00'),(3,'CS3IS3 Assignment 1','First assignment of the semester due','ABB 120','Douglas Stebila','2017-09-08 17:00:00','2017-09-08 20:00:00'),(4,'CS3MI3 LAB 1','First lab of the semester','BSB 145','Franek','2017-09-01 13:00:00','2017-09-01 15:00:00'),(5,'CS3DB3 ASSIGNMENT 2','Second Assignment','BSB 119','Fei Chiang','2017-09-05 12:00:00','2017-09-05 12:30:00'),(6,'CS3MI3 ASSIGNMENT 1','First Assignmentt','BSB 145','Franek','2017-09-05 12:00:00','2017-09-05 12:30:00'),(7,'CS3SD3 ASSIGNMENT 1','First Assignmentt','BSB 119','Janicki','2017-09-05 12:00:00','2017-09-05 13:30:00'),(8,'CS3DB3 ASSIGNMENT 1','First Assignment','BSB 119','Fei Chiang','2017-09-01 12:00:00','2017-09-01 12:30:00'),(9,'MARCHING BAND PRACTICE','First practice of the semester','BSB 149','John','2017-09-01 13:00:00','2017-09-01 14:30:00'),(10,'MARCHING BAND PRACTICE','Second practice of the semester','BSB 149','John','2017-09-05 13:00:00','2017-09-05 14:30:00'),(11,'Swimming','Swim at DBAC','DBAC','John','2017-09-05 19:00:00','2017-09-05 20:30:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-02  0:32:16
