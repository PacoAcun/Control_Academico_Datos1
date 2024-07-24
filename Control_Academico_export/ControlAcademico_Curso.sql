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
-- Table structure for table `Curso`
--

DROP TABLE IF EXISTS `Curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Curso` (
  `codigo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `creditos_teoricos` float NOT NULL,
  `creditos_practicos` float NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curso`
--

LOCK TABLES `Curso` WRITE;
/*!40000 ALTER TABLE `Curso` DISABLE KEYS */;
INSERT INTO `Curso` VALUES ('CS001','ProgramaciÃ³n I','IntroducciÃ³n a la programaciÃ³n bÃ¡sica para principiantes.',3,1.5),('CS002','ProgramaciÃ³n Digital','Fundamentos de programaciÃ³n digital para estudiantes.',3,1.5),('CS003','User Experience - UX','DiseÃ±o de experiencia de usuario y su impacto.',3,1.5),('CS004','Global Management and Entrepreneurship II','GestiÃ³n global y emprendimiento avanzado.',3,1.5),('CS005','AdministraciÃ³n Financiera I','Fundamentos de la administraciÃ³n financiera.',3,1.5),('CS006','Statistical Thinking II','Pensamiento estadÃ­stico avanzado.',3,1.5),('CS007','Ãlgebra Lineal','Aplicaciones de Ã¡lgebra lineal en la ingenierÃ­a.',3,1.5),('CS008','TeorÃ­as Monetarias, Banca y Ciclos EconÃ³micos','Estudio de las teorÃ­as monetarias y los ciclos econÃ³micos.',3,1.5),('CS009','Algoritmia y Complejidad','AnÃ¡lisis de algoritmos y su complejidad.',3,1.5),('CS010','Automation Testing','Pruebas de automatizaciÃ³n en el desarrollo de software.',1.5,0.75),('CS011','DevOps','MetodologÃ­as de DevOps para desarrollo y operaciones.',1.5,0.75),('CSV01','Scientific Computing','ComputaciÃ³n cientÃ­fica para anÃ¡lisis de datos.',3,1.5),('CYV01','Razonamiento CrÃ­tico','Desarrollo del pensamiento crÃ­tico para el anÃ¡lisis.',3,1.5),('CYV02','AsesorÃ­a LingÃ¼Ã­stica','Habilidades de asesoramiento en lenguas.',1,0.5),('EC001','EconomÃ­a I','Principios bÃ¡sicos de economÃ­a para nuevos estudiantes.',3,1.5),('FI001','Global Management and Entrepreneurship I','IntroducciÃ³n a la gestiÃ³n y el espÃ­ritu empresarial global.',3,1.5),('HU001','Liderazgo Empresarial','Desarrollo de habilidades de liderazgo en el Ã¡mbito empresarial.',3,1.5),('MA001','MatemÃ¡ticas 101','Conceptos esenciales de matemÃ¡ticas para estudiantes nuevos.',3,1.5),('MA002','IntroducciÃ³n a la MatemÃ¡tica','Fundamentos bÃ¡sicos de matemÃ¡ticas para principiantes.',3,1.5),('OR001','Conferencias','ParticipaciÃ³n en conferencias acadÃ©micas y profesionales.',1,1),('OS001','Ã‰tica Profesional','Principios Ã©ticos aplicados al entorno profesional.',3,1.5),('OS002','Cloud & Inhouse Infrastructure','Infraestructura en la nube y en local.',3,1.5),('OS003','Technologies and Freedom','AnÃ¡lisis de la tecnologÃ­a y su relaciÃ³n con la libertad.',3.5,1.75),('OS004','Taller Avanzado de Computer Science','Taller especializado en ciencias de la computaciÃ³n.',3,1.5),('OS005','Seguridad InformÃ¡tica & EncriptaciÃ³n','Estudio de la seguridad informÃ¡tica y tÃ©cnicas de cifrado.',3,1.5),('OS006','Lean Six Sigma','AplicaciÃ³n de la metodologÃ­a Lean Six Sigma.',3,1.5),('QS001','Ecuaciones Diferenciales','Ecuaciones diferenciales para modelado matemÃ¡tico.',3,1.5),('QS002','FilosofÃ­a de Hayek','Estudio de la filosofÃ­a de Friedrich Hayek.',3,1.5),('QS003','EconometrÃ­a I','Aplicaciones de econometrÃ­a en los estudios econÃ³micos.',3,1.5),('QS004','Seminario de EconomÃ­a I','Seminario especializado en economÃ­a avanzada.',0.75,0.375),('QS005','Arquitectura del Computador','Estudio de la arquitectura de computadoras modernas.',3,1.5),('QS006','Datos I','AnÃ¡lisis de datos para el desarrollo de sistemas.',3,1.5),('QS007','ProgramaciÃ³n Lineal','ProgramaciÃ³n lineal y sus aplicaciones.',3,1.5),('QS008','Data Science','IntroducciÃ³n a la ciencia de datos.',3,1.5),('QS009','Libertad en AcciÃ³n I','Estudio de la libertad en la acciÃ³n polÃ­tica.',1.5,0.75),('SP001','AdministraciÃ³n Financiera II','AdministraciÃ³n financiera avanzada para profesionales.',3,1.5),('SP002','Public Choice','Estudio de la teorÃ­a de elecciÃ³n pÃºblica.',1.5,0.75),('SP003','Seminario de EconomÃ­a III','Tercer seminario especializado en economÃ­a.',0.75,0.375),('SP004','IntroducciÃ³n a Redes','Fundamentos de redes informÃ¡ticas para principiantes.',3,1.5),('SP005','Business Intelligence','AnÃ¡lisis de inteligencia empresarial para la toma de decisiones.',3,1.5),('SP006','Sistemas Operativos','Estudio de los sistemas operativos y su arquitectura.',3,1.5),('SP007','Big Data','AnÃ¡lisis y gestiÃ³n de grandes volÃºmenes de datos.',3,1.5),('SS001','IntroducciÃ³n al Derecho','Principios legales fundamentales para estudiantes.',1.5,0.75),('SS002','Accounting Based Decision Making','Toma de decisiones basada en contabilidad.',3,1.5),('SS003','CÃ¡lculo Diferencial','CÃ¡lculo diferencial para ingenieros y cientÃ­ficos.',3,1.5),('SS004','IntroducciÃ³n a la FilosofÃ­a','Conceptos filosÃ³ficos bÃ¡sicos para principiantes.',3,1.5),('SS005','EconomÃ­a II','EconomÃ­a avanzada para estudiantes de nivel intermedio.',3,1.5),('SS006','ProgramaciÃ³n de Dispositivos ElectrÃ³nicos','ProgramaciÃ³n para dispositivos electrÃ³nicos modernos.',3,1.5),('SS007','ProgramaciÃ³n Orientada a Objetos','Fundamentos de programaciÃ³n orientada a objetos.',3,1.5),('SS008','MatemÃ¡tica Discreta Aplicada','Aplicaciones de matemÃ¡tica discreta en la informÃ¡tica.',3,1.5),('SX001','Pensamiento PolÃ­tico ContemporÃ¡neo','Estudio de las ideas polÃ­ticas contemporÃ¡neas.',3,1.5),('SX002','EconomÃ­a Austriaca I','IntroducciÃ³n a la economÃ­a austriaca.',3,1.5),('SX003','Seminario de EconomÃ­a II','AnÃ¡lisis avanzado de temas econÃ³micos.',0.75,0.375),('SX004','Datos II','Desarrollo avanzado de anÃ¡lisis de datos.',3,1.5),('SX005','FilosofÃ­a de Mises','AnÃ¡lisis de la filosofÃ­a de Ludwig von Mises.',3,1.5),('SX006','Libertad en AcciÃ³n II','AplicaciÃ³n prÃ¡ctica de la libertad en la polÃ­tica.',1.5,0.75),('SX007','Compiladores','Estudio y desarrollo de compiladores.',3,1.5),('SX008','IngenierÃ­a de Software','Desarrollo avanzado de software en ingenierÃ­a.',3,1.5),('TS001','Marketing','IntroducciÃ³n al marketing y sus aplicaciones.',3,1.5),('TS002','Statistical Thinking I','Pensamiento estadÃ­stico bÃ¡sico para anÃ¡lisis de datos.',3,1.5),('TS003','CÃ¡lculo Integral','CÃ¡lculo integral avanzado para ingenieros.',3,1.5),('TS004','Ã‰tica de la Libertad','Conceptos Ã©ticos sobre la libertad y su importancia.',3,1.5),('TS005','MicroeconomÃ­a','Estudio de la microeconomÃ­a en el mercado global.',3,1.5),('TS006','Estructuras de Datos','DiseÃ±o y uso de estructuras de datos en programaciÃ³n.',3,1.5),('TS007','Innovation Management and Agile Production','GestiÃ³n de la innovaciÃ³n y producciÃ³n Ã¡gil.',3,1.5),('TS008','Cost Analysis','AnÃ¡lisis de costos para la toma de decisiones.',3,1.5);
/*!40000 ALTER TABLE `Curso` ENABLE KEYS */;
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
