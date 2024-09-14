-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: insti
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cargas_academicas`
--

DROP TABLE IF EXISTS `cargas_academicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargas_academicas` (
  `id_cargas_academicas` int NOT NULL AUTO_INCREMENT,
  `personas_institutos_id` int NOT NULL,
  `semestres_id` int NOT NULL,
  `materias_id` int NOT NULL,
  PRIMARY KEY (`id_cargas_academicas`),
  KEY `personas_institutos_id` (`personas_institutos_id`),
  KEY `semestres_id` (`semestres_id`),
  KEY `materias_id` (`materias_id`),
  CONSTRAINT `cargas_academicas_ibfk_1` FOREIGN KEY (`personas_institutos_id`) REFERENCES `personas_institutos` (`id_persona_instituto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cargas_academicas_ibfk_2` FOREIGN KEY (`semestres_id`) REFERENCES `semestres` (`id_semestre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cargas_academicas_ibfk_3` FOREIGN KEY (`materias_id`) REFERENCES `materias` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargas_academicas`
--

LOCK TABLES `cargas_academicas` WRITE;
/*!40000 ALTER TABLE `cargas_academicas` DISABLE KEYS */;
INSERT INTO `cargas_academicas` VALUES (1,1,1,1),(2,2,1,2),(3,3,2,3),(4,4,2,4),(5,5,3,5),(6,6,4,6),(7,7,4,6),(8,8,3,5),(9,9,2,4),(10,10,2,3),(11,11,1,2),(12,12,5,1),(13,13,6,4),(14,14,7,2),(15,15,8,6),(16,1,1,7),(17,1,5,1),(18,2,6,2),(19,3,7,3),(20,4,8,4),(21,5,9,5),(22,6,10,6),(23,7,11,7),(24,8,12,8),(25,9,5,9),(26,10,6,10),(27,11,7,1),(28,12,8,2),(29,13,9,3),(30,14,10,4),(31,15,11,5),(32,1,12,6),(33,2,5,7),(34,3,6,8),(35,4,7,9),(36,5,8,10),(37,6,9,1),(38,7,10,2),(39,8,11,3),(40,9,12,4),(42,24,1,1);
/*!40000 ALTER TABLE `cargas_academicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutos`
--

DROP TABLE IF EXISTS `institutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutos` (
  `id_instituto` int NOT NULL AUTO_INCREMENT,
  `nombre_insti` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutos`
--

LOCK TABLES `institutos` WRITE;
/*!40000 ALTER TABLE `institutos` DISABLE KEYS */;
INSERT INTO `institutos` VALUES (1,'ITP'),(2,'SENA'),(3,'UNIMINUTO'),(4,'Universidad Nacional'),(5,'Politécnico Grancolombiano'),(6,'Universidad de los Andes'),(7,'Universidad de La Sabana'),(8,'Universidad Javeriana');
/*!40000 ALTER TABLE `institutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(80) NOT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matemáticas'),(2,'Física'),(3,'Química'),(4,'Biología'),(5,'Historia'),(6,'Geografía'),(7,'Lengua Española'),(8,'Programación'),(9,'Sociología'),(10,'Economía'),(11,'Estadística'),(12,'Literatura'),(13,'Arte'),(14,'Filosofía'),(15,'Psicología'),(16,'Geología'),(17,'Derecho');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas_institutos`
--

DROP TABLE IF EXISTS `personas_institutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas_institutos` (
  `id_persona_instituto` int NOT NULL AUTO_INCREMENT,
  `nombre_persona` varchar(100) NOT NULL,
  PRIMARY KEY (`id_persona_instituto`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas_institutos`
--

LOCK TABLES `personas_institutos` WRITE;
/*!40000 ALTER TABLE `personas_institutos` DISABLE KEYS */;
INSERT INTO `personas_institutos` VALUES (1,'Juan Pérez'),(2,'María García'),(3,'Carlos López'),(4,'Ana Rodríguez'),(5,'Luis Martínez'),(6,'Sofía Gutiérrez'),(7,'Pedro Ramírez'),(8,'Laura Fernández'),(9,'Fernando Gómez'),(10,'Isabel Martínez'),(11,'José Pérez'),(12,'Carmen Ruiz'),(13,'Miguel Ángel Hernández'),(14,'Beatriz Morales'),(15,'Roberto Fernández'),(16,'Paola Ramírez'),(17,'Andrés Contreras'),(18,'Natalia López'),(19,'Jorge Salazar'),(20,'Mónica Castillo'),(21,'Alejandro Morales'),(22,'Sandra Vargas'),(23,'David Ortega'),(24,'Johan Burbano');
/*!40000 ALTER TABLE `personas_institutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestres`
--

DROP TABLE IF EXISTS `semestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestres` (
  `id_semestre` int NOT NULL AUTO_INCREMENT,
  `nombre_semestre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestres`
--

LOCK TABLES `semestres` WRITE;
/*!40000 ALTER TABLE `semestres` DISABLE KEYS */;
INSERT INTO `semestres` VALUES (1,'Semestre 1'),(2,'Semestre 2'),(3,'Semestre 3'),(4,'Semestre 4'),(5,'Semestre 5'),(6,'Semestre 6'),(7,'Semestre 7'),(8,'Semestre 8'),(9,'Semestre 9'),(10,'Semestre 10'),(11,'Semestre 11'),(12,'Semestre 12');
/*!40000 ALTER TABLE `semestres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14  0:13:14
