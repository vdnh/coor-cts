-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cts
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresse` (
  `id` bigint(20) NOT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `id_manager` bigint(20) DEFAULT NULL,
  `id_shipper` bigint(20) DEFAULT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `principal` bit(1) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `rue` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (73,'gfgf',0,72,0,'4545','sh',_binary '\0','gfsh','dfsdfsd','sgh'),(77,'hgdfhgf',0,75,0,'1234','hthtr',_binary '\0','hh','fshdf','gfgf'),(78,'dhfdf',0,75,0,'2825','chghg',_binary '\0','cghgh','gfjg','gfcf'),(79,'454 654',0,52,0,'2540','canada',_binary '\0','terrebonne','ttyf','gddty'),(82,'dhgj',0,0,80,'3243','sfhf',_binary '\0','sh','fg','djg'),(83,'kkdlsdk',0,0,7,'456','hdjhvsd',_binary '\0','kfsl;d','ldfskl','dlgksdl;k'),(85,'vvnvbkn',0,0,1,'2340','ojkjk',_binary '\0','ljlj','jfsdj','jkljklj'),(89,'gfsh',0,75,0,'65','gdh',_binary '\0','hdg','sh','gfhgf'),(90,'J7R 5B4',0,0,8,'520','Canada',_binary '\0','Quebec','Guidon','Saint-Eustache'),(93,'h2e2l10',0,60,0,'123','canada',_binary '\0','quebec','papineau','montreal'),(98,'gghfg',0,95,0,'1234','gfshf',_binary '\0','gfhs','hgfhgfh','hgfhs'),(102,'',0,100,0,'1234','',_binary '\0','','',''),(104,'fddfg',0,0,103,'55','fdgfd',_binary '\0','gfdg','sgr','fdgdf');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_role`
--

DROP TABLE IF EXISTS `app_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_role`
--

