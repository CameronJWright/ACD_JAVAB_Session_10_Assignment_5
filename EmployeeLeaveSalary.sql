CREATE DATABASE  IF NOT EXISTS `emp_leave_salary_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `emp_leave_salary_management`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: emp_leave_salary_management
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `idemployee` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(45) DEFAULT NULL,
  `eType` varchar(45) DEFAULT NULL,
  `ePhone` varchar(45) DEFAULT NULL,
  `eEmail` varchar(45) DEFAULT NULL,
  `eSalaryBase` int(11) DEFAULT NULL,
  `idSalary` int(11) DEFAULT NULL,
  `idLeaves` int(11) DEFAULT NULL,
  PRIMARY KEY (`idemployee`),
  UNIQUE KEY `idemployee_UNIQUE` (`idemployee`),
  KEY `idSalary_idx` (`idSalary`),
  KEY `idLeave_idx` (`idLeaves`),
  CONSTRAINT `idLeaves` FOREIGN KEY (`idLeaves`) REFERENCES `leaves` (`idleaves`),
  CONSTRAINT `idSalary` FOREIGN KEY (`idSalary`) REFERENCES `salary` (`idsalary`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jim','1','123-456-7890','jim@jim.jim',1,1,2),(2,'Jack','2','234-567-8901','jack@jack.jack',2,1,2),(3,'Jill','1','345-678-9012','jill@jill.jill',2,2,1),(4,'Joe','1','456-789-0123','joe@joe.joe',1,1,1),(5,'Jeff','2','567-890-1234','jeff@jeff.jeff',2,2,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves` (
  `idleaves` int(11) NOT NULL AUTO_INCREMENT,
  `paid_leaves` varchar(45) DEFAULT NULL,
  `earned_leaves` varchar(45) DEFAULT NULL,
  `sick_leaves` varchar(45) DEFAULT NULL,
  `vacations` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idleaves`),
  UNIQUE KEY `leaves_id_UNIQUE` (`idleaves`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,'40','5','10','15'),(2,'40',NULL,NULL,'15');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `idsalary` int(11) NOT NULL AUTO_INCREMENT,
  `base` varchar(45) DEFAULT NULL,
  `pf` varchar(45) DEFAULT NULL,
  `da` varchar(45) DEFAULT NULL,
  `allowance` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsalary`),
  UNIQUE KEY `idsalary_UNIQUE` (`idsalary`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,'60000','.12','.6','.5'),(2,'50000','.12','.6','.5');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29  9:27:09
