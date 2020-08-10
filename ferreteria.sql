-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ferreteria
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Current Database: `ferreteria`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ferreteria` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ferreteria`;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` varchar(255) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `nuevo` tinyint(1) NOT NULL DEFAULT '1',
  `imagen_producto` varchar(255) NOT NULL,
  `vendido` int(11) DEFAULT NULL,
  `existente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'A001','Escalera plegable','B001',14.5,'Escalera de metal con soporte para bote de pintura.',1,'https://vdxl.im/4007126995216_g_en_r458_1.jpg',3,24),(2,'A002','Martillo mango de madera','B001',5.2,'Martillo sin unas con mango de madera.',1,'https://images-na.ssl-images-amazon.com/images/I/31ywh8ZGM4L._AC_.jpg',12,36),(3,'A003','Linterna negra','C001',20.1,'Linterna con mango de goma largo alcance.',0,'https://ledlenser.tienda/452-large_default/p7-linterna-ledlenser-450-lumenes.jpg',6,41),(4,'A004','pico','pi01',19.5,'Pico de acero para cava',1,'https://1.bp.blogspot.com/-uoUEZ5VTWa4/VkRSA4ACEhI/AAAAAAAACeI/jSFSPsN30zo/s1600/pico1.png',42,4),(5,'A005','pala','pa01',19.99,'Pala de acero',1,'https://1.bp.blogspot.com/-uoUEZ5VTWa4/VkRSA4ACEhI/AAAAAAAACeI/jSFSPsN30zo/s1600/pico1.png',42,24),(6,'A005','pala','pa01',19.99,'Pala de acero',1,'https://1.bp.blogspot.com/-uoUEZ5VTWa4/VkRSA4ACEhI/AAAAAAAACeI/jSFSPsN30zo/s1600/pico1.png',12,14),(7,'A006','pistola de clavos','pi01',49.99,'Pistola de clavos de 1cm-10cm',1,'https://images-na.ssl-images-amazon.com/images/I/51fQ8S8qnNL._SX300_QL70_.jpg',2,15),(8,'A005','pala','pa01',19.99,'Pala de acero',1,'https://1.bp.blogspot.com/-uoUEZ5VTWa4/VkRSA4ACEhI/AAAAAAAACeI/jSFSPsN30zo/s1600/pico1.png',8,14),(9,'A006','pistola de clavos','pi01',49.99,'Pistola de clavos de 1cm-10cm',1,'https://images-na.ssl-images-amazon.com/images/I/51fQ8S8qnNL._SX300_QL70_.jpg',13,77),(10,'A007','taladro','ta01',66.5,'Taladro electico de multiples velocidades',1,'https://1.bp.blogspot.com/_E33zslVvuw4/S-mj1jFzccI/AAAAAAAAAA8/cGrTZq_JkeM/s1600/fggjui.jpg',9,57),(11,'A005','pala','pa01',19.99,'Pala de acero',1,'https://1.bp.blogspot.com/-uoUEZ5VTWa4/VkRSA4ACEhI/AAAAAAAACeI/jSFSPsN30zo/s1600/pico1.png',4,14),(12,'A006','pistola de clavos','pi01',49.99,'Pistola de clavos de 1cm-10cm',1,'https://images-na.ssl-images-amazon.com/images/I/51fQ8S8qnNL._SX300_QL70_.jpg',34,4),(13,'A007','taladro','ta01',66.5,'Taladro electico de multiples velocidades',0,'https://1.bp.blogspot.com/_E33zslVvuw4/S-mj1jFzccI/AAAAAAAAAA8/cGrTZq_JkeM/s1600/fggjui.jpg',2,7),(14,'A008','cincel','ci01',9.5,'Cincel de acero',1,'http://www.dis.uia.mx/taller_industrial/blog/wp-content/uploads/2013/09/154_8a.jpg',7,16),(15,'A009','maceta','mt01',12.5,'Maceta de acero con mango de madera',1,'https://www.wurth.es/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/0/7/071599905.jpg',4,14),(16,'A010','mazo','mz01',8,'Mazo de hule',1,'http://mlm-s1-p.mlstatic.com/mazo-de-hule-8-oz-548201-MLM8385735178_042015-O.jpg',12,9),(17,'A011','cinta metrica','cm01',8.99,'Cinta de medir de 10mt',0,'https://i.pinimg.com/originals/c2/8b/8a/c28b8a600edd6a1cbbedc9bc36dd0bec.jpg',36,11),(18,'A012','cinta metrica','cm02',8.99,'Cinta de medir de 5mt',1,'https://www.lorenzotools.com/2541-thickbox_default/cinta-metrica-5m-con-freno-lufkin.jpg',12,9),(19,'A013','escuadra','es01',3.99,'Escuadra metalica',0,'https://www.ferreteriaonlinevtc.com/8598-large_default/escuadra-de-carpintero-inoxidable-acha-41.jpg',14,6),(20,'A014','espatula','ep01',4.99,'Espatula plastica',1,'https://i.linio.com/p/bbb9e614543cf97ede47ffebe076b4e8-product.jpg',7,14),(21,'A015','espatula','ep02',4.99,'Espatula metalica',1,'https://www.cohertal.com/wp-content/uploads/2020/03/19031-Espatula-mango-goma-KOKE-Inox-75mm.jpg',10,15),(22,'A016','llana','ln01',4.5,'Llana 3x6',0,'https://http2.mlstatic.com/llanas-profesionales-10-remaches-lisa-surtek-m123180-vv4-D_NQ_NP_17286-MLM20134504992_072014-F.jpg',7,31),(23,'A017','plana de madera','pl01',6.5,'Plana de 6 pulgadas',1,'https://images.squarespace-cdn.com/content/54e605d1e4b0e776a3244650/1466436853127-0KB2VHE0Q1NWPY834YI5/?content-type=image%2Fjpeg',9,21),(24,'A018','carretilla','ca01',29.99,'Carretilla de metal',0,'https://www.ferrepat.com/assets/img/productos/02057.jpg',21,16),(25,'A019','cortador de ceramica','cc01',14.99,'Cortador de ceramica manual',1,'https://www.ferreteriaonlinevtc.com/335-thickbox_default/cortador-de-azulejo-rubi-rapid-62.jpg',3,6),(26,'A020','nivel','nv01',4.5,'Nivel de 32 pulgadas',1,'https://www.ferrovicmar.com/imagen-herramientas/nivel-perfilado-143024/nivel-perfilado-143024.jpg',NULL,NULL),(27,'A021','segueta','sg01',1.5,'Segueta de 12 pulgadas',1,'https://www.muchomaterial.com/assets/images/articulos/originales/20693.jpg',NULL,NULL),(28,'A022','manguera','ma01',9.99,'Manguera de 12 pies',1,'https://www.muchomaterial.com/assets/images/articulos/originales/10653.jpg',NULL,NULL),(29,'A023','guantes de goma','gg01',7.5,'Guantes aislantes para electicista',1,'https://www.maxservice.cl/wp-content/uploads/2018/09/guante-goma-alba%C3%B1il-600x600.jpg',NULL,NULL),(30,'A024','guantes de trabajo','gt01',9.5,'Guantes de proteccion para trabajo pesado',1,'https://sodimac.scene7.com/is/image/SodimacPeru/1308300?$producto310',NULL,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-10 17:20:51
