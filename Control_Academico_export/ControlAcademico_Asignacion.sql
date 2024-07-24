-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ControlAcademico
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `Asignacion`
--

DROP TABLE IF EXISTS `Asignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asignacion` (
  `Carne_Estudiante` varchar(255) NOT NULL,
  `Horario_Codigo` varchar(255) NOT NULL,
  `Nota` decimal(5,2) NOT NULL,
  `Estado` varchar(255) NOT NULL,
  PRIMARY KEY (`Carne_Estudiante`,`Horario_Codigo`),
  KEY `Horario_Codigo` (`Horario_Codigo`),
  CONSTRAINT `Asignacion_ibfk_1` FOREIGN KEY (`Carne_Estudiante`) REFERENCES `Estudiante` (`carne`),
  CONSTRAINT `Asignacion_ibfk_2` FOREIGN KEY (`Horario_Codigo`) REFERENCES `Horario` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignacion`
--

LOCK TABLES `Asignacion` WRITE;
/*!40000 ALTER TABLE `Asignacion` DISABLE KEYS */;
INSERT INTO `Asignacion` VALUES ('20200424','CS202437',80.40,'Aprobado'),('20200424','CS202440',88.50,'Aprobado'),('20200424','CS202442',91.00,'Aprobado'),('20200424','CS202444',94.20,'Aprobado'),('20200424','CS202446',75.60,'Aprobado'),('20200424','CS202448',85.10,'Aprobado'),('20200424','CS202450',69.30,'Aprobado'),('20200424','CS202452',72.40,'Aprobado'),('20200424','CS202453',87.80,'Aprobado'),('20200424','CS202456',82.20,'Aprobado'),('20200424','CS202458',74.30,'Aprobado'),('20200424','CS202460',95.50,'Aprobado'),('20200424','CS202462',76.60,'Aprobado'),('20200424','CS202464',88.20,'Aprobado'),('20200424','CS202466',78.40,'Aprobado'),('20200424','CS202468',66.90,'Aprobado'),('20200424','CS202470',70.10,'Aprobado'),('20220289','CS202437',88.30,'Aprobado'),('20220289','CS202439',92.50,'Aprobado'),('20220289','CS202441',85.00,'Aprobado'),('20220289','CS202443',90.00,'Aprobado'),('20220289','CS202445',89.00,'Aprobado'),('20220289','CS202447',87.50,'Aprobado'),('20220289','CS202449',91.20,'Aprobado'),('20220289','CS202451',86.40,'Aprobado'),('20220289','CS202453',93.00,'Aprobado'),('20220289','CS202455',88.75,'Aprobado'),('20220289','CS202457',91.50,'Aprobado'),('20220289','CS202459',85.70,'Aprobado'),('20220289','CS202461',90.60,'Aprobado'),('20220289','CS202463',89.30,'Aprobado'),('20220289','CS202465',87.00,'Aprobado'),('20220289','CS202467',88.90,'Aprobado'),('20220289','CS202469',92.40,'Aprobado'),('20220565','CS202437',75.20,'Aprobado'),('20220565','CS202440',92.00,'Aprobado'),('20220565','CS202442',81.30,'Aprobado'),('20220565','CS202444',89.50,'Aprobado'),('20220565','CS202446',77.40,'Aprobado'),('20220565','CS202448',90.10,'Aprobado'),('20220565','CS202450',67.80,'Aprobado'),('20220565','CS202452',78.90,'Aprobado'),('20220565','CS202453',85.70,'Aprobado'),('20220565','CS202456',68.20,'Aprobado'),('20220565','CS202458',95.00,'Aprobado'),('20220565','CS202460',79.60,'Aprobado'),('20220565','CS202462',91.80,'Aprobado'),('20220565','CS202464',83.50,'Aprobado'),('20220565','CS202466',84.90,'Aprobado'),('20220565','CS202467',71.40,'Aprobado'),('20220565','CS202470',66.30,'Aprobado'),('20220668','CS202437',85.60,'Aprobado'),('20220668','CS202440',73.20,'Aprobado'),('20220668','CS202442',90.50,'Aprobado'),('20220668','CS202444',79.30,'Aprobado'),('20220668','CS202446',93.70,'Aprobado'),('20220668','CS202448',81.40,'Aprobado'),('20220668','CS202450',76.10,'Aprobado'),('20220668','CS202452',95.80,'Aprobado'),('20220668','CS202453',88.90,'Aprobado'),('20220668','CS202456',70.20,'Aprobado'),('20220668','CS202458',92.30,'Aprobado'),('20220668','CS202460',84.50,'Aprobado'),('20220668','CS202462',67.40,'Aprobado'),('20220668','CS202464',80.20,'Aprobado'),('20220668','CS202466',89.60,'Aprobado'),('20220668','CS202468',72.90,'Aprobado'),('20220668','CS202470',78.10,'Aprobado');
/*!40000 ALTER TABLE `Asignacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12  9:56:22
