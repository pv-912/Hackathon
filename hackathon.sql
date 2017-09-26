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
-- Table structure for table `prash`
--

DROP TABLE IF EXISTS `prash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `department` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prash`
--

LOCK TABLES `prash` WRITE;
/*!40000 ALTER TABLE `prash` DISABLE KEYS */;
INSERT INTO `prash` VALUES (1,'Dr. Ashok Verma','Chemical ',0,'2017-09-03 02:20:41'),(2,'Dr. Anshu Anand','Chemical ',1,'2017-09-03 02:20:41'),(3,'Dr. R.P Bharti','Chemical ',0,'2017-09-03 02:20:41'),(4,'Dr. Prakash Biswas','Chemical ',1,'2017-09-03 02:20:41'),(5,'Dr. Taraknath Das','Chemical ',1,'2017-09-03 02:20:41'),(6,'Dr. Sugata Gangopadyay','Computer Science',0,'2017-09-03 02:20:41'),(7,'Dr. Manoj Mishra','Computer Science',0,'2017-09-03 02:20:41'),(8,'Dr. Sudip Roy','Computer Science',0,'2017-09-03 02:20:41'),(9,'Dr. Balasubramanium','Computer Science',1,'2017-09-03 02:20:41'),(10,'Dr. Pramod Agarwal','Computer Science',1,'2017-09-03 02:20:41'),(11,'Dr. R.S Agarwal','Computer Science',0,'2017-09-03 02:20:41'),(12,'Dr. Avik Anand','Electrical',1,'2017-09-03 02:20:41'),(13,'Dr. C.P Gupta','Electrical',0,'2017-09-03 02:20:41'),(14,'Dr. Indra Gupta','Electrical',1,'2017-09-03 02:20:41'),(15,'Dr. P.N Agarwal','Mathematics',0,'2017-09-03 02:20:41'),(16,'Dr. Kusum Deep','Mathematics',1,'2017-09-03 02:20:41'),(17,'Dr. S.K Gupta','Mathematics',1,'2017-09-03 02:20:41'),(18,'Dr. Madhu Jain','Mathematics',0,'2017-09-03 02:20:41');
/*!40000 ALTER TABLE `prash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prasha`
--

DROP TABLE IF EXISTS `prasha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prasha` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `department` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prasha`
--

LOCK TABLES `prasha` WRITE;
/*!40000 ALTER TABLE `prasha` DISABLE KEYS */;
INSERT INTO `prasha` VALUES (2,NULL,NULL,0),(2,NULL,NULL,0),(2,NULL,NULL,0),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(22,NULL,NULL,1),(245,NULL,NULL,1),(245,NULL,NULL,1),(245,NULL,NULL,1),(245,NULL,NULL,1);
/*!40000 ALTER TABLE `prasha` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `prashant`
--

DROP TABLE IF EXISTS `prashant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prashant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prashant`
--

LOCK TABLES `prashant` WRITE;
/*!40000 ALTER TABLE `prashant` DISABLE KEYS */;
INSERT INTO `prashant` VALUES (1,'prashant','pra@gmail.com',NULL),(2,'prashant','pra@gmail.com',NULL),(3,'prashant','pra@gmail.cm',NULL),(4,'Doe','john@example.com',NULL),(5,'Doe','john@example.com',NULL),(6,'Doe','john@example.com',NULL),(7,'','',NULL),(8,'hegh','jsddbsf',NULL),(9,'hello','sghdh',NULL),(10,'hellox','sghdh',NULL),(11,'','',NULL),(12,'hello','vhhh',NULL),(13,'hello','vhhh',NULL),(14,'hello','vhhh',NULL),(15,'','',NULL),(16,'','',NULL),(17,'','',NULL),(18,'saf','f',NULL),(19,'saf','f',NULL),(20,'fghj','fghjkl',NULL),(21,'hello','sdj@.com','qwerty'),(22,'prashant','pra@gmail.com','hello'),(23,'prashant','pra@gmail.com',NULL),(24,'prashant','pra@gmail.com','asdf'),(25,'8387867414','','8387867414'),(26,'Prashant','prashnatverma1223@gmail.com','hello'),(27,'hjdsa','d@k.c','8387867414'),(28,'qwerty','qwert@g.c','qwerty'),(29,'hdsa','as@ds.s','8387867414'),(30,'','8387867414','8387867414'),(31,'prashant verma','prashantdocconsult@gmail.com','prahannt'),(32,'prashant','n@gm.c','nishant'),(33,'','',''),(34,'Pratham','prathamgupta567@gmail.com','112233445566');
/*!40000 ALTER TABLE `prashant` ENABLE KEYS */;
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
