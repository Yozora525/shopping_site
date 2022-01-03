# ************************************************************
# Sequel Ace SQL dump
# 版本號： 20021
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# 主機: 127.0.0.1 (MySQL 5.5.5-10.6.4-MariaDB)
# 數據庫: headphones
# 生成時間: 2022-01-03 16:17:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# 轉儲表 counter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `counter`;

CREATE TABLE `counter` (
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;

INSERT INTO `counter` (`count`)
VALUES
	(106);

/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 evaluation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `evaluation`;

CREATE TABLE `evaluation` (
  `email` varchar(45) NOT NULL DEFAULT '',
  `product_name` varchar(45) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `comment` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;

INSERT INTO `evaluation` (`email`, `product_name`, `score`, `comment`)
VALUES
	('','',NULL,NULL);

/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 inventory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `product_name` varchar(45) NOT NULL,
  `inventory_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;

INSERT INTO `inventory` (`product_name`, `inventory_quantity`)
VALUES
	('AKG K240',4700),
	('AKG K701',1300),
	('AKG K702',1500),
	('AKG K712',300),
	('Galaxy Buds Pro',300),
	('Galaxy Buds2',0),
	('SONY MDR-XB950N1',0),
	('SONY WH-1000XM4',0),
	('SONY WH-H900N',0),
	('SONY WI-SP500',0),
	('SONY WI-SP510',0),
	('SONY WI-SP600N',0),
	('水月雨 blessing2',0),
	('水月雨 KATO',0),
	('水月雨 kxxs',0),
	('水月雨 SSR',0),
	('水月雨 光',1000),
	('鐵三角 ATH-M50xBT2',0),
	('鐵三角 HL7BT',0),
	('鐵三角 SR50BT',0),
	('鐵三角 WS660BT',0);

/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `product_introduce` varchar(400) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `wear` varchar(45) NOT NULL DEFAULT '',
  `link` varchar(45) NOT NULL DEFAULT '',
  `mic` varchar(45) NOT NULL DEFAULT '',
  `way` varchar(45) NOT NULL DEFAULT '',
  `brand` varchar(45) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`product_name`, `price`, `product_introduce`, `product_image`, `wear`, `link`, `mic`, `way`, `brand`, `status`)
VALUES
	('AKG K240',2200,'0','assets/img/AKG_K240.jpg','耳罩式','有線','無','','AKG','1'),
	('AKG K701',4990,'0','assets/img/AKG_K701.jpg','耳罩式','有線','無','','AKG','0'),
	('AKG K702',9200,'0','assets/img/AKG_K702.jpg','耳罩式','有線','無','','AKG','1'),
	('AKG K712',7890,'0','assets/img/AKG_K712.jpg','耳罩式','有線','無','','AKG','1'),
	('Galaxy Buds Pro',6990,'0','assets/img/Galaxy_BudsPro.jpg','入耳式','無線','無','降噪','Samsung','1'),
	('Galaxy Buds2',4990,'0','assets/img/Galaxy_Buds2.jpg','入耳式','無線','無','降噪','Samsung','1'),
	('SONY MDR-XB950N1',7490,'0','assets/img/SONY_MDRXB950N1.jpg','耳罩式','無線','無','降噪','SONY','1'),
	('SONY WH-1000XM4',10900,'0','assets/img/SONY_WH1000XM4.jpg','耳罩式','無線','有','降噪','SONY','1'),
	('SONY WH-H900N',7490,'0','assets/img/SONY_WHH900N.jpg','耳罩式','無線','有','降噪','SONY','1'),
	('SONY WI-SP500',2390,'0','assets/img/SONY_WI-SP500.jpg','入耳式','無線','有','運動','SONY','1'),
	('SONY WI-SP510',2690,'0','assets/img/SONY_WISP510.jpg','入耳式','無線','無','運動','SONY','1'),
	('SONY WI-SP600N',4990,'0','assets/img/SONY_WI-SP600N.jpg','入耳式','無線','有','運動降噪','SONY','1'),
	('水月雨 blessing2',11000,'0','assets/img/MoonDrop_Blessing2.jpg','入耳式','有線','無','','水月雨','1'),
	('水月雨 KATO',5680,'0','assets/img/Moondrop_kato.jpg','入耳式','有線','無','','水月雨','1'),
	('水月雨 kxxs',4980,'0','assets/img/MoonDrop_KXXS.jpg','入耳式','有線','無','','水月雨','1'),
	('水月雨 SSR',1180,'0','assets/img/MoonDrop_SSR.jpg','入耳式','有線','無','運動','水月雨','1'),
	('水月雨 光',26800,'0','assets/img/MoonDrop_illumination1.jpg','入耳式','有線','無','','水月雨','1'),
	('鐵三角 ATH-M50xBT2',7600,'0','assets/img/ATH_M50xBT2.jpg','耳罩式','無線','有','','鐵三角','1'),
	('鐵三角 HL7BT',5700,'0','assets/img/ATH_HL7BT.jpg','耳罩式','無線','無','','鐵三角','1'),
	('鐵三角 SR50BT',7700,'0','assets/img/ATH_SR50BT.jpg','耳罩式','無線','有','','鐵三角','1'),
	('鐵三角 WS660BT',5200,'0','assets/img/ATH_WS660BT.jpg','耳罩式','無線','無','','鐵三角','1');

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 product_img
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_img`;

CREATE TABLE `product_img` (
  `product_name` varchar(45) NOT NULL,
  `product_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `product_img` WRITE;
/*!40000 ALTER TABLE `product_img` DISABLE KEYS */;

INSERT INTO `product_img` (`product_name`, `product_image`)
VALUES
	('AKG K240','assets/img/AKG_K240-1.jpg'),
	('AKG K240','assets/img/AKG_K240-2.jpg'),
	('AKG K240','assets/img/AKG_K240.jpg'),
	('AKG K701','assets/img/AKG_K701-1.jpg'),
	('AKG K701','assets/img/AKG_K701-2.jpg'),
	('AKG K701','assets/img/AKG_K701.jpg'),
	('AKG K702','assets/img/AKG_K702-1.jpg'),
	('AKG K702','assets/img/AKG_K702-2.jpg'),
	('AKG K702','assets/img/AKG_K702.jpg'),
	('AKG K712','assets/img/AKG_K712-1.jpg'),
	('AKG K712','assets/img/AKG_K712-2.jpg'),
	('AKG K712','assets/img/AKG_K712.jpg'),
	('鐵三角 HL7BT','assets/img/ATH_HL7BT-1.jpg'),
	('鐵三角 HL7BT','assets/img/ATH_HL7BT-2.jpg'),
	('鐵三角 HL7BT','assets/img/ATH_HL7BT.jpg'),
	('鐵三角 ATH-M50xBT2','assets/img/ATH_M50xBT2-1.jpg'),
	('鐵三角 ATH-M50xBT2','assets/img/ATH_M50xBT2-2.jpg'),
	('鐵三角 ATH-M50xBT2','assets/img/ATH_M50xBT2.jpg'),
	('鐵三角 SR50BT','assets/img/ATH_SR50BT-1.jpg'),
	('鐵三角 SR50BT','assets/img/ATH_SR50BT-2.jpg'),
	('鐵三角 SR50BT','assets/img/ATH_SR50BT.jpg'),
	('鐵三角 WS660BT','assets/img/ATH_WS660BT-1.jpg'),
	('鐵三角 WS660BT','assets/img/ATH_WS660BT-2.jpg'),
	('鐵三角 WS660BT','assets/img/ATH_WS660BT.jpg'),
	('Galaxy Buds2','assets/img/Galaxy_Buds2-1.jpg'),
	('Galaxy Buds2','assets/img/Galaxy_Buds2-2.jpg'),
	('Galaxy Buds2','assets/img/Galaxy_Buds2.jpg'),
	('Galaxy Buds Pro','assets/img/Galaxy_BudsPro-1.jpg'),
	('Galaxy Buds Pro','assets/img/Galaxy_BudsPro-2.jpg'),
	('Galaxy Buds Pro','assets/img/Galaxy_BudsPro.jpg'),
	('水月雨 blessing2','assets/img/MoonDrop_Blessing2-1.jpg'),
	('水月雨 blessing2','assets/img/MoonDrop_Blessing2-2.jpg'),
	('水月雨 blessing2','assets/img/MoonDrop_Blessing2.jpg'),
	('水月雨 光','assets/img/MoonDrop_illumination1.jpg'),
	('水月雨 光','assets/img/MoonDrop_illumination2.jpg'),
	('水月雨 光','assets/img/MoonDrop_illumination3.jpg'),
	('水月雨 kxxs','assets/img/MoonDrop_KXXS-1.jpg'),
	('水月雨 kxxs','assets/img/MoonDrop_KXXS-2.jpg'),
	('水月雨 kxxs','assets/img/MoonDrop_KXXS.jpg'),
	('水月雨 SSR','assets/img/MoonDrop_SSR-1.jpg'),
	('水月雨 SSR','assets/img/MoonDrop_SSR-2.jpg'),
	('水月雨 SSR','assets/img/MoonDrop_SSR.jpg'),
	('水月雨 KATO','assets/img/Oxygen_kato-1.jpg'),
	('水月雨 KATO','assets/img/Oxygen_kato-2.jpg'),
	('水月雨 KATO','assets/img/Oxygen_kato.jpg'),
	('SONY MDR-XB950N1','assets/img/SONY_MDRXB950N1-1.jpg'),
	('SONY MDR-XB950N1','assets/img/SONY_MDRXB950N1-2.jpg'),
	('SONY MDR-XB950N1','assets/img/SONY_MDRXB950N1.jpg'),
	('SONY WH-1000XM4','assets/img/SONY_WH1000XM4-1.jpg'),
	('SONY WH-1000XM4','assets/img/SONY_WH1000XM4-2.jpg'),
	('SONY WH-1000XM4','assets/img/SONY_WH1000XM4.jpg'),
	('SONY WH-H900N','assets/img/SONY_WHH900N-1.jpg'),
	('SONY WH-H900N','assets/img/SONY_WHH900N-2.jpg'),
	('SONY WH-H900N','assets/img/SONY_WHH900N.jpg'),
	('SONY WI-SP500','assets/img/SONY_WI-SP500-1.jpg'),
	('SONY WI-SP500','assets/img/SONY_WI-SP500.jpg'),
	('SONY WI-SP500','assets/img/SONY_WI-SP5002.jpg'),
	('SONY WI-SP600N','assets/img/SONY_WI-SP600N-1.jpg'),
	('SONY WI-SP600N','assets/img/SONY_WI-SP600N-2.jpg'),
	('SONY WI-SP600N','assets/img/SONY_WI-SP600N.jpg'),
	('SONY WI-SP510','assets/img/SONY_WISP510-1.jpg'),
	('SONY WI-SP510','assets/img/SONY_WISP510-2.jpg'),
	('SONY WI-SP510','assets/img/SONY_WISP510.jpg');

/*!40000 ALTER TABLE `product_img` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 record
# ------------------------------------------------------------

DROP TABLE IF EXISTS `record`;

CREATE TABLE `record` (
  `email` varchar(45) NOT NULL DEFAULT '',
  `product_name` varchar(45) NOT NULL,
  `sold_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sold_quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL,
  `address` varchar(64) DEFAULT NULL,
  `username` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;

INSERT INTO `record` (`email`, `product_name`, `sold_date`, `order_number`, `price`, `sold_quantity`, `total_money`, `address`, `username`)
VALUES
	('haha@gmail.com','水月雨 KATO','2021-12-30 23:05:03',0,5680,1,5680,'中壢國','test');

/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 server
# ------------------------------------------------------------

DROP TABLE IF EXISTS `server`;

CREATE TABLE `server` (
  `server_email` varchar(319) NOT NULL DEFAULT '',
  `server_name` varchar(45) NOT NULL DEFAULT '',
  `server_pwd` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`server_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;

INSERT INTO `server` (`server_email`, `server_name`, `server_pwd`)
VALUES
	('service@gmail.com','server','Server109*');

/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 shopping_car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shopping_car`;

CREATE TABLE `shopping_car` (
  `product_name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `car_quantity` int(11) NOT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `car_money` int(11) NOT NULL,
  `address` varchar(64) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# 轉儲表 transaction
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `product_name` varchar(45) NOT NULL,
  `import_quantity` int(11) DEFAULT 0,
  `sold_quantity` int(11) DEFAULT 0,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;

INSERT INTO `transaction` (`product_name`, `import_quantity`, `sold_quantity`, `transaction_date`)
VALUES
	('AKG K240',500,0,'2022-01-02'),
	('AKG K240',100,0,'2022-01-02'),
	('AKG K240',100,0,'2022-01-02'),
	('AKG K240',300,0,'2022-01-02'),
	('AKG K240',400,0,'2022-01-02'),
	('AKG K240',600,0,'2022-01-02'),
	('AKG K240',600,0,'2022-01-02'),
	('AKG K240',1000,0,'2022-01-02'),
	('AKG K240',400,0,'2022-01-02'),
	('AKG K240',700,0,'2022-01-02'),
	('AKG K701',1300,0,'2022-01-02'),
	('AKG K702',1500,0,'2022-01-02'),
	('AKG K712',300,0,'2022-01-02'),
	('Galaxy Buds Pro',300,0,'2022-01-03'),
	('水月雨 光',1000,0,'2022-01-03');

/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `email` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`email`, `username`, `password`)
VALUES
	('haha@gmail.com','test','987654321');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
