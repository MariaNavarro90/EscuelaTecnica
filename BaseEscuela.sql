-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: baseescuela
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `dimalumnos`
--

DROP TABLE IF EXISTS `dimalumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimalumnos` (
  `ID_ALUMNO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `APELLIDO` varchar(255) NOT NULL,
  `DNI` int NOT NULL,
  `EDAD` int NOT NULL,
  `ID_COLEGIO` int NOT NULL,
  `ID_CURSO` int NOT NULL,
  PRIMARY KEY (`ID_ALUMNO`),
  KEY `ID_COLEGIO` (`ID_COLEGIO`),
  KEY `ID_CURSO` (`ID_CURSO`),
  CONSTRAINT `dimalumnos_ibfk_1` FOREIGN KEY (`ID_COLEGIO`) REFERENCES `dimcolegio` (`ID_COLEGIO`),
  CONSTRAINT `dimalumnos_ibfk_2` FOREIGN KEY (`ID_CURSO`) REFERENCES `dimcursos` (`ID_CURSO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimalumnos`
--

LOCK TABLES `dimalumnos` WRITE;
/*!40000 ALTER TABLE `dimalumnos` DISABLE KEYS */;
INSERT INTO `dimalumnos` VALUES (1,'Matilda','Acevedo',45324533,17,1,3),(2,'Ciro','Lichowski',44879234,18,1,2),(3,'Ezequiel','Morelli',43298209,18,1,1),(4,'Isabella','Rosetto',44892102,18,1,2),(5,'Tahiel','Navarro',45092349,17,1,3),(6,'Alana','Navarro',44895342,18,1,2),(7,'Ulises','Bordon',43908457,18,1,1),(8,'Joaquin','Acevedo',46256272,16,1,4),(9,'Zoe','Femia',46903231,16,1,4),(10,'Tiziano','Munoz',43456262,18,1,1);
/*!40000 ALTER TABLE `dimalumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimcolegio`
--

DROP TABLE IF EXISTS `dimcolegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimcolegio` (
  `ID_COLEGIO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_COLEGIO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimcolegio`
--

LOCK TABLES `dimcolegio` WRITE;
/*!40000 ALTER TABLE `dimcolegio` DISABLE KEYS */;
INSERT INTO `dimcolegio` VALUES (1,'EET Glew','Baigorria 3453'),(2,'Claret','San Blas 1645'),(3,'Adoratrices','Olaya 1353'),(4,'Redemptrix','Tres Arroyos 234'),(5,'Cabrini','Escalada 893'),(6,'Schontal','Avellaneda 6043'),(7,'Santa Brigida','Gaona 1234'),(8,'Vieytes','Cabildo 4500'),(9,'Raggio','Santa fe 2900'),(10,'Santa Ana','Raul Soldi 777');
/*!40000 ALTER TABLE `dimcolegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimcursos`
--

DROP TABLE IF EXISTS `dimcursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimcursos` (
  `ID_CURSO` int NOT NULL AUTO_INCREMENT,
  `ORIENTACION` varchar(255) NOT NULL,
  `ANIO` int NOT NULL,
  `ID_COLEGIO` int NOT NULL,
  PRIMARY KEY (`ID_CURSO`),
  KEY `ID_COLEGIO` (`ID_COLEGIO`),
  CONSTRAINT `dimcursos_ibfk_1` FOREIGN KEY (`ID_COLEGIO`) REFERENCES `dimcolegio` (`ID_COLEGIO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimcursos`
--

LOCK TABLES `dimcursos` WRITE;
/*!40000 ALTER TABLE `dimcursos` DISABLE KEYS */;
INSERT INTO `dimcursos` VALUES (1,'Tecnica',3,1),(2,'Comercial',3,1),(3,'Tecnica',4,1),(4,'Comercial',4,1);
/*!40000 ALTER TABLE `dimcursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimmaterias`
--

DROP TABLE IF EXISTS `dimmaterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimmaterias` (
  `ID_MATERIA` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `ID_CURSO` int NOT NULL,
  PRIMARY KEY (`ID_MATERIA`),
  KEY `ID_CURSO` (`ID_CURSO`),
  CONSTRAINT `dimmaterias_ibfk_1` FOREIGN KEY (`ID_CURSO`) REFERENCES `dimcursos` (`ID_CURSO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimmaterias`
--

LOCK TABLES `dimmaterias` WRITE;
/*!40000 ALTER TABLE `dimmaterias` DISABLE KEYS */;
INSERT INTO `dimmaterias` VALUES (1,'Informatica',1),(2,'Contabilidad',2),(3,'Fisica',3),(4,'Economia',4),(5,'Construccion',1),(6,'Derecho empresarial',2),(7,'Quimica',3),(8,'Comercio exterior',4);
/*!40000 ALTER TABLE `dimmaterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimprofesores`
--

DROP TABLE IF EXISTS `dimprofesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimprofesores` (
  `ID_PROFESOR` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `APELLIDO` varchar(255) NOT NULL,
  `DNI` int NOT NULL,
  `EDAD` int NOT NULL,
  `ID_COLEGIO` int NOT NULL,
  `ID_MATERIA` int NOT NULL,
  PRIMARY KEY (`ID_PROFESOR`),
  KEY `ID_COLEGIO` (`ID_COLEGIO`),
  KEY `ID_MATERIA` (`ID_MATERIA`),
  CONSTRAINT `dimprofesores_ibfk_1` FOREIGN KEY (`ID_COLEGIO`) REFERENCES `dimcolegio` (`ID_COLEGIO`),
  CONSTRAINT `dimprofesores_ibfk_2` FOREIGN KEY (`ID_MATERIA`) REFERENCES `dimmaterias` (`ID_MATERIA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimprofesores`
--

LOCK TABLES `dimprofesores` WRITE;
/*!40000 ALTER TABLE `dimprofesores` DISABLE KEYS */;
INSERT INTO `dimprofesores` VALUES (1,'VIRGINIA','PANELATTI',12754098,31,1,1),(2,'FABIAN','PONCE',11684849,37,1,2),(3,'FABIANA','MINUE',13887003,47,1,3),(4,'GABRIELA','GIALLONGO',11456743,43,1,4);
/*!40000 ALTER TABLE `dimprofesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 21:56:07
