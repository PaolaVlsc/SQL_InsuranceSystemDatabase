CREATE DATABASE  IF NOT EXISTS `general_insurance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `general_insurance`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: general_insurance
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `contract_code` int NOT NULL,
  `cost` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `AFM` int NOT NULL,
  `insurance_code` int NOT NULL,
  PRIMARY KEY (`contract_code`),
  KEY `AFM` (`AFM`),
  KEY `insurance_code` (`insurance_code`),
  CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`AFM`) REFERENCES `customer` (`AFM`),
  CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`insurance_code`) REFERENCES `insurance` (`insurance_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (512,11000,'2000-01-01','2022-01-01',1023452569,10),(513,1800,'2006-01-01','2009-01-01',1445525690,20),(514,4000,'2004-01-01','2006-01-01',1785592569,30),(515,900,'2004-01-01','2010-01-01',1785592569,10),(516,1000,'2005-01-01','2010-01-01',1884560847,10),(517,2500,'2005-03-05','2014-03-05',1884560847,20),(518,1800,'2008-03-06','2020-03-06',1884560847,30),(519,2000,'2011-06-04','2017-06-04',1884560847,40),(520,1200,'2011-06-04','2015-06-04',1542147114,40),(521,2000,'2011-11-09','2014-11-09',1445547451,10),(522,900,'2011-07-05','2015-07-05',1445477457,30),(523,1500,'2012-03-08','2015-03-08',1024782463,10),(524,1800,'2012-08-09','2019-08-09',1024782463,20),(525,900,'2013-09-05','2019-09-05',1841204754,30),(526,900,'2013-09-05','2018-09-05',1784585254,30),(527,900,'2015-11-10','2022-11-10',1745242426,30),(528,1200,'2016-12-10','2019-12-10',1415541574,40),(529,400,'2017-04-30','2023-04-30',1124834578,40),(530,1200,'2017-06-02','2020-06-02',1486542484,40),(531,1500,'2017-06-03','2025-06-03',1946923008,10),(532,4800,'2017-06-04','2026-06-04',1256452238,20),(533,4000,'2018-09-05','2026-09-05',1592227645,10),(534,4800,'2018-09-05','2026-09-05',1592227645,20),(535,1800,'2018-09-05','2024-09-05',1592227645,30),(536,1600,'2018-09-05','2026-09-05',1592227645,40);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coverage`
--

DROP TABLE IF EXISTS `coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coverage` (
  `coverage_code` int NOT NULL AUTO_INCREMENT,
  `coverage_name` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`coverage_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coverage`
--

LOCK TABLES `coverage` WRITE;
/*!40000 ALTER TABLE `coverage` DISABLE KEYS */;
INSERT INTO `coverage` VALUES (1,'medicine'),(2,'maternity'),(3,'funeral'),(4,'accident'),(5,'pharmacy'),(6,'repair'),(7,'transplant'),(8,'vacation cover for terminal people'),(9,'property');
/*!40000 ALTER TABLE `coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cust_distinct_names`
--

DROP TABLE IF EXISTS `cust_distinct_names`;
/*!50001 DROP VIEW IF EXISTS `cust_distinct_names`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cust_distinct_names` AS SELECT 
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `AFM` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `DOY` varchar(4) DEFAULT NULL,
  `phone` int NOT NULL,
  PRIMARY KEY (`AFM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (178552826,'Christopher','Velasco','Athens','A',2114055293),(178663326,'John','Velasco','Athens','C',2115055293),(1023452569,'Stefan','Hunnam','California','A',2103625956),(1024782463,'Shamkant','Navathe','Michigan','D',210365956),(1124834578,'Periklis','Megalos','Volos','A',2115858645),(1256452238,'Alexandra','Denman','Patras','A',2100585464),(1415541574,'Tatiana','Raptis','Thessaloniki','Z',2105448542),(1445477457,'Ramez','Elmasri','Dublin','C',2108544615),(1445525690,'Henry','Cavill','Chicago','B',2104135956),(1445547451,'Margarita','Koumpouri','Athens','B',2115475668),(1486542484,'Liliana','Beckham','Chicago','C',2138524656),(1542147114,'Paola','Velasco','Athens','A',2114522704),(1592227645,'Thea','Wade','Athens','B',2118548646),(1745242426,'Andreas','Dimitrios','Volos','I',2108564524),(1784585254,'Kostas','Pappas','Lamia','B',2135874572),(1785527877,'James','Smith','Thessaloniki','D',2103765556),(1785592569,'Orlando','Bloom','Athens','C',2103681956),(1841204754,'Maria','Papadopoulou','Patras','A',2117941554),(1884560847,'Jason','Steven','Kavala','E',2108741262),(1946923008,'Henderson','Gibb','California','C',2126799446);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customercontract_view`
--

DROP TABLE IF EXISTS `customercontract_view`;
/*!50001 DROP VIEW IF EXISTS `customercontract_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customercontract_view` AS SELECT 
 1 AS `AFM`,
 1 AS `name`,
 1 AS `surname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!50001 DROP VIEW IF EXISTS `customerinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerinfo` AS SELECT 
 1 AS `name`,
 1 AS `surname`,
 1 AS `address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customers_view3`
--

DROP TABLE IF EXISTS `customers_view3`;
/*!50001 DROP VIEW IF EXISTS `customers_view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customers_view3` AS SELECT 
 1 AS `AFM`,
 1 AS `name`,
 1 AS `surname`,
 1 AS `address`,
 1 AS `DOY`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `insurance_code` int NOT NULL,
  `insurance_name` varchar(60) DEFAULT NULL,
  `annual_cost` int DEFAULT NULL,
  `min_duration` int NOT NULL,
  PRIMARY KEY (`insurance_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (10,'Health',500,1),(20,'Critical',600,1),(30,'Home',300,3),(40,'Car',200,2);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_coverages`
--

DROP TABLE IF EXISTS `insurance_coverages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_coverages` (
  `insurance_code` int NOT NULL,
  `coverage_code` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`insurance_code`,`coverage_code`),
  KEY `coverage_code` (`coverage_code`),
  CONSTRAINT `insurance_coverages_ibfk_1` FOREIGN KEY (`insurance_code`) REFERENCES `insurance` (`insurance_code`),
  CONSTRAINT `insurance_coverages_ibfk_2` FOREIGN KEY (`coverage_code`) REFERENCES `coverage` (`coverage_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_coverages`
--

LOCK TABLES `insurance_coverages` WRITE;
/*!40000 ALTER TABLE `insurance_coverages` DISABLE KEYS */;
INSERT INTO `insurance_coverages` VALUES (10,1),(20,1),(10,2),(20,3),(10,4),(40,4),(30,6),(40,6),(30,9);
/*!40000 ALTER TABLE `insurance_coverages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_customer`
--

DROP TABLE IF EXISTS `insurance_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_customer` (
  `insurance_code` int NOT NULL,
  `AFM` int NOT NULL,
  PRIMARY KEY (`insurance_code`,`AFM`),
  KEY `AFM` (`AFM`),
  CONSTRAINT `insurance_customer_ibfk_1` FOREIGN KEY (`insurance_code`) REFERENCES `insurance` (`insurance_code`),
  CONSTRAINT `insurance_customer_ibfk_2` FOREIGN KEY (`AFM`) REFERENCES `customer` (`AFM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_customer`
--

LOCK TABLES `insurance_customer` WRITE;
/*!40000 ALTER TABLE `insurance_customer` DISABLE KEYS */;
INSERT INTO `insurance_customer` VALUES (10,1023452569),(20,1445525690),(40,1486542484),(40,1592227645),(30,1784585254),(10,1785592569),(10,1884560847),(20,1884560847),(30,1884560847);
/*!40000 ALTER TABLE `insurance_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cust_distinct_names`
--

/*!50001 DROP VIEW IF EXISTS `cust_distinct_names`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cust_distinct_names` (`name`) AS select distinct `customer`.`name` AS `name` from `customer` order by `customer`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customercontract_view`
--

/*!50001 DROP VIEW IF EXISTS `customercontract_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customercontract_view` AS select `customer`.`AFM` AS `AFM`,`customer`.`name` AS `name`,`customer`.`surname` AS `surname` from (`customer` join `contract` on((`customer`.`AFM` = `contract`.`AFM`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerinfo`
--

/*!50001 DROP VIEW IF EXISTS `customerinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerinfo` AS select `customer`.`name` AS `name`,`customer`.`surname` AS `surname`,`customer`.`address` AS `address` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customers_view3`
--

/*!50001 DROP VIEW IF EXISTS `customers_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customers_view3` (`AFM`,`name`,`surname`,`address`,`DOY`,`phone`) AS select `customer`.`AFM` AS `AFM`,`customer`.`name` AS `name`,`customer`.`surname` AS `surname`,`customer`.`address` AS `address`,`customer`.`DOY` AS `DOY`,`customer`.`phone` AS `phone` from `customer` where (`customer`.`DOY` in ('A','C')) */
/*!50002 WITH CASCADED CHECK OPTION */;
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

-- Dump completed on 2020-12-06 14:26:48
