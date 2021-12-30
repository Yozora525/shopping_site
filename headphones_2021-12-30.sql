CREATE DATABASE  IF NOT EXISTS `headphones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `headphones`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: headphones
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
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `count` int unsigned NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (101);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `email` varchar(45) NOT NULL DEFAULT '',
  `product_name` varchar(45) NOT NULL,
  `score` int DEFAULT NULL,
  `comment` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES ('','',NULL,NULL);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `product_name` varchar(45) NOT NULL,
  `import_quantity` int DEFAULT NULL,
  `sold_quantity` int DEFAULT NULL,
  `import_date` date DEFAULT NULL,
  `wear` varchar(45) NOT NULL DEFAULT '',
  `link` varchar(45) NOT NULL DEFAULT '',
  `mic` varchar(45) NOT NULL DEFAULT '',
  `way` varchar(45) NOT NULL DEFAULT '',
  `inventory_quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('AKG K240',0,0,NULL,'耳罩式','有線','無','',0),('AKG K701',0,0,NULL,'耳罩式','有線','無','',0),('AKG K702',0,0,NULL,'耳罩式','有線','無','',0),('AKG K712',0,0,NULL,'耳罩式','有線','無','',0),('Galaxy Buds Pro',0,0,NULL,'入耳式','無線','無','',0),('Galaxy Buds2',0,0,NULL,'入耳式','無線','無','',0),('SONY MDR-XB950N1',0,0,NULL,'耳罩式','無線','無','',0),('SONY WH-1000XM4',0,0,NULL,'耳罩式','無線','有','',0),('SONY WH-H900N',0,0,NULL,'耳罩式','無線','有','',0),('SONY WI-SP500',0,0,NULL,'入耳式','無線','有','',0),('SONY WI-SP510',0,0,NULL,'入耳式','無線','無','',0),('SONY WI-SP600N',0,0,NULL,'入耳式','無線','有','',0),('水月雨 blessing2',0,0,NULL,'入耳式','有線','無','',0),('水月雨 KATO',0,0,NULL,'入耳式','有線','無','',0),('水月雨 kxxs',0,0,NULL,'入耳式','有線','無','',0),('水月雨 SSR',0,0,NULL,'入耳式','有線','無','',0),('水月雨 光',0,0,NULL,'入耳式','有線','無','',0),('鐵三角 ATH-M50xBT2',0,0,NULL,'耳罩式','耳罩式','有','',0),('鐵三角 HL7BT',0,0,NULL,'耳罩式','耳罩式','無','',0),('鐵三角 SR50BT',0,0,NULL,'耳罩式','耳罩式','有','',0),('鐵三角 WS660BT',0,0,NULL,'耳罩式','耳罩式','無','',0);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_name` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `product_introduce` varchar(400) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `wear` varchar(45) NOT NULL DEFAULT '',
  `link` varchar(45) NOT NULL DEFAULT '',
  `mic` varchar(45) NOT NULL DEFAULT '',
  `way` varchar(45) NOT NULL DEFAULT '',
  `brand` varchar(45) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AKG K240',2200,'0','assets/img/AKG_K240.jpg','耳罩式','有線','無','','AKG','1'),('AKG K701',4990,'0','assets/img/AKG_K701.jpg','耳罩式','有線','無','','AKG','1'),('AKG K702',9200,'0','assets/img/AKG_K702.jpg','耳罩式','有線','無','','AKG','1'),('AKG K712',7890,'0','assets/img/AKG_K712.jpg','耳罩式','有線','無','','AKG','1'),('Galaxy Buds Pro',6990,'0','assets/img/Galaxy_BudsPro.jpg','入耳式','無線','無','降噪','Samsung','1'),('Galaxy Buds2',4990,'0','assets/img/Galaxy_Buds2.jpg','入耳式','無線','無','降噪','Samsung','1'),('SONY MDR-XB950N1',7490,'0','assets/img/SONY_MDRXB950N1.jpg','耳罩式','無線','無','降噪','鐵三角','1'),('SONY WH-1000XM4',10900,'0','assets/img/SONY_WH1000XM4.jpg','耳罩式','無線','有','降噪','SONY','1'),('SONY WH-H900N',7490,'0','assets/img/SONY_WHH900N.jpg','耳罩式','無線','有','降噪','SONY','1'),('SONY WI-SP500',2390,'0','assets/img/SONY_WI-SP500.jpg','入耳式','無線','有','運動','SONY','1'),('SONY WI-SP510',2690,'0','assets/img/SONY_WISP510.jpg','入耳式','無線','無','運動','SONY','1'),('SONY WI-SP600N',4990,'0','assets/img/SONY_WI-SP600N.jpg','入耳式','無線','有','運動降噪','SONY','1'),('水月雨 blessing2',11000,'0','assets/img/MoonDrop_Blessing2.jpg','入耳式','有線','無','','水月雨','1'),('水月雨 KATO',5680,'0','assets/img/Moondrop_kato.jpg','入耳式','有線','無','','水月雨','1'),('水月雨 kxxs',4980,'0','assets/img/MoonDrop_KXXS.jpg','入耳式','有線','無','','水月雨','1'),('水月雨 SSR',1180,'0','assets/img/MoonDrop_SSR.jpg','入耳式','有線','無','運動','水月雨','1'),('水月雨 光',26800,'0','assets/img/MoonDrop_illumination1.jpg','入耳式','有線','無','','水月雨','1'),('鐵三角 ATH-M50xBT2',7600,'0','assets/img/ATH_M50xBT2.jpg','耳罩式','無線','有','','鐵三角','1'),('鐵三角 HL7BT',5700,'0','assets/img/ATH_HL7BT.jpg','耳罩式','無線','無','','鐵三角','1'),('鐵三角 SR50BT',7700,'0','assets/img/ATH_SR50BT.jpg','耳罩式','無線','有','','鐵三角','1'),('鐵三角 WS660BT',5200,'0','assets/img/ATH_WS660BT.jpg','耳罩式','無線','無','','鐵三角','1');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `member_mail` varchar(45) NOT NULL DEFAULT '',
  `product_name` varchar(45) NOT NULL,
  `sold_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_number` int NOT NULL,
  `price` int NOT NULL,
  `sold_quantity` int NOT NULL,
  `total_money` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server` (
  `server_email` varchar(319) NOT NULL DEFAULT '',
  `server_name` varchar(45) NOT NULL DEFAULT '',
  `server_pwd` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`server_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES ('service@gmail.com','server','Server109*');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_car`
--

DROP TABLE IF EXISTS `shopping_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_car` (
  `product_name` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `car_quantity` int NOT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `car_money` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_car`
--

LOCK TABLES `shopping_car` WRITE;
/*!40000 ALTER TABLE `shopping_car` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('haha@gmail.com','test','123456789');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 19:49:41
