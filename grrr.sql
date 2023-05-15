-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: gr
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `gruppyi`
--

DROP TABLE IF EXISTS `gruppyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gruppyi` (
  `Nazvanie` varchar(50) NOT NULL,
  `Shifr` int NOT NULL AUTO_INCREMENT,
  `DataFormir` date NOT NULL,
  `KodPlana` int NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StatusDate` date DEFAULT NULL,
  PRIMARY KEY (`Shifr`),
  UNIQUE KEY `Nazvanie` (`Nazvanie`),
  KEY `FK_Gruppyi_Plan` (`KodPlana`),
  CONSTRAINT `FK_Gruppyi_Plan` FOREIGN KEY (`KodPlana`) REFERENCES `plan` (`KodPlana`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruppyi`
--

LOCK TABLES `gruppyi` WRITE;
/*!40000 ALTER TABLE `gruppyi` DISABLE KEYS */;
INSERT INTO `gruppyi` VALUES ('It-1',1,'2018-07-23',11,'created','2021-06-15'),('It-2',2,'2019-09-15',12,'created','2021-06-15'),('A-2',3,'2008-09-15',21,'finished','2021-06-15'),('A-3',4,'2008-09-15',21,'finished','2021-06-15');
/*!40000 ALTER TABLE `gruppyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `Kod` varchar(50) NOT NULL,
  `KodPlana` int NOT NULL AUTO_INCREMENT,
  `Data` date DEFAULT NULL,
  `Speciality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KodPlana`),
  UNIQUE KEY `Kod` (`Kod`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES ('245/3-�12',11,'2015-07-23','It'),('222/1-�02',12,'2019-09-15','It'),('211/3-�11',21,'2008-09-15','A'),('23h38d8',22,'2023-04-10',NULL);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentyi`
--

DROP TABLE IF EXISTS `studentyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentyi` (
  `ShifrGruppyi` int NOT NULL,
  `NomerZachetki` bigint NOT NULL AUTO_INCREMENT,
  `Familiya` char(30) NOT NULL,
  `Imya` char(30) NOT NULL,
  `Otchestvo` char(30) NOT NULL,
  `Gorod` char(30) NOT NULL,
  `Adres` char(80) NOT NULL,
  `Tel` char(30) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StatusDate` date DEFAULT NULL,
  PRIMARY KEY (`NomerZachetki`),
  KEY `FK_Studentyi_Gruppyi_` (`ShifrGruppyi`),
  CONSTRAINT `FK_Studentyi_Gruppyi_` FOREIGN KEY (`ShifrGruppyi`) REFERENCES `gruppyi` (`Shifr`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10437 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentyi`
--

LOCK TABLES `studentyi` WRITE;
/*!40000 ALTER TABLE `studentyi` DISABLE KEYS */;
INSERT INTO `studentyi` VALUES (1,10122,'Ivanov','Лина','Ivanich','Vitebsk','Moskow awe., 62, 2, 129','+375297451421','enrolled','2021-06-15'),(1,10123,'Dremin','Лина','Ivanich','Vitebsk','Moskow awe., 15, 19','+375297751421','enrolled','2021-06-15'),(3,10355,'Firsov','Лина','Ivanich','Vitebsk','Moskow awe., 73, 2, 9','+375297451471','graduated','2008-09-15'),(2,10356,'Sidorov','Лина','Ivanich','Minsk','Moskow awe., 12, 2, 19','+375297433421','enrolled','2021-06-15'),(3,10361,'Pavlov','Лина','Ivanich','Vitebsk','Pravdy st., 41, 19','+375297411421','graduated','2008-09-15'),(3,10362,'Shurov','Лина','Ivanich','Vitebsk','Pravdy st., 12, 1','+375297451199','send down','2007-05-15'),(1,10366,'Kunsmanaite','Evelina','Arvidasovna','Vitebsk','Ludnikova 17','+375333175235',NULL,NULL),(2,10424,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10425,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10426,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10427,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10428,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10429,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10430,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10431,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10432,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10433,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10434,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10435,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL),(2,10436,'Ku','Eveli','Arv','Vit','Lud 17','+375333175285',NULL,NULL);
/*!40000 ALTER TABLE `studentyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gr'
--

--
-- Dumping routines for database 'gr'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-15 16:25:55
