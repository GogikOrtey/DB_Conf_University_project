-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_02
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `conf_part_detail`
--

DROP TABLE IF EXISTS `conf_part_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conf_part_detail` (
  `id` int NOT NULL,
  `firstInvitationDate` date NOT NULL,
  `applicationReceiptDate` date NOT NULL,
  `secondInvitationDate` date NOT NULL,
  `feeReceiptDate` date NOT NULL,
  `feeAmount` decimal(10,2) NOT NULL,
  `id_name_conf` int NOT NULL,
  PRIMARY KEY (`id`,`id_name_conf`),
  KEY `idx_name_conf_2` (`id_name_conf`),
  CONSTRAINT `conf_part_detail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `part_info_main` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_part_detail`
--

LOCK TABLES `conf_part_detail` WRITE;
/*!40000 ALTER TABLE `conf_part_detail` DISABLE KEYS */;
INSERT INTO `conf_part_detail` VALUES (1,'2021-05-20','2021-06-07','2021-06-25','2021-07-13',2500.00,1),(2,'2021-06-01','2021-06-18','2021-07-07','2021-07-28',0.00,1),(3,'2021-05-24','2021-06-15','2021-07-03','2021-07-21',2000.00,2),(4,'2021-06-08','2021-06-29','2021-07-16','2021-08-03',2200.00,1),(5,'2021-05-18','2021-06-10','2021-06-29','2021-07-19',0.00,3),(6,'2021-05-25','2021-06-21','2021-07-08','2021-07-29',2800.00,2),(7,'2021-05-20','2021-06-02','2021-06-22','2021-07-15',1900.00,1),(8,'2021-06-01','2021-06-25','2021-07-13','2021-08-04',2700.00,1),(9,'2021-06-07','2021-06-30','2021-07-17','2021-08-06',1900.00,2),(10,'2021-05-26','2021-06-14','2021-07-02','2021-07-21',2300.00,2);
/*!40000 ALTER TABLE `conf_part_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 20:44:03
