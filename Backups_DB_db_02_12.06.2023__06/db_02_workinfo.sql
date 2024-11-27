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
-- Table structure for table `workinfo`
--

DROP TABLE IF EXISTS `workinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workinfo` (
  `id` int NOT NULL,
  `scien_degree` varchar(100) NOT NULL,
  `scien_title` varchar(100) NOT NULL,
  `scien_field` varchar(100) NOT NULL,
  `id_univer` int NOT NULL,
  `division` varchar(100) DEFAULT NULL,
  `post` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_univer` (`id_univer`),
  CONSTRAINT `workinfo_ibfk_1` FOREIGN KEY (`id`) REFERENCES `part_info_main` (`id`),
  CONSTRAINT `workinfo_ibfk_2` FOREIGN KEY (`id_univer`) REFERENCES `university` (`id_univer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workinfo`
--

LOCK TABLES `workinfo` WRITE;
/*!40000 ALTER TABLE `workinfo` DISABLE KEYS */;
INSERT INTO `workinfo` VALUES (1,'доктор наук','профессор','физика',1,'физический факультет','заведующий кафедрой'),(2,'кандидат наук','доцент','математика',2,'институт мировой экономики и мировой политики','доцент'),(3,'кандидат наук','старший научный сотрудник','биология',3,'','старший научный сотрудник'),(4,'доктор наук','профессор','химия',4,'химический факультет','заведующий кафедрой'),(5,'кандидат наук','доцент','информатика',5,'факультет компьютерных наук','доцент'),(6,'доктор наук','профессор','филология',6,'','профессор'),(7,'доктор наук','профессор','физика',1,'физический факультет','профессор'),(8,'кандидат наук','доцент','экономика',5,'факультет экономики','доцент'),(9,'кандидат наук','старший научный сотрудник','информатика',7,'','старший научный сотрудник'),(10,'кандидат наук','старший научный сотрудник','физика',8,'','старший научный сотрудник');
/*!40000 ALTER TABLE `workinfo` ENABLE KEYS */;
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
