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
-- Table structure for table `pers_info`
--

DROP TABLE IF EXISTS `pers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pers_info` (
  `id` int NOT NULL,
  `country` varchar(50) NOT NULL,
  `id_city` int NOT NULL,
  `post_code` int NOT NULL,
  `addres` varchar(100) NOT NULL,
  `work_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name_conf_4` (`id_city`),
  CONSTRAINT `pers_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `part_info_main` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pers_info`
--

LOCK TABLES `pers_info` WRITE;
/*!40000 ALTER TABLE `pers_info` DISABLE KEYS */;
INSERT INTO `pers_info` VALUES (1,'Россия',1,119991,'Ленинские горы, МГУ, ГЗ','+7-495-555-55-55','+7-495-123-45-67','ivan.ivanov@mgu.ru'),(2,'Россия',1,119034,'Ленинские горы, 1-ый км МКАД','+7-495-123-45-67','+7-495-777-77-77','petr.petrov@mgimo.ru'),(3,'Россия',2,119334,'ул. Губкина, 2/1','+7-495-888-88-88','+7-495-123-45-67','sidor.sidorov@biogen.ru'),(4,'Россия',3,199991,'Менделеевская, 5','+7-495-444-44-44','+7-495-123-45-67','elena.kuznecova@spbu.ru'),(5,'Россия',1,101000,'ул. Мясницкая, 20, стр. 2','+7-495-555-55-55','+7-495-123-45-67','fedor.fedorov@hse.ru'),(6,'Россия',3,198504,'Кронверкский проспект, 49','+7-812-123-45-67','+7-812-777-77-77','maria.grigoreva@itmo.ru'),(7,'Россия',1,117234,'Ленинские горы, МГУ, ГЗ','+7-495-999-99-99','+7-495-123-45-67','vasili.vasiliev@mgu.ru'),(8,'Россия',1,101000,'ул. Мясницкая, 20, стр. 1','+7-495-123-45-67','+7-495-777-77-77','anna.smirnova@hse.ru'),(9,'Россия',4,123182,'Академика Курчатова, 1','+7-495-123-45-67','+7-495-999-99-99','artem.glushkov@urfu.ru'),(10,'Россия',5,123098,'Ленинградский проспект, 23, стр. 1','+7-495-123-45-67','+7-495-777-77-77','aleksey.popov@dvfu.edu');
/*!40000 ALTER TABLE `pers_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 20:44:02
