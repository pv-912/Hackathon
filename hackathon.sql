-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: hackathon
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
-- Table structure for table `prashan`
--

DROP TABLE IF EXISTS `prashan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prashan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `department` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prashan`
--

LOCK TABLES `prashan` WRITE;
/*!40000 ALTER TABLE `prashan` DISABLE KEYS */;
INSERT INTO `prashan` VALUES (1,'Dr. Shabena Khan','Mechanical',0,'2017-09-03 02:41:24','2017-09-03 02:41:24'),(2,'Dr. Ashok Verma','Computer Science',0,'2017-09-03 02:41:46','2017-09-03 09:35:35'),(3,'Dr. Kanhaiya Lal','Electronics and Communication',0,'2017-09-03 02:41:53','2017-09-03 02:41:53'),(4,'Dr. Madhu Jain','Chemical ',1,'2017-09-03 02:42:02','2017-09-03 04:20:49'),(5,'Dr. Akhilesh Kumar','Mechanical',0,'2017-09-03 02:42:06','2017-09-03 10:23:13'),(6,'Dr. Avik Anand','Electrical',0,'2017-09-03 02:42:15','2017-09-03 02:42:15'),(7,'Dr. Rohit Sharma','Biotechnology',0,'2017-09-03 02:42:20','2017-09-03 02:42:20'),(8,'Dr. Subhash Garg','Biotechnology',0,'2017-09-03 02:42:28','2017-09-03 02:42:28'),(9,'Dr. Sugata Gangopadyay','Computer Science',0,'2017-09-03 02:42:28','2017-09-03 02:42:28'),(10,'Dr. Harishankar Prasad','Earth Science',0,'2017-09-03 02:42:44','2017-09-03 02:42:44'),(11,'Dr. Anshu Anand','Electrical',0,'2017-09-03 02:42:45','2017-09-03 02:42:45'),(12,'Dr. Surabhi Mathore','Civil',0,'2017-09-03 02:42:49','2017-09-03 02:42:49'),(13,'Dr. S.K Gupta','Mathematics',0,'2017-09-03 02:43:04','2017-09-03 02:43:04'),(14,'Dr. Sudip Roy','Computer Science',0,'2017-09-03 02:43:21','2017-09-03 02:43:21'),(15,'Dr. Madhu Jain','Mathematics',0,'2017-09-03 02:43:37','2017-09-03 02:43:37'),(16,'Dr. Prakash Biswas','Chemical ',0,'2017-09-03 02:43:55','2017-09-03 02:43:55'),(17,'Dr. Rajendra Kumar','Electronics & Computing Eng.',0,'2017-09-03 02:44:04','2017-09-03 02:44:04'),(18,'Dr. Panna Lal','Metallurgy',0,'2017-09-03 02:44:07','2017-09-03 02:44:07'),(19,'Dr. Pramod Agarwal','Electrical',0,'2017-09-03 02:44:13','2017-09-03 02:44:13'),(20,'Dr. Mamta Raj','Mathematics',1,'2017-09-03 02:44:27','2017-09-03 04:15:30'),(21,'Dr. Pramod Agarwal','Mathematics',0,'2017-09-03 02:44:33','2017-09-03 02:44:33'),(22,'Dr. Safina','Chemical',0,'2017-09-03 02:44:47','2017-09-03 02:44:47'),(23,'Dr. Vivek Chand','Chemical',0,'2017-09-03 02:44:48','2017-09-03 02:44:48');
/*!40000 ALTER TABLE `prashan` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,1,NULL),(2,0,NULL),(3,1,'Piyush Vijay'),(4,1,'Piyush Vijay'),(5,1,'Piyush Vijay'),(6,1,'Piyush Vijay'),(7,1,'Piyush Vijay'),(8,1,'Piyush Vijay'),(9,1,'Piyush Vijay'),(10,1,'Piyush Vijay');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 14:07:08
