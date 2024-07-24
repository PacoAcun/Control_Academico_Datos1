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
-- Table structure for table `Curso_Prerequisito`
--

DROP TABLE IF EXISTS `Curso_Prerequisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Curso_Prerequisito` (
  `Curso_Codigo` varchar(255) NOT NULL,
  `Curso_Prerequisito` varchar(255) NOT NULL,
  PRIMARY KEY (`Curso_Codigo`,`Curso_Prerequisito`),
  KEY `Curso_Prerequisito` (`Curso_Prerequisito`),
  CONSTRAINT `Curso_Prerequisito_ibfk_1` FOREIGN KEY (`Curso_Codigo`) REFERENCES `Curso` (`codigo`),
  CONSTRAINT `Curso_Prerequisito_ibfk_2` FOREIGN KEY (`Curso_Prerequisito`) REFERENCES `Curso` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curso_Prerequisito`
--

LOCK TABLES `Curso_Prerequisito` WRITE;
/*!40000 ALTER TABLE `Curso_Prerequisito` DISABLE KEYS */;
INSERT INTO `Curso_Prerequisito` VALUES ('QS008','CS001'),('SS006','CS001'),('SS007','CS001'),('SP001','CS005'),('QS001','CS007'),('QS007','CS007'),('QS002','CS008'),('QS004','CS008'),('SS004','CYV01'),('SS005','EC001'),('CS004','FI001'),('SS001','FI001'),('TS001','FI001'),('SS003','MA002'),('SS008','MA002'),('SX005','QS002'),('SX003','QS004'),('SP004','QS005'),('SP006','QS005'),('SX007','QS005'),('SX008','QS005'),('SP007','QS006'),('SX004','QS006'),('OS005','SP004'),('TS008','SS002'),('CS005','SS003'),('CS007','SS003'),('CSV01','SS003'),('TS002','SS003'),('TS003','SS003'),('TS005','SS003'),('QS009','SS005'),('SP002','SS005'),('SX006','SS005'),('TS004','SS005'),('TS005','SS005'),('TS006','SS007'),('SP003','SX003'),('CS006','TS002'),('OS006','TS002'),('QS008','TS002'),('OS001','TS004'),('SX001','TS004'),('CS008','TS005'),('QS003','TS005'),('SX002','TS005'),('CS009','TS006'),('QS005','TS006'),('QS006','TS006'),('CS010','TS007'),('CS011','TS007'),('CS005','TS008');
/*!40000 ALTER TABLE `Curso_Prerequisito` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12  9:56:24
