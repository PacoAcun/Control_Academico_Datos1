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
-- Table structure for table `Estudiante`
--

DROP TABLE IF EXISTS `Estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estudiante` (
  `carne` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono_personal` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `numero_cuenta_corriente` varchar(255) NOT NULL,
  PRIMARY KEY (`carne`),
  UNIQUE KEY `carne` (`carne`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estudiante`
--

LOCK TABLES `Estudiante` WRITE;
/*!40000 ALTER TABLE `Estudiante` DISABLE KEYS */;
INSERT INTO `Estudiante` VALUES ('20200424','Rodrigo','Reyes','M','2000-08-20','Calle Principal 123','La montaÃ±a, zona 16','rreyes@ufm.edu','432-870-325'),('20220289','Isaac','Cyrman Casafont','M','2002-11-12','Carretera al Salvador Km 17.5','12345678','isaaccyrman@ufm.edu','001-203-436'),('20220565','Franscisco Javier','AcuÃ±a Barrera','M','2004-02-11','San Cristobal, zona 8 de Mixco','12345678','franciscoab@ufm.edu','243-934-301'),('20220668','Luis Gennaro','Morales Villela','M','2003-05-15','20 avenida, 3 calle, zona 10','12345678','lmorales@ufm.edu','982-502-324'),('20221890','Sofia','VelÃ¡squez RamÃ­rez','F','2001-09-15','Colonia Las Flores, zona 1','12345689','svelasquez@ufm.edu','678-123-456'),('20221901','Mateo','FernÃ¡ndez PÃ©rez','M','2002-03-19','Boulevard Santa Elena, zona 11','12345690','mfernandez@ufm.edu','789-321-123'),('20222013','Daniela','Morales Alvarado','F','2000-12-04','Residenciales Los Pinos, zona 14','12345691','dmorales@ufm.edu','321-456-789'),('20222125','SebastiÃ¡n','LÃ³pez HernÃ¡ndez','M','2003-06-22','Ciudad Nueva, zona 2','12345692','slopez@ufm.edu','456-789-654'),('20222237','Camila','Ruiz GarcÃ­a','F','2004-05-11','Colonia Ciudad Vieja, zona 15','12345693','cruiz@ufm.edu','987-654-123'),('20222349','Diego','JimÃ©nez Torres','M','2002-07-09','San Rafael, zona 4','12345694','djimenez@ufm.edu','789-123-789'),('20222461','Valeria','MartÃ­nez LÃ³pez','F','2001-02-28','Avenida Centro AmÃ©rica, zona 10','12345695','vmartinez@ufm.edu','654-789-987'),('20222573','Lucas','RamÃ­rez Cruz','M','2000-10-05','Calle del Comercio, zona 8','12345696','lramirez@ufm.edu','987-123-321'),('20222685','Elena','Castillo Mendoza','F','2003-08-13','UrbanizaciÃ³n Los Olivos, zona 9','12345697','ecastillo@ufm.edu','123-654-789'),('20222797','Nicolas','Flores Santos','M','2002-04-29','Avenida Las Palmas, zona 13','12345698','nflores@ufm.edu','321-789-456'),('20222810','Valentina','GonzÃ¡lez Rivera','F','2001-03-01','Colonia El ParaÃ­so, zona 16','12345699','vgonzalez@ufm.edu','654-321-123'),('20222922','Emilio','SÃ¡nchez Ortiz','M','2000-11-17','Condominio El Bosque, zona 12','12345700','esanchez@ufm.edu','789-654-321'),('20223034','Gabriela','RamÃ­rez NÃºÃ±ez','F','2003-01-25','Barrio Las CaÃ±as, zona 3','12345701','gramirez@ufm.edu','456-321-987'),('20223146','Cristian','Alvarez Paredes','M','2002-06-05','Villas de San Juan, zona 5','12345702','calvarez@ufm.edu','321-654-456'),('20223258','Paola','Vargas Rojas','F','2000-10-10','Colonia El Progreso, zona 4','12345703','pvargas@ufm.edu','789-123-654'),('20223370','Mauricio','Mendoza JimÃ©nez','M','2001-12-30','Boulevard Las Brisas, zona 7','12345704','mmendoza@ufm.edu','987-456-321'),('20223482','Isabella','GarcÃ­a MÃ©ndez','F','2003-09-22','Residenciales La Colina, zona 18','12345705','igarcia@ufm.edu','654-987-123'),('20223594','Felipe','PÃ©rez DÃ­az','M','2004-07-02','UrbanizaciÃ³n Santa Ana, zona 6','12345706','fperez@ufm.edu','456-123-987'),('20223706','Victoria','LÃ³pez MÃ¡rquez','F','2002-05-18','Ciudad San Antonio, zona 9','12345707','vlopez@ufm.edu','321-789-654'),('20223818','AndrÃ©s','Ortega DomÃ­nguez','M','2000-08-14','Colonia Vista Hermosa, zona 17','12345708','aortega@ufm.edu','789-987-456');
/*!40000 ALTER TABLE `Estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12  9:56:25
