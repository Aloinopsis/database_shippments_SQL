-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: przesylki
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `przesylki`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `przesylki` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci */;

USE `przesylki`;

--
-- Table structure for table `dziennik_zdarzen`
--

DROP TABLE IF EXISTS `dziennik_zdarzen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dziennik_zdarzen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pracownicy` int(11) NOT NULL,
  `zmiana` varchar(400) COLLATE utf8_polish_ci NOT NULL,
  `data_zmiany` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_pracownicy` (`id_pracownicy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dziennik_zdarzen`
--

LOCK TABLES `dziennik_zdarzen` WRITE;
/*!40000 ALTER TABLE `dziennik_zdarzen` DISABLE KEYS */;
INSERT INTO `dziennik_zdarzen` VALUES (2,1,'Nastąpiła zmiana nazwiska: Nowak-->Nowaczek','2021-10-07 15:41:14'),(4,2,'Nastąpiła zmiana imienia: Agata-->Joanna','2021-10-07 15:43:04'),(5,2,'REKORD ZOSTAŁ USUNIĘTY','2021-10-07 15:46:29'),(6,3,'Nastąpiła zmiana nazwiska: Frączek-->PotockiNastąpiła zmiana imienia: Michał-->Jan','2021-10-07 15:51:35'),(7,1,'Nastąpiła zmiana nazwiska: Nowaczek-->Kowalski','2021-10-15 10:51:47'),(8,5,'Nastąpiła zmiana nazwiska: Kaczka-->KowalskaNastąpiła zmiana imienia: Anna-->Joanna','2021-10-15 10:58:31'),(9,5,'Nastąpiła zmiana imienia: Anna-->Joanna','2021-10-15 11:11:53'),(10,5,'Nastąpiła zmiana imienia: Anna-->Joanna','2021-10-15 11:11:53');
/*!40000 ALTER TABLE `dziennik_zdarzen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie`
--

LOCK TABLES `kategorie` WRITE;
/*!40000 ALTER TABLE `kategorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nadawca`
--

DROP TABLE IF EXISTS `nadawca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nadawca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `numer_domu` varchar(6) COLLATE utf8_polish_ci NOT NULL,
  `numer_lokalu` varchar(4) COLLATE utf8_polish_ci DEFAULT NULL,
  `miejscowosc` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `kod` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_dodania` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nadawca`
--

