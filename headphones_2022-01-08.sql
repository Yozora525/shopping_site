CREATE DATABASE  IF NOT EXISTS `headphones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (111);
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
  `comment` varchar(350) DEFAULT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES ('haha@gmail.com','Galaxy Buds Pro',NULL,'test','2022-01-06 07:19:20'),('haha@gmail.com','Galaxy Buds Pro',NULL,'wwww','2022-01-06 07:30:30'),('haha@gmail.com','Galaxy Buds2',NULL,'好好吃','2022-01-06 16:35:14');
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
  `inventory_quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('AKG K240',9757),('AKG K701',5057),('AKG K702',3757),('AKG K712',2257),('Galaxy Buds Pro',957),('Galaxy Buds2',657),('SONY MDR-XB950N1',0),('SONY WH-1000XM4',0),('SONY WH-H900N',0),('SONY WI-SP500',727),('SONY WI-SP510',0),('SONY WI-SP600N',0),('水月雨 blessing2',867),('水月雨 KATO',937),('水月雨 kxxs',972),('水月雨 SSR',0),('水月雨 光',1000),('鐵三角 ATH-M50xBT2',0),('鐵三角 HL7BT',0),('鐵三角 SR50BT',0),('鐵三角 WS660BT',0);
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
  `status` char(1) NOT NULL DEFAULT '1',
  `product_introduce_1` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AKG K240',2200,'<li>阻抗從600歐姆大幅降至55歐姆</li><br>','assets/img/AKG_K240.jpg','耳罩式','有線','無','','AKG','1','使用Varimotion振膜單體專利技術，降低噪音之餘，展現絕佳錄音與監聽功能'),('AKG K701',4990,'<li>AKG專利設計變向超高精度雙層振膜</li><br>','assets/img/AKG_K701.jpg','耳罩式','有線','無','','AKG','0','平線發聲線圈技術展現極深頻率延伸，型塑完美音準與優秀結像力'),('AKG K702',9200,'<li>頂級旗艦十大經典名機</li><br>','assets/img/AKG_K702.jpg','耳罩式','有線','無','','AKG','1','層次分明的精準放音，感受豪華聲場身歷其境'),('AKG K712',7890,'<li>精確有力的聲音效果改進3dB低端性能</li><br>','assets/img/AKG_K712.jpg','耳罩式','有線','無','','AKG','1','捷克斯洛伐克製造，極高舒適度耳罩設計，音質不與舒適妥協'),('Galaxy Buds Pro',6990,'<li>主動式ANC抗噪及智慧環境音效降噪</li><br>','assets/img/Galaxy_BudsPro.jpg','入耳式','無線','無','降噪','Samsung','1','品牌耳機魅惑升級，音質功效與硬體質感大幅提升，可隔絕99%噪音'),('Galaxy Buds2',4990,'<li>ANC主動式降噪及智慧通話降噪</li><br>','assets/img/Galaxy_Buds2.jpg','入耳式','無線','無','降噪','Samsung','1','可愛童趣的耳機造型，附贈前衛簡約的充電盒，提供20小時長效充電'),('SONY MDR-XB950N1',7490,'<li>EXTRA BASS™ 提供深沉有力的低音域效果</li><br>','assets/img/SONY_MDRXB950N1.jpg','耳罩式','無線','無','降噪','SONY','1','內建全新低頻增強功能，搭配專屬軟體使用，音域效果隨心所欲'),('SONY WH-1000XM4',10900,'<li>具備LDAC功能，高達三倍藍牙資料傳輸量</li><br>','assets/img/SONY_WH1000XM4.jpg','耳罩式','無線','有','降噪','SONY','1','媲美有線耳機的高穩定性，LDAC打破無線耳機斷訊可能'),('SONY WH-H900N',7490,'<li>支援觸控耳罩面板和快速注意模式</li><br>','assets/img/SONY_WHH900N.jpg','耳罩式','無線','有','降噪','SONY','1','優於傳統CD的高解析音質，DSEE HX技術還原壓縮損失的精密音域'),('SONY WI-SP500',2390,'<li>開放型驅動單體，方便隨時掌握周遭動靜</li><br><li>配戴舒適、造型穩固、設計防汗</li><br><li>單一按鈕操控，具備語音助理功能</li><br>','assets/img/SONY_WI-SP500.jpg','入耳式','無線','有','運動','SONY','1','專為運動訓練量身打造，儘管掙脫耳機線也能無比牢靠'),('SONY WI-SP510',2690,'<li>EXTRA BASS™ 提供強勁有力的低頻音效</li>','assets/img/SONY_WISP510.jpg','入耳式','無線','無','運動','SONY','1','EXTRA BASS™ 增強音樂節奏感，隨著節拍縱情律動，充飽能量再出發 '),('SONY WI-SP600N',4990,'<li>數位降噪功能，營造零噪音干擾的純粹音效</li><br><li>輕巧且穩固貼合的後掛式設計</li><br><li>單一按鈕操控，具備語音助理功能</li><br>','assets/img/SONY_WI-SP600N.jpg','入耳式','無線','有','運動降噪','SONY','1','系列產品再升級，全新降噪功能，感受與世隔絕的絕美音域'),('水月雨 blessing2',11000,'<li>面蓋採用精密CNC不銹鋼雕刻，表面使用拉絲工藝</li><br><li>配置高精度3D打印成型的物理濾波聲導管結構</li><br><li>「物理濾波+ RC濾波」混合式三分頻架構</li><br>','assets/img/MoonDrop_Blessing2.jpg','入耳式','有線','無','','水月雨','1','特製全頻複合動鐵單體，有效驅動靈敏低頻，通透還原音質'),('水月雨 KATO',5680,'<li>輕薄質量設計展現更寬廣聲域</li><br><li>低阻尼係數提升瞬態反應，聲學更勝鍍鈹材料</li><br><li>更加線性的氣體流動與黃銅腔體特性</li><br>','assets/img/Moondrop_kato.jpg','入耳式','有線','無','','水月雨','1','耗時兩年打造全新ULT（Ultra-Linear-Technology）超線性動圈單元'),('水月雨 kxxs',4980,'<li>調校至淋漓盡致的淚鑽石鎮模動圈入耳式耳機</li><br><li>精密鏡面模具工藝，運用精湛手工拋光與電鍍技術</li><br><li>VSDF虛擬擴散聲場技術，身歷其境母帶聲場</li><br>','assets/img/MoonDrop_KXXS.jpg','入耳式','有線','無','','水月雨','1','內腔體控制氣流更加均衡，降低齒音並提升振膜功效，突破系列窠臼'),('水月雨 SSR',1180,'<li>高強度的液體金屬成型合金腔體</li><br><li>強勢推出全新防堵塞調音濾網</li><br><li>厚鍍銀無氧銅線，配備柔軟高彈高透線皮</li><br>','assets/img/MoonDrop_SSR.jpg','入耳式','有線','無','運動','水月雨','1','跳脫市面上重低音的隨波逐流，忠於還原錄音本身音色'),('水月雨 光',26800,'<li>專利聲耦合腔體結構，精確控制諧振頻率</li><br><li>獨立銅製懸掛支座，顯著降低磁漏現象</li><br><li>五軸精雕鈦合金腔體，超耐磨TiN陶瓷塗層</li><br>','assets/img/MoonDrop_illumination1.jpg','入耳式','有線','無','','水月雨','1','抑制高音的毛刺，消除低頻的駐波，體驗全頻帶的平滑震撼'),('鐵三角 ATH-M50xBT2',7600,'<li>降低影像與聲音間延遲的低延遲模式</li><br>','assets/img/ATH_M50xBT2.jpg','耳罩式','無線','有','','鐵三角','1','低延遲模式兼顧視聽雙饗宴，功能廣泛支援各品牌語音助理'),('鐵三角 HL7BT',5700,'<li>重量僅220g，展現極致輕巧</li><br>','assets/img/ATH_HL7BT.jpg','耳罩式','無線','無','','鐵三角','1','與居家空間融為一體的機身塗裝，運用織布材料注入生活質感'),('鐵三角 SR50BT',7700,'<li>內建鋰電池滿電可提供連續28小時播放</li><br>','assets/img/ATH_SR50BT.jpg','耳罩式','無線','有','','鐵三角','1','配備輕量優化頭帶與機殼旋轉結構，同時兼具音樂雜訊抑制功能'),('鐵三角 WS660BT',5200,'<li>提供約40小時的長效無線播放時間</li><br>','assets/img/ATH_WS660BT.jpg','耳罩式','無線','無','','鐵三角','1','雙層結構耳墊設計，耳際搭配多功能操作，兼顧舒適與實用性能');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_img`
