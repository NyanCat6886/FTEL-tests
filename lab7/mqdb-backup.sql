-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: misquedadas
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asiste`
--

DROP TABLE IF EXISTS `asiste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiste` (
  `nombre` varchar(30) NOT NULL,
  `que` varchar(30) NOT NULL,
  PRIMARY KEY (`nombre`,`que`),
  KEY `que` (`que`),
  CONSTRAINT `asiste_ibfk_1` FOREIGN KEY (`nombre`) REFERENCES `usuario` (`nombre`),
  CONSTRAINT `asiste_ibfk_2` FOREIGN KEY (`que`) REFERENCES `quedada` (`que`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiste`
--

LOCK TABLES `asiste` WRITE;
/*!40000 ALTER TABLE `asiste` DISABLE KEYS */;
INSERT INTO `asiste` VALUES ('ana','cena'),('blas95','cena'),('ana','cumple de carmen'),('carmen','cumple de carmen'),('carmen','reunion de trabajo');
/*!40000 ALTER TABLE `asiste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quedada`
--

DROP TABLE IF EXISTS `quedada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quedada` (
  `que` varchar(30) NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`que`),
  KEY `direccion` (`direccion`),
  CONSTRAINT `quedada_ibfk_1` FOREIGN KEY (`direccion`) REFERENCES `sitio` (`direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quedada`
--

LOCK TABLES `quedada` WRITE;
/*!40000 ALTER TABLE `quedada` DISABLE KEYS */;
INSERT INTO `quedada` VALUES ('cena','2024-06-10','20:30:00','bar de paco'),('cumple de carmen','2024-03-17','12:00:00','castellana 100'),('reunion de trabajo','2024-07-01','09:00:00','metro moncloa');
/*!40000 ALTER TABLE `quedada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitio`
--

DROP TABLE IF EXISTS `sitio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitio` (
  `direccion` varchar(30) NOT NULL,
  `coordenadas` varchar(30) NOT NULL,
  PRIMARY KEY (`direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitio`
--

LOCK TABLES `sitio` WRITE;
/*!40000 ALTER TABLE `sitio` DISABLE KEYS */;
INSERT INTO `sitio` VALUES ('bar de paco','40.452600, -3.690500'),('castellana 100','40.435407, -3.719202'),('metro moncloa','40.429700, -3.712200');
/*!40000 ALTER TABLE `sitio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nombre` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `edad` int DEFAULT NULL,
  `imagen` varchar(30) NOT NULL DEFAULT 'usuario.jpg',
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('ana','clavesegura',20,'fotochachi.jpg'),('blas95','blaselmaquina',19,'blas95.jpg'),('carmen','lakarmen',21,'anime.jpg');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 21:28:06