LOCK TABLES `nadawca` WRITE;
/*!40000 ALTER TABLE `nadawca` DISABLE KEYS */;
INSERT INTO `nadawca` VALUES (1,'Jan','Kowalski','Mickiewicza','12',NULL,'Krakow','845796587',NULL,'2021-09-18 17:49:52'),(2,'Adam','Kowalski','Sienkiewicza','3a','14','Łódź','965123924',NULL,'2021-09-18 17:49:52'),(3,'Jacek','Nowaczek','Kielecka','340','1b','Kraków','963526987',NULL,'2021-09-18 17:52:23'),(4,'Filip','Kawka','Olkuska','4a',NULL,'Katowice','456258965',NULL,'2021-09-18 17:52:23'),(5,'Jan','Marzec','Węgierska','40',NULL,'Olkusz','745896589',NULL,'2021-09-18 17:52:23');
/*!40000 ALTER TABLE `nadawca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odbiorca`
--

DROP TABLE IF EXISTS `odbiorca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odbiorca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `kod` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `data_dodania` date DEFAULT current_timestamp(),
  `data_modyfikacji` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odbiorca`
--

LOCK TABLES `odbiorca` WRITE;
/*!40000 ALTER TABLE `odbiorca` DISABLE KEYS */;
INSERT INTO `odbiorca` VALUES (1,'Piotr','Nowak','Kraków','Kielecka',NULL,'989562563','2021-09-18',NULL),(2,'Piotr','Kowalski','Kraków','Kielecka',NULL,'963526987','2021-09-18',NULL),(3,'Kamil','Nowak','Kielce','Wrocławska',NULL,'985412345','2021-09-18',NULL),(4,'Anna','Kowalska','Kielce','Mikołajska',NULL,'454578963','2021-09-18',NULL);
/*!40000 ALTER TABLE `odbiorca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `kod` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `telefon` varchar(15) COLLATE utf8_polish_ci DEFAULT NULL,
  `haslo` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_dodania` datetime NOT NULL DEFAULT current_timestamp(),
  `data_modyfikacji` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Adam','Kowalski','Kraków','Filipa','30152','586325698',NULL,'2021-09-18 17:59:53','2021-10-15 10:51:47'),(3,'Jan','Potocki','Miechów','Sienkiewica','32-200','963856989',NULL,'2021-10-07 15:50:58','2021-10-07 15:51:35'),(4,'Edward','Nowak','Warszawa','Powstańców','02-130','858969363',NULL,'2021-10-15 09:24:06','2021-10-15 09:26:40'),(5,'Zofia','Kowalska','Kraków','Powstańców','30-201','748759657',NULL,'2021-10-15 09:24:06','2021-10-15 11:14:18');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_polish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pracownicyMod` BEFORE UPDATE ON `pracownicy` FOR EACH ROW BEGIN

SET NEW.data_modyfikacji = now();

IF NEW.nazwisko != OLD.nazwisko
THEN
SET @zmiana = CONCAT('Nastąpiła zmiana nazwiska: ', OLD.nazwisko, '-->', NEW.nazwisko);

END IF;

IF NEW.imie != OLD.imie
THEN
SET @zmiana = CONCAT(@zmiana, 'Nastąpiła zmiana imienia: ', OLD.imie, '-->', NEW.imie);

END IF;

IF @zmiana != ''
THEN
INSERT INTO dziennik_zdarzen VALUES (NULL, OLD.id, @zmiana, NEW.data_modyfikacji);
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_polish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pracownicyDel` BEFORE DELETE ON `pracownicy` FOR EACH ROW INSERT INTO dziennik_zdarzen VALUES (NULL, OLD.id, 'REKORD ZOSTAŁ USUNIĘTY', now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `przesylki`
--

DROP TABLE IF EXISTS `przesylki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `przesylki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `cena` float NOT NULL,
  `platnosc` tinyint(1) NOT NULL,
  `reklamacje_id` int(11) DEFAULT NULL,
  `kategorie_id` int(11) DEFAULT NULL,
  `stan_id` int(11) DEFAULT NULL,
  `nadawca_id` int(11) DEFAULT NULL,
  `pracownik_id` int(11) DEFAULT NULL,
  `odbiorca_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reklamacje_id` (`reklamacje_id`),
  KEY `kategorie_id` (`kategorie_id`),
  KEY `stan_id` (`stan_id`),
  KEY `nadawca_id` (`nadawca_id`),
  KEY `pracownik_id` (`pracownik_id`),
  KEY `odbiorca_id` (`odbiorca_id`),
  CONSTRAINT `przesylki_ibfk_1` FOREIGN KEY (`reklamacje_id`) REFERENCES `reklamacje` (`id`),
  CONSTRAINT `przesylki_ibfk_2` FOREIGN KEY (`kategorie_id`) REFERENCES `kategorie` (`id`),
  CONSTRAINT `przesylki_ibfk_3` FOREIGN KEY (`stan_id`) REFERENCES `stan` (`id`),
  CONSTRAINT `przesylki_ibfk_4` FOREIGN KEY (`nadawca_id`) REFERENCES `nadawca` (`id`),
  CONSTRAINT `przesylki_ibfk_5` FOREIGN KEY (`pracownik_id`) REFERENCES `pracownicy` (`id`),
  CONSTRAINT `przesylki_ibfk_6` FOREIGN KEY (`odbiorca_id`) REFERENCES `odbiorca` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przesylki`
--

LOCK TABLES `przesylki` WRITE;
/*!40000 ALTER TABLE `przesylki` DISABLE KEYS */;
/*!40000 ALTER TABLE `przesylki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reklamacje`
--

DROP TABLE IF EXISTS `reklamacje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reklamacje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `opis` varchar(3000) COLLATE utf8_polish_ci NOT NULL,
  `rozpatrzenie` tinyint(1) DEFAULT NULL,
  `odpowiedz` varchar(2000) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_dodania` datetime NOT NULL DEFAULT current_timestamp(),
  `data_modyfikacji` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reklamacje`
--

LOCK TABLES `reklamacje` WRITE;
/*!40000 ALTER TABLE `reklamacje` DISABLE KEYS */;
/*!40000 ALTER TABLE `reklamacje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stan`
--

DROP TABLE IF EXISTS `stan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stan`
--

LOCK TABLES `stan` WRITE;
/*!40000 ALTER TABLE `stan` DISABLE KEYS */;
/*!40000 ALTER TABLE `stan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 12:23:25
