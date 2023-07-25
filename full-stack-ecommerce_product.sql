-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	5.7.30-log

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int(11) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'BOOK-TECH-1000','JavaScript - The Fun Parts','Learn JavaScript',19.99,'assets/images/products/books/book-javavirus-1000.png',_binary '',100,'2020-10-13 21:04:08.000000',NULL,1),(2,'BOOK-TECH-1001','Spring Framework Tutorial','Learn Spring',29.99,'assets/images/products/books/book-javavirus-1001.png',_binary '',100,'2020-10-13 21:04:08.000000',NULL,1),(3,'BOOK-TECH-1002','Kubernetes - Deploying Containers','Learn Kubernetes',24.99,'assets/images/products/books/book-javavirus-1002.png',_binary '',100,'2020-10-13 21:04:08.000000',NULL,1),(4,'BOOK-TECH-1003','Internet of Things (IoT) - Getting Started','Learn IoT',29.99,'assets/images/products/books/book-javavirus-1003.png',_binary '',100,'2020-10-13 21:04:09.000000',NULL,1),(5,'BOOK-TECH-1004','The Go Programming Language: A to Z','Learn Go',24.99,'assets/images/products/books/book-javavirus-1004.png',_binary '',100,'2020-10-13 21:04:09.000000',NULL,1),(6,'VEGETABLE-1001','Vegetable - Carrot','Vegetable',10.00,'assets/images/products/vegetable/veg-product-001.png',_binary '',100,'2021-02-01 22:47:36.000000',NULL,2),(7,'VEGETABLE-1002','Vegetable - Cauliflower','Vegetable',9.00,'assets/images/products/vegetable/veg-product-002.png',_binary '',100,'2021-02-01 22:48:01.000000',NULL,2),(8,'VEGETABLE-1003','Vegetable - Capsicum','Vegetable',8.00,'assets/images/products/vegetable/veg-product-003.png',_binary '',100,'2021-02-01 22:48:01.000000',NULL,2),(9,'VEGETABLE-1004','Vegetable - Cabbage','Vegetable',11.00,'assets/images/products/vegetable/veg-product-004.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(10,'VEGETABLE-1005','Vegetable - Tomato','Vegetable',12.00,'assets/images/products/vegetable/veg-product-005.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(11,'VEGETABLE-1006','Vegetable - Onion','Vegetable',13.00,'assets/images/products/vegetable/veg-product-006.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(12,'VEGETABLE-1007','Vegetable - Potato ','Vegetable',14.00,'assets/images/products/vegetable/veg-product-007.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(13,'VEGETABLE-1008','Vegetable - Garlic','Vegetable',15.00,'assets/images/products/vegetable/veg-product-008.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(14,'VEGETABLE-1009','Vegetable - Fenugreek Leaf','Vegetable',16.00,'assets/images/products/vegetable/veg-product-009.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(15,'VEGETABLE-1010','Vegetable - Corn','Vegetable',17.00,'assets/images/products/vegetable/veg-product-010.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,2),(16,'TEXTILES-1001','textile - blazer ','textile',10.00,'assets/images/products/textile/textile-product-001.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,3),(17,'TEXTILES-1002','textile - Phant Shirt','textile',11.00,'assets/images/products/textile/textile-product-002.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,3),(18,'TEXTILES-1003','textile - Ladies Frock','textile',12.00,'assets/images/products/textile/textile-product-003.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,3),(19,'TEXTILES-1004','textile - Track Phants','textile',13.00,'assets/images/products/textile/textile-product-004.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,3),(20,'TEXTILES-1005','textile - Ladies Western Wear','textile',14.00,'assets/images/products/textile/textile-product-005.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,3),(21,'TEXTILES-1006','textile - Ladies Frock','textile',15.00,'assets/images/products/textile/textile-product-006.png',_binary '',100,'2021-02-01 22:48:02.000000',NULL,3),(22,'TEXTILES-1007','Vegetable - Saree','textile',16.00,'assets/images/products/textile/textile-product-007.png',_binary '',100,'2021-02-01 22:48:03.000000',NULL,3),(23,'TEXTILES-1008','textile - t shirt','textile',17.00,'assets/images/products/textile/textile-product-008.png',_binary '',100,'2021-02-01 22:48:03.000000',NULL,3),(24,'TEXTILES-1009','textile - Jeans','textile',18.00,'assets/images/products/textile/textile-product-009.png',_binary '',100,'2021-02-01 22:48:03.000000',NULL,3),(25,'TEXTILES-1010','textile - Shirt','textile',19.00,'assets/images/products/textile/textile-product-010.png',_binary '',100,'2021-02-01 22:48:03.000000',NULL,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 10:38:19
