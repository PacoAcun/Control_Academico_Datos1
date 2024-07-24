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
-- Table structure for table `Catedratico`
--

DROP TABLE IF EXISTS `Catedratico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Catedratico` (
  `codigo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono_personal` varchar(255) DEFAULT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `especializacion` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`),
  UNIQUE KEY `telefono_personal` (`telefono_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catedratico`
--

LOCK TABLES `Catedratico` WRITE;
/*!40000 ALTER TABLE `Catedratico` DISABLE KEYS */;
INSERT INTO `Catedratico` VALUES ('C2016001','Juan','PÃ©rez GonzÃ¡lez','Calle Principal #123','56781234','jperez1@ufm.edu','MatemÃ¡ticas'),('C2016002','MarÃ­a','GÃ³mez LÃ³pez','Avenida Central #456','56781235','mgomez1@ufm.edu','Ciencias Sociales'),('C2016003','Patricia','Castillo RamÃ­rez','Camino Real #147','56781252','pcastillo1@ufm.edu','MatemÃ¡ticas'),('C2016004','Oscar','Santos LÃ³pez','Calle Central #258','56781253','osantos1@ufm.edu','BiologÃ­a'),('C2016005','Rosario','Herrera Rojas','Plaza Principal #147','56781270','rherrera1@ufm.edu','Arte'),('C2016006','Federico','Mendoza GÃ³mez','CallejÃ³n del Norte #258','56781271','fmendoza1@ufm.edu','TecnologÃ­a'),('C2017001','Luis','RamÃ­rez Torres','Boulevard Sur #789','56781236','lramirez1@ufm.edu','FÃ­sica'),('C2017002','Ana','HernÃ¡ndez Ruiz','Carrera Norte #321','56781237','ahernandez1@ufm.edu','QuÃ­mica'),('C2017003','Gabriela','Rojas FernÃ¡ndez','Paseo del Bosque #369','56781254','grojas1@ufm.edu','TecnologÃ­a'),('C2017004','HÃ©ctor','Moreno Ruiz','Colonia Norte #741','56781255','hmoreno1@ufm.edu','ComputaciÃ³n'),('C2017005','Elvira','GonzÃ¡lez Santos','Esquina Real #369','56781272','egonzalez1@ufm.edu','FilosofÃ­a'),('C2017006','Rafael','LÃ³pez Vidal','Camino Sur #741','56781273','rlopez1@ufm.edu','EconomÃ­a'),('C2018001','Carlos','MartÃ­nez PÃ©rez','Camino Real #654','56781238','cmartinez1@ufm.edu','EconomÃ­a'),('C2018002','LucÃ­a','Morales GarcÃ­a','VÃ­a Oriente #987','56781239','lmorales1@ufm.edu','IngenierÃ­a'),('C2018003','Paola','NÃºÃ±ez Castro','Boulevard Sur #852','56781256','pnunez1@ufm.edu','Arte'),('C2018004','RamÃ³n','Ortiz Delgado','Avenida Central #963','56781257','rortiz1@ufm.edu','EconomÃ­a'),('C2019001','Pedro','SÃ¡nchez RodrÃ­guez','Paseo del Bosque #147','56781240','psanchez1@ufm.edu','Historia'),('C2019002','SofÃ­a','Vargas Ãlvarez','Colonia Las Flores #258','56781241','svargas1@ufm.edu','PsicologÃ­a'),('C2019003','Carla','Navarro Molina','VÃ­a Oriente #147','56781258','cnavarro1@ufm.edu','Historia'),('C2019004','Alberto','Fuentes PÃ©rez','Camino Norte #258','56781259','afuentes1@ufm.edu','Literatura'),('C2020001','Roberto','JimÃ©nez Moreno','Plaza Mayor #369','56781242','rjimenez1@ufm.edu','AdministraciÃ³n'),('C2020002','Isabel','Torres FernÃ¡ndez','Esquina Sur #741','56781243','itorres1@ufm.edu','Arquitectura'),('C2020003','Teresa','Luna MartÃ­nez','Calle Mayor #369','56781260','tluna1@ufm.edu','GeografÃ­a'),('C2020004','Emilio','Salazar RodrÃ­guez','Pasaje Real #741','56781261','esalazar1@ufm.edu','FÃ­sica'),('C2021001','Fernando','GarcÃ­a Castro','VÃ­a Central #852','56781244','fgarcia1@ufm.edu','Derecho'),('C2021002','Clara','LÃ³pez SÃ¡nchez','CallejÃ³n Norte #963','56781245','clopez1@ufm.edu','Medicina'),('C2021003','VerÃ³nica','Ortega Romero','Colonia Sur #852','56781262','vortega1@ufm.edu','QuÃ­mica'),('C2021004','Pablo','Vidal GarcÃ­a','Boulevard Este #963','56781263','pvidal1@ufm.edu','AdministraciÃ³n'),('C2022002','Elena','DÃ­az Ruiz','Parque Norte #258','56781247','ediaz1@ufm.edu','Lenguas'),('C2022003','InÃ©s','Ãlvarez Torres','Calle del Sol #147','56781264','ialvarez1@ufm.edu','PsicologÃ­a'),('C2022004','Daniel','Flores NÃºÃ±ez','Avenida del Norte #258','56781265','dflores1@ufm.edu','IngenierÃ­a'),('C2023001','Jorge','PÃ©rez Torres','Bulevar Oriente #369','56781248','jperez2@ufm.edu','ComunicaciÃ³n'),('C2023002','Silvia','MartÃ­n GÃ³mez','Carril Oeste #741','56781249','smartin1@ufm.edu','EducaciÃ³n'),('C2023003','Marina','PÃ©rez RÃ­os','Bulevar Real #369','56781266','mperez1@ufm.edu','Derecho'),('C2023004','Esteban','Torres Romero','Calle Sur #741','56781267','etorres1@ufm.edu','Medicina'),('C2024001','AndrÃ©s','GuzmÃ¡n Romero','Calle Oeste #852','56781250','aguzman1@ufm.edu','FilosofÃ­a'),('C2024002','MÃ³nica','Ramos GarcÃ­a','Avenida Sur #963','56781251','mramos1@ufm.edu','SociologÃ­a'),('C2024003','Gloria','Morales Ortega','Carril Central #852','56781268','gmorales1@ufm.edu','EducaciÃ³n'),('C2024004','TomÃ¡s','Reyes DÃ­az','Pasaje Este #963','56781269','treyes1@ufm.edu','ComputaciÃ³n');
/*!40000 ALTER TABLE `Catedratico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12  9:56:23
