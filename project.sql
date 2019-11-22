-- MySQL dump 10.13  Distrib 5.5.17, for Win32 (x86)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.5.17

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `buyer` varchar(45) NOT NULL,
  `product` int(11) NOT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`buyer`,`product`),
  KEY `buyer` (`buyer`),
  CONSTRAINT `buyer` FOREIGN KEY (`buyer`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('driag@gmail.com',8,1),('itsmeadityaagarwal@ymail.com',4,1),('itsmeadityaagarwal@ymail.com',5,1),('itsmeadityaagarwal@ymail.com',9,1),('itsmeadityaagarwal@ymail.com',10,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat` (`pid`),
  CONSTRAINT `cat` FOREIGN KEY (`pid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (60,NULL,'Mobile Phones'),(61,60,'All Mobile Phones'),(62,60,'Smartphones'),(63,60,'Android Mobiles'),(64,60,'Windows Mobiles'),(65,60,'Used & Refurbished Mobiles'),(66,60,'All Mobile Accessories'),(67,60,'Cases & Covers'),(68,60,'Screen Protectors'),(69,60,'Power Banks'),(70,60,' All Electronics '),(71,60,'All Tablets'),(72,60,'Tablet Accessories'),(73,60,'Landline Phones'),(74,60,'Wearable Devices'),(75,NULL,'Computer Accessories'),(76,75,' All Computers & Accessories '),(77,75,'Laptops'),(78,75,'Desktops & Monitors'),(79,75,'Pen Drives'),(80,75,'Hard Drives'),(81,75,'Memory Cards'),(82,75,'Printers & Ink'),(83,75,'Networking & Internet Devices'),(84,75,' Computer Accessories '),(85,75,' Software '),(86,75,' All Electronics '),(87,75,'All Office & Stationery'),(88,75,'Pens & Writing'),(89,75,'Art & Craft Supplies'),(90,75,'Office Electronics'),(91,75,'Amazon for Business'),(92,NULL,'TV,Audio Cameras'),(93,92,'All Cameras & Photography'),(94,92,'Digital SLRs'),(95,92,'Point & Shoot Cameras'),(96,92,'Lenses'),(97,92,'Camera Accessories'),(98,92,'Security & Surveillance'),(99,92,'Binoculars & Telescopes'),(100,92,'Camcorders'),(101,92,'All Musical Instruments'),(102,92,'Musical Instrument Accessories'),(103,92,'Professional Audio & Recording'),(104,92,' All Electronics '),(105,92,'Televisions'),(106,92,'Headphones'),(107,92,'Speakers'),(108,92,'Home Entertainment Systems'),(109,92,'MP3 & Media Players'),(110,92,'Audio & Video Accessories'),(111,92,'All Audio & Video'),(169,NULL,'Clothing Accessories'),(170,169,'All Accessories'),(171,169,'Offers on Clothing'),(172,169,'All Clothing & Accessories'),(173,169,'Amazon Fashion'),(190,NULL,'Handbags Luggage'),(191,190,'All Handbags & Clutches'),(192,190,'Handbags'),(193,190,'Clutches'),(194,190,'Totes'),(195,190,'Sling Bags'),(196,190,'Premium Bags'),(197,190,'Leather Bags'),(198,190,'Sales & Deals'),(199,190,'Amazon Fashion'),(200,190,'All Bags, Wallets and Luggage'),(201,190,'Backpacks'),(202,190,'Messenger Bags'),(203,190,'Laptop Bags'),(204,190,'Luggage'),(205,190,'Travel Accessories'),(206,190,'Sales & Deals'),(207,NULL,'Shoes'),(208,207,'Formal Shoes'),(209,207,'Sports & Outdoor'),(210,207,'Loafers & Mocassins'),(211,207,'Sneakers'),(212,207,'Sandals & Floaters'),(213,207,'Flip-flops'),(214,207,'Shoe Care & Accessories'),(215,207,'Sales & Deals'),(216,207,'All Shoes'),(217,207,'Amazon Fashion'),(218,207,'Pumps & Peeptoes'),(219,207,'Fashion Sandals'),(220,207,'Casual Slippers'),(221,207,'Ballet Flats'),(222,207,'Sports & Outdoor'),(223,207,'Shoes in Global Store');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id1` varchar(45) NOT NULL,
  `id2` varchar(45) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id1`,`id2`),
  KEY `id1` (`id1`),
  KEY `id2` (`id2`),
  CONSTRAINT `id1` FOREIGN KEY (`id1`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `id2` FOREIGN KEY (`id2`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('ankita@ankita.com','itsmeadityaagarwal@ymail.com',1,'2017-04-22 14:34:30'),('dante@dante.com','itsmeadityaagarwal@ymail.com',1,'2017-03-18 16:32:31'),('driag@gmail.com','itsmeadityaagarwal@ymail.com',1,'2017-03-09 21:23:14'),('itsmeadityaagarwal@ymail.com','ak@gmail.com',1,'2017-04-24 05:54:11'),('itsmeadityaagarwal@ymail.com','mayank@gmail.com',1,'2017-04-24 05:54:02'),('itsmeadityaagarwal@ymail.com','shobhit@gmail.com',1,'2017-04-24 05:53:49'),('shobhit@gmail.com','ak@gmail.com',1,'2017-04-24 05:55:42');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `uid` varchar(45) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`pid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES ('itsmeadityaagarwal@ymail.com',3),('driag@gmail.com',5),('driag@gmail.com',6),('itsmeadityaagarwal@ymail.com',6),('itsmeadityaagarwal@ymail.com',8),('shobhit@gmail.com',12),('itsmeadityaagarwal@ymail.com',13),('shobhit@gmail.com',13);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `sender` varchar(45) NOT NULL,
  `receiver` varchar(45) NOT NULL,
  `message` varchar(450) NOT NULL,
  `status` int(11) DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sender`,`receiver`),
  KEY `me` (`sender`),
  KEY `message` (`sender`),
  KEY `m2` (`receiver`),
  CONSTRAINT `m2` FOREIGN KEY (`receiver`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `message` FOREIGN KEY (`sender`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('ak@gmail.com','shobhit@gmail.com','hi',1,'2017-04-24 05:56:37'),('itsmeadityaagarwal@ymail.com','driag@gmail.com','cxz',1,'2017-04-27 18:06:37'),('itsmeadityaagarwal@ymail.com','shobhit@gmail.com','hi bro',1,'2017-04-27 18:06:46'),('shobhit@gmail.com','ak@gmail.com','hello',1,'2017-04-24 05:57:09');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `desec` varchar(2000) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Converse 150768C Sneakers White Casual Shoes','1,867',NULL,NULL,'Converse-150768C-Sneakers-White-Casual-SDL115241722-1-b3d78.jpeg'),(2,'Converse 150760C Sneakers White Casual Shoes','1,941',NULL,NULL,'Converse-150760C-Sneakers-White-Casual-SDL336637592-1-2b140.jpeg'),(3,'Lancer Sneakers Multi Color Casual Shoes','499',NULL,NULL,'Lancer-Sneakers-Multi-Color-Casual-SDL520690426-1-23dd0.JPG'),(4,'Vans Sneakers Black Casual Shoes','2,399',NULL,NULL,'Vans-Sneakers-Black-Casual-Shoes-SDL544061075-1-3b429.jpg'),(5,'Woodland Tan Outdoor Shoes Art MG4092CAM','3,661',NULL,NULL,'Woodland-Tan-Casual-Shoes-SDL826197772-1-e84f5.jpg'),(6,'United Colors of Benetton Espradrilles Black Casual Shoes','1,992',NULL,NULL,'United-Colors-of-Benetton-Espradrilles-SDL945562160-1-97643.jpeg'),(7,'Aadi Black Outdoor Shoes','399',NULL,NULL,'Aadi-Black-Outdoor-Shoes-SDL895146202-1-625d9.jpg'),(8,'Lancer Sneakers Multi Color Casual Shoes','499',NULL,NULL,'Lancer-Sneakers-Multi-Color-Casual-SDL608392604-1-e718d.JPG'),(9,'United Colors of Benetton A03-BASIC Lifestyle Blue Casual Shoes','1,717',NULL,NULL,'United-Colors-of-Benetton-A03-SDL274682562-1-be014.jpeg'),(10,'Vans Classic Slip-On Lifestyle Multi Color Casual Shoes','2,099',NULL,NULL,'Vans-Classic-Slip-On-Lifestyle-SDL346562164-1-16a45.jpg'),(11,'United Colors of Benetton A03-BASIC Lifestyle Black Casual Shoes','1,373',NULL,NULL,'United-Colors-of-Benetton-A03-SDL813573468-1-e365c.jpeg'),(12,'Adidas Gray Canvas Shoes Art ADIB79035','3,046',NULL,NULL,'Adidas-Gray-Canvas-Shoes-SDL677576641-1-32abe.jpg'),(13,'Woodland Brown Smart Casuals Shoes Art GC592108CAM','3,002',NULL,NULL,'SDL256525298_1372068103_image1-6f594.jpg'),(14,'Converse 150767C Sneakers Navy Casual Shoes','1,616',NULL,NULL,'Converse-150767C-Sneakers-Navy-Casual-SDL728291858-1-c9a27.jpeg'),(15,'Globalite Sneakers Multi Color Casual Shoes - Pack of 2 with Socks and Gym Bag','798',NULL,NULL,'Globalite-Sneakers-Multi-Color-Casual-SDL937767729-1-e9958.jpg'),(16,'Converse 150764C Sneakers Black Casual Shoes','1,552',NULL,NULL,'Converse-150764C-Sneakers-Black-Casual-SDL243720180-1-44924.jpeg'),(17,'United Colors of Benetton A03-BASIC Lifestyle Black Casual Shoes','1,492',NULL,NULL,'United-Colors-of-Benetton-A03-SDL656393846-1-67da1.jpeg'),(18,'Lee Cooper Lifestyle Brown Casual Shoes','2,331',NULL,NULL,'Lee-Cooper-Lifestyle-Brown-Casual-SDL048350335-1-fcf8c.jpeg'),(19,'Sparx(SM-9014) BLACK CASUAL SHOES','1,550',NULL,NULL,'Sparx-Black-Running-Shoes-SDL511068081-1-be020.jpg'),(20,'Converse 150763C Sneakers Black Casual Shoes','1,617',NULL,NULL,'Converse-150763C-Sneakers-Black-Casual-SDL827886399-1-1cc93.jpeg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `desp` varchar(1000) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller` (`seller`),
  CONSTRAINT `seller` FOREIGN KEY (`seller`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Puma Slyde IDP  Navy Casual Shoes','1,532','Puma is the name that comes to mind first when one talks about sportswear. Puma has shown tremendous growth from being a small shoe factory in Germany to the worlds leading companies today. Puma established in 1942 by Adolf and Rudolf Dassler, is a popul',207,'driag@gmail.com',10),(4,'Puma Velocity Tetron II IDP Blue Casual Shoes','1,341','Puma is the name that comes to mind first when one talks about sportswear. Puma has shown tremendous growth from being a small shoe factory in Germany to the worlds leading companies today. Puma established in 1942 by Adolf and Rudolf Dassler, is a popul',207,'driag@gmail.com',10),(5,'Sparx Black Canvas Shoes Art SPARXSC0162BLK','751','.',207,'driag@gmail.com',10),(6,'Vans Era Sneakers Navy Casual Shoes','2,283','Vans, Off the Wall Since 1966, is an iconic, Southern California-based, youth culture brand and the original action sports footwear company. Today, Vans is a leading global footwear, apparel and accessory brand available in more than 170 countries worldwide. The Vans brand is driven by creative self-expression, brought to life through the worlds of art, music, action sports and street culture. Our extended family of snowboarding, surfing, skateboarding and bmx athletes, artists, musicians, designers, and photographers provide inspiration and innovation to our products every day. Every Vans product combines classic style with modern design, comfort and technology, creating an original and authentic mix sold in the best board shops and lifestyle retailers around the world, as well as Vans own network of brand stores and e-commerce sites.',207,'driag@gmail.com',10),(7,'Puma Slyde IDP  Black Casual Shoes','1,812','Puma is the name that comes to mind first when one talks about sportswear. Puma has shown tremendous growth from being a small shoe factory in Germany to the worlds leading companies today. Puma established in 1942 by Adolf and Rudolf Dassler, is a popul',207,'dante@dante.com',10),(8,'Sparx SC0162G Brown Canvas Casual Shoes','870','Available in awe-inspiring colours and designs, it reflects verve and dynamism as an iconic youth brand and is symbolic of a wholehearted zest for life. Sparx has now grown into a large-scale entrepreneurship catering to the basic needs of the quintessential Indian citizen. Today, the company manufactures over 3 lakh pairs of footwear per day, which approximately adds up to over 10 million pairs per year. Each pair is given thorough attention by the dedicated and skilled employees working at the 10 state-of-the-art manufacturing units in Northern India.',207,'dante@dante.com',10),(10,'Vans Sneakers Black Casual Shoes','2,935','Vans, Off the Wall Since 1966, is an iconic, Southern California-based, youth culture brand and the original action sports footwear company. Today, Vans is a leading global footwear, apparel and accessory brand available in more than 170 countries worldwide. The Vans brand is driven by creative self-expression, brought to life through the worlds of art, music, action sports and street culture. Our extended family of snowboarding, surfing, skateboarding and bmx athletes, artists, musicians, designers, and photographers provide inspiration and innovation to our products every day. Every Vans product combines classic style with modern design, comfort and technology, creating an original and authentic mix sold in the best board shops and lifestyle retailers around the world, as well as Vans own network of brand stores and e-commerce sites.',207,'dante@dante.com',10),(11,'Puma Lazy Slip On II DP  Gray Casual Shoes','1,791','Puma is the name that comes to mind first when one talks about sportswear. Puma has shown tremendous growth from being a small shoe factory in Germany to the worlds leading companies today. Puma established in 1942 by Adolf and Rudolf Dassler, is a popul',207,'dante@dante.com',10),(12,'Puma Slyde DP Navy Casual Shoes','1,672','Puma is the name that comes to mind first when one talks about sportswear. Puma has shown tremendous growth from being a small shoe factory in Germany to the worlds leading companies today. Puma established in 1942 by Adolf and Rudolf Dassler, is a popul',207,'dante@dante.com',10),(14,'shirt','444','fddddddddddd',1,'itsmeadityaagarwal@ymail.com',10),(15,'Ninja Silhouette','999','',169,'shobhit@gmail.com',2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publish`
--

DROP TABLE IF EXISTS `publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publish` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `likes` int(11) DEFAULT '0',
  `dislikes` int(11) DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `parent` int(11) DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `parent` FOREIGN KEY (`parent`) REFERENCES `publish` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publish`
--

LOCK TABLES `publish` WRITE;
/*!40000 ALTER TABLE `publish` DISABLE KEYS */;
INSERT INTO `publish` VALUES (0,NULL,NULL,NULL,0,0,'2017-04-19 17:10:44',NULL),(2,'itsmeadityaagarwal@ymail.com','','.jpeg',0,0,'2017-04-19 17:11:19',0),(3,'itsmeadityaagarwal@ymail.com','','.mp4',0,0,'2017-04-19 17:11:53',0),(4,'itsmeadityaagarwal@ymail.com','fg8','comment',0,0,'2017-04-19 17:25:01',3),(5,'itsmeadityaagarwal@ymail.com','','.png',0,0,'2017-04-19 17:47:18',0),(6,'itsmeadityaagarwal@ymail.com','','.png',0,0,'2017-04-22 14:18:54',0),(7,'itsmeadityaagarwal@ymail.com','great','comment',0,0,'2017-04-22 14:19:16',6),(8,'ankita@ankita.com','','.jpeg',0,0,'2017-04-22 14:33:58',0),(9,'itsmeadityaagarwal@ymail.com','','.octet-stream',0,0,'2017-04-22 17:31:16',0),(10,'itsmeadityaagarwal@ymail.com','lala\r\n','.octet-stream',0,0,'2017-04-22 17:31:28',0),(11,'shobhit@gmail.com','yo dude','.octet-stream',0,0,'2017-04-24 05:40:20',0),(12,'shobhit@gmail.com','','.jpeg',0,0,'2017-04-24 05:41:45',0),(13,'itsmeadityaagarwal@ymail.com','','.png',0,0,'2017-04-24 05:59:02',0);
/*!40000 ALTER TABLE `publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(45) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `prof` varchar(45) DEFAULT 'student',
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('','','','',NULL,NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('ak@gmail.com','Akansha','Saxena','akansha','Female',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('ankita@ankita.com','Ankita','Agarwal','ankita','Female',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('dante@dante.com','Dante','Sparda','','Male',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('driag@gmail.com','driag','emperor','driag','Male',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('f@f.com','','','fd',NULL,NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('itsmeadityaagarwal@ymail.com','Aditya','Agarwal','ad','Male',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('mayank@gmail.com','Mayank','kumar','mayank',NULL,NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL),('shobhit@gmail.com','Shobhit','Agarwal','shobhit','Male',NULL,NULL,'student',NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2017-04-28  1:38:49
