-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: files_mime_db
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path_id` int(11) unsigned NOT NULL,
  `mime_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `path_id` (`path_id`),
  KEY `mime_id` (`mime_id`),
  CONSTRAINT `files_ibfk_1` FOREIGN KEY (`path_id`) REFERENCES `paths` (`id`),
  CONSTRAINT `files_ibfk_2` FOREIGN KEY (`mime_id`) REFERENCES `mimes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mime_base_types`
--

DROP TABLE IF EXISTS `mime_base_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mime_base_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mime_base_types`
--

LOCK TABLES `mime_base_types` WRITE;
/*!40000 ALTER TABLE `mime_base_types` DISABLE KEYS */;
INSERT INTO `mime_base_types` VALUES (1,'application'),(2,'audio'),(3,'example'),(4,'image'),(5,'message'),(6,'model'),(7,'multipart'),(8,'text'),(9,'video');
/*!40000 ALTER TABLE `mime_base_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mimes`
--

DROP TABLE IF EXISTS `mimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mimes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mime_base_type_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mime_base_type_id` (`mime_base_type_id`),
  CONSTRAINT `mimes_ibfk_1` FOREIGN KEY (`mime_base_type_id`) REFERENCES `mime_base_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mimes`
--

LOCK TABLES `mimes` WRITE;
/*!40000 ALTER TABLE `mimes` DISABLE KEYS */;
INSERT INTO `mimes` VALUES (1,1,'atom+xml'),(2,1,'EDI-X12'),(3,1,'EDIFACT'),(4,1,'json'),(5,1,'javascript'),(6,1,'octet-stream'),(7,1,'ogg'),(8,1,'pdf'),(9,1,'postscript'),(10,1,'soap+xml'),(11,1,'font-woff'),(12,1,'xhtml+xml'),(13,1,'xml-dtd'),(14,1,'xop+xml'),(15,1,'zip'),(16,1,'gzip'),(17,1,'x-bittorrent'),(18,1,'x-tex'),(19,1,'vnd.oasis.opendocument.text'),(20,1,'vnd.oasis.opendocument.spreadsheet'),(21,1,'vnd.oasis.opendocument.presentation'),(22,1,'vnd.oasis.opendocument.graphics'),(23,1,'vnd.ms-excel'),(24,1,'vnd.openxmlformats-officedocument.spreadsheetml.sheet'),(25,1,'vnd.ms-powerpoint'),(26,1,'vnd.openxmlformats-officedocument.presentationml.presentation'),(27,1,'msword'),(28,1,'vnd.openxmlformats-officedocument.wordprocessingml.document'),(29,1,'vnd.mozilla.xul+xml'),(30,1,'vnd.google-earth.kml+xml'),(31,1,'x-www-form-urlencoded'),(32,1,'x-dvi'),(33,1,'x-latex'),(34,1,'x-font-ttf'),(35,1,'x-shockwave-flash'),(36,1,'x-stuffit'),(37,1,'x-rar-compressed'),(38,1,'x-tar'),(39,1,'x-javascript'),(40,1,'x-pkcs12'),(41,1,'x-pkcs12'),(42,1,'x-pkcs7-certificates'),(43,1,'x-pkcs7-certificates'),(44,1,'x-pkcs7-certreqresp'),(45,1,'x-pkcs7-mime'),(46,1,'x-pkcs7-mime'),(47,1,'x-pkcs7-signature'),(48,2,'basic'),(49,2,'L24'),(50,2,'mp4'),(51,2,'aac'),(52,2,'mpeg'),(53,2,'ogg'),(54,2,'vorbis'),(55,2,'x-ms-wma'),(56,2,'x-ms-wax'),(57,2,'vnd.rn-realaudio'),(58,2,'vnd.wave'),(59,2,'webm'),(60,4,'gif'),(61,4,'jpeg'),(62,4,'pjpeg'),(63,4,'png'),(64,4,'svg+xml'),(65,4,'tiff'),(66,4,'vnd.microsoft.icon'),(67,4,'vnd.wap.wbmp'),(68,4,'webp'),(69,5,'http'),(70,5,'imdn+xml'),(71,5,'partial'),(72,5,'rfc822'),(73,6,'example'),(74,6,'iges'),(75,6,'mesh'),(76,6,'vrml'),(77,6,'x3d+binary'),(78,6,'x3d+vrml'),(79,6,'x3d+xml'),(80,7,'mixed'),(81,7,'alternative'),(82,7,'related'),(83,7,'form-data'),(84,7,'signed'),(85,7,'encrypted'),(86,8,'cmd'),(87,8,'css'),(88,8,'csv'),(89,8,'html'),(90,8,'javascript'),(91,8,'plain'),(92,8,'php'),(93,8,'xml'),(94,8,'x-jquery-tmpl'),(95,9,'mpeg'),(96,9,'mp4'),(97,9,'ogg'),(98,9,'quicktime'),(99,9,'webm'),(100,9,'x-ms-wmv'),(101,9,'x-flv'),(102,9,'3gpp'),(103,9,'3gpp2');
/*!40000 ALTER TABLE `mimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paths`
--

DROP TABLE IF EXISTS `paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paths` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paths`
--

LOCK TABLES `paths` WRITE;
/*!40000 ALTER TABLE `paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `paths` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-21  7:59:30