--

DROP TABLE IF EXISTS `product_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_img` (
  `product_name` varchar(45) NOT NULL,
  `product_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_img`
--

LOCK TABLES `product_img` WRITE;
/*!40000 ALTER TABLE `product_img` DISABLE KEYS */;
INSERT INTO `product_img` VALUES ('AKG K240','assets/img/AKG_K240-1.jpg'),('AKG K240','assets/img/AKG_K240-2.jpg'),('AKG K240','assets/img/AKG_K240.jpg'),('AKG K701','assets/img/AKG_K701-1.jpg'),('AKG K701','assets/img/AKG_K701-2.jpg'),('AKG K701','assets/img/AKG_K701.jpg'),('AKG K702','assets/img/AKG_K702-1.jpg'),('AKG K702','assets/img/AKG_K702-2.jpg'),('AKG K702','assets/img/AKG_K702.jpg'),('AKG K712','assets/img/AKG_K712-1.jpg'),('AKG K712','assets/img/AKG_K712-2.jpg'),('AKG K712','assets/img/AKG_K712.jpg'),('鐵三角 HL7BT','assets/img/ATH_HL7BT-1.jpg'),('鐵三角 HL7BT','assets/img/ATH_HL7BT-2.jpg'),('鐵三角 HL7BT','assets/img/ATH_HL7BT.jpg'),('鐵三角 ATH-M50xBT2','assets/img/ATH_M50xBT2-1.jpg'),('鐵三角 ATH-M50xBT2','assets/img/ATH_M50xBT2-2.jpg'),('鐵三角 ATH-M50xBT2','assets/img/ATH_M50xBT2.jpg'),('鐵三角 SR50BT','assets/img/ATH_SR50BT-1.jpg'),('鐵三角 SR50BT','assets/img/ATH_SR50BT-2.jpg'),('鐵三角 SR50BT','assets/img/ATH_SR50BT.jpg'),('鐵三角 WS660BT','assets/img/ATH_WS660BT-1.jpg'),('鐵三角 WS660BT','assets/img/ATH_WS660BT-2.jpg'),('鐵三角 WS660BT','assets/img/ATH_WS660BT.jpg'),('Galaxy Buds2','assets/img/Galaxy_Buds2-1.jpg'),('Galaxy Buds2','assets/img/Galaxy_Buds2-2.jpg'),('Galaxy Buds2','assets/img/Galaxy_Buds2.jpg'),('Galaxy Buds Pro','assets/img/Galaxy_BudsPro-1.jpg'),('Galaxy Buds Pro','assets/img/Galaxy_BudsPro-2.jpg'),('Galaxy Buds Pro','assets/img/Galaxy_BudsPro.jpg'),('水月雨 blessing2','assets/img/MoonDrop_Blessing2-1.jpg'),('水月雨 blessing2','assets/img/MoonDrop_Blessing2-2.jpg'),('水月雨 blessing2','assets/img/MoonDrop_Blessing2.jpg'),('水月雨 光','assets/img/MoonDrop_illumination1.jpg'),('水月雨 光','assets/img/MoonDrop_illumination2.jpg'),('水月雨 光','assets/img/MoonDrop_illumination3.jpg'),('水月雨 kxxs','assets/img/MoonDrop_KXXS-1.jpg'),('水月雨 kxxs','assets/img/MoonDrop_KXXS-2.jpg'),('水月雨 kxxs','assets/img/MoonDrop_KXXS.jpg'),('水月雨 SSR','assets/img/MoonDrop_SSR-1.jpg'),('水月雨 SSR','assets/img/MoonDrop_SSR-2.jpg'),('水月雨 SSR','assets/img/MoonDrop_SSR.jpg'),('水月雨 KATO','assets/img/Oxygen_kato-1.jpg'),('水月雨 KATO','assets/img/Oxygen_kato-2.jpg'),('水月雨 KATO','assets/img/Oxygen_kato.jpg'),('SONY MDR-XB950N1','assets/img/SONY_MDRXB950N1-1.jpg'),('SONY MDR-XB950N1','assets/img/SONY_MDRXB950N1-2.jpg'),('SONY MDR-XB950N1','assets/img/SONY_MDRXB950N1.jpg'),('SONY WH-1000XM4','assets/img/SONY_WH1000XM4-1.jpg'),('SONY WH-1000XM4','assets/img/SONY_WH1000XM4-2.jpg'),('SONY WH-1000XM4','assets/img/SONY_WH1000XM4.jpg'),('SONY WH-H900N','assets/img/SONY_WHH900N-1.jpg'),('SONY WH-H900N','assets/img/SONY_WHH900N-2.jpg'),('SONY WH-H900N','assets/img/SONY_WHH900N.jpg'),('SONY WI-SP500','assets/img/SONY_WI-SP500-1.jpg'),('SONY WI-SP500','assets/img/SONY_WI-SP500-2.jpg'),('SONY WI-SP500','assets/img/SONY_WI-SP500.jpg'),('SONY WI-SP600N','assets/img/SONY_WI-SP600N-1.jpg'),('SONY WI-SP600N','assets/img/SONY_WI-SP600N-2.jpg'),('SONY WI-SP600N','assets/img/SONY_WI-SP600N.jpg'),('SONY WI-SP510','assets/img/SONY_WISP510-1.jpg'),('SONY WI-SP510','assets/img/SONY_WISP510-2.jpg'),('SONY WI-SP510','assets/img/SONY_WISP510.jpg');
/*!40000 ALTER TABLE `product_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL DEFAULT '',
  `product_name` varchar(45) NOT NULL,
  `sold_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` int NOT NULL,
  `sold_quantity` int NOT NULL,
  `total_money` int NOT NULL,
  `address` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (99,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:34:07',2390,20,2390,'臺北市335dd'),(100,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:34:07',11000,10,11000,'臺北市335dd'),(101,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:34:07',4980,4,4980,'臺北市335dd'),(102,'haha@gmail.com','水月雨 KATO','2022-01-07 18:34:07',5680,5,5680,'臺北市335dd'),(103,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:34:07',4990,10,4990,'臺北市335dd'),(106,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:35:44',2390,20,2390,'臺北市335dd'),(107,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:35:44',11000,10,11000,'臺北市335dd'),(108,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:35:44',4980,4,4980,'臺北市335dd'),(109,'haha@gmail.com','水月雨 KATO','2022-01-07 18:35:44',5680,5,5680,'臺北市335dd'),(110,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:35:44',4990,10,4990,'臺北市335dd'),(113,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:36:18',2390,20,2390,'臺北市335dd'),(114,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:36:18',11000,10,11000,'臺北市335dd'),(115,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:36:18',4980,4,4980,'臺北市335dd'),(116,'haha@gmail.com','水月雨 KATO','2022-01-07 18:36:18',5680,5,5680,'臺北市335dd'),(117,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:36:18',4990,10,4990,'臺北市335dd'),(120,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:37:14',2390,20,2390,'臺北市335dd'),(121,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:37:14',11000,10,11000,'臺北市335dd'),(122,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:37:14',4980,4,4980,'臺北市335dd'),(123,'haha@gmail.com','水月雨 KATO','2022-01-07 18:37:14',5680,5,5680,'臺北市335dd'),(124,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:37:14',4990,10,4990,'臺北市335dd'),(127,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:40:14',2390,20,2390,'臺北市335dd'),(128,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:40:14',11000,10,11000,'臺北市335dd'),(129,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:40:14',4980,4,4980,'臺北市335dd'),(130,'haha@gmail.com','水月雨 KATO','2022-01-07 18:40:14',5680,5,5680,'臺北市335dd'),(131,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:40:14',4990,10,4990,'臺北市335dd'),(134,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:44:08',2390,20,2390,'臺北市335dd'),(135,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:44:08',11000,10,11000,'臺北市335dd'),(136,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:44:08',4980,4,4980,'臺北市335dd'),(137,'haha@gmail.com','水月雨 KATO','2022-01-07 18:44:08',5680,5,5680,'臺北市335dd'),(138,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:44:08',4990,10,4990,'臺北市335dd'),(141,'haha@gmail.com','SONY WI-SP500','2022-01-07 18:49:29',2390,20,2390,'臺北市335dd'),(142,'haha@gmail.com','水月雨 blessing2','2022-01-07 18:49:29',11000,10,11000,'臺北市335dd'),(143,'haha@gmail.com','水月雨 kxxs','2022-01-07 18:49:29',4980,4,4980,'臺北市335dd'),(144,'haha@gmail.com','水月雨 KATO','2022-01-07 18:49:29',5680,5,5680,'臺北市335dd'),(145,'haha@gmail.com','Galaxy Buds2','2022-01-07 18:49:29',4990,10,4990,'臺北市335dd');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `price` int NOT NULL DEFAULT '0',
  `car_quantity` int NOT NULL DEFAULT '0',
  `email` varchar(45) NOT NULL DEFAULT 'null',
  `car_money` int NOT NULL DEFAULT '0',
  `address` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_car`
--

LOCK TABLES `shopping_car` WRITE;
/*!40000 ALTER TABLE `shopping_car` DISABLE KEYS */;
INSERT INTO `shopping_car` VALUES ('SONY WH-H900N',7490,1,'10994009@cycu.edu.tw',7490,NULL);
/*!40000 ALTER TABLE `shopping_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `product_name` varchar(45) NOT NULL,
  `import_quantity` int DEFAULT '0',
  `sold_quantity` int DEFAULT '0',
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('AKG K240',500,0,'2022-01-01 16:00:00'),('AKG K240',100,0,'2022-01-01 16:00:00'),('AKG K240',100,0,'2022-01-01 16:00:00'),('AKG K240',300,0,'2022-01-01 16:00:00'),('AKG K240',400,0,'2022-01-01 16:00:00'),('AKG K240',600,0,'2022-01-01 16:00:00'),('AKG K240',600,0,'2022-01-01 16:00:00'),('AKG K240',1000,0,'2022-01-01 16:00:00'),('AKG K240',400,0,'2022-01-01 16:00:00'),('AKG K240',700,0,'2022-01-01 16:00:00'),('AKG K701',1300,0,'2022-01-01 16:00:00'),('AKG K702',1500,0,'2022-01-01 16:00:00'),('AKG K712',300,0,'2022-01-01 16:00:00'),('Galaxy Buds Pro',300,0,'2022-01-02 16:00:00'),('水月雨 光',1000,0,'2022-01-02 16:00:00'),('AKG K712',1000,0,'2022-01-07 15:47:32'),('SONY WI-SP500',0,20,'2022-01-07 18:34:07'),('水月雨 blessing2',0,10,'2022-01-07 18:34:07'),('水月雨 kxxs',0,4,'2022-01-07 18:34:07'),('水月雨 KATO',0,5,'2022-01-07 18:34:07'),('Galaxy Buds2',0,10,'2022-01-07 18:34:07'),('SONY WI-SP500',0,20,'2022-01-07 18:35:44'),('水月雨 blessing2',0,10,'2022-01-07 18:35:44'),('水月雨 kxxs',0,4,'2022-01-07 18:35:44'),('水月雨 KATO',0,5,'2022-01-07 18:35:44'),('Galaxy Buds2',0,10,'2022-01-07 18:35:44'),('SONY WI-SP500',0,20,'2022-01-07 18:36:18'),('水月雨 blessing2',0,10,'2022-01-07 18:36:18'),('水月雨 kxxs',0,4,'2022-01-07 18:36:18'),('水月雨 KATO',0,5,'2022-01-07 18:36:18'),('Galaxy Buds2',0,10,'2022-01-07 18:36:18'),('SONY WI-SP500',0,20,'2022-01-07 18:37:14'),('水月雨 blessing2',0,10,'2022-01-07 18:37:14'),('水月雨 kxxs',0,4,'2022-01-07 18:37:14'),('水月雨 KATO',0,5,'2022-01-07 18:37:14'),('Galaxy Buds2',0,10,'2022-01-07 18:37:14'),('SONY WI-SP500',0,20,'2022-01-07 18:40:14'),('水月雨 blessing2',0,10,'2022-01-07 18:40:14'),('水月雨 kxxs',0,4,'2022-01-07 18:40:14'),('水月雨 KATO',0,5,'2022-01-07 18:40:14'),('Galaxy Buds2',0,10,'2022-01-07 18:40:14'),('SONY WI-SP500',0,20,'2022-01-07 18:44:08'),('水月雨 blessing2',0,10,'2022-01-07 18:44:08'),('水月雨 kxxs',0,4,'2022-01-07 18:44:08'),('水月雨 KATO',0,5,'2022-01-07 18:44:08'),('Galaxy Buds2',0,10,'2022-01-07 18:44:08'),('SONY WI-SP500',0,20,'2022-01-07 18:49:29'),('水月雨 blessing2',0,10,'2022-01-07 18:49:29'),('水月雨 kxxs',0,4,'2022-01-07 18:49:29'),('水月雨 KATO',0,5,'2022-01-07 18:49:29'),('Galaxy Buds2',0,10,'2022-01-07 18:49:29');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('haha@gmail.com','阿森好色喔','987654321'),('www@gmail.com','阿森好色喔','123456789');
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

-- Dump completed on 2022-01-08  4:09:29