LOCK TABLES `app_role` WRITE;
/*!40000 ALTER TABLE `app_role` DISABLE KEYS */;
INSERT INTO `app_role` VALUES (1,'ADMIN'),(3,'MANAGER'),(38,'SHIPPER'),(39,'TRANSPORTER');
/*!40000 ALTER TABLE `app_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'$2a$10$RhfJSGhaBRFyBnt/Rz6GEOgHe.yh43m./ivSH549bmG1vRTjR0koq','admin'),(7,'$2a$10$4cvIUj1BCDAbYmkXqUeQsOYcxarxEG6YLBq2FfbDb/9SuP.gT/YLa','shipper01'),(3,'$2a$10$wiT54ySqx1GvkLwhs5lcxO2rK1t/uerE2Msa3oJqttnTmv/jPzE3q','manager'),(4,'$2a$10$EhBIN75OIlBSkerP9dU26ON4M1NbSqAJzBAwYS8sI1ECJTcZtJ2lK','shipper'),(5,'$2a$10$LfIYfLC3CdsamCgCDJoLeeO/LwHMYON0zJWAb027mXiLLLdy7svbe','transporter');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_roles`
--

DROP TABLE IF EXISTS `app_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_user_roles` (
  `app_user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FK1pfb2loa8so5oi6ak7rh6enva` (`roles_id`),
  KEY `FKkwxexnudtp5gmt82j0qtytnoe` (`app_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_roles`
--

LOCK TABLES `app_user_roles` WRITE;
/*!40000 ALTER TABLE `app_user_roles` DISABLE KEYS */;
INSERT INTO `app_user_roles` VALUES (1,2),(1,1),(1,3),(2,2),(3,3),(4,38),(5,39),(7,38);
/*!40000 ALTER TABLE `app_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camion`
--

DROP TABLE IF EXISTS `camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `camion` (
  `id` bigint(20) NOT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `latitude` bigint(20) DEFAULT NULL,
  `longtitude` bigint(20) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `plaque` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `local_depart` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camion`
--

LOCK TABLES `camion` WRITE;
/*!40000 ALTER TABLE `camion` DISABLE KEYS */;
/*!40000 ALTER TABLE `camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camion_fermee`
--

DROP TABLE IF EXISTS `camion_fermee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `camion_fermee` (
  `id` bigint(20) NOT NULL,
  `camion_complet` bit(1) NOT NULL,
  `chargement_partiel` bit(1) NOT NULL,
  `chauffe` bit(1) NOT NULL,
  `congele` bit(1) NOT NULL,
  `hayon` bit(1) NOT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `p48_ess2` bit(1) NOT NULL,
  `p48_ess3` bit(1) NOT NULL,
  `p48_ess4` bit(1) NOT NULL,
  `p53_ess2` bit(1) NOT NULL,
  `p53_ess3` bit(1) NOT NULL,
  `p53_ess4` bit(1) NOT NULL,
  `porteur16_18` bit(1) NOT NULL,
  `porteur26_ess2` bit(1) NOT NULL,
  `porteur26_ess3` bit(1) NOT NULL,
  `refrigere` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camion_fermee`
--

LOCK TABLES `camion_fermee` WRITE;
/*!40000 ALTER TABLE `camion_fermee` DISABLE KEYS */;
/*!40000 ALTER TABLE `camion_fermee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` bigint(20) NOT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `id_manager` bigint(20) NOT NULL,
  `id_shipper` bigint(20) NOT NULL,
  `id_transporter` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `tel` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (81,'dhdjh',67867,'dg',0,0,80,'sh','jhfh','gdfhgd',423),(55,'shipper02',123,'manager',0,54,0,'Contact1','shipper02','shipper02',145),(57,'shipper03',4502169875,'manager',0,54,0,'Contact2','shipper03','shipper03',5148795624),(59,'shipper03',1234569872,'admin',0,54,0,'Contact3','shipper03','shipper03',1234567895),(61,'shipper05',2356489715,'Director',0,54,0,'Contact4','shipper05','shipper05',2356897415),(74,'fshfd',424,'shdf',0,72,0,'gfbdf','ygf','sfd',444),(63,'djvklsdjkl',123456789,'djfsdkj',0,52,0,'Alex','jkdhjkhdfsv','dsfsdkj',123456789),(64,'dsfsd',878,'sdfsd',0,52,0,'foo','dsfda','sdkjsdkj',457),(69,'hytrh',5656,'gfgf',0,52,0,'l;gk','jklyu','gf',54685),(76,'ghjt',543254,'rhrh',0,75,0,'fhh','grdgr','hrth',4254),(67,'gnfg',5442,'nfngngfn',0,56,0,'contact 1','ggf','bgbngf',554),(68,'gfgf',5457,'gfhgf',0,56,0,'contact 2','dvsd','dsvsdg',4587),(84,'flbkdflk',4541312,'FDLKK',0,0,7,'cont01','fmdlb','KDFLK',543465),(86,'gfhfg',5454,'gdh',0,0,1,'test','hghg','fhgh',454),(87,'dgds',43534,'dgsd',0,0,1,'cont123','xcvb','dssd',4325),(88,'ghjhg',3543,'hjkhjk',0,75,0,'hung','dfsdf','nhat',545),(91,'sos-prestige@gmail.com',4509749111,'Director',0,0,8,'Marc-Andre','','Thiffeault',4509749111),(99,'hsdfh',54654,'dfhbdf',0,95,0,'contact250','fdhgf','fdghdf',8654),(94,'maria@gmail.com',5142302679,'Coordinatrice',0,60,0,'Maria','maria.jpg','Claude',5147542368),(101,'',0,'',0,100,0,'cont26','','',0),(105,'fgkkfld',5454,'manager',0,0,103,'per001','fd','prenom',454);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_bed`
--

DROP TABLE IF EXISTS `flat_bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flat_bed` (
  `id` bigint(20) NOT NULL,
  `camion_complet` bit(1) NOT NULL,
  `chargement_partiel` bit(1) NOT NULL,
  `fardieu_ess2` bit(1) NOT NULL,
  `fardieu_ess3` bit(1) NOT NULL,
  `fardieu_ess4` bit(1) NOT NULL,
  `fardieu_ess5` bit(1) NOT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `minideck_ess2` bit(1) NOT NULL,
  `minideck_ess3` bit(1) NOT NULL,
  `minideck_ess4` bit(1) NOT NULL,
  `minideck_ess5` bit(1) NOT NULL,
  `p48_ess2` bit(1) NOT NULL,
  `p48_ess3` bit(1) NOT NULL,
  `p48_ess4` bit(1) NOT NULL,
  `p53_ess2` bit(1) NOT NULL,
  `p53_ess3` bit(1) NOT NULL,
  `p53_ess4` bit(1) NOT NULL,
  `stepdeck_p48_ess2` bit(1) NOT NULL,
  `stepdeck_p48_ess3` bit(1) NOT NULL,
  `stepdeck_p48_ess4` bit(1) NOT NULL,
  `stepdeck_p53_ess2` bit(1) NOT NULL,
  `stepdeck_p53_ess3` bit(1) NOT NULL,
  `stepdeck_p53_ess4` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_bed`
--

LOCK TABLES `flat_bed` WRITE;
/*!40000 ALTER TABLE `flat_bed` DISABLE KEYS */;
/*!40000 ALTER TABLE `flat_bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (106);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_de_recherche`
--

DROP TABLE IF EXISTS `list_de_recherche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `list_de_recherche` (
  `id` bigint(20) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `hauteur` varchar(255) DEFAULT NULL,
  `id_shipper` bigint(20) DEFAULT NULL,
  `largeur` varchar(255) DEFAULT NULL,
  `longueur` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `poids` varchar(255) DEFAULT NULL,
  `valeur` varchar(255) DEFAULT NULL,
  `date_recherche` datetime DEFAULT NULL,
  `type_camion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_de_recherche`
--

LOCK TABLES `list_de_recherche` WRITE;
/*!40000 ALTER TABLE `list_de_recherche` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_de_recherche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_offer`
--

DROP TABLE IF EXISTS `services_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services_offer` (
  `id` bigint(20) NOT NULL,
  `cross_polt` bit(1) DEFAULT NULL,
  `entreposage_exterieur` bit(1) DEFAULT NULL,
  `entreposage_interieur` bit(1) DEFAULT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `manutention` bit(1) DEFAULT NULL,
  `service_transbordage` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_offer`
--

LOCK TABLES `services_offer` WRITE;
/*!40000 ALTER TABLE `services_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipper` (
  `id` bigint(20) NOT NULL,
  `depuis` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` bigint(20) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `raison_sociale` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `tel` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (52,'2018-09-04','shipper01',1234,'shipper01','ship01',NULL,'shipper01','shipper01',_binary '\0',1234),(54,'2018-11-26','shipper02',147,NULL,'shipper02',NULL,'shipper02','shipper02',_binary '\0',123),(56,'2018-10-08','shipper03',4185972361,NULL,'shipper03',NULL,'shipper03','shipper03',_binary '\0',5142367894),(58,'2018-11-05','shipper04',5124368792,NULL,'shipper04',NULL,'shipper04','shipper04',_binary '\0',1457892146),(60,'2018-11-27','shipper05',4785621389,NULL,'shipper05',NULL,'shipper05','shipper05',_binary '\0',4789245678),(70,'2018-11-27','dfsd',8684,NULL,'shipper20',NULL,'dsd','dvsds',_binary '\0',545465),(72,'2018-11-04','fdgdf',4547,NULL,'Shipper21',NULL,'hfghfg','gfhgf',_binary '\0',424),(75,'2018-11-01','fdgdf',44242,NULL,'shipper22',NULL,'gfhfhb','vsdfgsd',_binary '\0',42442),(95,'2018-12-01','dfsd',565464,NULL,'shipper250',NULL,'sdfdf','sdvsd',_binary '\0',656354),(100,'2018-12-03','',0,NULL,'shiper26',NULL,'','',_binary '\0',0);
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporter`
--

DROP TABLE IF EXISTS `transporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transporter` (
  `id` bigint(20) NOT NULL,
  `depuis` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `raison_sociale` varchar(255) DEFAULT NULL,
  `tel` bigint(20) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporter`
--

LOCK TABLES `transporter` WRITE;
/*!40000 ALTER TABLE `transporter` DISABLE KEYS */;
INSERT INTO `transporter` VALUES (1,'1984-03-21','gkrek@yahoo.com','Transport01','testphoto.jpg','Transporter01',6148759264,'transporter',NULL),(8,'1990-12-16','sosprestige@gmail.com','SOS Prestige','','Transportation - Remorquage',4509749111,NULL,NULL),(10,'2010-12-13','ftsd','Trans04','dfsdg','Transportation numer 10',4385789245,NULL,NULL),(9,'2005-12-10','ifhruia','Trans03','dfsdg','Transportation numer 4',4385789245,NULL,NULL),(7,'2008-10-16','sdkjfkls@fhsd.com','Transport02','','Transportation - Logistique',5142348798,NULL,NULL),(11,'2010-12-15','ftsd','Trans4All','dfsdg','Transportation numer 86',4385789245,NULL,NULL),(12,'2012-12-17','lf;le,','Delivery Any Where','','Delivraison - Freight Evrything',6875145932,NULL,NULL),(13,'1993-12-04','jdghjyhg','Cargo All','','Cargaison',9875436215,NULL,NULL),(14,'1989-04-06','dlsldj','Cargo 02','','All transport',5146987321,NULL,NULL),(15,'2010-05-25','gudafug','Cargo Numero1','','Transport evrything to every where',5149587236,NULL,NULL),(16,'1955-10-07','ffjsdk','Export and Import','dsdlj','cargo sans frontier',5148952431,NULL,NULL),(17,'2011-01-21','kgdfghaffuyg','trans10122018-01','','Transport domain',4386972541,NULL,NULL),(18,'2006-12-05','sdjside','Trans10122018-02','gfhgf','hsdjhk',5147821698,NULL,NULL),(19,'2008-09-01','greuhjfd','trans10122018-03','4torsglm','gfwegyfhbdshvb',5478924697,NULL,NULL),(80,'2018-10-11','sghg','Transporter20','dsgsdagsd','dfhfg',541879,NULL,NULL),(103,'2010-08-05','fdgs','trans27122018','fdgdfa','transporter 27122018',545646,NULL,NULL);
/*!40000 ALTER TABLE `transporter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-29  7:25:54
