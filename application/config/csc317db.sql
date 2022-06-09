-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: csc317db
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `fk_authorid` int NOT NULL,
  `fk_postid` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `key_tousertable_idx` (`fk_authorid`),
  KEY `key_toposttable_idx` (`fk_postid`),
  CONSTRAINT `key_toposttable` FOREIGN KEY (`fk_postid`) REFERENCES `posts` (`id`),
  CONSTRAINT `key_tousertable` FOREIGN KEY (`fk_authorid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (18,'awww so cute!',13,20,'2020-12-12 10:39:06'),(19,'awww so cute!',13,20,'2020-12-12 10:39:08'),(20,'awww so cute!',13,20,'2020-12-12 10:39:14'),(21,'      ',13,19,'2020-12-12 10:39:34'),(22,'      ',13,19,'2020-12-12 10:39:35'),(23,'      ',13,19,'2020-12-12 10:39:36'),(24,'      ',13,19,'2020-12-12 10:39:36'),(25,'      ',13,19,'2020-12-12 10:39:37'),(26,'      ',13,19,'2020-12-12 10:39:38');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `photopath` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `fk_userid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `posts to users_idx` (`fk_userid`),
  CONSTRAINT `posts to users` FOREIGN KEY (`fk_userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (14,'LOLLIPOP','A cat with a lollipop.','public/images/uploads/be1d3bf121566a5ce231ce8ed15d28a370f9d15a8933.png','public/images/uploads/thumbnail-be1d3bf121566a5ce231ce8ed15d28a370f9d15a8933.png',0,'2020-12-03 16:42:22',13),(15,'KFC CUP','A cat with a KFC cup.','public/images/uploads/775400b5953ccd122e1aad89e3a3ecb11e378cc8d9d7.jpeg','public/images/uploads/thumbnail-775400b5953ccd122e1aad89e3a3ecb11e378cc8d9d7.jpeg',0,'2020-12-03 17:08:09',13),(16,'RICECAKES','A cat with ricecakes.','public/images/uploads/c72a58c36e7e5c06d4f8c543427c5d7e5585ab33e44f.jpeg','public/images/uploads/thumbnail-c72a58c36e7e5c06d4f8c543427c5d7e5585ab33e44f.jpeg',0,'2020-12-03 17:08:37',13),(17,'BEAR HOOD','A cat with a bear hood.','public/images/uploads/f542a8623600bc49f9be4e63809504ba83962fcc2e91.jpeg','public/images/uploads/thumbnail-f542a8623600bc49f9be4e63809504ba83962fcc2e91.jpeg',0,'2020-12-03 17:09:05',13),(18,'BUNNY','A cat with a bunny hood.','public/images/uploads/c2c48ecb214ff0d91e0e2f09f3dcff30b5444c59482b.jpeg','public/images/uploads/thumbnail-c2c48ecb214ff0d91e0e2f09f3dcff30b5444c59482b.jpeg',0,'2020-12-03 17:09:28',13),(19,'PEAR','A cat with a pear hood.','public/images/uploads/94a86503bda55732974ef05b4e94616e2fce55ae4093.jpeg','public/images/uploads/thumbnail-94a86503bda55732974ef05b4e94616e2fce55ae4093.jpeg',0,'2020-12-03 17:10:03',13),(20,'BEAR BOX','Two cats with bear hoods in a box.','public/images/uploads/11b01209d1f6f019284f8a1428d509e30d7c45f4a02c.jpeg','public/images/uploads/thumbnail-11b01209d1f6f019284f8a1428d509e30d7c45f4a02c.jpeg',0,'2020-12-03 17:10:34',13),(21,'YAKULT','A cat holding a Yakult Drink.','public/images/uploads/4af1ff79a81f4c15fef955d3690683ce4c9606c644f8.jpeg','public/images/uploads/thumbnail-4af1ff79a81f4c15fef955d3690683ce4c9606c644f8.jpeg',0,'2020-12-03 17:11:11',13);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertype` int NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `userscol_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'mad123','mad123@mail.com','$2b$15$ecZyYmhyiliMQ8NYZiCJ..E2xZk1xB2x1iWhXkXta0PM5WyGdqwom',0,0,'2020-12-03 09:13:32'),(25,'demo','demo@mail.com','$2b$15$uYceoI6f.zTE68plWmpIT.RPpHVnhaVsWJlmpH1dq.qTx7vH6uhdu',0,0,'2020-12-07 19:05:21');
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

-- Dump completed on 2020-12-12 10:48:03
