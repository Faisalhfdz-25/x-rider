-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'Kjvs5F0fbdsW9phJ6xCsc4j1X7WVT1Pj',1,'2024-04-26 03:14:59','2024-04-26 03:14:59','2024-04-26 03:14:59');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-04-26 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL),(2,'Ads 2','2029-04-26 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL),(3,'Ads 3','2029-04-26 00:00:00','not_set','BN3ZCHLIE95I','main/gadgets/gadget-banner-1.jpg','/products',0,3,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL),(4,'Ads 4','2029-04-26 00:00:00','not_set','QGPRRJ2MPZYA','main/gadgets/gadget-banner-2.jpg','/products',0,4,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL),(5,'Ads 5','2029-04-26 00:00:00','not_set','B5ZA76ZWMWAE','main/banners/slider-1.png','http://shofy.test/products/samsung-odyssey-g9-49-inch-curved-gaming-monitor',0,5,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL),(6,'Ads 6','2029-04-26 00:00:00','not_set','F1LTQS976YPY','main/banners/slider-2.png','http://shofy.test/products/gopro-hero9-black-action-camera',0,6,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL),(7,'Ads 7','2029-04-26 00:00:00','not_set','IHPZ2WBSYJUK','main/banners/slider-3.png','http://shofy.test',0,7,'published','2024-04-26 03:15:15','2024-04-26 03:15:15',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-04-26 10:15:09',NULL,1,'2024-04-26 03:15:09','2024-04-26 03:15:09'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-04-26 10:15:09',NULL,1,'2024-04-26 03:15:09','2024-04-26 03:15:09'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-04-26 10:15:09',NULL,1,'2024-04-26 03:15:09','2024-04-26 03:15:09');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Enim voluptas aliquam error eum. Corporis modi deleniti dolores veritatis qui velit et. Laborum corporis nemo velit perferendis aut perferendis non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(2,'Fashion',0,'Eos fugiat dolorum nihil fuga. Laboriosam saepe qui corporis velit et facilis. Est fuga sapiente ad voluptatem. Voluptas earum est aut dolor maxime iste voluptates.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(3,'Electronic',0,'Distinctio alias dolor pariatur ipsum iste. Possimus impedit voluptates fuga sequi. Ad numquam recusandae et accusamus a neque voluptatem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(4,'Commercial',0,'Quos cumque qui quibusdam consequuntur et aut. Iusto ratione totam sit atque id. Itaque architecto laudantium cumque ea est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(5,'Organic Fruits',0,'Odio asperiores sed reprehenderit quae. Exercitationem dolorem sit molestias officiis saepe quo est sed. Aut molestiae iste reprehenderit eos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(6,'Ecological',0,'Quam qui necessitatibus debitis facere non maiores. Aut quisquam error sit ea maiores incidunt error fuga. Laudantium doloribus magnam sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:04','2024-04-26 03:15:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Prof. Anais McKenzie','wsawayn@example.org','878-577-4415','778 Ericka Valley\nWest Lamont, VT 21769-9484','Sed eaque tempora voluptas.','Aut quis deleniti dignissimos vel soluta. Qui sapiente voluptates aspernatur eius. Excepturi dolores aut nihil quia minus laudantium eligendi. Nam repellat sit est voluptatem veniam iste. Modi ipsa facilis excepturi exercitationem dicta nulla ut. Molestiae tempora nihil quam cupiditate et praesentium. Aut doloremque perferendis qui voluptatem tenetur dolorem ipsam. Eaque nam dicta quibusdam laboriosam eaque iusto. Non et aspernatur quidem. Itaque neque in ad quas.',NULL,'read','2024-04-26 03:15:03','2024-04-26 03:15:03'),(2,'Lucy Miller Sr.','yolanda.hoeger@example.com','(231) 668-5810','618 Schroeder Walk Suite 245\nEllisside, DE 10058-5244','Optio impedit non itaque aut excepturi.','Dolor quia culpa sed laborum ullam. Quasi repellendus consequatur odio magni animi vel. Natus et dolorum aut doloremque est. Tempora incidunt mollitia et nulla maxime. Hic consectetur sed pariatur et sit. Ullam voluptatem officia dolores et veniam. Reiciendis est expedita qui aut deserunt. Rerum voluptates voluptatem veniam. Aliquam ea eaque quia officia. Veniam quod quod a voluptas. Aut pariatur quia ut incidunt illo impedit necessitatibus. Incidunt quis modi labore voluptate.',NULL,'unread','2024-04-26 03:15:03','2024-04-26 03:15:03'),(3,'Glenna Kemmer DVM','oparisian@example.org','+14785085026','4307 Marge Mission\nWilfridfurt, DE 20300','Illum ut impedit ratione quia quia debitis sint.','Omnis vel rerum aliquam sequi. Necessitatibus et harum neque. Modi et molestiae earum dolore eveniet exercitationem eum. Saepe quibusdam nisi molestiae quam voluptas in exercitationem id. Consequatur consequuntur delectus sapiente molestiae voluptas eius. Officiis libero et nulla. Qui alias dolorem reprehenderit est vel.',NULL,'read','2024-04-26 03:15:03','2024-04-26 03:15:03'),(4,'Miss Angelica Ryan Jr.','ari.kassulke@example.com','662.653.0287','769 Ledner Lane Apt. 255\nPort Demarco, KS 53573','Excepturi odit quaerat ut.','Aspernatur molestiae aspernatur reprehenderit quidem praesentium omnis aut. Suscipit qui quia amet necessitatibus libero adipisci. Repellendus sed eveniet ut culpa quia omnis. Earum at quasi dolores at aperiam. Deleniti amet quia nesciunt quidem vel consequatur. Laudantium ut omnis dolorem sed doloremque est. Expedita quam corrupti odit et voluptatum dolores quam earum. Non dolorem non natus nulla est. Dolorum maxime facere rerum. Illo vero necessitatibus ex ullam.',NULL,'read','2024-04-26 03:15:03','2024-04-26 03:15:03'),(5,'August Schmeler','torp.kaley@example.org','1-725-864-4950','4256 Frances Road Apt. 512\nNew Timmothytown, CA 86812','Omnis at blanditiis laboriosam.','Ipsam est facere at magni consequuntur dolore. Quaerat quis earum corrupti vel. Itaque dolor dolores exercitationem. Ut aut consectetur blanditiis numquam natus aut mollitia. Est quaerat quos ea quam. Laborum architecto voluptatem dolor quaerat. Enim id ducimus enim. Explicabo aliquam cumque non corrupti quia eos pariatur amet. Neque rerum rerum est. Tempore aut et facilis sunt. Eligendi beatae necessitatibus non facilis. Officia qui omnis quis quos ad consectetur.',NULL,'unread','2024-04-26 03:15:03','2024-04-26 03:15:03'),(6,'Tracey Turcotte','vhamill@example.com','+1 (341) 273-1550','884 Terrell Stream Apt. 842\nNew Heavenfurt, UT 15421-7338','Consectetur omnis quia nihil.','Accusantium eum dolores accusantium nobis velit molestias. Eum ea id aperiam velit aspernatur. Eos ad vel enim ratione numquam accusantium. Voluptatem dolorem laborum dolorum numquam qui sit. Minus sed ut ipsam sit hic possimus. Numquam quod sapiente a ducimus. Ut molestiae odit impedit dignissimos dolor quos. Ipsam praesentium sed molestiae laudantium et. Provident dicta rem delectus quam. Quod eligendi eos itaque enim ipsum enim.',NULL,'unread','2024-04-26 03:15:03','2024-04-26 03:15:03'),(7,'Elliott Harvey DDS','billy37@example.org','971.446.0556','9483 Narciso Summit\nWebermouth, MA 01215-3066','Illum laboriosam molestiae rem unde.','Sed quasi nemo tempora et. Qui sit corrupti animi a voluptatem. Ipsum eveniet officiis optio mollitia. Ab ut quaerat enim est numquam nemo. Consequatur cupiditate sit explicabo. Molestiae voluptate et et qui. Consequuntur et inventore eum et. Veniam pariatur voluptas nemo debitis placeat distinctio. Et sint cum qui quia. Quae quisquam et ipsa fuga.',NULL,'unread','2024-04-26 03:15:03','2024-04-26 03:15:03'),(8,'Dedrick Torphy','danny.kuphal@example.org','+1.872.587.4252','386 Hettinger Island Suite 268\nWest Faybury, WY 75013','Est ipsum et natus magnam laborum error quasi.','Dolorem explicabo quia molestias explicabo. Accusamus ad nihil rerum assumenda. Saepe expedita beatae beatae mollitia. Est quasi laboriosam alias et impedit et magni laborum. Sint qui alias voluptas excepturi. Sed velit aut facere rerum maxime. Modi soluta est similique et aut et non. Fuga sed ullam ut. Dolorem ea atque nam quod. Nihil ut iure deleniti tempore fuga asperiores. Repudiandae est suscipit ullam et. Omnis magnam ut est vel. Ipsam assumenda delectus praesentium occaecati.',NULL,'read','2024-04-26 03:15:03','2024-04-26 03:15:03'),(9,'Cristopher Pagac','nfunk@example.com','+16147378385','98021 Pagac Row Suite 086\nPort Barrymouth, KY 08513','Laboriosam et laborum quaerat nulla non.','Magnam omnis delectus aut necessitatibus id. Culpa qui labore repudiandae. Qui sed totam quas molestiae eius neque at. Atque id quo quae dolor voluptas molestiae rem. Qui nesciunt animi et ut. Dolorem sit minima ratione adipisci animi. Aut corporis quidem molestiae eveniet voluptatibus. Et voluptas tempore voluptatibus fugit doloremque. Ut vero qui facere vero tenetur ab. Harum deleniti amet impedit porro culpa et. Sint tempore eaque non velit.',NULL,'read','2024-04-26 03:15:03','2024-04-26 03:15:03'),(10,'Prof. Meaghan Grant','abagail.kuvalis@example.net','214.819.6858','39108 Cordie Lock\nDouglasfort, NV 59990-0508','Facilis rerum doloremque exercitationem rem.','Maiores voluptates sit amet dolores. Itaque vel provident id. Nobis ad ut magnam nostrum. Harum consequatur est unde neque. Inventore molestiae ea molestiae minus laudantium voluptates non. Quia facilis consequatur facilis quod sunt non aliquid voluptatem. Nihil officia dolorum autem quae veritatis eveniet quibusdam. Repellat dolorem cum qui occaecati vel numquam.',NULL,'read','2024-04-26 03:15:03','2024-04-26 03:15:03');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-04-26 03:15:00','2024-04-26 03:15:00');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(2,'EUR','€',0,2,1,0,0.84,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(3,'VND','₫',0,0,2,0,23203,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(4,'NGN','₦',1,2,2,0,895.52,'2024-04-26 03:15:00','2024-04-26 03:15:00');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Graham Howe','customer@botble.com','+12027620650','TL','Mississippi','Wymanbury','1018 Shawna Pines Suite 193',1,1,'2024-04-26 03:15:01','2024-04-26 03:15:01','78524-8382'),(2,'Graham Howe','customer@botble.com','+15596140529','PN','Hawaii','Goyettetown','79759 Bashirian Groves',1,0,'2024-04-26 03:15:01','2024-04-26 03:15:01','99225'),(3,'Dr. Kaden King','vendor@botble.com','+14709959589','MK','Florida','Willside','679 Olin Route',2,1,'2024-04-26 03:15:01','2024-04-26 03:15:01','08406-4044'),(4,'Dr. Kaden King','vendor@botble.com','+15806464198','VE','Arizona','Deckowport','980 Orn Shores Apt. 384',2,0,'2024-04-26 03:15:01','2024-04-26 03:15:01','66670-0231'),(5,'Prof. Madison Weber I','klein.laurianne@example.com','+19292036625','DZ','Hawaii','Leschborough','763 Sheridan Glens',3,1,'2024-04-26 03:15:01','2024-04-26 03:15:01','65761-8203'),(6,'Maxime Schowalter','mylene.luettgen@example.org','+13074223037','BS','Florida','Sengerborough','5814 Miller Camp',4,1,'2024-04-26 03:15:01','2024-04-26 03:15:01','06437-6696'),(7,'Delta Kertzmann','brown.jacobi@example.org','+17692532065','IM','South Carolina','East Edythemouth','4394 Frida View',5,1,'2024-04-26 03:15:02','2024-04-26 03:15:02','62809-3112'),(8,'Prof. Grover Walker','mkoepp@example.net','+12319178612','BL','South Dakota','Lake Xzavierville','940 Elwin Pike',6,1,'2024-04-26 03:15:02','2024-04-26 03:15:02','62710'),(9,'Mrs. Matilda Brekke III','hallie.crona@example.org','+17868561496','PE','Nebraska','East Dan','19207 Huels Union',7,1,'2024-04-26 03:15:02','2024-04-26 03:15:02','89015-4372'),(10,'Filomena Lindgren','lubowitz.mozell@example.com','+13479236407','DK','Michigan','Kennyton','8568 Carley Expressway Apt. 863',8,1,'2024-04-26 03:15:02','2024-04-26 03:15:02','87297-4251'),(11,'Aaron Keeling','raymond.nikolaus@example.net','+17542777773','KW','Oregon','Port Janetland','2982 Destiny Motorway Apt. 492',9,1,'2024-04-26 03:15:03','2024-04-26 03:15:03','99426-6290'),(12,'Hadley Zboncak','jonas.ullrich@example.org','+15206851051','KZ','Georgia','North Darien','6545 Koelpin Groves',10,1,'2024-04-26 03:15:03','2024-04-26 03:15:03','42578');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Graham Howe','customer@botble.com','$2y$12$YVTspPioaGsTxt7eb8aSh.N6183LKQSKzulyYE8XCnT.WcAU9hYRK','main/customers/5.jpg','1994-04-11','+17852843423',NULL,'2024-04-26 03:15:01','2024-04-26 03:15:01','2024-04-26 10:15:00',NULL,0,NULL,'activated',NULL),(2,'Dr. Kaden King','vendor@botble.com','$2y$12$L40XGpiMYseHou5T3FTOTejfktzc6.ZhQPMLpOqn40dw/pPoqU5RK','main/customers/5.jpg','1993-04-03','+16054751636',NULL,'2024-04-26 03:15:01','2024-04-26 03:15:05','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(3,'Prof. Madison Weber I','klein.laurianne@example.com','$2y$12$Tacj0vYu39DIoOkoF5seNe.90xsAE8w1JS1PwMIyXdcFFXg8ek9Di','main/customers/1.jpg','1991-04-11','+13805529301',NULL,'2024-04-26 03:15:01','2024-04-26 03:15:06','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(4,'Maxime Schowalter','mylene.luettgen@example.org','$2y$12$FNEl6wKx3FYa.AtzpLvlQebdW87LLaHyEkRYdnSODIKYGfW0UdKh2','main/customers/2.jpg','1982-04-03','+12287840087',NULL,'2024-04-26 03:15:01','2024-04-26 03:15:06','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(5,'Delta Kertzmann','brown.jacobi@example.org','$2y$12$4m0kcZpd1/1Ob.rBNWpz6u.C7GT4XvCwb2kDE28oAO796JvKOT9ea','main/customers/3.jpg','1991-04-23','+17204835664',NULL,'2024-04-26 03:15:02','2024-04-26 03:15:06','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(6,'Prof. Grover Walker','mkoepp@example.net','$2y$12$fNvI/4CV2DT3PA9enWq28.s4EG7kUJTsbFTF/P3TzD9uOfM4/ES5y','main/customers/4.jpg','1976-04-03','+15713635135',NULL,'2024-04-26 03:15:02','2024-04-26 03:15:06','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(7,'Mrs. Matilda Brekke III','hallie.crona@example.org','$2y$12$5o4xzZbuR2y4cDkoobDaV./oLQ3lL2AZ1JFC3wZP6o4vn0JyOAV4i','main/customers/5.jpg','1974-03-29','+19409473527',NULL,'2024-04-26 03:15:02','2024-04-26 03:15:07','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(8,'Filomena Lindgren','lubowitz.mozell@example.com','$2y$12$hiLMsKs3RhM7j3s6AYG/UezE0eCDXVtffQZpt6VreC9bM.YAwZD4u','main/customers/6.jpg','2003-04-10','+14018165035',NULL,'2024-04-26 03:15:02','2024-04-26 03:15:07','2024-04-26 10:15:00',NULL,1,'2024-04-26 10:15:05','activated',NULL),(9,'Aaron Keeling','raymond.nikolaus@example.net','$2y$12$3MlGCb6fvoyQJ3x3YArnWOJTh.QdOxn9dCdW3GA33WubBX1J7KNbK','main/customers/7.jpg','1994-03-30','+17065651413',NULL,'2024-04-26 03:15:03','2024-04-26 03:15:07','2024-04-26 10:15:00',NULL,0,NULL,'activated',NULL),(10,'Hadley Zboncak','jonas.ullrich@example.org','$2y$12$G17NxKJ1DJKKMDkCvB1NreCEZy1oj8CuBQvJSY6O/6oOMGPsV8tlm','main/customers/8.jpg','1993-04-13','+13619132574',NULL,'2024-04-26 03:15:03','2024-04-26 03:15:07','2024-04-26 10:15:00',NULL,0,NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','2ZLIKC2XSNZQ','2024-04-25 10:15:04',NULL,NULL,0,220,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(2,'Discount 2','DGSCKWWUG8PX','2024-04-25 10:15:04','2024-05-21 10:15:04',NULL,0,494,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(3,'Discount 3','7IJLM7HRO1O1','2024-04-25 10:15:04',NULL,NULL,0,115,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(4,'Discount 4','JV78FHHFNWLY','2024-04-25 10:15:04','2024-05-18 10:15:04',NULL,0,765,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(5,'Discount 5','C3S6PUODKLI3','2024-04-25 10:15:04','2024-05-08 10:15:04',NULL,0,194,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(6,'Discount 6','YI95JQX83GGQ','2024-04-25 10:15:04',NULL,NULL,0,385,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(7,'Discount 7','HNWS3PD0IPWT','2024-04-25 10:15:04',NULL,NULL,0,342,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(8,'Discount 8','IEEVTOFLBKG0','2024-04-25 10:15:04','2024-05-25 10:15:04',NULL,0,994,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(9,'Discount 9','BO6ESS3MHVU1','2024-04-25 10:15:04',NULL,NULL,0,416,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL),(10,'Discount 10','XTUQ5X52CXWR','2024-04-25 10:15:04',NULL,NULL,0,556,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:15:04','2024-04-26 03:15:04',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,1157.35,9,4),(1,2,148.92,18,4),(1,3,33.44,7,1),(1,4,545.9232,8,5),(1,5,91.76,13,3),(1,6,1150.56,16,4),(1,7,1554,6,3),(1,8,201.94,12,4),(1,9,181.83,10,1),(1,10,155.8,20,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-05-19 00:00:00','published','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(1,2,'2 Year',10,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(1,3,'3 Year',20,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(2,4,'4GB',0,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(2,5,'8GB',10,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(2,6,'16GB',20,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(3,7,'Core i5',0,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(3,8,'Core i7',10,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(3,9,'Core i9',20,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(4,10,'128GB',0,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(4,11,'256GB',10,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(4,12,'512GB',20,9999,0,'2024-04-26 03:15:05','2024-04-26 03:15:05');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:15:05','2024-04-26 03:15:05'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-04-26 03:15:05','2024-04-26 03:15:05');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-04-26 03:15:00','2024-04-26 03:15:00',0),(2,'Size','size','text',1,1,1,'published',1,'2024-04-26 03:15:00','2024-04-26 03:15:00',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-04-26 03:15:00','2024-04-26 03:15:00',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-04-26 03:15:00','2024-04-26 03:15:00',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(6,2,'S','s',NULL,NULL,1,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(7,2,'M','m',NULL,NULL,0,2,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(8,2,'L','l',NULL,NULL,0,3,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-04-26 03:15:00','2024-04-26 03:15:00'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-04-26 03:15:00','2024-04-26 03:15:00');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'New Arrivals',0,NULL,'published',0,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-home',NULL),(2,'Electronics',0,NULL,'published',1,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-tv',NULL),(3,'Featured',2,NULL,'published',0,'main/product-categories/menu-1.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(4,'New Arrivals',3,NULL,'published',0,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(5,'Best Sellers',3,NULL,'published',1,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(6,'Mobile Phone',3,NULL,'published',2,'main/product-categories/2.png',1,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(7,'Computers & Laptops',2,NULL,'published',1,'main/product-categories/menu-2.jpg',1,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(8,'Top Brands',7,NULL,'published',0,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(9,'Weekly Best Selling',7,NULL,'published',1,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(10,'CPU Heat Pipes',7,NULL,'published',2,'main/product-categories/3.png',1,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(11,'CPU Coolers',7,NULL,'published',3,'main/product-categories/category-thumb-9.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(12,'Accessories',2,NULL,'published',2,'main/product-categories/menu-3.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(13,'Headphones',12,NULL,'published',0,'main/product-categories/1.png',1,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(14,'Wireless Headphones',12,NULL,'published',1,'main/product-categories/category-thumb-1.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(15,'TWS Earphones',12,NULL,'published',2,'main/product-categories/category-thumb-6.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(16,'Smart Watch',12,NULL,'published',3,'main/product-categories/4.png',1,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(17,'Gaming Console',2,NULL,'published',3,'main/product-categories/category-thumb-8.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(18,'Playstation',2,NULL,'published',4,'main/product-categories/category-thumb-12.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10',NULL,NULL),(19,'Gifts',0,NULL,'published',2,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-gift',NULL),(20,'Computers',0,NULL,'published',3,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-laptop',NULL),(21,'Desktop',20,NULL,'published',0,'main/product-categories/category-thumb-5.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-desktop',NULL),(22,'Laptop',20,NULL,'published',1,'main/product-categories/category-thumb-3.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-laptop',NULL),(23,'Tablet',20,NULL,'published',2,'main/product-categories/category-thumb-4.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-tablet',NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-keyboard',NULL),(25,'Smartphones & Tablets',0,NULL,'published',4,'main/product-categories/category-thumb-10.jpg',0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-mobile',NULL),(26,'TV,\n                Video & Music',0,NULL,'published',5,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-device-tv',NULL),(27,'Cameras',0,NULL,'published',6,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-camera',NULL),(28,'Cooking',0,NULL,'published',7,NULL,0,'2024-04-26 03:15:10','2024-04-26 03:15:10','ti ti-grill-spatula',NULL),(29,'Accessories',0,NULL,'published',8,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11','ti ti-building-store',NULL),(30,'With Bluetooth',29,NULL,'published',0,'main/product-categories/5.png',1,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL),(31,'Sports',0,NULL,'published',9,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11','ti ti-ball-football',NULL),(32,'Electronics Gadgets',0,NULL,'published',10,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11','ti ti-cpu-2',NULL),(33,'Micrscope',32,NULL,'published',0,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL),(34,'Remote Control',32,NULL,'published',1,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL),(35,'Monitor',32,NULL,'published',2,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL),(36,'Thermometer',32,NULL,'published',3,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL),(37,'Backpack',32,NULL,'published',4,NULL,0,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL),(38,'Headphones',32,NULL,'published',5,'main/product-categories/category-thumb-1.jpg',0,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,17),(1,51),(1,55),(2,8),(2,18),(2,25),(2,44),(2,50),(2,53),(3,2),(3,4),(3,12),(3,13),(3,30),(3,33),(3,41),(3,55),(4,1),(4,19),(4,36),(5,15),(5,16),(5,26),(5,27),(5,29),(5,40),(5,43),(5,54),(6,4),(6,13),(6,17),(6,20),(6,30),(6,34),(6,42),(6,46),(6,55),(7,3),(7,4),(7,14),(7,23),(7,24),(7,46),(7,52),(8,7),(8,9),(8,15),(8,25),(8,27),(8,45),(8,47),(8,50),(9,1),(9,2),(9,5),(9,14),(9,22),(9,24),(9,40),(9,43),(10,6),(10,20),(10,36),(10,38),(10,39),(11,8),(11,10),(11,24),(11,33),(11,49),(12,9),(12,37),(12,40),(12,42),(13,1),(13,8),(13,10),(13,28),(13,31),(13,48),(13,55),(13,57),(14,6),(14,9),(14,12),(14,15),(14,35),(15,15),(15,16),(15,32),(15,35),(15,37),(15,38),(15,44),(16,11),(16,12),(16,23),(16,30),(16,52),(16,56),(17,2),(17,11),(17,21),(17,26),(17,32),(17,47),(18,22),(18,23),(18,29),(18,31),(18,35),(18,54),(19,6),(19,16),(19,28),(20,18),(20,21),(20,25),(20,34),(20,39),(20,41),(20,46),(20,47),(21,1),(21,2),(21,3),(21,7),(21,33),(21,36),(21,54),(22,4),(22,6),(22,57),(23,13),(23,23),(23,27),(23,43),(23,45),(23,53),(24,18),(24,42),(24,43),(24,48),(25,7),(25,11),(25,31),(25,34),(26,3),(26,18),(26,32),(26,45),(26,48),(26,56),(27,5),(27,8),(27,17),(27,33),(27,35),(27,40),(27,49),(28,11),(28,19),(28,26),(28,28),(28,47),(28,53),(28,57),(29,14),(29,19),(29,36),(30,16),(30,38),(30,39),(30,45),(30,46),(30,51),(30,56),(31,5),(31,7),(31,37),(31,38),(31,52),(32,14),(32,50),(32,54),(33,3),(33,21),(33,30),(33,34),(33,41),(33,42),(34,21),(34,26),(34,29),(34,44),(34,52),(34,53),(35,5),(35,10),(35,20),(35,25),(35,28),(35,37),(35,39),(35,50),(35,51),(35,56),(35,57),(36,17),(36,22),(36,24),(36,41),(36,48),(37,19),(37,20),(37,22),(37,27),(37,31),(37,44),(37,49),(37,51),(38,9),(38,10),(38,12),(38,13),(38,29),(38,32),(38,49);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,2),(1,4),(1,9),(1,14),(1,25),(1,35),(1,36),(1,40),(1,44),(1,46),(1,53),(2,3),(2,5),(2,6),(2,15),(2,23),(2,24),(2,26),(2,28),(2,29),(2,34),(2,37),(2,45),(2,50),(2,51),(2,52),(2,56),(3,11),(3,12),(3,13),(3,20),(3,21),(3,30),(3,31),(3,32),(3,38),(3,39),(3,42),(3,43),(3,48),(3,49),(3,55),(3,57),(4,7),(4,8),(4,10),(4,16),(4,17),(4,18),(4,19),(4,22),(4,27),(4,33),(4,41),(4,47),(4,54);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-04-26 03:15:11','2024-04-26 03:15:11',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-04-26 03:15:11','2024-04-26 03:15:11',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-04-26 03:15:11','2024-04-26 03:15:11',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-04-26 03:15:11','2024-04-26 03:15:11',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,6,0,0.00,'fixed',1),(1,22,0,0.00,'fixed',1),(1,34,0,0.00,'fixed',1),(1,37,0,0.00,'fixed',1),(1,40,0,0.00,'fixed',1),(1,42,0,0.00,'fixed',1),(1,45,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,33,0,0.00,'fixed',1),(2,40,0,0.00,'fixed',1),(3,6,0,0.00,'fixed',1),(3,23,0,0.00,'fixed',1),(3,32,0,0.00,'fixed',1),(3,37,0,0.00,'fixed',1),(3,40,0,0.00,'fixed',1),(3,49,0,0.00,'fixed',1),(4,18,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(4,22,0,0.00,'fixed',1),(4,26,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,44,0,0.00,'fixed',1),(4,53,0,0.00,'fixed',1),(5,28,0,0.00,'fixed',1),(5,30,0,0.00,'fixed',1),(5,40,0,0.00,'fixed',1),(5,48,0,0.00,'fixed',1),(5,56,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(6,24,0,0.00,'fixed',1),(6,35,0,0.00,'fixed',1),(6,57,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,37,0,0.00,'fixed',1),(7,38,0,0.00,'fixed',1),(7,43,0,0.00,'fixed',1),(7,47,0,0.00,'fixed',1),(7,51,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,27,0,0.00,'fixed',1),(8,48,0,0.00,'fixed',1),(8,52,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,16,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(9,30,0,0.00,'fixed',1),(9,43,0,0.00,'fixed',1),(9,56,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,38,0,0.00,'fixed',1),(10,43,0,0.00,'fixed',1),(10,45,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(11,26,0,0.00,'fixed',1),(11,49,0,0.00,'fixed',1),(11,50,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(12,31,0,0.00,'fixed',1),(12,36,0,0.00,'fixed',1),(12,46,0,0.00,'fixed',1),(12,55,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,25,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,31,0,0.00,'fixed',1),(13,32,0,0.00,'fixed',1),(13,50,0,0.00,'fixed',1),(14,7,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,24,0,0.00,'fixed',1),(14,38,0,0.00,'fixed',1),(14,55,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,35,0,0.00,'fixed',1),(15,39,0,0.00,'fixed',1),(15,48,0,0.00,'fixed',1),(15,50,0,0.00,'fixed',1),(15,55,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(16,27,0,0.00,'fixed',1),(16,48,0,0.00,'fixed',1),(16,57,0,0.00,'fixed',1),(17,20,0,0.00,'fixed',1),(17,34,0,0.00,'fixed',1),(17,35,0,0.00,'fixed',1),(17,42,0,0.00,'fixed',1),(17,52,0,0.00,'fixed',1),(17,54,0,0.00,'fixed',1),(17,55,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,25,0,0.00,'fixed',1),(18,51,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,23,0,0.00,'fixed',1),(19,32,0,0.00,'fixed',1),(19,34,0,0.00,'fixed',1),(19,36,0,0.00,'fixed',1),(19,44,0,0.00,'fixed',1),(19,53,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,25,0,0.00,'fixed',1),(20,33,0,0.00,'fixed',1),(20,57,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,15,0,0.00,'fixed',1),(21,30,0,0.00,'fixed',1),(21,35,0,0.00,'fixed',1),(21,45,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,33,0,0.00,'fixed',1),(22,47,0,0.00,'fixed',1),(22,54,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,29,0,0.00,'fixed',1),(23,35,0,0.00,'fixed',1),(23,49,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,39,0,0.00,'fixed',1),(24,42,0,0.00,'fixed',1),(24,43,0,0.00,'fixed',1),(24,51,0,0.00,'fixed',1),(25,12,0,0.00,'fixed',1),(25,21,0,0.00,'fixed',1),(25,22,0,0.00,'fixed',1),(25,28,0,0.00,'fixed',1),(25,36,0,0.00,'fixed',1),(25,48,0,0.00,'fixed',1),(25,51,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,15,0,0.00,'fixed',1),(26,28,0,0.00,'fixed',1),(26,31,0,0.00,'fixed',1),(26,32,0,0.00,'fixed',1),(26,41,0,0.00,'fixed',1),(26,51,0,0.00,'fixed',1),(27,6,0,0.00,'fixed',1),(27,26,0,0.00,'fixed',1),(27,28,0,0.00,'fixed',1),(27,34,0,0.00,'fixed',1),(27,40,0,0.00,'fixed',1),(27,44,0,0.00,'fixed',1),(27,51,0,0.00,'fixed',1),(28,2,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,6,0,0.00,'fixed',1),(28,11,0,0.00,'fixed',1),(28,17,0,0.00,'fixed',1),(28,30,0,0.00,'fixed',1),(28,31,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,9,0,0.00,'fixed',1),(29,10,0,0.00,'fixed',1),(29,19,0,0.00,'fixed',1),(29,22,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(29,45,0,0.00,'fixed',1),(30,1,0,0.00,'fixed',1),(30,35,0,0.00,'fixed',1),(30,37,0,0.00,'fixed',1),(30,44,0,0.00,'fixed',1),(30,50,0,0.00,'fixed',1),(30,55,0,0.00,'fixed',1),(30,57,0,0.00,'fixed',1),(31,3,0,0.00,'fixed',1),(31,8,0,0.00,'fixed',1),(31,16,0,0.00,'fixed',1),(31,30,0,0.00,'fixed',1),(31,49,0,0.00,'fixed',1),(31,55,0,0.00,'fixed',1),(31,57,0,0.00,'fixed',1),(32,10,0,0.00,'fixed',1),(32,19,0,0.00,'fixed',1),(32,26,0,0.00,'fixed',1),(32,31,0,0.00,'fixed',1),(32,34,0,0.00,'fixed',1),(32,36,0,0.00,'fixed',1),(32,39,0,0.00,'fixed',1),(33,2,0,0.00,'fixed',1),(33,3,0,0.00,'fixed',1),(33,19,0,0.00,'fixed',1),(33,27,0,0.00,'fixed',1),(33,37,0,0.00,'fixed',1),(33,53,0,0.00,'fixed',1),(33,55,0,0.00,'fixed',1),(34,7,0,0.00,'fixed',1),(34,10,0,0.00,'fixed',1),(34,22,0,0.00,'fixed',1),(34,36,0,0.00,'fixed',1),(34,37,0,0.00,'fixed',1),(34,44,0,0.00,'fixed',1),(34,46,0,0.00,'fixed',1),(35,6,0,0.00,'fixed',1),(35,9,0,0.00,'fixed',1),(35,10,0,0.00,'fixed',1),(35,33,0,0.00,'fixed',1),(35,38,0,0.00,'fixed',1),(35,43,0,0.00,'fixed',1),(35,48,0,0.00,'fixed',1),(36,1,0,0.00,'fixed',1),(36,7,0,0.00,'fixed',1),(36,9,0,0.00,'fixed',1),(36,29,0,0.00,'fixed',1),(36,34,0,0.00,'fixed',1),(36,45,0,0.00,'fixed',1),(36,46,0,0.00,'fixed',1),(37,1,0,0.00,'fixed',1),(37,3,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,28,0,0.00,'fixed',1),(37,31,0,0.00,'fixed',1),(37,35,0,0.00,'fixed',1),(37,41,0,0.00,'fixed',1),(38,3,0,0.00,'fixed',1),(38,14,0,0.00,'fixed',1),(38,17,0,0.00,'fixed',1),(38,24,0,0.00,'fixed',1),(38,41,0,0.00,'fixed',1),(38,55,0,0.00,'fixed',1),(39,7,0,0.00,'fixed',1),(39,17,0,0.00,'fixed',1),(39,30,0,0.00,'fixed',1),(39,37,0,0.00,'fixed',1),(39,46,0,0.00,'fixed',1),(39,51,0,0.00,'fixed',1),(39,54,0,0.00,'fixed',1),(40,7,0,0.00,'fixed',1),(40,9,0,0.00,'fixed',1),(40,12,0,0.00,'fixed',1),(40,34,0,0.00,'fixed',1),(40,42,0,0.00,'fixed',1),(40,43,0,0.00,'fixed',1),(40,44,0,0.00,'fixed',1),(41,18,0,0.00,'fixed',1),(41,32,0,0.00,'fixed',1),(41,34,0,0.00,'fixed',1),(41,37,0,0.00,'fixed',1),(41,50,0,0.00,'fixed',1),(41,52,0,0.00,'fixed',1),(41,54,0,0.00,'fixed',1),(42,1,0,0.00,'fixed',1),(42,15,0,0.00,'fixed',1),(42,43,0,0.00,'fixed',1),(42,45,0,0.00,'fixed',1),(42,47,0,0.00,'fixed',1),(42,49,0,0.00,'fixed',1),(42,53,0,0.00,'fixed',1),(43,15,0,0.00,'fixed',1),(43,22,0,0.00,'fixed',1),(43,23,0,0.00,'fixed',1),(43,29,0,0.00,'fixed',1),(43,39,0,0.00,'fixed',1),(43,50,0,0.00,'fixed',1),(44,19,0,0.00,'fixed',1),(44,23,0,0.00,'fixed',1),(44,25,0,0.00,'fixed',1),(44,28,0,0.00,'fixed',1),(44,37,0,0.00,'fixed',1),(44,46,0,0.00,'fixed',1),(44,54,0,0.00,'fixed',1),(45,23,0,0.00,'fixed',1),(45,33,0,0.00,'fixed',1),(45,42,0,0.00,'fixed',1),(45,43,0,0.00,'fixed',1),(45,49,0,0.00,'fixed',1),(45,50,0,0.00,'fixed',1),(45,54,0,0.00,'fixed',1),(46,4,0,0.00,'fixed',1),(46,11,0,0.00,'fixed',1),(46,23,0,0.00,'fixed',1),(46,35,0,0.00,'fixed',1),(46,57,0,0.00,'fixed',1),(47,1,0,0.00,'fixed',1),(47,15,0,0.00,'fixed',1),(47,20,0,0.00,'fixed',1),(47,37,0,0.00,'fixed',1),(47,39,0,0.00,'fixed',1),(47,41,0,0.00,'fixed',1),(47,51,0,0.00,'fixed',1),(48,2,0,0.00,'fixed',1),(48,7,0,0.00,'fixed',1),(48,10,0,0.00,'fixed',1),(48,21,0,0.00,'fixed',1),(48,36,0,0.00,'fixed',1),(48,43,0,0.00,'fixed',1),(49,10,0,0.00,'fixed',1),(49,11,0,0.00,'fixed',1),(49,20,0,0.00,'fixed',1),(49,21,0,0.00,'fixed',1),(49,33,0,0.00,'fixed',1),(49,36,0,0.00,'fixed',1),(49,37,0,0.00,'fixed',1),(50,5,0,0.00,'fixed',1),(50,7,0,0.00,'fixed',1),(50,10,0,0.00,'fixed',1),(50,17,0,0.00,'fixed',1),(50,33,0,0.00,'fixed',1),(50,39,0,0.00,'fixed',1),(50,51,0,0.00,'fixed',1),(51,18,0,0.00,'fixed',1),(51,23,0,0.00,'fixed',1),(51,25,0,0.00,'fixed',1),(51,31,0,0.00,'fixed',1),(51,38,0,0.00,'fixed',1),(51,43,0,0.00,'fixed',1),(51,46,0,0.00,'fixed',1),(52,2,0,0.00,'fixed',1),(52,5,0,0.00,'fixed',1),(52,9,0,0.00,'fixed',1),(52,19,0,0.00,'fixed',1),(52,29,0,0.00,'fixed',1),(52,50,0,0.00,'fixed',1),(52,54,0,0.00,'fixed',1),(53,2,0,0.00,'fixed',1),(53,5,0,0.00,'fixed',1),(53,9,0,0.00,'fixed',1),(53,46,0,0.00,'fixed',1),(53,55,0,0.00,'fixed',1),(53,56,0,0.00,'fixed',1),(54,8,0,0.00,'fixed',1),(54,9,0,0.00,'fixed',1),(54,28,0,0.00,'fixed',1),(54,29,0,0.00,'fixed',1),(54,30,0,0.00,'fixed',1),(54,39,0,0.00,'fixed',1),(54,55,0,0.00,'fixed',1),(55,6,0,0.00,'fixed',1),(55,11,0,0.00,'fixed',1),(55,20,0,0.00,'fixed',1),(55,26,0,0.00,'fixed',1),(55,29,0,0.00,'fixed',1),(55,38,0,0.00,'fixed',1),(55,39,0,0.00,'fixed',1),(56,16,0,0.00,'fixed',1),(56,32,0,0.00,'fixed',1),(56,42,0,0.00,'fixed',1),(56,45,0,0.00,'fixed',1),(56,53,0,0.00,'fixed',1),(56,54,0,0.00,'fixed',1),(57,15,0,0.00,'fixed',1),(57,29,0,0.00,'fixed',1),(57,32,0,0.00,'fixed',1),(57,33,0,0.00,'fixed',1),(57,37,0,0.00,'fixed',1),(57,54,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(2,4,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(3,8,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(4,8,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(5,12,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(6,12,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(7,16,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(8,16,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(9,20,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(10,20,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(11,24,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(12,24,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(13,28,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(14,28,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(15,32,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(16,32,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(17,36,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(18,36,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(19,40,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(20,40,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(21,44,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(22,44,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(23,48,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(24,48,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(25,52,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(26,52,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(27,56,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(28,56,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(29,61,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(30,67,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(31,68,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(32,69,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(33,77,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(34,78,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(35,79,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(36,90,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(37,91,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(38,92,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(39,93,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(40,102,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(41,103,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(42,104,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(43,107,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(44,108,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(45,109,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(46,110,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(47,119,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(48,120,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(49,121,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(50,139,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(51,140,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(52,141,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15'),(53,142,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:15:15\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-04-26 03:15:15','2024-04-26 03:15:15');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,12),(1,24),(1,33),(1,36),(1,42),(1,45),(1,51),(2,6),(2,21),(2,30),(2,54),(2,57),(3,9),(3,15),(3,18),(3,27),(3,39),(3,48);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(2,'New','#006554','published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(3,'Sale','#9A3B00','published','2024-04-26 03:15:00','2024-04-26 03:15:00');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,3),(1,5),(2,1),(2,3),(2,6),(3,1),(3,4),(3,5),(4,1),(4,3),(4,5),(5,1),(5,5),(5,6),(6,2),(6,5),(6,6),(7,1),(7,4),(7,6),(8,1),(8,4),(8,5),(9,2),(9,3),(9,4),(10,1),(10,3),(10,6),(11,1),(11,2),(11,6),(12,2),(12,3),(12,5),(13,1),(13,4),(13,6),(14,2),(14,3),(14,5),(15,2),(15,3),(15,4),(16,1),(16,5),(16,6),(17,1),(17,2),(17,3),(18,2),(18,3),(18,5),(19,3),(19,5),(19,6),(20,1),(20,3),(20,4),(21,2),(21,4),(21,5),(22,2),(22,3),(22,5),(23,2),(23,3),(23,4),(24,4),(24,5),(24,6),(25,2),(25,4),(25,6),(26,1),(26,3),(26,4),(27,1),(27,3),(27,5),(28,1),(28,5),(28,6),(29,2),(29,3),(29,4),(30,3),(30,5),(30,6),(31,1),(31,3),(31,6),(32,2),(32,3),(32,5),(33,1),(33,3),(33,4),(34,3),(34,4),(34,6),(35,2),(35,5),(35,6),(36,1),(36,2),(36,3),(37,2),(37,3),(37,5),(38,2),(38,4),(38,5),(39,1),(39,3),(39,5),(40,1),(40,2),(40,6),(41,1),(41,3),(41,5),(42,1),(42,2),(42,5),(43,2),(43,4),(43,6),(44,1),(44,5),(44,6),(45,1),(45,2),(45,6),(46,1),(46,5),(46,6),(47,2),(47,5),(47,6),(48,1),(48,5),(48,6),(49,1),(49,2),(49,3),(50,2),(50,3),(50,6),(51,1),(51,5),(51,6),(52,4),(52,5),(52,6),(53,3),(53,4),(53,5),(54,1),(54,2),(54,6),(55,1),(55,2),(55,6),(56,2),(56,4),(56,6),(57,1),(57,2),(57,3);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(2,'Mobile',NULL,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(3,'Iphone',NULL,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(4,'Printer',NULL,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(5,'Office',NULL,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(6,'IT',NULL,'published','2024-04-26 03:15:03','2024-04-26 03:15:03');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (15,1,8),(31,1,16),(37,1,19),(41,1,21),(47,1,24),(59,1,30),(61,1,31),(3,2,2),(17,2,9),(21,2,11),(33,2,17),(35,2,18),(39,2,20),(43,2,22),(5,3,3),(7,3,4),(13,3,7),(19,3,10),(23,3,12),(29,3,15),(45,3,23),(55,3,28),(57,3,29),(9,4,5),(25,4,13),(27,4,14),(53,4,27),(63,4,32),(1,5,1),(11,5,6),(49,5,25),(51,5,26),(14,6,7),(28,6,14),(42,6,21),(2,7,1),(10,7,5),(16,7,8),(20,7,10),(22,7,11),(38,7,19),(40,7,20),(60,7,30),(6,8,3),(8,8,4),(18,8,9),(30,8,15),(36,8,18),(44,8,22),(46,8,23),(48,8,24),(54,8,27),(4,9,2),(26,9,13),(34,9,17),(50,9,25),(62,9,31),(12,10,6),(24,10,12),(32,10,16),(52,10,26),(56,10,28),(58,10,29),(64,10,32),(67,11,34),(69,11,35),(87,11,44),(121,11,61),(125,11,63),(129,11,65),(145,11,73),(147,11,74),(149,11,75),(151,11,76),(161,11,81),(167,11,84),(171,11,86),(173,11,87),(73,12,37),(93,12,47),(101,12,51),(105,12,53),(113,12,57),(123,12,62),(131,12,66),(133,12,67),(155,12,78),(65,13,33),(79,13,40),(85,13,43),(97,13,49),(103,13,52),(109,13,55),(119,13,60),(137,13,69),(71,14,36),(75,14,38),(81,14,41),(91,14,46),(127,14,64),(139,14,70),(163,14,82),(77,15,39),(83,15,42),(89,15,45),(95,15,48),(99,15,50),(107,15,54),(111,15,56),(115,15,58),(117,15,59),(135,15,68),(141,15,71),(143,15,72),(153,15,77),(157,15,79),(159,15,80),(165,15,83),(169,15,85),(68,16,34),(70,16,35),(90,16,45),(96,16,48),(104,16,52),(110,16,55),(120,16,60),(140,16,70),(66,17,33),(82,17,41),(84,17,42),(88,17,44),(108,17,54),(112,17,56),(132,17,66),(142,17,71),(148,17,74),(152,17,76),(162,17,81),(164,17,82),(168,17,84),(170,17,85),(72,18,36),(74,18,37),(78,18,39),(80,18,40),(102,18,51),(106,18,53),(114,18,57),(116,18,58),(118,18,59),(130,18,65),(138,18,69),(160,18,80),(172,18,86),(76,19,38),(86,19,43),(92,19,46),(94,19,47),(98,19,49),(126,19,63),(144,19,72),(146,19,73),(150,19,75),(154,19,77),(158,19,79),(100,20,50),(122,20,61),(124,20,62),(128,20,64),(134,20,67),(136,20,68),(156,20,78),(166,20,83),(174,20,87);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,58,1,1),(2,59,1,0),(3,60,1,0),(4,61,4,1),(5,62,6,1),(6,63,6,0),(7,64,6,0),(8,65,7,1),(9,66,7,0),(10,67,12,1),(11,68,12,0),(12,69,12,0),(13,70,14,1),(14,71,14,0),(15,72,15,1),(16,73,15,0),(17,74,15,0),(18,75,15,0),(19,76,17,1),(20,77,20,1),(21,78,20,0),(22,79,20,0),(23,80,22,1),(24,81,22,0),(25,82,22,0),(26,83,26,1),(27,84,26,0),(28,85,26,0),(29,86,27,1),(30,87,27,0),(31,88,27,0),(32,89,27,0),(33,90,28,1),(34,91,28,0),(35,92,28,0),(36,93,28,0),(37,94,29,1),(38,95,29,0),(39,96,30,1),(40,97,30,0),(41,98,31,1),(42,99,31,0),(43,100,31,0),(44,101,31,0),(45,102,36,1),(46,103,36,0),(47,104,36,0),(48,105,37,1),(49,106,37,0),(50,107,40,1),(51,108,40,0),(52,109,40,0),(53,110,40,0),(54,111,41,1),(55,112,42,1),(56,113,42,0),(57,114,42,0),(58,115,42,0),(59,116,43,1),(60,117,43,0),(61,118,43,0),(62,119,44,1),(63,120,44,0),(64,121,44,0),(65,122,45,1),(66,123,45,0),(67,124,45,0),(68,125,46,1),(69,126,46,0),(70,127,47,1),(71,128,47,0),(72,129,47,0),(73,130,49,1),(74,131,49,0),(75,132,50,1),(76,133,50,0),(77,134,51,1),(78,135,51,0),(79,136,55,1),(80,137,55,0),(81,138,55,0),(82,139,56,1),(83,140,56,0),(84,141,56,0),(85,142,56,0),(86,143,57,1),(87,144,57,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-04-26',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,4,0),(2,4,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,12,0),(2,12,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,17,0),(2,17,0),(1,20,0),(2,20,0),(1,22,0),(2,22,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(3,28,0),(4,28,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0),(3,31,0),(4,31,0),(3,36,0),(4,36,0),(3,37,0),(4,37,0),(3,40,0),(4,40,0),(3,41,0),(4,41,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0),(3,44,0),(4,44,0),(3,45,0),(4,45,0),(3,46,0),(4,46,0),(3,47,0),(4,47,0),(3,49,0),(4,49,0),(3,50,0),(4,50,0),(3,51,0),(4,51,0),(3,55,0),(4,55,0),(3,56,0),(4,56,0),(3,57,0),(4,57,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\"]','FK-173-A1',0,14,0,1,0,1,0,0,1465,NULL,NULL,NULL,15.00,20.00,10.00,511.00,NULL,148717,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Philips Hue White and Color Ambiance A19 LED Smart Bulb','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]','DE-107',0,17,0,1,1,4,0,0,1016,204,NULL,NULL,15.00,12.00,15.00,593.00,NULL,96062,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','LH-143',0,12,0,1,0,2,0,0,619,44,NULL,NULL,10.00,18.00,16.00,507.00,NULL,153930,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Apple MacBook Pro 16-Inch Laptop (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-2.jpg\"]','ZO-107-A1',0,13,0,1,0,2,0,0,876,718.32,NULL,NULL,10.00,11.00,17.00,772.00,NULL,161249,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Sony WH-1000XM4 Wireless Noise-Canceling Headphones','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-18.jpg\"]','SY-180',0,12,0,1,1,3,0,0,2274,124,NULL,NULL,10.00,17.00,20.00,755.00,NULL,112700,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'DJI Mavic Air 2 Drone','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-19.jpg\"]','3T-112-A1',0,20,0,1,1,2,0,0,2256,NULL,NULL,NULL,12.00,19.00,18.00,795.00,NULL,156271,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'GoPro HERO9 Black Action Camera','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-5.jpg\"]','BC-125-A1',0,15,0,1,1,2,0,0,2072,NULL,NULL,NULL,18.00,10.00,11.00,528.00,NULL,34338,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-4.jpg\"]','XI-150',0,15,0,1,1,3,0,0,789,439,NULL,NULL,14.00,12.00,12.00,715.00,NULL,193037,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'Nest Learning Thermostat (3rd Generation)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\"]','7O-111',0,12,0,1,0,1,0,0,1197,209,NULL,NULL,16.00,20.00,20.00,543.00,NULL,61605,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Ring Video Doorbell Pro','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]','SR-188',0,11,0,1,1,4,0,0,1019,380,NULL,NULL,17.00,10.00,17.00,806.00,NULL,105018,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Amazon Echo Show 10 (3rd Gen)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-19.jpg\"]','PN-162',0,13,0,1,1,5,0,0,1538,669,NULL,NULL,16.00,14.00,20.00,582.00,NULL,29180,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Samsung QN90A Neo QLED 4K Smart TV (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\"]','09-134-A1',0,17,0,1,0,3,0,0,723,592.86,NULL,NULL,13.00,16.00,12.00,703.00,NULL,20325,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'LG OLED C1 Series 4K Smart TV','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','E1-160',0,16,0,1,1,5,0,0,946,386,NULL,NULL,14.00,17.00,17.00,635.00,NULL,133011,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Sony X950H 4K Ultra HD Smart LED TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\"]','3F-180-A1',0,19,0,1,1,4,0,0,1687,NULL,NULL,NULL,15.00,13.00,14.00,845.00,NULL,45109,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Apple Watch Series 7','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-8.jpg\"]','CM-122-A1',0,10,0,1,1,1,0,0,2377,NULL,NULL,NULL,13.00,15.00,16.00,843.00,NULL,80582,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Fitbit Charge 5 Fitness Tracker (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\"]','FB-188',0,16,0,1,1,3,0,0,1861,687,NULL,NULL,19.00,15.00,15.00,551.00,NULL,78638,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Garmin Fenix 7X Sapphire Solar GPS Watch','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\"]','ON-112-A1',0,19,0,1,1,4,0,0,2424,NULL,NULL,NULL,15.00,10.00,20.00,512.00,NULL,18071,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Microsoft Surface Pro 8','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-8.jpg\"]','IU-117',0,12,0,1,0,4,0,0,2242,259,NULL,NULL,11.00,14.00,14.00,549.00,NULL,99719,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-6.jpg\"]','82-166',0,19,0,1,1,5,0,0,971,912,NULL,NULL,15.00,18.00,11.00,846.00,NULL,53326,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'HP Spectre x360 14-Inch Convertible Laptop (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]','JQ-171-A1',0,13,0,1,1,4,0,0,2055,1623.45,NULL,NULL,16.00,16.00,10.00,639.00,NULL,174633,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Razer Blade 15 Advanced Gaming Laptop','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','CO-158',0,12,0,1,1,3,0,0,1384,1132,NULL,NULL,11.00,14.00,14.00,860.00,NULL,54302,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Alienware m15 R6 Gaming Laptop','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\"]','RY-155-A1',0,11,0,1,0,3,0,0,712,NULL,NULL,NULL,17.00,16.00,18.00,721.00,NULL,141179,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-12.jpg\"]','XH-189',0,20,0,1,0,5,0,0,1417,1014,NULL,NULL,11.00,19.00,18.00,515.00,NULL,144812,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\"]','44-101',0,18,0,1,0,2,0,0,556,551,NULL,NULL,15.00,20.00,15.00,694.00,NULL,122568,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'SteelSeries Arctis Pro Wireless Gaming Headset','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-16.jpg\"]','HL-189',0,18,0,1,0,4,0,0,575,154,NULL,NULL,20.00,20.00,16.00,700.00,NULL,88349,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Elgato Stream Deck XL','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\"]','QZ-176-A1',0,19,0,1,1,4,0,0,2435,NULL,NULL,NULL,18.00,13.00,14.00,764.00,NULL,100601,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Nintendo Switch OLED Model','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','Q2-184-A1',0,20,0,1,0,4,0,0,2493,NULL,NULL,NULL,13.00,14.00,18.00,890.00,NULL,184658,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'PlayStation 5 Console (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]','CB-117-A1',0,11,0,1,0,2,0,0,2339,2034.93,NULL,NULL,19.00,11.00,14.00,769.00,NULL,179213,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Xbox Series X Console','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\"]','BF-142-A1',0,18,0,1,1,1,0,0,1203,NULL,NULL,NULL,16.00,16.00,17.00,647.00,NULL,69660,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Oculus Quest 2 VR Headset','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-12.jpg\"]','PF-141-A1',0,13,0,1,0,4,0,0,758,NULL,NULL,NULL,12.00,20.00,16.00,879.00,NULL,3612,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'HTC Vive Cosmos Elite VR Headset','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\"]','HS-190-A1',0,16,0,1,1,5,0,0,1211,NULL,NULL,NULL,15.00,15.00,13.00,662.00,NULL,49923,'2024-04-26 03:15:13','2024-04-26 03:15:14','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(32,'Samsung Odyssey G9 49-Inch Curved Gaming Monitor (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-11.jpg\"]','Q8-151',0,19,0,1,1,4,0,0,2381,2161,NULL,NULL,15.00,20.00,17.00,802.00,NULL,117597,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(33,'LG UltraGear 27GN950-B 4K Gaming Monitor','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','PG-142',0,19,0,1,0,5,0,0,1511,855,NULL,NULL,17.00,13.00,12.00,752.00,NULL,188721,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(34,'Acer Predator X38 Pbmiphzx 38-Inch Curved Gaming Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]','IF-102',0,12,0,1,1,2,0,0,746,522,NULL,NULL,18.00,15.00,20.00,510.00,NULL,194156,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]','VF-182',0,12,0,1,0,5,0,0,2435,330,NULL,NULL,20.00,19.00,15.00,799.00,NULL,182268,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]','7Y-177-A1',0,16,0,1,1,3,0,0,2377,1806.52,NULL,NULL,13.00,17.00,17.00,828.00,NULL,126206,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(37,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]','1K-180-A1',0,13,0,1,1,3,0,0,507,NULL,NULL,NULL,12.00,20.00,17.00,786.00,NULL,182646,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'HP Z27k G3 4K USB-C Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\"]','TR-137',0,10,0,1,0,3,0,0,2090,1353,NULL,NULL,10.00,19.00,14.00,765.00,NULL,60797,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(39,'LG 27UK850-W 27-Inch 4K UHD IPS Monitor','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','SO-148',0,14,0,1,0,4,0,0,1262,709,NULL,NULL,17.00,18.00,12.00,534.00,NULL,10570,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-20.jpg\"]','PU-159-A1',0,20,0,1,1,3,0,0,2009,1687.56,NULL,NULL,10.00,18.00,19.00,874.00,NULL,9002,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(41,'Sony X900H 4K Ultra HD Smart LED TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\"]','ET-128-A1',0,19,0,1,0,3,0,0,255,NULL,NULL,NULL,16.00,13.00,19.00,727.00,NULL,121723,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(42,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','O7-115-A1',0,17,0,1,1,5,0,0,880,NULL,NULL,NULL,20.00,12.00,15.00,539.00,NULL,98262,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(43,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-10.jpg\"]','S2-179-A1',0,12,0,1,0,1,0,0,1589,NULL,NULL,NULL,15.00,20.00,16.00,626.00,NULL,78151,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(44,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-5.jpg\"]','SK-138-A1',0,13,0,1,1,4,0,0,1187,985.21,NULL,NULL,10.00,11.00,19.00,507.00,NULL,172184,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(45,'LG C1 Series 4K OLED Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-2.jpg\"]','4I-161-A1',0,20,0,1,0,4,0,0,618,NULL,NULL,NULL,11.00,17.00,11.00,502.00,NULL,191053,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(46,'Samsung QN85A Neo QLED 4K Smart TV','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-9.jpg\"]','OE-173-A1',0,19,0,1,0,2,0,0,1252,NULL,NULL,NULL,20.00,19.00,16.00,754.00,NULL,117449,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(47,'Sony A90J 4K OLED Smart TV','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-14.jpg\"]','5T-111-A1',0,20,0,1,0,1,0,0,2139,NULL,NULL,NULL,11.00,14.00,17.00,537.00,NULL,138357,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(48,'Apple TV 4K (2nd Generation) (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]','BJ-149',0,20,0,1,0,2,0,0,1724,890,NULL,NULL,14.00,19.00,18.00,786.00,NULL,148167,'2024-04-26 03:15:13','2024-04-26 03:15:13','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(49,'Roku Ultra 2020 Streaming Media Player','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\"]','N6-140-A1',0,14,0,1,0,3,0,0,2288,NULL,NULL,NULL,19.00,15.00,10.00,896.00,NULL,40760,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(50,'Amazon Fire TV Stick 4K Max','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-3.jpg\"]','E2-124-A1',0,20,0,1,0,1,0,0,2179,NULL,NULL,NULL,14.00,19.00,15.00,546.00,NULL,129371,'2024-04-26 03:15:13','2024-04-26 03:15:15','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(51,'Google Chromecast with Google TV','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\"]','FW-129-A1',0,16,0,1,0,5,0,0,2393,NULL,NULL,NULL,16.00,16.00,10.00,838.00,NULL,55004,'2024-04-26 03:15:14','2024-04-26 03:15:15','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(52,'NVIDIA SHIELD TV Pro (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-11.jpg\"]','CW-144',0,18,0,1,0,5,0,0,2204,97,NULL,NULL,11.00,15.00,16.00,570.00,NULL,123944,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(53,'Sonos Beam Gen 2 Soundbar','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]','AM-149',0,18,0,1,0,4,0,0,602,523,NULL,NULL,19.00,16.00,19.00,608.00,NULL,127884,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(54,'Bose Smart Soundbar 900','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','QC-173',0,12,0,1,1,3,0,0,1207,636,NULL,NULL,15.00,18.00,14.00,806.00,NULL,175198,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(55,'JBL Bar 9.1 Soundbar with Dolby Atmos','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-4.jpg\"]','WV-120-A1',0,10,0,1,1,5,0,0,1774,NULL,NULL,NULL,17.00,19.00,12.00,858.00,NULL,108549,'2024-04-26 03:15:14','2024-04-26 03:15:15','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(56,'Sennheiser Ambeo Soundbar (Digital)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\"]','MX-132-A1',0,17,0,1,1,4,0,0,2375,1805,NULL,NULL,13.00,20.00,12.00,744.00,NULL,160724,'2024-04-26 03:15:14','2024-04-26 03:15:15','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(57,'Sony HT-A9 Home Theater System','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','DV-131-A1',0,11,0,1,0,2,0,0,1238,NULL,NULL,NULL,20.00,20.00,11.00,653.00,NULL,13379,'2024-04-26 03:15:14','2024-04-26 03:15:15','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(58,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','FK-173-A1',0,14,0,1,0,1,1,0,1465,NULL,NULL,NULL,15.00,20.00,10.00,511.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(59,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','FK-173-A1-A2',0,14,0,1,0,1,1,0,1465,NULL,NULL,NULL,15.00,20.00,10.00,511.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(60,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','FK-173-A1-A3',0,14,0,1,0,1,1,0,1465,NULL,NULL,NULL,15.00,20.00,10.00,511.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(61,'Apple MacBook Pro 16-Inch Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]','ZO-107-A1',0,13,0,1,0,2,1,0,876,718.32,NULL,NULL,10.00,11.00,17.00,772.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(62,'DJI Mavic Air 2 Drone',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','3T-112-A1',0,20,0,1,0,2,1,0,2256,NULL,NULL,NULL,12.00,19.00,18.00,795.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(63,'DJI Mavic Air 2 Drone',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]','3T-112-A1-A2',0,20,0,1,0,2,1,0,2256,NULL,NULL,NULL,12.00,19.00,18.00,795.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(64,'DJI Mavic Air 2 Drone',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]','3T-112-A1-A3',0,20,0,1,0,2,1,0,2256,NULL,NULL,NULL,12.00,19.00,18.00,795.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(65,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','BC-125-A1',0,15,0,1,0,2,1,0,2072,NULL,NULL,NULL,18.00,10.00,11.00,528.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(66,'GoPro HERO9 Black Action Camera',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]','BC-125-A1-A2',0,15,0,1,0,2,1,0,2072,NULL,NULL,NULL,18.00,10.00,11.00,528.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(67,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]','09-134-A1',0,17,0,1,0,3,1,0,723,592.86,NULL,NULL,13.00,16.00,12.00,703.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(68,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]','09-134-A1-A2',0,17,0,1,0,3,1,0,723,513.33,NULL,NULL,13.00,16.00,12.00,703.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(69,'Samsung QN90A Neo QLED 4K Smart TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]','09-134-A1-A3',0,17,0,1,0,3,1,0,723,629.01,NULL,NULL,13.00,16.00,12.00,703.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(70,'Sony X950H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','3F-180-A1',0,19,0,1,0,4,1,0,1687,NULL,NULL,NULL,15.00,13.00,14.00,845.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(71,'Sony X950H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]','3F-180-A1-A2',0,19,0,1,0,4,1,0,1687,NULL,NULL,NULL,15.00,13.00,14.00,845.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(72,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','CM-122-A1',0,10,0,1,0,1,1,0,2377,NULL,NULL,NULL,13.00,15.00,16.00,843.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(73,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','CM-122-A1-A2',0,10,0,1,0,1,1,0,2377,NULL,NULL,NULL,13.00,15.00,16.00,843.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(74,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','CM-122-A1-A3',0,10,0,1,0,1,1,0,2377,NULL,NULL,NULL,13.00,15.00,16.00,843.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(75,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','CM-122-A1-A4',0,10,0,1,0,1,1,0,2377,NULL,NULL,NULL,13.00,15.00,16.00,843.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(76,'Garmin Fenix 7X Sapphire Solar GPS Watch',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','ON-112-A1',0,19,0,1,0,4,1,0,2424,NULL,NULL,NULL,15.00,10.00,20.00,512.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(77,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','JQ-171-A1',0,13,0,1,0,4,1,0,2055,1623.45,NULL,NULL,16.00,16.00,10.00,639.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(78,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','JQ-171-A1-A2',0,13,0,1,0,4,1,0,2055,1808.4,NULL,NULL,16.00,16.00,10.00,639.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(79,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','JQ-171-A1-A3',0,13,0,1,0,4,1,0,2055,1705.65,NULL,NULL,16.00,16.00,10.00,639.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(80,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','RY-155-A1',0,11,0,1,0,3,1,0,712,NULL,NULL,NULL,17.00,16.00,18.00,721.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(81,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','RY-155-A1-A2',0,11,0,1,0,3,1,0,712,NULL,NULL,NULL,17.00,16.00,18.00,721.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(82,'Alienware m15 R6 Gaming Laptop',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','RY-155-A1-A3',0,11,0,1,0,3,1,0,712,NULL,NULL,NULL,17.00,16.00,18.00,721.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(83,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','QZ-176-A1',0,19,0,1,0,4,1,0,2435,NULL,NULL,NULL,18.00,13.00,14.00,764.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(84,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]','QZ-176-A1-A2',0,19,0,1,0,4,1,0,2435,NULL,NULL,NULL,18.00,13.00,14.00,764.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(85,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','QZ-176-A1-A3',0,19,0,1,0,4,1,0,2435,NULL,NULL,NULL,18.00,13.00,14.00,764.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(86,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]','Q2-184-A1',0,20,0,1,0,4,1,0,2493,NULL,NULL,NULL,13.00,14.00,18.00,890.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(87,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]','Q2-184-A1-A2',0,20,0,1,0,4,1,0,2493,NULL,NULL,NULL,13.00,14.00,18.00,890.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(88,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]','Q2-184-A1-A3',0,20,0,1,0,4,1,0,2493,NULL,NULL,NULL,13.00,14.00,18.00,890.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(89,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','Q2-184-A1-A4',0,20,0,1,0,4,1,0,2493,NULL,NULL,NULL,13.00,14.00,18.00,890.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(90,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]','CB-117-A1',0,11,0,1,0,2,1,0,2339,2034.93,NULL,NULL,19.00,11.00,14.00,769.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(91,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]','CB-117-A1-A2',0,11,0,1,0,2,1,0,2339,2011.54,NULL,NULL,19.00,11.00,14.00,769.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(92,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','CB-117-A1-A3',0,11,0,1,0,2,1,0,2339,1730.86,NULL,NULL,19.00,11.00,14.00,769.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(93,'PlayStation 5 Console (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','CB-117-A1-A4',0,11,0,1,0,2,1,0,2339,1684.08,NULL,NULL,19.00,11.00,14.00,769.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(94,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]','BF-142-A1',0,18,0,1,0,1,1,0,1203,NULL,NULL,NULL,16.00,16.00,17.00,647.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(95,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','BF-142-A1-A2',0,18,0,1,0,1,1,0,1203,NULL,NULL,NULL,16.00,16.00,17.00,647.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(96,'Oculus Quest 2 VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','PF-141-A1',0,13,0,1,0,4,1,0,758,NULL,NULL,NULL,12.00,20.00,16.00,879.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(97,'Oculus Quest 2 VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','PF-141-A1-A2',0,13,0,1,0,4,1,0,758,NULL,NULL,NULL,12.00,20.00,16.00,879.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(98,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]','HS-190-A1',0,16,0,1,0,5,1,0,1211,NULL,NULL,NULL,15.00,15.00,13.00,662.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(99,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','HS-190-A1-A2',0,16,0,1,0,5,1,0,1211,NULL,NULL,NULL,15.00,15.00,13.00,662.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(100,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','HS-190-A1-A3',0,16,0,1,0,5,1,0,1211,NULL,NULL,NULL,15.00,15.00,13.00,662.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(101,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','HS-190-A1-A4',0,16,0,1,0,5,1,0,1211,NULL,NULL,NULL,15.00,15.00,13.00,662.00,NULL,0,'2024-04-26 03:15:14','2024-04-26 03:15:14','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(102,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]','7Y-177-A1',0,16,0,1,0,3,1,0,2377,1806.52,NULL,NULL,13.00,17.00,17.00,828.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(103,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]','7Y-177-A1-A2',0,16,0,1,0,3,1,0,2377,1735.21,NULL,NULL,13.00,17.00,17.00,828.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(104,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]','7Y-177-A1-A3',0,16,0,1,0,3,1,0,2377,2091.76,NULL,NULL,13.00,17.00,17.00,828.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(105,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','1K-180-A1',0,13,0,1,0,3,1,0,507,NULL,NULL,NULL,12.00,20.00,17.00,786.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(106,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','1K-180-A1-A2',0,13,0,1,0,3,1,0,507,NULL,NULL,NULL,12.00,20.00,17.00,786.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(107,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','PU-159-A1',0,20,0,1,0,3,1,0,2009,1687.56,NULL,NULL,10.00,18.00,19.00,874.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(108,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]','PU-159-A1-A2',0,20,0,1,0,3,1,0,2009,1767.92,NULL,NULL,10.00,18.00,19.00,874.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(109,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','PU-159-A1-A3',0,20,0,1,0,3,1,0,2009,1567.02,NULL,NULL,10.00,18.00,19.00,874.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(110,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','PU-159-A1-A4',0,20,0,1,0,3,1,0,2009,1506.75,NULL,NULL,10.00,18.00,19.00,874.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(111,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','ET-128-A1',0,19,0,1,0,3,1,0,255,NULL,NULL,NULL,16.00,13.00,19.00,727.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(112,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]','O7-115-A1',0,17,0,1,0,5,1,0,880,NULL,NULL,NULL,20.00,12.00,15.00,539.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(113,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]','O7-115-A1-A2',0,17,0,1,0,5,1,0,880,NULL,NULL,NULL,20.00,12.00,15.00,539.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(114,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','O7-115-A1-A3',0,17,0,1,0,5,1,0,880,NULL,NULL,NULL,20.00,12.00,15.00,539.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(115,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]','O7-115-A1-A4',0,17,0,1,0,5,1,0,880,NULL,NULL,NULL,20.00,12.00,15.00,539.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(116,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','S2-179-A1',0,12,0,1,0,1,1,0,1589,NULL,NULL,NULL,15.00,20.00,16.00,626.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(117,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','S2-179-A1-A2',0,12,0,1,0,1,1,0,1589,NULL,NULL,NULL,15.00,20.00,16.00,626.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(118,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]','S2-179-A1-A3',0,12,0,1,0,1,1,0,1589,NULL,NULL,NULL,15.00,20.00,16.00,626.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(119,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]','SK-138-A1',0,13,0,1,0,4,1,0,1187,985.21,NULL,NULL,10.00,11.00,19.00,507.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(120,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','SK-138-A1-A2',0,13,0,1,0,4,1,0,1187,1044.56,NULL,NULL,10.00,11.00,19.00,507.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(121,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','SK-138-A1-A3',0,13,0,1,0,4,1,0,1187,902.12,NULL,NULL,10.00,11.00,19.00,507.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(122,'LG C1 Series 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]','4I-161-A1',0,20,0,1,0,4,1,0,618,NULL,NULL,NULL,11.00,17.00,11.00,502.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(123,'LG C1 Series 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','4I-161-A1-A2',0,20,0,1,0,4,1,0,618,NULL,NULL,NULL,11.00,17.00,11.00,502.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(124,'LG C1 Series 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','4I-161-A1-A3',0,20,0,1,0,4,1,0,618,NULL,NULL,NULL,11.00,17.00,11.00,502.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(125,'Samsung QN85A Neo QLED 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','OE-173-A1',0,19,0,1,0,2,1,0,1252,NULL,NULL,NULL,20.00,19.00,16.00,754.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(126,'Samsung QN85A Neo QLED 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]','OE-173-A1-A2',0,19,0,1,0,2,1,0,1252,NULL,NULL,NULL,20.00,19.00,16.00,754.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(127,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','5T-111-A1',0,20,0,1,0,1,1,0,2139,NULL,NULL,NULL,11.00,14.00,17.00,537.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(128,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','5T-111-A1-A2',0,20,0,1,0,1,1,0,2139,NULL,NULL,NULL,11.00,14.00,17.00,537.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(129,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','5T-111-A1-A3',0,20,0,1,0,1,1,0,2139,NULL,NULL,NULL,11.00,14.00,17.00,537.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(130,'Roku Ultra 2020 Streaming Media Player',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]','N6-140-A1',0,14,0,1,0,3,1,0,2288,NULL,NULL,NULL,19.00,15.00,10.00,896.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(131,'Roku Ultra 2020 Streaming Media Player',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]','N6-140-A1-A2',0,14,0,1,0,3,1,0,2288,NULL,NULL,NULL,19.00,15.00,10.00,896.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(132,'Amazon Fire TV Stick 4K Max',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]','E2-124-A1',0,20,0,1,0,1,1,0,2179,NULL,NULL,NULL,14.00,19.00,15.00,546.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(133,'Amazon Fire TV Stick 4K Max',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]','E2-124-A1-A2',0,20,0,1,0,1,1,0,2179,NULL,NULL,NULL,14.00,19.00,15.00,546.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(134,'Google Chromecast with Google TV',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]','FW-129-A1',0,16,0,1,0,5,1,0,2393,NULL,NULL,NULL,16.00,16.00,10.00,838.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(135,'Google Chromecast with Google TV',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]','FW-129-A1-A2',0,16,0,1,0,5,1,0,2393,NULL,NULL,NULL,16.00,16.00,10.00,838.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(136,'JBL Bar 9.1 Soundbar with Dolby Atmos',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]','WV-120-A1',0,10,0,1,0,5,1,0,1774,NULL,NULL,NULL,17.00,19.00,12.00,858.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(137,'JBL Bar 9.1 Soundbar with Dolby Atmos',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]','WV-120-A1-A2',0,10,0,1,0,5,1,0,1774,NULL,NULL,NULL,17.00,19.00,12.00,858.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(138,'JBL Bar 9.1 Soundbar with Dolby Atmos',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]','WV-120-A1-A3',0,10,0,1,0,5,1,0,1774,NULL,NULL,NULL,17.00,19.00,12.00,858.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(139,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]','MX-132-A1',0,17,0,1,0,4,1,0,2375,1805,NULL,NULL,13.00,20.00,12.00,744.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(140,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]','MX-132-A1-A2',0,17,0,1,0,4,1,0,2375,1805,NULL,NULL,13.00,20.00,12.00,744.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(141,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]','MX-132-A1-A3',0,17,0,1,0,4,1,0,2375,2113.75,NULL,NULL,13.00,20.00,12.00,744.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(142,'Sennheiser Ambeo Soundbar (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','MX-132-A1-A4',0,17,0,1,0,4,1,0,2375,1828.75,NULL,NULL,13.00,20.00,12.00,744.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(143,'Sony HT-A9 Home Theater System',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]','DV-131-A1',0,11,0,1,0,2,1,0,1238,NULL,NULL,NULL,20.00,20.00,11.00,653.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(144,'Sony HT-A9 Home Theater System',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]','DV-131-A1-A2',0,11,0,1,0,2,1,0,1238,NULL,NULL,NULL,20.00,20.00,11.00,653.00,NULL,0,'2024-04-26 03:15:15','2024-04-26 03:15:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,2,NULL,NULL,7,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(2,1,NULL,NULL,23,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(3,4,NULL,NULL,27,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(4,1,NULL,NULL,16,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(5,3,NULL,NULL,6,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\"]'),(6,4,NULL,NULL,56,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(7,10,NULL,NULL,2,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(8,6,NULL,NULL,25,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(9,3,NULL,NULL,44,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\"]'),(10,3,NULL,NULL,54,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\"]'),(11,6,NULL,NULL,52,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(12,5,NULL,NULL,35,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(13,10,NULL,NULL,57,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(14,8,NULL,NULL,39,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\"]'),(15,9,NULL,NULL,8,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(16,9,NULL,NULL,1,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\"]'),(17,1,NULL,NULL,47,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(18,9,NULL,NULL,30,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\"]'),(19,9,NULL,NULL,23,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(20,5,NULL,NULL,50,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\"]'),(21,7,NULL,NULL,23,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]'),(22,3,NULL,NULL,1,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(23,7,NULL,NULL,39,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(24,10,NULL,NULL,5,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\"]'),(25,9,NULL,NULL,51,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(26,1,NULL,NULL,30,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(27,8,NULL,NULL,18,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(28,3,NULL,NULL,18,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(29,2,NULL,NULL,21,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(30,8,NULL,NULL,56,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(31,1,NULL,NULL,10,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(32,5,NULL,NULL,29,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(33,7,NULL,NULL,4,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(34,10,NULL,NULL,12,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(35,2,NULL,NULL,40,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(36,4,NULL,NULL,48,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\"]'),(37,6,NULL,NULL,23,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(38,6,NULL,NULL,5,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(39,8,NULL,NULL,19,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(40,3,NULL,NULL,32,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(41,3,NULL,NULL,57,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(42,8,NULL,NULL,33,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(43,4,NULL,NULL,57,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(44,2,NULL,NULL,42,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\"]'),(45,4,NULL,NULL,28,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(46,4,NULL,NULL,46,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\"]'),(47,7,NULL,NULL,10,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(48,8,NULL,NULL,26,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(49,7,NULL,NULL,32,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\"]'),(50,8,NULL,NULL,34,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(51,5,NULL,NULL,11,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\"]'),(52,9,NULL,NULL,56,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\"]'),(53,1,NULL,NULL,14,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\"]'),(54,4,NULL,NULL,11,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(55,9,NULL,NULL,2,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(56,2,NULL,NULL,30,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(57,8,NULL,NULL,12,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(58,8,NULL,NULL,4,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(59,6,NULL,NULL,31,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\"]'),(60,10,NULL,NULL,1,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]'),(61,4,NULL,NULL,20,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(62,4,NULL,NULL,52,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\"]'),(64,4,NULL,NULL,43,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\"]'),(65,6,NULL,NULL,3,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(66,8,NULL,NULL,8,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(68,2,NULL,NULL,54,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(70,2,NULL,NULL,2,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(72,6,NULL,NULL,47,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\"]'),(73,2,NULL,NULL,57,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\"]'),(74,3,NULL,NULL,56,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(77,3,NULL,NULL,34,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\"]'),(78,7,NULL,NULL,31,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(79,9,NULL,NULL,18,1.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(80,1,NULL,NULL,40,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(81,10,NULL,NULL,7,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(82,2,NULL,NULL,15,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(83,6,NULL,NULL,36,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(84,9,NULL,NULL,20,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(85,8,NULL,NULL,37,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\"]'),(86,1,NULL,NULL,54,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(87,2,NULL,NULL,55,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(88,2,NULL,NULL,41,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(89,3,NULL,NULL,37,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(90,3,NULL,NULL,24,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(91,10,NULL,NULL,4,1.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(92,3,NULL,NULL,46,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(93,5,NULL,NULL,43,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]'),(94,6,NULL,NULL,35,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\"]'),(95,4,NULL,NULL,50,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\"]'),(96,9,NULL,NULL,22,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(98,10,NULL,NULL,42,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\"]'),(99,7,NULL,NULL,21,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(100,10,NULL,NULL,56,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(101,5,NULL,NULL,37,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(102,4,NULL,NULL,47,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(103,2,NULL,NULL,5,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(104,7,NULL,NULL,18,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(106,8,NULL,NULL,48,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\"]'),(107,8,NULL,NULL,49,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(108,7,NULL,NULL,24,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(109,4,NULL,NULL,25,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(110,1,NULL,NULL,51,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(111,10,NULL,NULL,6,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(112,10,NULL,NULL,19,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(113,4,NULL,NULL,1,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(114,7,NULL,NULL,33,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(115,10,NULL,NULL,13,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(116,4,NULL,NULL,23,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(117,4,NULL,NULL,40,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(118,2,NULL,NULL,20,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(119,4,NULL,NULL,18,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(121,8,NULL,NULL,7,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(123,6,NULL,NULL,37,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\"]'),(125,3,NULL,NULL,50,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\"]'),(126,10,NULL,NULL,16,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\"]'),(129,3,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(130,8,NULL,NULL,16,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(131,2,NULL,NULL,14,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(132,2,NULL,NULL,10,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(133,10,NULL,NULL,17,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(134,5,NULL,NULL,27,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(135,10,NULL,NULL,47,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\"]'),(136,4,NULL,NULL,33,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(138,5,NULL,NULL,23,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(140,1,NULL,NULL,3,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]'),(141,2,NULL,NULL,6,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(143,10,NULL,NULL,29,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(144,2,NULL,NULL,38,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(145,10,NULL,NULL,31,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(146,4,NULL,NULL,32,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(147,4,NULL,NULL,54,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(148,4,NULL,NULL,12,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(149,8,NULL,NULL,20,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(150,8,NULL,NULL,27,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(151,3,NULL,NULL,36,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(152,6,NULL,NULL,41,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(153,3,NULL,NULL,51,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\"]'),(154,8,NULL,NULL,31,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\"]'),(156,2,NULL,NULL,47,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(157,1,NULL,NULL,11,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(158,3,NULL,NULL,30,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(159,8,NULL,NULL,11,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\"]'),(160,3,NULL,NULL,33,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(161,9,NULL,NULL,16,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(162,1,NULL,NULL,33,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(163,1,NULL,NULL,50,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(165,1,NULL,NULL,53,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(166,8,NULL,NULL,55,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(167,5,NULL,NULL,9,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(168,6,NULL,NULL,29,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(169,9,NULL,NULL,5,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\"]'),(170,8,NULL,NULL,21,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(171,9,NULL,NULL,41,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]'),(172,9,NULL,NULL,54,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\"]'),(175,3,NULL,NULL,47,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(176,7,NULL,NULL,45,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(177,7,NULL,NULL,46,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(178,2,NULL,NULL,19,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(179,6,NULL,NULL,54,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\"]'),(180,3,NULL,NULL,29,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(181,4,NULL,NULL,5,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(182,7,NULL,NULL,48,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(183,8,NULL,NULL,47,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(184,3,NULL,NULL,41,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(185,7,NULL,NULL,29,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\"]'),(186,9,NULL,NULL,25,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(187,10,NULL,NULL,22,2.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(190,8,NULL,NULL,22,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(191,5,NULL,NULL,5,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\"]'),(194,5,NULL,NULL,47,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(195,5,NULL,NULL,22,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(197,9,NULL,NULL,11,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(198,2,NULL,NULL,17,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(202,7,NULL,NULL,27,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(203,5,NULL,NULL,25,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(204,8,NULL,NULL,10,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(205,6,NULL,NULL,53,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(206,5,NULL,NULL,45,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(207,9,NULL,NULL,52,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(208,1,NULL,NULL,44,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(209,7,NULL,NULL,26,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(211,5,NULL,NULL,44,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(215,9,NULL,NULL,55,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(217,6,NULL,NULL,4,1.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(218,5,NULL,NULL,1,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\"]'),(222,10,NULL,NULL,21,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(224,2,NULL,NULL,31,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(227,5,NULL,NULL,3,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(228,6,NULL,NULL,16,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]'),(229,4,NULL,NULL,45,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(232,2,NULL,NULL,18,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\"]'),(233,10,NULL,NULL,11,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(236,4,NULL,NULL,6,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(237,4,NULL,NULL,10,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\"]'),(238,3,NULL,NULL,55,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(239,2,NULL,NULL,26,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(240,10,NULL,NULL,8,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]'),(243,1,NULL,NULL,42,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\"]'),(244,3,NULL,NULL,40,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(245,3,NULL,NULL,12,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\"]'),(246,8,NULL,NULL,38,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(247,6,NULL,NULL,55,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(248,10,NULL,NULL,49,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(250,8,NULL,NULL,29,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(253,6,NULL,NULL,38,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\"]'),(255,3,NULL,NULL,11,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\"]'),(258,2,NULL,NULL,51,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\"]'),(259,2,NULL,NULL,11,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\"]'),(260,2,NULL,NULL,36,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(261,3,NULL,NULL,53,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(262,4,NULL,NULL,31,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(264,1,NULL,NULL,13,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(266,3,NULL,NULL,10,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(267,4,NULL,NULL,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(270,5,NULL,NULL,2,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(271,5,NULL,NULL,18,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(272,2,NULL,NULL,37,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(273,1,NULL,NULL,41,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(277,2,NULL,NULL,27,5.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(278,1,NULL,NULL,26,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(279,3,NULL,NULL,25,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(280,5,NULL,NULL,17,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-18.jpg\"]'),(281,10,NULL,NULL,26,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\"]'),(282,2,NULL,NULL,43,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(285,10,NULL,NULL,43,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(286,10,NULL,NULL,27,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(288,9,NULL,NULL,50,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(289,8,NULL,NULL,5,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\"]'),(294,2,NULL,NULL,24,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(297,10,NULL,NULL,25,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(298,1,NULL,NULL,34,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(299,2,NULL,NULL,33,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(300,1,NULL,NULL,24,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(301,10,NULL,NULL,45,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(304,8,NULL,NULL,54,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(305,9,NULL,NULL,27,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\"]'),(306,5,NULL,NULL,7,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]'),(309,4,NULL,NULL,29,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(310,4,NULL,NULL,34,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(311,6,NULL,NULL,20,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(313,2,NULL,NULL,46,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\"]'),(314,6,NULL,NULL,43,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(318,6,NULL,NULL,17,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(323,3,NULL,NULL,48,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(325,6,NULL,NULL,33,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(326,1,NULL,NULL,6,5.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(327,6,NULL,NULL,40,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(328,4,NULL,NULL,7,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\"]'),(335,9,NULL,NULL,36,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(336,1,NULL,NULL,25,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(337,7,NULL,NULL,47,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(338,10,NULL,NULL,52,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\"]'),(340,6,NULL,NULL,6,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(342,8,NULL,NULL,57,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\"]'),(343,2,NULL,NULL,32,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\"]'),(344,6,NULL,NULL,11,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(345,10,NULL,NULL,15,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\"]'),(346,7,NULL,NULL,53,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\"]'),(347,1,NULL,NULL,55,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(351,7,NULL,NULL,5,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\"]'),(353,6,NULL,NULL,32,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(358,2,NULL,NULL,25,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(360,8,NULL,NULL,17,5.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(364,3,NULL,NULL,15,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(367,5,NULL,NULL,42,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\"]'),(368,8,NULL,NULL,30,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\"]'),(371,3,NULL,NULL,7,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\"]'),(372,10,NULL,NULL,40,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(376,2,NULL,NULL,29,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(378,9,NULL,NULL,47,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]'),(379,7,NULL,NULL,51,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(380,5,NULL,NULL,41,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(381,7,NULL,NULL,56,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(383,6,NULL,NULL,22,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(385,8,NULL,NULL,13,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(386,5,NULL,NULL,12,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(388,1,NULL,NULL,21,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\"]'),(389,9,NULL,NULL,37,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\"]'),(392,1,NULL,NULL,1,2.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\"]'),(393,1,NULL,NULL,27,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(394,9,NULL,NULL,53,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(396,5,NULL,NULL,26,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(397,6,NULL,NULL,21,4.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(398,6,NULL,NULL,8,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(399,4,NULL,NULL,21,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(400,6,NULL,NULL,7,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(401,6,NULL,NULL,30,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(402,9,NULL,NULL,4,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(404,8,NULL,NULL,6,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(406,8,NULL,NULL,2,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(407,10,NULL,NULL,54,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\"]'),(410,2,NULL,NULL,23,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(411,4,NULL,NULL,15,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(412,6,NULL,NULL,28,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(414,9,NULL,NULL,9,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(415,10,NULL,NULL,38,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\"]'),(416,10,NULL,NULL,35,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(417,4,NULL,NULL,26,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(422,10,NULL,NULL,9,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(423,2,NULL,NULL,3,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\"]'),(426,1,NULL,NULL,52,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(431,8,NULL,NULL,35,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(433,10,NULL,NULL,23,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(434,9,NULL,NULL,13,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(435,8,NULL,NULL,44,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(437,1,NULL,NULL,31,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(438,10,NULL,NULL,14,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(441,9,NULL,NULL,26,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(444,1,NULL,NULL,22,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(446,4,NULL,NULL,30,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(447,2,NULL,NULL,48,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\"]'),(448,5,NULL,NULL,19,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\"]'),(449,9,NULL,NULL,19,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(451,7,NULL,NULL,17,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(453,6,NULL,NULL,42,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\"]'),(454,3,NULL,NULL,20,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(455,8,NULL,NULL,28,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(456,7,NULL,NULL,37,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(461,2,NULL,NULL,16,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(464,10,NULL,NULL,55,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(472,6,NULL,NULL,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(474,6,NULL,NULL,26,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(478,4,NULL,NULL,2,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(480,1,NULL,NULL,36,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]'),(481,9,NULL,NULL,34,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(483,9,NULL,NULL,48,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(485,4,NULL,NULL,13,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\"]'),(488,5,NULL,NULL,31,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\"]'),(491,3,NULL,NULL,16,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(492,10,NULL,NULL,3,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\"]'),(494,3,NULL,NULL,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(495,9,NULL,NULL,6,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(500,7,NULL,NULL,8,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\"]'),(501,5,NULL,NULL,53,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\"]'),(502,7,NULL,NULL,54,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(503,9,NULL,NULL,17,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(507,3,NULL,NULL,43,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\"]'),(509,1,NULL,NULL,56,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(511,9,NULL,NULL,42,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(512,5,NULL,NULL,46,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(513,8,NULL,NULL,1,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(515,8,NULL,NULL,53,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(520,9,NULL,NULL,3,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(522,1,NULL,NULL,49,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\"]'),(525,7,NULL,NULL,36,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(526,3,NULL,NULL,52,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(530,9,NULL,NULL,46,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(533,1,NULL,NULL,17,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\"]'),(536,4,NULL,NULL,36,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(538,7,NULL,NULL,15,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(539,6,NULL,NULL,15,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(546,9,NULL,NULL,24,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]'),(549,5,NULL,NULL,54,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(554,2,NULL,NULL,50,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(555,1,NULL,NULL,7,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(558,6,NULL,NULL,56,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(560,8,NULL,NULL,32,5.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\"]'),(562,8,NULL,NULL,43,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(564,1,NULL,NULL,4,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\"]'),(571,5,NULL,NULL,4,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\"]'),(572,9,NULL,NULL,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(575,5,NULL,NULL,32,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(576,9,NULL,NULL,49,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(577,3,NULL,NULL,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(580,5,NULL,NULL,28,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(581,7,NULL,NULL,6,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(584,8,NULL,NULL,41,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(585,4,NULL,NULL,51,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(587,4,NULL,NULL,38,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(589,5,NULL,NULL,51,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\"]'),(590,5,NULL,NULL,21,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\"]'),(592,5,NULL,NULL,57,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(593,4,NULL,NULL,35,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(597,6,NULL,NULL,19,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(600,7,NULL,NULL,12,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(601,5,NULL,NULL,34,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(602,8,NULL,NULL,23,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(605,6,NULL,NULL,14,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(607,6,NULL,NULL,49,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(608,8,NULL,NULL,14,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(609,10,NULL,NULL,20,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(615,4,NULL,NULL,42,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(619,1,NULL,NULL,43,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\"]'),(620,5,NULL,NULL,48,2.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-14.jpg\"]'),(626,5,NULL,NULL,8,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(630,2,NULL,NULL,39,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\"]'),(633,1,NULL,NULL,39,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(638,9,NULL,NULL,10,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\"]'),(639,6,NULL,NULL,10,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\"]'),(640,4,NULL,NULL,8,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\"]'),(641,1,NULL,NULL,20,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(645,1,NULL,NULL,48,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(646,10,NULL,NULL,33,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\"]'),(648,4,NULL,NULL,49,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(655,7,NULL,NULL,28,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-19.jpg\"]'),(659,3,NULL,NULL,14,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\"]'),(664,7,NULL,NULL,2,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(671,1,NULL,NULL,45,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(674,6,NULL,NULL,2,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(681,8,NULL,NULL,9,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\"]'),(682,9,NULL,NULL,38,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(683,3,NULL,NULL,22,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(685,2,NULL,NULL,44,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\"]'),(688,9,NULL,NULL,44,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(690,7,NULL,NULL,9,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(697,9,NULL,NULL,43,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\"]'),(699,9,NULL,NULL,29,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\"]'),(702,2,NULL,NULL,13,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(703,8,NULL,NULL,24,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\"]'),(706,9,NULL,NULL,33,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(707,4,NULL,NULL,44,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(708,5,NULL,NULL,39,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(710,7,NULL,NULL,50,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(712,9,NULL,NULL,35,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(720,1,NULL,NULL,2,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(721,7,NULL,NULL,57,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(723,6,NULL,NULL,45,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(726,4,NULL,NULL,39,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\"]'),(731,8,NULL,NULL,52,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(733,5,NULL,NULL,52,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(735,1,NULL,NULL,37,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(737,7,NULL,NULL,13,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(739,5,NULL,NULL,10,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(744,6,NULL,NULL,50,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\"]'),(746,6,NULL,NULL,46,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(747,2,NULL,NULL,28,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(749,6,NULL,NULL,48,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-20.jpg\"]'),(750,8,NULL,NULL,51,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(753,2,NULL,NULL,52,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\"]'),(754,6,NULL,NULL,51,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(756,1,NULL,NULL,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(761,3,NULL,NULL,39,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-17.jpg\"]'),(762,3,NULL,NULL,26,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-20.jpg\"]'),(763,2,NULL,NULL,12,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(766,6,NULL,NULL,13,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\"]'),(768,1,NULL,NULL,57,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(770,3,NULL,NULL,31,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(774,6,NULL,NULL,39,3.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(782,5,NULL,NULL,49,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(788,2,NULL,NULL,49,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(791,1,NULL,NULL,15,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\"]'),(797,7,NULL,NULL,44,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(802,2,NULL,NULL,9,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\"]'),(803,7,NULL,NULL,7,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(804,3,NULL,NULL,2,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\"]'),(808,3,NULL,NULL,42,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\"]'),(814,7,NULL,NULL,22,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(827,6,NULL,NULL,34,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(829,9,NULL,NULL,40,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\"]'),(832,6,NULL,NULL,44,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(833,8,NULL,NULL,36,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(837,5,NULL,NULL,14,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(848,7,NULL,NULL,16,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(851,3,NULL,NULL,19,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]'),(852,10,NULL,NULL,18,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(860,10,NULL,NULL,30,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\"]'),(861,5,NULL,NULL,55,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\"]'),(873,5,NULL,NULL,36,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(875,2,NULL,NULL,45,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(877,10,NULL,NULL,39,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(882,1,NULL,NULL,8,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(887,3,NULL,NULL,8,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(891,5,NULL,NULL,30,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(914,9,NULL,NULL,21,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(921,1,NULL,NULL,19,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(922,3,NULL,NULL,27,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(925,7,NULL,NULL,41,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(926,2,NULL,NULL,53,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(928,6,NULL,NULL,24,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(930,6,NULL,NULL,12,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(938,9,NULL,NULL,28,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(951,4,NULL,NULL,17,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\"]'),(955,1,NULL,NULL,29,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-5.jpg\"]'),(960,8,NULL,NULL,15,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(961,9,NULL,NULL,14,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-8.jpg\"]'),(972,4,NULL,NULL,24,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-7.jpg\"]'),(975,6,NULL,NULL,27,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(976,7,NULL,NULL,49,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(977,10,NULL,NULL,48,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\"]'),(979,8,NULL,NULL,45,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(986,3,NULL,NULL,13,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\"]'),(990,6,NULL,NULL,57,4.00,'Clean & perfect source code','published','2024-04-26 03:15:17','2024-04-26 03:15:17','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-04-26 03:15:03','2024-04-26 03:15:03');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-04-26 03:15:03','2024-04-26 03:15:03');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-04-26 03:15:04','2024-04-26 03:15:04');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,3),(1,5),(1,6),(1,7),(1,13),(1,15),(1,17),(1,18),(1,19),(1,22),(1,25),(1,27),(1,33),(1,36),(1,38),(1,40),(1,45),(1,50),(1,54),(1,55),(1,57),(2,4),(2,8),(2,9),(2,11),(2,12),(2,14),(2,20),(2,29),(2,32),(2,34),(2,37),(2,39),(2,42),(2,44),(2,47),(3,2),(3,10),(3,16),(3,21),(3,23),(3,24),(3,26),(3,28),(3,30),(3,31),(3,35),(3,41),(3,43),(3,46),(3,48),(3,49),(3,51),(3,52),(3,53),(3,56);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(2,'None',0.000000,2,'published','2024-04-26 03:15:03','2024-04-26 03:15:03'),(3,'Import Tax',15.000000,3,'published','2024-04-26 03:15:03','2024-04-26 03:15:03');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(2,'PAYMENT',1,'published','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-04-26 03:15:00','2024-04-26 03:15:00'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-04-26 03:15:00','2024-04-26 03:15:00');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','The baby grunted again, so violently, that she had read about them in books, and she went on growing, and, as they came nearer, Alice could speak again. The rabbit-hole went straight on like a.',1,0,'main/galleries/1.jpg',1,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(2,'New Day','Alice would not join the dance? Will you, won\'t you join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she stopped hastily, for the pool was getting very sleepy; \'and they drew all.',1,0,'main/galleries/2.jpg',1,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(3,'Happy Day','DON\'T know,\' said Alice, \'because I\'m not particular as to go through next walking about at the thought that she never knew so much into the sea, some children digging in the prisoner\'s.',1,0,'main/galleries/3.jpg',1,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(4,'Nature','Father William,\' the young lady to see what was on the ground as she remembered the number of cucumber-frames there must be!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat.',1,0,'main/galleries/4.jpg',1,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(5,'Morning','I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the capital of Paris, and Paris is the same thing a Lobster Quadrille is!\'.',1,0,'main/galleries/5.jpg',1,'published','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"White Rabbit: it was only sobbing,\' she thought, and it was not a moment like a tunnel for some while in silence. Alice was not easy to know when the White Rabbit returning, splendidly dressed, with.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"March Hare went on. \'I do,\' Alice said very politely, \'if I had to pinch it to the Gryphon. \'Turn a somersault in the direction it pointed to, without trying to make out at the number of bathing.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Alice. \'I don\'t see how the Dodo suddenly called out as loud as she could not help bursting out laughing: and when she next peeped out the answer to it?\' said the King exclaimed, turning to the.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:16','2024-04-26 03:15:16'),(2,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"White Rabbit: it was only sobbing,\' she thought, and it was not a moment like a tunnel for some while in silence. Alice was not easy to know when the White Rabbit returning, splendidly dressed, with.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"March Hare went on. \'I do,\' Alice said very politely, \'if I had to pinch it to the Gryphon. \'Turn a somersault in the direction it pointed to, without trying to make out at the number of bathing.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Alice. \'I don\'t see how the Dodo suddenly called out as loud as she could not help bursting out laughing: and when she next peeped out the answer to it?\' said the King exclaimed, turning to the.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:16','2024-04-26 03:15:16'),(3,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"White Rabbit: it was only sobbing,\' she thought, and it was not a moment like a tunnel for some while in silence. Alice was not easy to know when the White Rabbit returning, splendidly dressed, with.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"March Hare went on. \'I do,\' Alice said very politely, \'if I had to pinch it to the Gryphon. \'Turn a somersault in the direction it pointed to, without trying to make out at the number of bathing.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Alice. \'I don\'t see how the Dodo suddenly called out as loud as she could not help bursting out laughing: and when she next peeped out the answer to it?\' said the King exclaimed, turning to the.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:16','2024-04-26 03:15:16'),(4,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"White Rabbit: it was only sobbing,\' she thought, and it was not a moment like a tunnel for some while in silence. Alice was not easy to know when the White Rabbit returning, splendidly dressed, with.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"March Hare went on. \'I do,\' Alice said very politely, \'if I had to pinch it to the Gryphon. \'Turn a somersault in the direction it pointed to, without trying to make out at the number of bathing.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Alice. \'I don\'t see how the Dodo suddenly called out as loud as she could not help bursting out laughing: and when she next peeped out the answer to it?\' said the King exclaimed, turning to the.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:16','2024-04-26 03:15:16'),(5,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"White Rabbit: it was only sobbing,\' she thought, and it was not a moment like a tunnel for some while in silence. Alice was not easy to know when the White Rabbit returning, splendidly dressed, with.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"March Hare went on. \'I do,\' Alice said very politely, \'if I had to pinch it to the Gryphon. \'Turn a somersault in the direction it pointed to, without trying to make out at the number of bathing.\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"Alice. \'I don\'t see how the Dodo suddenly called out as loud as she could not help bursting out laughing: and when she next peeped out the answer to it?\' said the King exclaimed, turning to the.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','959702abd3111d97be97a1dd7242bd7c',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','3642d8373864613d3f9d2267b58255a1',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','b9dc050a044d44a86be74a0156ae9421',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','82f7f651537063f2fe2474f8f978b89e',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','718c126f92f20b941eb2b15cc8f71f0a',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(5,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(6,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(7,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(8,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(9,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(10,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(11,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(12,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(13,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(14,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(15,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(16,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(27,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-04-26 03:14:59','2024-04-26 03:14:59',NULL),(28,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-04-26 03:14:59','2024-04-26 03:14:59',NULL),(29,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(30,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(31,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(32,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(33,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(34,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(35,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(36,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(37,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(38,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(39,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(40,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(41,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(42,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(43,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(44,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(45,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(46,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(47,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(48,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(49,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(50,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(51,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(52,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(53,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(54,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(55,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(56,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(57,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(58,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(59,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(60,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(61,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(62,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(63,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(64,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(65,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-04-26 03:15:04','2024-04-26 03:15:04',NULL),(66,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(67,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(68,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(69,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(70,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(71,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(72,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(73,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(74,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(75,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(76,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(77,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(78,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(79,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(80,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(81,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(82,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(83,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(84,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(85,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(86,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(87,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(88,0,'shape-1','shape-1',8,'image/png',18992,'main/sliders/shape-1.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(89,0,'shape-2','shape-2',8,'image/png',803,'main/sliders/shape-2.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(90,0,'shape-3','shape-3',8,'image/png',658,'main/sliders/shape-3.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(91,0,'shape-4','shape-4',8,'image/png',475,'main/sliders/shape-4.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(92,0,'slider-1','slider-1',8,'image/png',7405,'main/sliders/slider-1.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(93,0,'slider-2','slider-2',8,'image/png',8434,'main/sliders/slider-2.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(94,0,'slider-3','slider-3',8,'image/png',7794,'main/sliders/slider-3.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(95,0,'1','1',9,'image/png',4294,'main/product-categories/1.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(96,0,'2','2',9,'image/png',4294,'main/product-categories/2.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(97,0,'3','3',9,'image/png',4294,'main/product-categories/3.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(98,0,'4','4',9,'image/png',4294,'main/product-categories/4.png','[]','2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(99,0,'5','5',9,'image/png',4294,'main/product-categories/5.png','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(100,0,'category-thumb-1','category-thumb-1',9,'image/jpeg',4294,'main/product-categories/category-thumb-1.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(101,0,'category-thumb-10','category-thumb-10',9,'image/jpeg',4294,'main/product-categories/category-thumb-10.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(102,0,'category-thumb-11','category-thumb-11',9,'image/jpeg',4294,'main/product-categories/category-thumb-11.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(103,0,'category-thumb-12','category-thumb-12',9,'image/jpeg',4294,'main/product-categories/category-thumb-12.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(104,0,'category-thumb-3','category-thumb-3',9,'image/jpeg',4294,'main/product-categories/category-thumb-3.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(105,0,'category-thumb-4','category-thumb-4',9,'image/jpeg',4294,'main/product-categories/category-thumb-4.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(106,0,'category-thumb-5','category-thumb-5',9,'image/jpeg',4294,'main/product-categories/category-thumb-5.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(107,0,'category-thumb-6','category-thumb-6',9,'image/jpeg',4294,'main/product-categories/category-thumb-6.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(108,0,'category-thumb-8','category-thumb-8',9,'image/jpeg',4294,'main/product-categories/category-thumb-8.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(109,0,'category-thumb-9','category-thumb-9',9,'image/jpeg',4294,'main/product-categories/category-thumb-9.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(110,0,'menu-1','menu-1',9,'image/jpeg',4294,'main/product-categories/menu-1.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(111,0,'menu-2','menu-2',9,'image/jpeg',4294,'main/product-categories/menu-2.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(112,0,'menu-3','menu-3',9,'image/jpeg',4294,'main/product-categories/menu-3.jpg','[]','2024-04-26 03:15:10','2024-04-26 03:15:10',NULL),(113,0,'product-1','product-1',10,'image/jpeg',9803,'main/products/product-1.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(114,0,'product-10','product-10',10,'image/jpeg',9803,'main/products/product-10.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(115,0,'product-11','product-11',10,'image/jpeg',9803,'main/products/product-11.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(116,0,'product-12','product-12',10,'image/jpeg',9803,'main/products/product-12.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(117,0,'product-13','product-13',10,'image/jpeg',9803,'main/products/product-13.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(118,0,'product-14','product-14',10,'image/jpeg',9803,'main/products/product-14.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(119,0,'product-15','product-15',10,'image/jpeg',9803,'main/products/product-15.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(120,0,'product-16','product-16',10,'image/jpeg',9803,'main/products/product-16.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(121,0,'product-17','product-17',10,'image/jpeg',9803,'main/products/product-17.jpg','[]','2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(122,0,'product-18','product-18',10,'image/jpeg',9803,'main/products/product-18.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(123,0,'product-19','product-19',10,'image/jpeg',9803,'main/products/product-19.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(124,0,'product-2','product-2',10,'image/jpeg',9803,'main/products/product-2.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(125,0,'product-20','product-20',10,'image/jpeg',9803,'main/products/product-20.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(126,0,'product-3','product-3',10,'image/jpeg',9803,'main/products/product-3.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(127,0,'product-4','product-4',10,'image/jpeg',9803,'main/products/product-4.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(128,0,'product-5','product-5',10,'image/jpeg',9803,'main/products/product-5.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(129,0,'product-6','product-6',10,'image/jpeg',9803,'main/products/product-6.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(130,0,'product-7','product-7',10,'image/jpeg',9803,'main/products/product-7.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(131,0,'product-8','product-8',10,'image/jpeg',9803,'main/products/product-8.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(132,0,'product-9','product-9',10,'image/jpeg',9803,'main/products/product-9.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(133,0,'product-details-desc-1','product-details-desc-1',10,'image/jpeg',9803,'main/products/product-details-desc-1.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(134,0,'product-details-desc-2','product-details-desc-2',10,'image/jpeg',9803,'main/products/product-details-desc-2.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(135,0,'product-details-desc-3','product-details-desc-3',10,'image/jpeg',9803,'main/products/product-details-desc-3.jpg','[]','2024-04-26 03:15:12','2024-04-26 03:15:12',NULL),(136,0,'1','1',11,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(137,0,'2','2',11,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(138,0,'slider-1','slider-1',11,'image/png',8207,'main/banners/slider-1.png','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(139,0,'slider-2','slider-2',11,'image/png',8497,'main/banners/slider-2.png','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(140,0,'slider-3','slider-3',11,'image/png',6239,'main/banners/slider-3.png','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(141,0,'gadget-banner-1','gadget-banner-1',12,'image/jpeg',3870,'main/gadgets/gadget-banner-1.jpg','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(142,0,'gadget-banner-2','gadget-banner-2',12,'image/jpeg',3870,'main/gadgets/gadget-banner-2.jpg','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(143,0,'gadget-girl','gadget-girl',12,'image/png',4417,'main/gadgets/gadget-girl.png','[]','2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(144,0,'1','1',13,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(145,0,'2','2',13,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(146,0,'3','3',13,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(147,0,'4','4',13,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(148,0,'5','5',13,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(152,0,'icon-1','icon-1',14,'image/png',4469,'main/contact/icon-1.png','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(153,0,'icon-2','icon-2',14,'image/png',5977,'main/contact/icon-2.png','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(154,0,'icon-3','icon-3',14,'image/png',6082,'main/contact/icon-3.png','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(155,0,'line','line',15,'image/png',6152,'main/shapes/line.png','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(156,0,'quote','quote',15,'image/png',595,'main/shapes/quote.png','[]','2024-04-26 03:15:16','2024-04-26 03:15:16',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(2,0,'general',NULL,'general',1,'2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(3,0,'users',NULL,'users',1,'2024-04-26 03:14:58','2024-04-26 03:14:58',NULL),(4,0,'brands',NULL,'brands',1,'2024-04-26 03:14:59','2024-04-26 03:14:59',NULL),(5,0,'customers',NULL,'customers',1,'2024-04-26 03:15:00','2024-04-26 03:15:00',NULL),(6,0,'blog',NULL,'blog',1,'2024-04-26 03:15:03','2024-04-26 03:15:03',NULL),(7,0,'stores',NULL,'stores',1,'2024-04-26 03:15:05','2024-04-26 03:15:05',NULL),(8,0,'sliders',NULL,'sliders',1,'2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(9,0,'product-categories',NULL,'product-categories',1,'2024-04-26 03:15:09','2024-04-26 03:15:09',NULL),(10,0,'products',NULL,'products',1,'2024-04-26 03:15:11','2024-04-26 03:15:11',NULL),(11,0,'banners',NULL,'banners',1,'2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(12,0,'gadgets',NULL,'gadgets',1,'2024-04-26 03:15:15','2024-04-26 03:15:15',NULL),(13,0,'galleries',NULL,'galleries',1,'2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(14,0,'contact',NULL,'contact',1,'2024-04-26 03:15:16','2024-04-26 03:15:16',NULL),(15,0,'shapes',NULL,'shapes',1,'2024-04-26 03:15:16','2024-04-26 03:15:16',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(11,1,7,NULL,NULL,'/products/samsung-odyssey-g9-49-inch-curved-gaming-monitor',NULL,0,'Product Detail',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(23,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(26,1,23,NULL,NULL,'/blog/the-litigants-on-the-screen-are-not-actors',NULL,0,'Blog Detail',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(27,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(29,2,0,9,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(34,3,0,7,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(35,3,0,8,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(36,3,0,6,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16'),(38,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(2,'My Account','my-account','published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(3,'Information','information','published','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#115061\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(2,'is_light','[0]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(3,'subtitle','[\"Starting at <b>$274.00<\\/b>\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(4,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(5,'background_color','[\"#115061\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(6,'is_light','[0]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(7,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(8,'button_label','[\"Shop Now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(9,'background_color','[\"#E3EDF6\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(10,'is_light','[1]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(11,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(12,'button_label','[\"Shop Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:09','2024-04-26 03:15:09'),(13,'faq_ids','[[2,5,6,9,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(14,'faq_ids','[[1,5,6,7,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(15,'faq_ids','[[2,5,7,8,9]]',3,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(16,'faq_ids','[[3,6,7,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(17,'faq_ids','[[5,7,8,9,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(18,'faq_ids','[[4,5,6,7,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(19,'faq_ids','[[1,7,8,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(20,'faq_ids','[[1,6,8,9,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(21,'faq_ids','[[2,3,4,6,8]]',9,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(22,'faq_ids','[[1,5,6,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(23,'faq_ids','[[1,6,7,8,9]]',11,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(24,'faq_ids','[[1,2,3,6,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(25,'faq_ids','[[3,4,5,7,8]]',13,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(26,'faq_ids','[[1,3,4,5,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(27,'faq_ids','[[1,3,4,5,8]]',15,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(28,'faq_ids','[[2,4,5,8,9]]',16,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(29,'faq_ids','[[2,4,8,9,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(30,'faq_ids','[[2,6,8,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(31,'faq_ids','[[4,6,7,8,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(32,'faq_ids','[[1,3,4,5,8]]',20,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(33,'faq_ids','[[1,3,5,9,10]]',21,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(34,'faq_ids','[[2,6,7,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(35,'faq_ids','[[1,2,4,6,10]]',23,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(36,'faq_ids','[[1,4,6,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(37,'faq_ids','[[2,3,4,8,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(38,'faq_ids','[[1,3,4,7,9]]',26,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(39,'faq_ids','[[1,2,5,6,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(40,'faq_ids','[[2,3,4,9,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(41,'faq_ids','[[1,4,6,9,10]]',29,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(42,'faq_ids','[[1,2,4,5,9]]',30,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(43,'faq_ids','[[3,4,5,9,10]]',31,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(44,'faq_ids','[[3,4,5,6,8]]',32,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(45,'faq_ids','[[1,4,5,6,7]]',33,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(46,'faq_ids','[[2,5,7,9,10]]',34,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(47,'faq_ids','[[2,4,5,6,8]]',35,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(48,'faq_ids','[[1,3,4,5,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(49,'faq_ids','[[2,3,7,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(50,'faq_ids','[[3,4,6,7,9]]',38,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(51,'faq_ids','[[1,3,5,8,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(52,'faq_ids','[[1,4,7,8,10]]',40,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(53,'faq_ids','[[1,4,6,7,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(54,'faq_ids','[[1,3,8,9,10]]',42,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(55,'faq_ids','[[2,3,8,9,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(56,'faq_ids','[[1,4,5,9,10]]',44,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(57,'faq_ids','[[1,3,5,7,10]]',45,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(58,'faq_ids','[[1,2,5,8,10]]',46,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(59,'faq_ids','[[1,3,5,7,9]]',47,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(60,'faq_ids','[[1,3,4,6,7]]',48,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(61,'faq_ids','[[1,3,5,7,9]]',49,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:13','2024-04-26 03:15:13'),(62,'faq_ids','[[3,4,5,6,8]]',50,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(63,'faq_ids','[[1,2,4,6,9]]',51,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(64,'faq_ids','[[1,2,5,6,8]]',52,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(65,'faq_ids','[[3,4,5,7,9]]',53,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(66,'faq_ids','[[4,6,8,9,10]]',54,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(67,'faq_ids','[[1,2,3,8,10]]',55,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(68,'faq_ids','[[1,2,5,6,8]]',56,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(69,'faq_ids','[[2,4,6,7,10]]',57,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:14','2024-04-26 03:15:14'),(70,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(71,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(72,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(73,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(74,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(75,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(76,'title','[\"Selected novelty \\n Products\"]',3,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(77,'subtitle','[\"Only $99.00\"]',3,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(78,'title','[\"Top Rated \\n Products\"]',4,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(79,'subtitle','[\"Only $55.00\"]',4,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(80,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',5,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(81,'subtitle','[\"Tablet Collection 2023\"]',5,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(82,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(83,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',6,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(84,'subtitle','[\"Tablet Collection 2023\"]',6,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(85,'button_label','[\"Shop Now\"]',6,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(86,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',7,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(87,'subtitle','[\"Tablet Collection 2023\"]',7,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:15','2024-04-26 03:15:15'),(88,'button_label','[\"Shop Now\"]',7,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:16','2024-04-26 03:15:16'),(89,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_06_100448_change_random_hash_for_media',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(174,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(175,'2024_03_21_100334_update_section_title_shape',1),(176,'2024_03_25_000001_update_captcha_settings_for_contact',1),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(178,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(179,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(180,'2024_03_29_042242_migrate_old_captcha_settings',1),(181,'2024_03_29_093946_create_ec_order_return_histories_table',1),(182,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(183,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(184,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(185,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(186,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(187,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(188,'2024_04_19_063914_create_custom_fields_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','grayson.treutel@example.org','+16618271394','5111 Zboncak Street','HU','Ohio','South Beryl',5,'main/stores/1.png','main/stores/cover-3.png','Fuga qui quidem explicabo dolores omnis tenetur. Ab dolores voluptas tenetur corrupti. Sit praesentium architecto ut at omnis aliquid quidem. Deserunt aut sapiente fugiat tempore sunt quidem. Eum dolor dignissimos sit non aut. Id non aspernatur voluptatum ad. Et beatae sunt vitae amet aut quia.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:08','2024-04-26 03:15:08',NULL,NULL),(2,'Global Office','koepp.napoleon@example.org','+16625624053','1342 Bednar Tunnel','RW','Arkansas','Lake Nakia',8,'main/stores/2.png','main/stores/cover-2.png','Laborum aut qui ratione voluptas at expedita qui. Sed aut non earum. Cumque est nihil aspernatur saepe amet maiores similique. Laborum voluptas sunt earum sed. Optio asperiores perferendis dignissimos est. Blanditiis quae et harum vel. Aut placeat vero officiis eos. Officiis id quas voluptatum voluptas.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:08','2024-04-26 03:15:08',NULL,NULL),(3,'Young Shop','rpouros@example.com','+19894484168','70245 Natalia Valleys','ZW','District of Columbia','Americoside',4,'main/stores/3.png','main/stores/cover-3.png','Maxime enim error facere nam aut architecto fugit ut. Eum nihil ut sint cum eaque. Voluptatibus modi a aut consequuntur consequuntur et. Autem distinctio voluptate voluptas adipisci. Cum consectetur quas eius ut ipsam. Beatae et aspernatur id dolores molestiae est. A consequatur quo dolorum dolor delectus ipsam.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:08','2024-04-26 03:15:08',NULL,NULL),(4,'Global Store','bogan.rachael@example.com','+13214159982','1804 Carleton Light Suite 752','GF','North Dakota','New Camden',3,'main/stores/4.png','main/stores/cover-1.png','Recusandae occaecati provident adipisci aut neque sit. Neque et voluptatem delectus eum enim voluptatem illo. Facere nobis ut fuga repellat. Deserunt rerum mollitia harum et. Temporibus et placeat eos repellendus voluptate doloribus non adipisci.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:08','2024-04-26 03:15:08',NULL,NULL),(5,'Robert’s Store','elaina85@example.net','+16677301192','4238 Odell Port Suite 034','GH','Iowa','West Sandraburgh',6,'main/stores/5.png','main/stores/cover-2.png','Magni non labore laudantium dolorum. Autem eius expedita iste repudiandae animi. Deserunt maiores repellat magnam eligendi. Eum et commodi veniam. Architecto eius corporis beatae et incidunt ex. Dolores consequatur repellendus cupiditate ullam nihil. Dolorum qui fuga vitae quia. Tenetur nemo est aut omnis.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:08','2024-04-26 03:15:08',NULL,NULL),(6,'Stouffer','bwindler@example.com','+19377474722','654 Gorczany Port','SX','New Hampshire','South Evalyn',8,'main/stores/6.png','main/stores/cover-5.png','Sed accusantium eos et et. Voluptate nostrum non provident quaerat. Saepe doloremque ducimus aut perferendis vel. Non id eius distinctio atque. Asperiores dignissimos nesciunt mollitia mollitia perspiciatis. Non dolor reiciendis rerum sint. Est non nostrum voluptatem maiores. Voluptate unde nihil ut laudantium.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:08','2024-04-26 03:15:08',NULL,NULL),(7,'StarKist','justina.keebler@example.net','+16518438859','9301 Janiya Bridge Suite 609','TD','Minnesota','Port Dane',3,'main/stores/7.png','main/stores/cover-1.png','Laboriosam rerum saepe ea similique consectetur reiciendis enim. Debitis provident odio laborum excepturi. Explicabo aspernatur non tempora cumque. Rem eius sunt corrupti optio at. Quas aperiam pariatur atque. Et corrupti voluptatem omnis dolor. Rerum nemo sed assumenda et ut. Error autem eius facere vitae voluptas ad ipsam. Ullam et ex sed quod.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:09','2024-04-26 03:15:09',NULL,NULL),(8,'Old El Paso','vhyatt@example.com','+15316968438','109 Ullrich Points','MF','Ohio','Mosciskishire',7,'main/stores/8.png','main/stores/cover-2.png','Ipsum nostrum sequi ut a fugit. Eius tempore et nihil officia ipsa dolorum quibusdam. Adipisci ea sint maiores exercitationem. Saepe explicabo iste debitis impedit perspiciatis repudiandae. Voluptas minima similique veritatis deleniti impedit. Ex adipisci beatae officiis est ut ut.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:09','2024-04-26 03:15:09',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$kv30nkgJUgrYc6w/Z8LOHuA.asnucji5VyXaXoGcSidkU2PxOcc4i','{\"name\":\"Ernesto Hackett I\",\"number\":\"+13466354977\",\"full_name\":\"Adolphus Zboncak\",\"description\":\"Rahsaan Raynor\"}','2024-04-26 03:15:06','2024-04-26 03:15:06','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$.S9epVTIBP7YdybgxgLfTOt8BmavF5s7CtYJtzO3M9w91ZAfhw6YO','{\"name\":\"Sylvia Stracke\",\"number\":\"+15519591590\",\"full_name\":\"Viviane Rau\",\"description\":\"Gerhard Wunsch\"}','2024-04-26 03:15:06','2024-04-26 03:15:06','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$4RX4ud//VvQOjwr1o65rluFuIVGhOiwW/ROeR3gp7DF/QjxSb07bG','{\"name\":\"Electa Fritsch\",\"number\":\"+19374063692\",\"full_name\":\"Tristin Stiedemann\",\"description\":\"Dr. Lacey Schoen V\"}','2024-04-26 03:15:06','2024-04-26 03:15:06','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$7OQVFlMXestSAsL02J4vyeYT0ry86F010m82S7FXCjulkMiF7NXYe','{\"name\":\"Dakota Towne\",\"number\":\"+18083739396\",\"full_name\":\"Jeanie Hermiston\",\"description\":\"Joshuah Kuhlman\"}','2024-04-26 03:15:06','2024-04-26 03:15:06','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$OuS.iEAZRywFpopjrd/yReXouBpVFhda60eQgi.81e5ADAYGRX1AC','{\"name\":\"Ebba Kris\",\"number\":\"+12403643487\",\"full_name\":\"Mrs. Vivianne Weber I\",\"description\":\"Mr. Trenton Stoltenberg\"}','2024-04-26 03:15:07','2024-04-26 03:15:07','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$xIR30bnIpYyunui1Glh4mea..kVRGKuuth9IcPP5WSYMh/iFZZNS2','{\"name\":\"Mrs. Summer Kutch\",\"number\":\"+14153489171\",\"full_name\":\"Sam Quitzon Jr.\",\"description\":\"Lilla Steuber\"}','2024-04-26 03:15:07','2024-04-26 03:15:07','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$zT7JZ5GtFtk20wvL8fSDP.lEG3TnE.a5L1eR.XdQo0W90adc1hQyq','{\"name\":\"Kurt Legros\",\"number\":\"+15595637945\",\"full_name\":\"Frederik Olson\",\"description\":\"Lillie Ebert\"}','2024-04-26 03:15:07','2024-04-26 03:15:07','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"1\" key=\"home-slider\" customize_font_family_of_description=\"1\" font_family_of_description=\"Oregano\" shape_1=\"main/sliders/shape-1.png\" shape_2=\"main/sliders/shape-2.png\" shape_3=\"main/sliders/shape-3.png\" shape_4=\"main/sliders/shape-4.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ecommerce-categories style=\"slider\" category_ids=\"6,10,13,16,30\" enable_lazy_loading=\"yes\"][/ecommerce-categories][site-features style=\"1\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][ecommerce-product-groups title=\"Trending Products\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-flash-sale style=\"1\" title=\"Deal of The Day\" flash_sale_id=\"1\" limit=\"4\" button_label=\"View All Deals\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-flash-sale][ecommerce-products style=\"grid\" category_ids=\"20\" limit=\"12\" with_sidebar=\"on\" image=\"main/gadgets/gadget-girl.png\" action_label=\"More Products\" ads_ids=\"3,4\" enable_lazy_loading=\"yes\"][/ecommerce-products][ads style=\"4\" key_1=\"B5ZA76ZWMWAE\" key_2=\"F1LTQS976YPY\" key_3=\"IHPZ2WBSYJUK\" enable_lazy_loading=\"yes\"][/ads][ecommerce-products style=\"slider\" title=\"New Arrivals\" by=\"collection\" collection_ids=\"1\" limit=\"12\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups style=\"columns\" limit=\"3\" tabs=\"on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][blog-posts title=\"Latest news & articles\" type=\"latest\" limit=\"3\" button_label=\"View All\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][gallery style=\"1\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(2,'Product Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(5,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(7,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(8,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16'),(9,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:15:16','2024-04-26 03:15:16');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (6,1),(1,1),(4,2),(5,2),(5,3),(3,3),(1,4),(3,4),(2,5),(4,5),(5,6),(2,7),(1,7),(1,8),(2,8),(6,9),(2,9),(2,10),(6,10),(6,11),(2,12),(6,12),(6,13),(4,13),(5,14),(4,15),(1,16),(6,17),(5,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (7,1),(4,1),(8,2),(5,2),(5,3),(7,3),(3,3),(2,4),(6,4),(1,5),(2,5),(3,5),(4,6),(1,6),(8,6),(5,7),(4,7),(7,7),(4,8),(7,8),(6,8),(2,9),(1,9),(2,10),(6,10),(7,10),(2,11),(4,11),(3,11),(3,12),(1,12),(5,13),(7,13),(3,13),(4,14),(2,14),(7,14),(6,15),(4,15),(5,16),(2,16),(3,16),(5,17),(4,17),(7,17),(4,18),(6,18),(7,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Alice; \'I daresay it\'s a set of verses.\' \'Are they in the night? Let me think: was I the same height as herself; and when Alice had been would have made a memorandum of the tail, and ending with the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',1226,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','The Duchess took no notice of them at dinn--\' she checked herself hastily, and said to herself, for she was now the right word) \'--but I shall be punished for it flashed across her mind that she was.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',2058,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(3,'The Top 2020 Handbag Trends to Know','Soup,\" will you, won\'t you, won\'t you, will you, won\'t you, won\'t you, won\'t you, will you join the dance. Would not, could not, would not join the dance. Would not, could not, would not, could not.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',1456,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(4,'How to Match the Color of Your Handbag With an Outfit','Alice alone with the other: the Duchess sneezed occasionally; and as it lasted.) \'Then the words a little, half expecting to see if she had put on her lap as if it began ordering people about like.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',1096,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(5,'How to Care for Leather Bags','Imagine her surprise, when the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the tarts on the stairs. Alice knew it was only too glad to do it! Oh dear! I shall.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',1515,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','When I used to say a word, but slowly followed her back to the jury, and the great concert given by the whole pack of cards: the Knave of Hearts, who only bowed and smiled in reply. \'Idiot!\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',2281,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(7,'Essential Qualities of Highly Successful Music','Alice, and she at once crowded round her head. \'If I eat one of the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And be quick about it,\' said Alice. \'It goes on, you know,\' Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',2014,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(8,'9 Things I Love About Shaving My Head','The Cat seemed to think that will be the best plan.\' It sounded an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice, swallowing down her anger as well as she could do to hold it. As.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1302,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(9,'Why Teamwork Really Makes The Dream Work','Duchess asked, with another dig of her little sister\'s dream. The long grass rustled at her feet in the middle of the trees as well go in ringlets at all; and I\'m I, and--oh dear, how puzzling it.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1237,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(10,'The World Caters to Average People','On which Seven looked up eagerly, half hoping she might as well wait, as she could see it trying in a very hopeful tone though), \'I won\'t have any rules in particular; at least, if there were three.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',964,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(11,'The litigants on the screen are not actors','And when I find a thing,\' said the King. (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very interesting dance to watch,\' said Alice, a good thing!\' she said aloud.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',1367,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(12,'Hiring the Right Sales Team at the Right Time','Dormouse, and repeated her question. \'Why did they draw?\' said Alice, and sighing. \'It IS a long way back, and see after some executions I have ordered\'; and she at once crowded round her, about.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',2142,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(13,'Fully Embrace the Return of 90s fashion','Alice indignantly, and she heard her voice sounded hoarse and strange, and the reason they\'re called lessons,\' the Gryphon whispered in a soothing tone: \'don\'t be angry about it. And yet I don\'t.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',2241,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(14,'Exploring the English Countryside','French lesson-book. The Mouse only shook its head impatiently, and walked off; the Dormouse fell asleep instantly, and Alice called out \'The race is over!\' and they sat down, and the Dormouse.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',1242,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(15,'Here’s the First Valentino’s New Makeup Collection','The baby grunted again, and looking anxiously round to see a little bottle on it, (\'which certainly was not otherwise than what you had been to her, one on each side, and opened their eyes and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',2146,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(16,'Follow Your own Design process, whatever gets','King, going up to her that she still held the pieces of mushroom in her life, and had been to a shriek, \'and just as she had to run back into the teapot. \'At any rate I\'ll never go THERE again!\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1499,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(17,'Freelancer Days 2024, What’s new?','March Hare took the hookah out of the gloves, and she set the little golden key, and when she got up, and there she saw them, they were gardeners, or soldiers, or courtiers, or three of the trees.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1734,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04'),(18,'Quality Foods Requirments For Every Human Body’s','I\'m not particular as to prevent its undoing itself,) she carried it out to sea!\" But the insolence of his tail. \'As if I must, I must,\' the King said gravely, \'and go on with the tea,\' the March.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1516,NULL,'2024-04-26 03:15:04','2024-04-26 03:15:04');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-26 03:14:59','2024-04-26 03:14:59');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','69579ffad22b70fc06f35de753c8841e',NULL,'2024-04-26 03:15:16'),(2,'api_enabled','0',NULL,'2024-04-26 03:15:16'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-04-26 03:15:16'),(6,'theme','shofy',NULL,'2024-04-26 03:15:16'),(7,'show_admin_bar','1',NULL,'2024-04-26 03:15:16'),(8,'payment_cod_status','1',NULL,'2024-04-26 03:15:16'),(9,'payment_bank_transfer_status','1',NULL,'2024-04-26 03:15:16'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-04-26 03:15:16'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-04-26 03:15:16'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-04-26 03:15:16'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-04-26 03:15:16'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-04-26 03:15:16'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-04-26 03:15:16'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-04-26 03:15:16'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-04-26 03:15:16'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-04-26 03:15:16'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-04-26 03:15:16'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-04-26 03:15:16'),(21,'announcement_lazy_loading','1',NULL,'2024-04-26 03:15:16'),(22,'language_hide_default','1',NULL,'2024-04-26 03:15:16'),(23,'language_switcher_display','dropdown',NULL,'2024-04-26 03:15:16'),(24,'language_display','all',NULL,'2024-04-26 03:15:16'),(25,'language_hide_languages','[]',NULL,'2024-04-26 03:15:17'),(26,'ecommerce_store_name','Shofy',NULL,'2024-04-26 03:15:17'),(27,'ecommerce_store_phone','1800979769',NULL,'2024-04-26 03:15:17'),(28,'ecommerce_store_address','502 New Street',NULL,'2024-04-26 03:15:17'),(29,'ecommerce_store_state','Brighton VIC',NULL,'2024-04-26 03:15:17'),(30,'ecommerce_store_city','Brighton VIC',NULL,'2024-04-26 03:15:17'),(31,'ecommerce_store_country','AU',NULL,'2024-04-26 03:15:17'),(32,'announcement_max_width','1390',NULL,'2024-04-26 03:15:17'),(33,'announcement_text_color','#fff',NULL,'2024-04-26 03:15:17'),(34,'announcement_background_color','transparent',NULL,'2024-04-26 03:15:17'),(35,'announcement_placement','theme',NULL,'2024-04-26 03:15:17'),(36,'announcement_text_alignment','start',NULL,'2024-04-26 03:15:17'),(37,'announcement_dismissible','0',NULL,'2024-04-26 03:15:17'),(38,'simple_slider_using_assets','0',NULL,'2024-04-26 03:15:17'),(39,'theme-shofy-site_name','Shofy',NULL,NULL),(40,'theme-shofy-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(41,'theme-shofy-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(42,'theme-shofy-copyright','© %Y All Rights Reserved.',NULL,NULL),(43,'theme-shofy-tp_primary_font','Roboto',NULL,NULL),(44,'theme-shofy-primary_color','#0C55AA',NULL,NULL),(45,'theme-shofy-favicon','main/general/favicon.png',NULL,NULL),(46,'theme-shofy-logo','main/general/logo.png',NULL,NULL),(47,'theme-shofy-logo_light','main/general/logo-white.png',NULL,NULL),(48,'theme-shofy-header_style','1',NULL,NULL),(49,'theme-shofy-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(50,'theme-shofy-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(51,'theme-shofy-hotline','8 800 332 65-66',NULL,NULL),(52,'theme-shofy-email','contact@fartmart.co',NULL,NULL),(53,'theme-shofy-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(54,'theme-shofy-homepage_id','1',NULL,NULL),(55,'theme-shofy-blog_page_id','4',NULL,NULL),(56,'theme-shofy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-shofy-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(58,'theme-shofy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-shofy-number_of_products_per_page','24',NULL,NULL),(60,'theme-shofy-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-shofy-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(62,'theme-shofy-ecommerce_product_item_style','1',NULL,NULL),(63,'theme-shofy-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(64,'theme-shofy-logo_in_invoices','main/general/logo.png',NULL,NULL),(65,'theme-shofy-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(66,'theme-shofy-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-section_title_shape_decorated','style-3',NULL,NULL),(76,'theme-shofy-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The best tablet Collection 2023','main/sliders/slider-1.png','/products','Exclusive offer <span>-35%</span> off this week',0,'2024-04-26 03:15:09','2024-04-26 03:15:09'),(2,1,'The best note book collection 2023','main/sliders/slider-2.png','/products','Exclusive offer <span>-10%</span> off this week',1,'2024-04-26 03:15:09','2024-04-26 03:15:09'),(3,1,'The best phone collection 2023','main/sliders/slider-3.png','/products','Exclusive offer <span>-10%</span> off this week',2,'2024-04-26 03:15:09','2024-04-26 03:15:09');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-04-26 03:15:09','2024-04-26 03:15:09');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:00','2024-04-26 03:15:00'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:00','2024-04-26 03:15:00'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:00','2024-04-26 03:15:00'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:00','2024-04-26 03:15:00'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:00','2024-04-26 03:15:00'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:03','2024-04-26 03:15:03'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:03','2024-04-26 03:15:03'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:03','2024-04-26 03:15:03'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:03','2024-04-26 03:15:03'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:03','2024-04-26 03:15:03'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:03','2024-04-26 03:15:03'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:04','2024-04-26 03:15:04'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:04','2024-04-26 03:15:04'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:08','2024-04-26 03:15:08'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:08','2024-04-26 03:15:08'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:08','2024-04-26 03:15:08'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:08','2024-04-26 03:15:08'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:08','2024-04-26 03:15:08'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:08','2024-04-26 03:15:08'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:09','2024-04-26 03:15:09'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:09','2024-04-26 03:15:09'),(52,'new-arrivals',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(53,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(54,'featured',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(55,'new-arrivals',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(56,'best-sellers',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(57,'mobile-phone',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(58,'computers-laptops',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(59,'top-brands',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(60,'weekly-best-selling',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(61,'cpu-heat-pipes',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(62,'cpu-coolers',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(64,'headphones',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(65,'wireless-headphones',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(66,'tws-earphones',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(67,'smart-watch',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(68,'gaming-console',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(69,'playstation',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(70,'gifts',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(71,'computers',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(72,'desktop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(73,'laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(74,'tablet',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(75,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(76,'smartphones-tablets',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(77,'tv-video-music',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(78,'cameras',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:10','2024-04-26 03:15:10'),(79,'cooking',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(80,'accessories',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(81,'with-bluetooth',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(82,'sports',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(83,'electronics-gadgets',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(84,'micrscope',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(85,'remote-control',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(86,'monitor',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(87,'thermometer',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(88,'backpack',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(89,'headphones',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:11','2024-04-26 03:15:11'),(90,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',1,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(91,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',2,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(92,'samsung-galaxy-tab-s7-124-inch-android-tablet',3,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(93,'apple-macbook-pro-16-inch-laptop-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(94,'sony-wh-1000xm4-wireless-noise-canceling-headphones',5,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(95,'dji-mavic-air-2-drone',6,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(96,'gopro-hero9-black-action-camera',7,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(97,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(98,'nest-learning-thermostat-3rd-generation',9,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(99,'ring-video-doorbell-pro',10,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(100,'amazon-echo-show-10-3rd-gen',11,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(101,'samsung-qn90a-neo-qled-4k-smart-tv-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(102,'lg-oled-c1-series-4k-smart-tv',13,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(103,'sony-x950h-4k-ultra-hd-smart-led-tv',14,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(104,'apple-watch-series-7',15,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(105,'fitbit-charge-5-fitness-tracker-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(106,'garmin-fenix-7x-sapphire-solar-gps-watch',17,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(107,'microsoft-surface-pro-8',18,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(108,'lenovo-thinkpad-x1-carbon-gen-9-laptop',19,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(109,'hp-spectre-x360-14-inch-convertible-laptop-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(110,'razer-blade-15-advanced-gaming-laptop',21,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(111,'alienware-m15-r6-gaming-laptop',22,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(112,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',23,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(113,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(114,'steelseries-arctis-pro-wireless-gaming-headset',25,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(115,'elgato-stream-deck-xl',26,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(116,'nintendo-switch-oled-model',27,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(117,'playstation-5-console-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(118,'xbox-series-x-console',29,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(119,'oculus-quest-2-vr-headset',30,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(120,'htc-vive-cosmos-elite-vr-headset',31,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(121,'samsung-odyssey-g9-49-inch-curved-gaming-monitor-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(122,'lg-ultragear-27gn950-b-4k-gaming-monitor',33,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(123,'acer-predator-x38-pbmiphzx-38-inch-curved-gaming-monitor',34,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(124,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',35,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(125,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(126,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',37,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(127,'hp-z27k-g3-4k-usb-c-monitor',38,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(128,'lg-27uk850-w-27-inch-4k-uhd-ips-monitor',39,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(129,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(130,'sony-x900h-4k-ultra-hd-smart-led-tv',41,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(131,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',42,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(132,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',43,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(133,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(134,'lg-c1-series-4k-oled-smart-tv',45,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(135,'samsung-qn85a-neo-qled-4k-smart-tv',46,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(136,'sony-a90j-4k-oled-smart-tv',47,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(137,'apple-tv-4k-2nd-generation-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:17'),(138,'roku-ultra-2020-streaming-media-player',49,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:13','2024-04-26 03:15:13'),(139,'amazon-fire-tv-stick-4k-max',50,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:14'),(140,'google-chromecast-with-google-tv',51,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:14'),(141,'nvidia-shield-tv-pro-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:17'),(142,'sonos-beam-gen-2-soundbar',53,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:14'),(143,'bose-smart-soundbar-900',54,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:14'),(144,'jbl-bar-91-soundbar-with-dolby-atmos',55,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:14'),(145,'sennheiser-ambeo-soundbar-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:17'),(146,'sony-ht-a9-home-theater-system',57,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:14','2024-04-26 03:15:14'),(147,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:16','2024-04-26 03:15:16'),(148,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:16','2024-04-26 03:15:16'),(149,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:16','2024-04-26 03:15:16'),(150,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:16','2024-04-26 03:15:16'),(151,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:16','2024-04-26 03:15:16'),(152,'home',1,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(153,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(154,'coupons',3,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(155,'blog',4,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(156,'contact',5,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(157,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(158,'our-story',7,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(159,'careers',8,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(160,'shipping',9,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:16','2024-04-26 03:15:16'),(161,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',58,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(162,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',59,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(163,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',60,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(164,'apple-macbook-pro-16-inch-laptop-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(165,'dji-mavic-air-2-drone',62,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(166,'dji-mavic-air-2-drone',63,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(167,'dji-mavic-air-2-drone',64,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(168,'gopro-hero9-black-action-camera',65,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(169,'gopro-hero9-black-action-camera',66,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(170,'samsung-qn90a-neo-qled-4k-smart-tv-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(171,'samsung-qn90a-neo-qled-4k-smart-tv-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(172,'samsung-qn90a-neo-qled-4k-smart-tv-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(173,'sony-x950h-4k-ultra-hd-smart-led-tv',70,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(174,'sony-x950h-4k-ultra-hd-smart-led-tv',71,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(175,'apple-watch-series-7',72,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(176,'apple-watch-series-7',73,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(177,'apple-watch-series-7',74,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(178,'apple-watch-series-7',75,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(179,'garmin-fenix-7x-sapphire-solar-gps-watch',76,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(180,'hp-spectre-x360-14-inch-convertible-laptop-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(181,'hp-spectre-x360-14-inch-convertible-laptop-digital',78,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(182,'hp-spectre-x360-14-inch-convertible-laptop-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(183,'alienware-m15-r6-gaming-laptop',80,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(184,'alienware-m15-r6-gaming-laptop',81,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(185,'alienware-m15-r6-gaming-laptop',82,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(186,'elgato-stream-deck-xl',83,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(187,'elgato-stream-deck-xl',84,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(188,'elgato-stream-deck-xl',85,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(189,'nintendo-switch-oled-model',86,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(190,'nintendo-switch-oled-model',87,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(191,'nintendo-switch-oled-model',88,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(192,'nintendo-switch-oled-model',89,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(193,'playstation-5-console-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(194,'playstation-5-console-digital',91,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(195,'playstation-5-console-digital',92,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(196,'playstation-5-console-digital',93,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(197,'xbox-series-x-console',94,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(198,'xbox-series-x-console',95,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(199,'oculus-quest-2-vr-headset',96,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(200,'oculus-quest-2-vr-headset',97,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(201,'htc-vive-cosmos-elite-vr-headset',98,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(202,'htc-vive-cosmos-elite-vr-headset',99,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(203,'htc-vive-cosmos-elite-vr-headset',100,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(204,'htc-vive-cosmos-elite-vr-headset',101,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(205,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',102,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(206,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',103,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(207,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',104,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(208,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',105,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(209,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',106,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(210,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',107,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(211,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',108,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(212,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',109,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(213,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',110,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(214,'sony-x900h-4k-ultra-hd-smart-led-tv',111,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(215,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',112,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(216,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',113,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(217,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',114,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(218,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',115,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(219,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',116,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(220,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',117,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(221,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',118,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(222,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',119,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(223,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',120,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(224,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',121,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(225,'lg-c1-series-4k-oled-smart-tv',122,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(226,'lg-c1-series-4k-oled-smart-tv',123,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(227,'lg-c1-series-4k-oled-smart-tv',124,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(228,'samsung-qn85a-neo-qled-4k-smart-tv',125,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(229,'samsung-qn85a-neo-qled-4k-smart-tv',126,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(230,'sony-a90j-4k-oled-smart-tv',127,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(231,'sony-a90j-4k-oled-smart-tv',128,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(232,'sony-a90j-4k-oled-smart-tv',129,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(233,'roku-ultra-2020-streaming-media-player',130,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(234,'roku-ultra-2020-streaming-media-player',131,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(235,'amazon-fire-tv-stick-4k-max',132,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(236,'amazon-fire-tv-stick-4k-max',133,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(237,'google-chromecast-with-google-tv',134,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(238,'google-chromecast-with-google-tv',135,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(239,'jbl-bar-91-soundbar-with-dolby-atmos',136,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(240,'jbl-bar-91-soundbar-with-dolby-atmos',137,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(241,'jbl-bar-91-soundbar-with-dolby-atmos',138,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(242,'sennheiser-ambeo-soundbar-digital',139,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(243,'sennheiser-ambeo-soundbar-digital',140,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(244,'sennheiser-ambeo-soundbar-digital',141,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(245,'sennheiser-ambeo-soundbar-digital',142,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(246,'sony-ht-a9-home-theater-system',143,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17'),(247,'sony-ht-a9-home-theater-system',144,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:17','2024-04-26 03:15:17');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:04','2024-04-26 03:15:04');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/5.jpg','Developer','published','2024-04-26 03:15:09','2024-04-26 03:15:09'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/5.jpg','CO Founder','published','2024-04-26 03:15:09','2024-04-26 03:15:09'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/7.jpg','UI/UX Designer','published','2024-04-26 03:15:09','2024-04-26 03:15:09'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/5.jpg','Bank of America','published','2024-04-26 03:15:09','2024-04-26 03:15:09');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'konopelski.eleonore@bosco.org',NULL,'$2y$12$qOfWmOXrf47pt3v7X75TIuPxHMAKNzSVtlJKX3wBTTBm7u93Utb3e',NULL,'2024-04-26 03:14:59','2024-04-26 03:14:59','Stephany','Walter','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(4,'SiteContactWidget','footer_primary_sidebar','shofy',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(9,'NewsletterWidget','footer_top_sidebar','shofy',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(12,'BlogSearchWidget','blog_sidebar','shofy',1,'{\"id\":\"BlogSearchWidget\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(13,'BlogAboutMeWidget','blog_sidebar','shofy',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/9.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(14,'BlogPostsWidget','blog_sidebar','shofy',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(15,'BlogCategoriesWidget','blog_sidebar','shofy',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(16,'BlogTagsWidget','blog_sidebar','shofy',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-04-26 03:15:17','2024-04-26 03:15:17'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[6,7,10,13,16,30],\"style\":\"slider\",\"display_children\":false}','2024-04-26 03:15:17','2024-04-26 03:15:17');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 17:15:18
