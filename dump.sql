-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gestioncinema
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cinema` (
  `Id_Cinema` int(11) NOT NULL AUTO_INCREMENT,
  `City` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (1,'MELUN'),(2,'FONTAINBLEAU'),(3,'MONTEREAU'),(4,'CARRE SENART');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Id_Customer` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Id_Seance` int(11) NOT NULL,
  PRIMARY KEY (`Id_Customer`),
  KEY `Id_Seance` (`Id_Seance`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Id_Seance`) REFERENCES `seance` (`Id_Seance`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Anne','b47ea832576a75814e13351dcc97eaa985b9c6b7','montemail@gmail.com',1),(2,'Laure','46345986d06fe3a8f7e15837751aa9d489eff111','tonemail@gmail.com',2),(3,'AnneTomas','54ea713cdf77e3c1af74b0d1a72abf0f30cc7a53','sonemail@gmail.com',2),(4,'Anne','6aa421d0c4fdf2eaf14f92e976ce13afdc061975','leurtemail@gmail.com',2),(5,'Anne','f644a0bb8aa44e0661711f5df0f40411685e698b','lesleuremail@gmail.com',3),(6,'Anne','b0c073c973148bac5d3a2db3f5d39d0a1980724b','duronemail@gmail.com',3),(7,'Anne','b638b440b41e43573233a36fa062b5e93b5fc49a','testemail@gmail.com',3),(8,'Anne','c65513f52f015ca160cda010984c95b68a60f7c0','ideeemail@gmail.com',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `Id_movie` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_movie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'STAR WARS'),(2,'JURASSIC PARK'),(3,'SI J ETAIS RICHE'),(4,'LE ROI LION'),(5,'LES EVADEES'),(6,'INDIANA JONES'),(7,'JOHN WICK');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paiement` (
  `Id_Paiment` int(11) NOT NULL AUTO_INCREMENT,
  `TypePaiment` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_Paiment`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiement`
--

LOCK TABLES `paiement` WRITE;
/*!40000 ALTER TABLE `paiement` DISABLE KEYS */;
INSERT INTO `paiement` VALUES (1,'EN LIGNE'),(2,'SUR PLACE');
/*!40000 ALTER TABLE `paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `Id_Price` int(11) NOT NULL AUTO_INCREMENT,
  `TypePrice` varchar(50) NOT NULL,
  `Price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`Id_Price`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,'PLEIN TARIF',9.20),(2,'ETUDIANT',7.60),(3,'MOINS DE 14 ANS',5.90);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `Id_ROOM` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Id_Cinema` int(11) NOT NULL,
  PRIMARY KEY (`Id_ROOM`),
  KEY `Id_Cinema` (`Id_Cinema`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`Id_Cinema`) REFERENCES `cinema` (`Id_Cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'MEL1',50,1),(2,'MEL2',150,1),(3,'FONT1',180,2),(4,'FONT2',200,2),(5,'MONT1',175,3),(6,'CS1',370,4),(7,'CS2',395,4);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seance` (
  `Id_Seance` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `hourly` time NOT NULL,
  `Id_room` int(11) NOT NULL,
  `Id_movie` int(11) NOT NULL,
  PRIMARY KEY (`Id_Seance`),
  KEY `Id_room` (`Id_room`),
  KEY `Id_movie` (`Id_movie`),
  CONSTRAINT `seance_ibfk_1` FOREIGN KEY (`Id_room`) REFERENCES `room` (`Id_ROOM`),
  CONSTRAINT `seance_ibfk_2` FOREIGN KEY (`Id_movie`) REFERENCES `movie` (`Id_movie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES (1,'2022-11-28','09:00:00',1,1),(2,'2022-11-28','11:00:00',1,2),(3,'2022-11-28','09:00:00',2,3),(4,'2022-11-28','11:00:00',2,4),(5,'2022-11-29','09:00:00',3,1),(6,'2022-11-29','11:00:00',3,2),(7,'2022-11-29','09:00:00',4,3),(8,'2022-11-29','11:00:00',4,4);
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `Id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `Date_buy` date NOT NULL,
  `Id_Seance` int(11) NOT NULL,
  `Id_Price` int(11) NOT NULL,
  `Id_Paiment` int(11) NOT NULL,
  PRIMARY KEY (`Id_ticket`),
  KEY `Id_Seance` (`Id_Seance`),
  KEY `Id_Price` (`Id_Price`),
  KEY `Id_Paiment` (`Id_Paiment`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Id_Seance`) REFERENCES `seance` (`Id_Seance`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`Id_Price`) REFERENCES `price` (`Id_Price`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`Id_Paiment`) REFERENCES `paiement` (`Id_Paiment`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'2022-11-26',1,1,1),(2,'2022-11-26',2,1,1),(3,'2022-11-26',2,1,1),(4,'2022-11-26',3,2,1),(5,'2022-11-26',4,1,2);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id_Users` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Id_Cinema` int(11) NOT NULL,
  PRIMARY KEY (`Id_Users`),
  KEY `Id_Cinema` (`Id_Cinema`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Id_Cinema`) REFERENCES `cinema` (`Id_Cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jean','ADMIN',1),(2,'Alain','ADMIN',2),(3,'John','ADMIN',3),(4,'Mike','ADMIN',4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27 11:03:40
