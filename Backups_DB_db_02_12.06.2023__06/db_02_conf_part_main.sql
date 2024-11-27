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
-- Table structure for table `conf_part_main`
--

DROP TABLE IF EXISTS `conf_part_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conf_part_main` (
  `id` int NOT NULL,
  `partType` varchar(50) NOT NULL,
  `speechTopic` varchar(300) NOT NULL,
  `absReceived` tinyint(1) NOT NULL,
  `id_name_conf` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name_conf` (`id_name_conf`),
  CONSTRAINT `conf_part_main_ibfk_1` FOREIGN KEY (`id`) REFERENCES `part_info_main` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_part_main`
--

LOCK TABLES `conf_part_main` WRITE;
/*!40000 ALTER TABLE `conf_part_main` DISABLE KEYS */;
INSERT INTO `conf_part_main` VALUES (1,'Докладчик','Квантовая теория поля и ее применение в астрофизике',1,1),(2,'Участник','Анализ и интерпретация экспериментальных данных в области наноматериалов',1,1),(3,'Докладчик','Моделирование физико-химических процессов в жидкокристаллических системах',0,2),(4,'Участник','Математическое моделирование биологических систем',1,1),(5,'Докладчик','Новые алгоритмы машинного обучения для задач классификации изображений',1,3),(6,'Докладчик','Развитие современных методов дистанционного зондирования Земли',0,2),(7,'Докладчик','Фазовые переходы в квантовых системах',1,1),(8,'Участник','Оптимизация финансовых рисков',1,1),(9,'Участник','Создание компьютерной модели сетей для управления транспортным потоком',1,2),(10,'Докладчик','Анализ остаточных предложений в языке как повод для обновления учебно-методических материалов',1,2);
/*!40000 ALTER TABLE `conf_part_main` ENABLE KEYS */;
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
