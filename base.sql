CREATE DATABASE  IF NOT EXISTS `ci_database` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `ci_database`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ci_database
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (2,'Animais'),(4,'Games');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_session`
--

DROP TABLE IF EXISTS `ci_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_session` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_session`
--

LOCK TABLES `ci_session` WRITE;
/*!40000 ALTER TABLE `ci_session` DISABLE KEYS */;
INSERT INTO `ci_session` VALUES ('06hjmp4ti7r604h572vk4qjtc05bv149','10.0.2.2',1525226636,'__ci_last_regenerate|i:1525226636;logado|b:0;user|N;'),('06ij7ki5fbbp7tse5sojl5nk70lmqq9u','10.0.2.2',1525225320,'__ci_last_regenerate|i:1525225320;'),('06ohmdm47cuf7ff6hosk508617l2u2fi','10.0.2.2',1525829362,'__ci_last_regenerate|i:1525829362;'),('0po3bp3p283n46je5ae5q3876s8sln9k','10.0.2.2',1525744663,'__ci_last_regenerate|i:1525744661;'),('12b4e4o3ohoe3bqiso39i18sk7a9fi58','10.0.2.2',1528933525,'__ci_last_regenerate|i:1528933525;'),('1desj2gqb3fi95791mok25ravip0nt5c','10.0.2.2',1525205689,'__ci_last_regenerate|i:1525205689;'),('2al1md3hepu7foco5m8ujj6fnt4d9840','10.0.2.2',1525831090,'__ci_last_regenerate|i:1525830986;'),('2i0pb9pjgulgojh24uo2nl1hf7d0dhng','10.0.2.2',1528935633,'__ci_last_regenerate|i:1528935589;'),('38n8r7aunberasou9efoav33fj3682fg','10.0.2.2',1525744346,'__ci_last_regenerate|i:1525744346;'),('3a93qrpdsisb8ucjfc4pe2abj77mbf1h','10.0.2.2',1525224956,'__ci_last_regenerate|i:1525224956;'),('442jbmbr7qj1k7n1ffk9mj3c8ldii0qf','10.0.2.2',1525825518,'__ci_last_regenerate|i:1525825512;'),('4615b00k7dn55ufet3ijl8gcpjgjqumu','10.0.2.2',1525229637,'__ci_last_regenerate|i:1525229637;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('4ac0ejs4vicch6vh7soe37ap7q1p088j','10.0.2.2',1525743621,'__ci_last_regenerate|i:1525743621;'),('4avba48ba6oj6g1qcc7nail2fs9bf68n','10.0.2.2',1525229286,'__ci_last_regenerate|i:1525229286;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('68f0s8v3o26ot82pl8r285b8g8pdsi6p','10.0.2.2',1525204709,'__ci_last_regenerate|i:1525204709;'),('6b90tjfgbh81dtpaevt18moo1246tbc7','10.0.2.2',1525744044,'__ci_last_regenerate|i:1525744044;'),('6loqnu15gio5km1maeocv7rev534bm76','10.0.2.2',1525230194,'__ci_last_regenerate|i:1525230194;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('6nap5to7oijc7if2om4cvat0albetenn','10.0.2.2',1525227584,'__ci_last_regenerate|i:1525227584;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('78n58a081hbsqf8ii4pge640p0l4uc85','10.0.2.2',1525224643,'__ci_last_regenerate|i:1525224643;'),('7j5uuh73qe3hnfgtjc17t5k5dsv86m64','10.0.2.2',1525231611,'__ci_last_regenerate|i:1525231611;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('8bn0igj4f63cb4iknlrmf706i108blvc','10.0.2.2',1525223380,'__ci_last_regenerate|i:1525223380;'),('8iul1oavba535osidlma453h7e5q77e8','10.0.2.2',1525230809,'__ci_last_regenerate|i:1525230809;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('8j9jch935eesstf55c4vsc6iete9o6j9','10.0.2.2',1528933216,'__ci_last_regenerate|i:1528933216;'),('8stmlkqk2bg5jjk0ifv5vt81shvd0m8s','10.0.2.2',1525828948,'__ci_last_regenerate|i:1525828948;'),('9f08oipsg2r4uphj0lnj6dm69865rbno','10.0.2.2',1525205357,'__ci_last_regenerate|i:1525205357;'),('alhqjq1mhviskg92dv8tdb4b9kfranvr','10.0.2.2',1528935589,'__ci_last_regenerate|i:1528935589;'),('b8r4ki42dmkekpubqji29u5iquadg4eb','10.0.2.2',1525830986,'__ci_last_regenerate|i:1525830986;'),('cikg0kgql7rs2kqgd6gn3k4lbrdsbd45','10.0.2.2',1525231177,'__ci_last_regenerate|i:1525231177;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('e8ucji8580f18g92fvkqtqb01db60h4l','10.0.2.2',1525230495,'__ci_last_regenerate|i:1525230495;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('euo8fm6dhu49tv4c8pnuvtqrb06pchte','10.0.2.2',1525231881,'__ci_last_regenerate|i:1525231611;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('fegbebmoilsu85g256de9rpjlkcvl3n7','10.0.2.2',1525203240,'__ci_last_regenerate|i:1525203240;'),('ft52v398jpvdjn0m4njb64dh0cdlba2c','10.0.2.2',1525741440,'__ci_last_regenerate|i:1525741440;'),('gviu5gj9ptvv924q2d8vn8bi3ln3a682','10.0.2.2',1525742447,'__ci_last_regenerate|i:1525742447;'),('htb9k6ouschc5kfbhhv7k61m58ipbfel','10.0.2.2',1525743251,'__ci_last_regenerate|i:1525743251;'),('i3h92gmuk5sih1q3mc1smp1se0708r5g','10.0.2.2',1525827949,'__ci_last_regenerate|i:1525827949;'),('icnk1dqdu9skni1mcleqpd084uu4f8rb','10.0.2.2',1525228467,'__ci_last_regenerate|i:1525228467;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('iq3ns6fs1g1f4docj46s50v37ojlc18p','10.0.2.2',1525829665,'__ci_last_regenerate|i:1525829665;'),('j0u3udbu7un2ukiu0a743dqru67suukq','10.0.2.2',1525224017,'__ci_last_regenerate|i:1525224017;'),('kj8i8lacde3jjg27hhjevog3eg42moqn','10.0.2.2',1525830620,'__ci_last_regenerate|i:1525830620;'),('l229j2f78s5esfabujn670oi6r4d7hv6','10.0.2.2',1528933881,'__ci_last_regenerate|i:1528933881;'),('l3cc000qq7okcs95jq2692npeqc16fu5','10.0.2.2',1525826856,'__ci_last_regenerate|i:1525826856;'),('ltllj2le6tt1tvmvhnpmhcd4dinnfqjp','10.0.2.2',1525744661,'__ci_last_regenerate|i:1525744661;'),('m8ehob85ddsm4o4s98b5riaemmftgo3b','10.0.2.2',1525828467,'__ci_last_regenerate|i:1525828467;'),('mj94aeqmo4cui8p190e6646dkti3cfor','10.0.2.2',1525830003,'__ci_last_regenerate|i:1525830003;'),('mkgjai2s080kcred5u2mmkfejkqssafc','10.0.2.2',1525227256,'__ci_last_regenerate|i:1525227256;logado|b:0;user|N;'),('n9qdm0rbgkkog8gsdtg95g6o66hecfup','10.0.2.2',1525227897,'__ci_last_regenerate|i:1525227897;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('o4qr81rgs80teri6jsgq4etgressc0mp','10.0.2.2',1525228809,'__ci_last_regenerate|i:1525228809;logado|b:1;user|a:1:{s:11:\"user_object\";a:7:{s:10:\"id_usuario\";s:1:\"1\";s:4:\"nome\";s:6:\"Daniel\";s:5:\"email\";s:19:\"ddauberox@gmail.com\";s:6:\"imagem\";s:27:\"http://placehold.it/300x300\";s:9:\"historico\";s:100:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin\";s:4:\"user\";s:6:\"daniel\";s:8:\"password\";s:172:\"581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8=\";}}'),('qaj8up86b15sm9f0qn3o8couicjti2if','10.0.2.2',1528932848,'__ci_last_regenerate|i:1528932848;'),('qat5fuk0jh4qrp0ils8v1jcsvu4ghhck','10.0.2.2',1525226944,'__ci_last_regenerate|i:1525226944;logado|b:0;user|N;'),('r2hm1akbk0vl1dscc3fjav3fcktsntjl','10.0.2.2',1528934257,'__ci_last_regenerate|i:1528934257;'),('rg544j55f0nf4p9vmcsda6uih83n5pr1','10.0.2.2',1525205689,'__ci_last_regenerate|i:1525205689;'),('snsqdnp85f2sdo1hg7hho5fdjpvn757u','10.0.2.2',1525830316,'__ci_last_regenerate|i:1525830316;'),('ssj0v5lrtm626s0h2rq4p4ef9rgmbnbd','10.0.2.2',1525226019,'__ci_last_regenerate|i:1525226019;'),('tqrssi8vndcm3pkisnjusitpkucv0tff','10.0.2.2',1525205030,'__ci_last_regenerate|i:1525205030;'),('uie2mfncpplaora76t30jhnf6dc3c8b3','10.0.2.2',1525740326,'__ci_last_regenerate|i:1525740326;'),('vq9hbjg0v2pqtf5galjsjg6dtdcnrg5r','10.0.2.2',1525226329,'__ci_last_regenerate|i:1525226329;logado|b:0;user|N;');
/*!40000 ALTER TABLE `ci_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id_posts` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(10) unsigned NOT NULL,
  `titulo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conteudo` longtext COLLATE utf8_unicode_ci,
  `data` datetime DEFAULT NULL,
  `img` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_posts`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Titulo','Lorem ipsum dolor sit amet, consectetur adipi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\n','2018-04-28 00:00:00','http://placehold.it/900x300',1),(2,1,'Titulo','Lorem ipsum dolor sit amet, consectetur adipi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis luctus tempus. Donec at mi eu felis condimentum maximus. Vestibulum tristique semper suscipit. Nam sed elit at lacus venenatis efficitur sed a erat. In laoreet sem sapien, ut ultrices lorem maximus at. Nunc ut magna vel nisl tempus convallis ac nec odio. Nam id ultricies urna. Integer facilisis leo faucibus erat gravida, ac consequat libero eleifend. Donec ligula quam, varius nec diam lobortis, porttitor bibendum leo. Aliquam pharetra finibus eros sed viverra.\n\nMauris sit amet pharetra urna. Integer pulvinar, eros eu faucibus feugiat, massa tortor tempus erat, nec consectetur tellus massa eget ex. In eu suscipit felis, sed vehicula felis. Duis eget auctor massa. Mauris sit amet mi metus. Suspendisse pulvinar lectus vel mauris faucibus sodales. Curabitur ut tortor dui. Vivamus luctus tortor lectus, vel dapibus lacus hendrerit in. Quisque at vulputate neque, id consequat orci. Sed auctor neque urna, nec placerat massa aliquet sit amet. Donec iaculis leo a ornare viverra. Mauris mattis metus sed fermentum maximus.\n\nNunc dignissim in magna et iaculis. Quisque ac finibus metus, quis bibendum metus. Suspendisse potenti. Nam condimentum leo eget turpis malesuada rhoncus. Vestibulum quis erat risus. Sed tempus erat in justo blandit cursus. Suspendisse non mollis metus, sed faucibus nulla. Curabitur id sapien tellus. Sed facilisis nulla ut arcu ornare volutpat. Nullam nec odio ac purus ultricies molestie. Nunc pellentesque iaculis dolor, fringilla ullamcorper augue elementum vitae. Phasellus consequat turpis tortor, id porta est luctus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce rhoncus finibus augue ac sollicitudin. Cras id tellus eget justo sodales placerat tincidunt sit amet ipsum.\n\nAliquam erat volutpat. Pellentesque sit amet aliquet purus. Nunc tincidunt tristique sapien vitae faucibus. Donec suscipit, sapien a imperdiet blandit, eros purus maximus ante, vitae vestibulum velit dolor vel elit. Aenean tincidunt rutrum eleifend. Praesent bibendum rhoncus felis in pellentesque. Praesent congue lacus felis, quis interdum dui ultrices sit amet. In suscipit enim libero, nec tincidunt nisi tincidunt ut. Etiam gravida, lacus quis scelerisque auctor, eros neque dignissim eros, vel fringilla dui ante vitae mi. Aenean et eros elit. Aenean ut tempus tellus. Nulla et risus sit amet ex finibus pretium sed finibus velit.\n\n','2018-04-28 00:00:00','http://placehold.it/900x300',2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_categorias`
--

DROP TABLE IF EXISTS `posts_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_categorias` (
  `id_posts_categorias` int(11) NOT NULL AUTO_INCREMENT,
  `id_posts` int(10) unsigned DEFAULT NULL,
  `id_categorias` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_posts_categorias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_categorias`
--

LOCK TABLES `posts_categorias` WRITE;
/*!40000 ALTER TABLE `posts_categorias` DISABLE KEYS */;
INSERT INTO `posts_categorias` VALUES (1,1,1),(3,2,2);
/*!40000 ALTER TABLE `posts_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `historico` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(172) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Daniel','ddauberox@gmail.com','http://placehold.it/300x300','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin','daniel','581c58edbe101d155ac4ad70d2cffb733d37c31ff97aeccceb97ab4ff88b8dbb2eaa96163b640a8157404f14a75e3cd7e548321a085a45e2f40ff9393a08f8e7MxaX+jebWkvvT4chUR1cpyemJwgceiKXbb/4t4CdeF8='),(2,'José Franscisco','ddauberox@gmail.com','http://placehold.it/300x300','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo, nisl ut efficitur sollicitudin','jose','8e95425ae04c7db266be96fa6be089987f756373cc57127c980d10f1111bbd006870b47dcd973478cc2a1a726c7cbb7a0e27cd4a5b6cb4f1384dc576870423ffZd4H8SMZwO0O9n3Psoi9Sneu0iMV/vFgdOuIIoyZY+0=');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 13:54:34
