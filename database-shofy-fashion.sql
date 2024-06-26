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
INSERT INTO `activations` VALUES (1,1,'jUyBa1kb4xUTqJ9cxqJfK0vfWdusokGK',1,'2024-04-26 03:15:32','2024-04-26 03:15:32','2024-04-26 03:15:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-04-26 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-04-26 03:15:52','2024-04-26 03:15:52',1,NULL,NULL,NULL,NULL),(2,'Ads 2','2029-04-26 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-04-26 03:15:52','2024-04-26 03:15:52',1,NULL,NULL,NULL,NULL),(3,'Ads 3','2029-04-26 00:00:00','not_set','WXAUTIJV1QU0','fashion/banners/1.jpg','/products',0,3,'published','2024-04-26 03:15:52','2024-04-26 03:15:52',1,NULL,NULL,NULL,NULL),(4,'Ads 4','2029-04-26 00:00:00','not_set','7Z5RXBBWV7J2','fashion/banners/2.jpg','/products',0,4,'published','2024-04-26 03:15:52','2024-04-26 03:15:52',1,NULL,NULL,NULL,NULL),(5,'Ads 5','2029-04-26 00:00:00','not_set','JY08TDO8FG1E','fashion/banners/3.jpg','/products',0,5,'published','2024-04-26 03:15:52','2024-04-26 03:15:52',1,NULL,NULL,NULL,NULL),(6,'Ads 6','2029-04-26 00:00:00','not_set','VKJNCBIBQC1O','fashion/banners/4.jpg','/products',0,6,'published','2024-04-26 03:15:52','2024-04-26 03:15:52',1,NULL,NULL,NULL,NULL);
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-04-26 10:15:43',NULL,1,'2024-04-26 03:15:43','2024-04-26 03:15:43'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-04-26 10:15:43',NULL,1,'2024-04-26 03:15:43','2024-04-26 03:15:43'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-04-26 10:15:43',NULL,1,'2024-04-26 03:15:43','2024-04-26 03:15:43');
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
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Quae qui ipsa libero quisquam. Sunt consequuntur sunt esse error suscipit consequatur sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-26 03:15:38','2024-04-26 03:15:38'),(2,'Fashion',0,'Qui quo occaecati itaque quas cupiditate optio. Dolores perspiciatis culpa nam qui et fugit quia. Iste dolor vero omnis reprehenderit delectus dignissimos autem. Corrupti omnis ut optio ratione qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:38','2024-04-26 03:15:38'),(3,'Electronic',0,'Nostrum delectus eum voluptas cum aliquid earum ut velit. Esse ducimus qui occaecati ex. Sed excepturi est ut omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:38','2024-04-26 03:15:38'),(4,'Commercial',0,'At voluptatem quaerat aut suscipit omnis. Laboriosam nam repudiandae odit ea. Veniam odio soluta occaecati animi. In rem sunt aut iusto sequi rerum maxime.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:38','2024-04-26 03:15:38'),(5,'Organic Fruits',0,'Enim similique explicabo velit earum est ullam quam. Delectus voluptatem doloribus voluptates nobis error id est alias. Cumque magnam perspiciatis soluta fuga nesciunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:38','2024-04-26 03:15:38'),(6,'Ecological',0,'Corrupti ducimus eum excepturi vel consequatur reprehenderit. Cum impedit officiis voluptas similique. Voluptate alias autem sunt est nisi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:15:38','2024-04-26 03:15:38');
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
INSERT INTO `contacts` VALUES (1,'Mario Huels','pbartell@example.com','+1-631-812-4120','30703 Ocie Key\nHarrisfurt, GA 33012','Qui blanditiis nihil eum quia.','Fugit modi rerum adipisci atque placeat hic earum. Minus ipsam et eum ipsum ut qui. Suscipit animi saepe ad velit corporis aliquid sed adipisci. Rem rerum tenetur pariatur quia placeat in. Asperiores cum modi odio sint ducimus molestiae. Numquam est minima magnam quaerat vel aliquam. Velit consectetur voluptas assumenda velit velit nihil libero qui. Nemo explicabo distinctio praesentium facere quo qui.',NULL,'unread','2024-04-26 03:15:37','2024-04-26 03:15:37'),(2,'Mrs. Nakia Schaefer V','dkiehn@example.com','+1.445.371.9524','653 Boyer Street Suite 066\nQuitzonton, MI 11754','Possimus nihil dolores dolores.','Vitae eos occaecati qui sint dolor quas minima. Ducimus iure sunt sapiente magni saepe. Fuga dicta consequatur facilis et dolor. Eum dolorem mollitia eligendi sint labore doloribus hic. Fuga voluptatibus dolorem sit rem vero et. Ab corrupti et labore vel consequatur nam. Ipsam iure culpa atque consectetur qui.',NULL,'unread','2024-04-26 03:15:37','2024-04-26 03:15:37'),(3,'Marco Beatty','weber.ismael@example.net','+1.726.894.5876','3829 Hulda Pike\nMadisyntown, GA 85366','Quis quis aliquam laboriosam nihil aut ut.','Exercitationem est quia eos aliquam aliquid. Modi porro debitis magni quia soluta aut quasi. Neque culpa est debitis nihil sed qui voluptas. Minima non et sed voluptate nobis sequi neque. Delectus dolores voluptas debitis sit qui. Voluptatem ad impedit deserunt consequatur est mollitia. Porro consequatur porro aperiam vel. Veniam ad illo ut. Est animi et quia porro eos quia libero. Modi incidunt harum rerum. Et consequatur non dolores rerum laborum.',NULL,'unread','2024-04-26 03:15:37','2024-04-26 03:15:37'),(4,'Prof. Otto Ritchie Jr.','blanda.arvilla@example.org','1-541-534-3717','1700 Gorczany Forest\nSouth Alessandro, IA 34453-2747','Iusto et iste quaerat et.','Maxime sint iure quo voluptas aut voluptatem a illo. Rerum sit debitis temporibus excepturi corrupti ex. Neque et et aspernatur et enim et nisi. Delectus ut eos adipisci officia vel. Aut sunt sapiente veniam saepe et ipsum optio. Doloremque quia recusandae cupiditate vitae natus. Aperiam officia adipisci necessitatibus eum quod. Quo sit est doloremque impedit quia deleniti. Aliquam id ex aspernatur veniam aspernatur eum fugiat. Culpa veritatis id nesciunt quia incidunt.',NULL,'unread','2024-04-26 03:15:37','2024-04-26 03:15:37'),(5,'Skye Gislason','jaylin.ondricka@example.org','(765) 709-0727','4229 Ola Greens\nPort Terrenceburgh, ND 00409','Molestiae quo est odit et.','Est ducimus quaerat illum consequatur blanditiis explicabo. Dolorum minima ad et hic voluptatem ut. Ad officia et repellat totam fugiat culpa expedita voluptatem. Inventore rerum blanditiis voluptatem magni. Qui dolorum autem mollitia. Molestias tempore placeat dolor. Aliquam omnis saepe corrupti ducimus eius. Temporibus cum dolorem tenetur enim. Veritatis est quis voluptas et suscipit ex natus.',NULL,'read','2024-04-26 03:15:37','2024-04-26 03:15:37'),(6,'Dr. Junior Hagenes','cummerata.alaina@example.com','+1 (651) 998-5197','8643 Cora Flat Suite 237\nNew Dwightmouth, KS 34100-4046','Aspernatur mollitia ipsam porro ea.','Et dolor porro dolorem corrupti. Modi reiciendis cumque praesentium. Non aut omnis soluta. Omnis ipsum ullam ea omnis cupiditate. Dolor dignissimos dolorem similique voluptate. Adipisci molestiae reiciendis laborum itaque velit ut quia. Impedit voluptate cupiditate aut illum esse labore porro. Ut sunt ut velit aut occaecati eligendi et magnam.',NULL,'unread','2024-04-26 03:15:37','2024-04-26 03:15:37'),(7,'Rozella Parker V','eliane57@example.net','858.971.1808','2474 Boris Mountain Apt. 910\nQuigleyburgh, IL 11140-9965','Magnam numquam veritatis quia accusamus ipsa.','Blanditiis qui pariatur velit voluptatem officia eum voluptatem neque. Et rerum consequatur dolore possimus inventore. Voluptatem excepturi saepe et tenetur dolore commodi. Quia consequatur ut qui. Omnis voluptatem inventore ut illum totam aliquid. In eum voluptas est a natus incidunt ut ipsa. Ipsam reiciendis quos aliquid architecto odit ullam expedita iusto. Voluptas deleniti illo sed.',NULL,'read','2024-04-26 03:15:37','2024-04-26 03:15:37'),(8,'Guiseppe Carter','dickinson.chelsea@example.com','213-723-9881','9946 Elise Corners\nSchaeferborough, SC 48489','Cumque quis velit expedita cum repellendus.','Iure et beatae laborum vitae in praesentium provident. Possimus minima ex qui ex nemo incidunt. Et hic quidem dolorem cupiditate. Expedita aliquam cum dicta accusamus non ad ipsum. Veritatis quam quia deserunt debitis. Qui quo aut eum et ipsum quae sit. Sint eligendi aspernatur voluptatem asperiores voluptatum aliquam rerum. Ex impedit voluptatum nesciunt beatae molestias aut dicta. Aperiam consequuntur aut sit quia ad sequi.',NULL,'read','2024-04-26 03:15:37','2024-04-26 03:15:37'),(9,'Kaylin Hahn IV','anna46@example.org','+1-765-648-6546','625 Adrienne Junctions\nEast Elyssa, NC 86995-3255','Neque quis quia minus.','Dolores eveniet recusandae harum et et. Repellat adipisci ut blanditiis harum voluptate vel. Totam id fugiat cumque explicabo voluptatibus earum. Officiis illo perferendis ea tempora impedit iste dolorem. Quae qui enim harum illo est. Illo beatae alias sit minima aut dicta deserunt. Iusto possimus sunt quis expedita. Magni et harum et.',NULL,'read','2024-04-26 03:15:37','2024-04-26 03:15:37'),(10,'Ms. Lilla Predovic Sr.','kenna72@example.net','+1-626-398-2941','29853 Camryn Squares\nNorth Arden, GA 82756-2326','Quo qui voluptatem excepturi rem aperiam.','Fuga dolorum qui et laboriosam eligendi. Numquam eum sed iusto inventore aliquam at ut quam. Atque est ea sint dolor. Quis debitis ipsa earum nihil. Dolor deleniti consequatur ratione consequuntur qui. Recusandae non occaecati vel enim quibusdam voluptatibus. Temporibus neque aspernatur sed praesentium dolorem expedita a. Quia facilis qui sed et. Vero perspiciatis molestiae dolore quas. Quia sequi autem eos voluptatem rerum.',NULL,'read','2024-04-26 03:15:37','2024-04-26 03:15:37');
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
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-04-26 03:15:33','2024-04-26 03:15:33');
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(2,'EUR','€',0,2,1,0,0.84,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(3,'VND','₫',0,0,2,0,23203,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(4,'NGN','₦',1,2,2,0,895.52,'2024-04-26 03:15:33','2024-04-26 03:15:33');
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Melisa Hermann','customer@botble.com','+13517567761','AL','Kansas','Hectortown','90365 Roob Square',1,1,'2024-04-26 03:15:34','2024-04-26 03:15:34','91687-5219'),(2,'Melisa Hermann','customer@botble.com','+18563915969','ER','Nevada','Lake Maya','86037 Vicente Brooks Suite 142',1,0,'2024-04-26 03:15:34','2024-04-26 03:15:34','62355'),(3,'Maggie Cruickshank','vendor@botble.com','+13015225316','VI','West Virginia','Brakuschester','208 Hane Trail',2,1,'2024-04-26 03:15:34','2024-04-26 03:15:34','16625'),(4,'Maggie Cruickshank','vendor@botble.com','+13809736809','AD','Illinois','South Avaport','17004 Kulas Radial Suite 808',2,0,'2024-04-26 03:15:34','2024-04-26 03:15:34','34592'),(5,'Dorothy Farrell','regan.schamberger@example.com','+13643047947','RE','Texas','Frederikfurt','34400 Howe Fork Suite 582',3,1,'2024-04-26 03:15:34','2024-04-26 03:15:34','05673-7362'),(6,'Melyssa Crooks','kiehn.hassan@example.net','+14639009311','PL','Nevada','New Curtischester','671 Grady Junction',4,1,'2024-04-26 03:15:35','2024-04-26 03:15:35','07828'),(7,'Mr. Ricardo Maggio III','mcronin@example.net','+14307023295','IR','Alaska','Mosciskiside','766 Robel Hills Apt. 681',5,1,'2024-04-26 03:15:35','2024-04-26 03:15:35','21418-5276'),(8,'Alberto Graham','brittany.welch@example.net','+12519959856','RU','South Carolina','North Bomouth','96366 Gabe Hollow',6,1,'2024-04-26 03:15:35','2024-04-26 03:15:35','91221'),(9,'Prof. Annamarie Leuschke DDS','jerdman@example.org','+16094437150','SB','New York','East Oceaneburgh','516 Kuvalis Port',7,1,'2024-04-26 03:15:36','2024-04-26 03:15:36','69575'),(10,'Alexandrea Johns','kirlin.leann@example.net','+19842895396','FM','Wisconsin','Ofeliaport','800 McCullough Tunnel',8,1,'2024-04-26 03:15:36','2024-04-26 03:15:36','43307-0419'),(11,'Mattie Reichel','durward07@example.com','+17065160579','ET','Washington','Britneybury','753 Wiegand Mount',9,1,'2024-04-26 03:15:36','2024-04-26 03:15:36','72763'),(12,'Hertha Runolfsdottir','oprice@example.org','+13474128339','RE','Illinois','Paulineville','3394 Hermann Plains Apt. 178',10,1,'2024-04-26 03:15:36','2024-04-26 03:15:36','50461');
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
INSERT INTO `ec_customers` VALUES (1,'Melisa Hermann','customer@botble.com','$2y$12$jasmuJx1N33EQxwMmqR0/ulz/kHz0SMF559LKbwAfLNOTQRYZnJY2','main/customers/1.jpg','1983-03-30','+18185337828',NULL,'2024-04-26 03:15:34','2024-04-26 03:15:34','2024-04-26 10:15:33',NULL,0,NULL,'activated',NULL),(2,'Maggie Cruickshank','vendor@botble.com','$2y$12$2kh51cS1NRZkT5/fyR6gzOYCBmIez2RrOumQ769Z2JrkDb0j6YFw2','main/customers/10.jpg','1988-04-04','+15412460706',NULL,'2024-04-26 03:15:34','2024-04-26 03:15:40','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(3,'Dorothy Farrell','regan.schamberger@example.com','$2y$12$Pd7JVZQuF93pw7FJT3JC9OEzkG7X5BPI0POAc724nCbmX2LIpdbuK','main/customers/1.jpg','2004-04-05','+14016094221',NULL,'2024-04-26 03:15:34','2024-04-26 03:15:41','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(4,'Melyssa Crooks','kiehn.hassan@example.net','$2y$12$wBWcLL/OVhl0cnmVYl5mCeObdbMvojZRGivezWdBrlOkLbT0ubpZW','main/customers/2.jpg','2001-03-29','+15748019844',NULL,'2024-04-26 03:15:35','2024-04-26 03:15:41','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(5,'Mr. Ricardo Maggio III','mcronin@example.net','$2y$12$DtEJp/haCS63IzzGb4YksePekkj8D4A55Byv..yMv5W5vQjMdD7Ha','main/customers/3.jpg','1977-04-20','+16412190031',NULL,'2024-04-26 03:15:35','2024-04-26 03:15:41','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(6,'Alberto Graham','brittany.welch@example.net','$2y$12$DLMfOhnYDeL/UeXMT8QXAuOIrLB5TyqNtzwGDWqfEdms2H2RiocFm','main/customers/4.jpg','1983-04-20','+15208875836',NULL,'2024-04-26 03:15:35','2024-04-26 03:15:42','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(7,'Prof. Annamarie Leuschke DDS','jerdman@example.org','$2y$12$8g2HGvLiIbB/npMOCQ7ViuXxCakpCQ5ShI2FH/.SpR6vw1N026/Ny','main/customers/5.jpg','1992-04-23','+12058887100',NULL,'2024-04-26 03:15:36','2024-04-26 03:15:42','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(8,'Alexandrea Johns','kirlin.leann@example.net','$2y$12$acbxq1mE086tHnTM20LdbeRX5iw82S3zEiiCwvSX8OHBREs6EeFwi','main/customers/6.jpg','1976-04-12','+16783215110',NULL,'2024-04-26 03:15:36','2024-04-26 03:15:42','2024-04-26 10:15:33',NULL,1,'2024-04-26 10:15:40','activated',NULL),(9,'Mattie Reichel','durward07@example.com','$2y$12$z..ZV1x6D3B670YSBjgcW.6qQGK9xHalT3HtW8ERCYo.Q9tJyKiDO','main/customers/7.jpg','1988-04-20','+16308017668',NULL,'2024-04-26 03:15:36','2024-04-26 03:15:43','2024-04-26 10:15:33',NULL,0,NULL,'activated',NULL),(10,'Hertha Runolfsdottir','oprice@example.org','$2y$12$t/K3AyzYpAX.C3d7CeNvi.TtHoZ2nSQc6Wo0wzSvtz3b6pinp.tRC','main/customers/8.jpg','2003-04-19','+15404318070',NULL,'2024-04-26 03:15:36','2024-04-26 03:15:43','2024-04-26 10:15:33',NULL,0,NULL,'activated',NULL);
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
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','W6YETBIRIOFS','2024-04-25 10:15:39',NULL,NULL,0,182,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(2,'Discount 2','G2SCBHWVLGLK','2024-04-25 10:15:39','2024-05-23 10:15:39',NULL,0,2,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(3,'Discount 3','2KTZSDY5LHGP','2024-04-25 10:15:39','2024-05-19 10:15:39',NULL,0,891,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(4,'Discount 4','NNWM5RSMLWCY','2024-04-25 10:15:39',NULL,NULL,0,334,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(5,'Discount 5','ENFTQO99KOGH','2024-04-25 10:15:39','2024-05-25 10:15:39',NULL,0,141,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(6,'Discount 6','DTI1TPQI2N1R','2024-04-25 10:15:39',NULL,NULL,0,644,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(7,'Discount 7','LXFHGDTBCD9A','2024-04-25 10:15:39',NULL,NULL,0,267,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(8,'Discount 8','SGEYEN7WNLWR','2024-04-25 10:15:39',NULL,NULL,0,321,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(9,'Discount 9','GKANG5EU1PB8','2024-04-25 10:15:39','2024-05-26 10:15:39',NULL,0,93,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL),(10,'Discount 10','Q8KZK9PTRVDD','2024-04-25 10:15:39',NULL,NULL,0,48,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL,NULL);
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,1412.7,10,4),(1,2,609.18,9,3),(1,3,547.68,20,1),(1,4,739.8378,11,5),(1,5,1649.6,13,2),(1,6,81.51,12,3),(1,7,203.77,15,2),(1,8,791.7038,17,2),(1,9,1546.56,7,5),(1,10,671.46,12,3);
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-05-24 00:00:00','published','2024-04-26 03:15:52','2024-04-26 03:15:52');
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(1,2,'2 Year',10,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(1,3,'3 Year',20,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(2,4,'4GB',0,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(2,5,'8GB',10,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(2,6,'16GB',20,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(3,7,'Core i5',0,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(3,8,'Core i7',10,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(3,9,'Core i9',20,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(4,10,'128GB',0,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(4,11,'256GB',10,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(4,12,'512GB',20,9999,0,'2024-04-26 03:15:39','2024-04-26 03:15:39');
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-04-26 03:15:39','2024-04-26 03:15:39');
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-04-26 03:15:33','2024-04-26 03:15:33',0),(2,'Size','size','text',1,1,1,'published',1,'2024-04-26 03:15:33','2024-04-26 03:15:33',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-04-26 03:15:33','2024-04-26 03:15:33',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-04-26 03:15:33','2024-04-26 03:15:33',0);
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(6,2,'S','s',NULL,NULL,1,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(7,2,'M','m',NULL,NULL,0,2,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(8,2,'L','l',NULL,NULL,0,3,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-04-26 03:15:33','2024-04-26 03:15:33'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-04-26 03:15:33','2024-04-26 03:15:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Bags',0,NULL,'published',0,'fashion/product-categories/1.jpg',1,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'fashion/product-categories/4.jpg',1,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'fashion/product-categories/2.jpg',1,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(11,'Footwear',0,NULL,'published',2,'fashion/product-categories/6.jpg',1,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(12,'Accessories',0,NULL,'published',3,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(13,'Hats',12,NULL,'published',0,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(14,'Scarves',12,NULL,'published',1,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(15,'Jewelry',12,NULL,'published',2,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(17,'Activewear',16,NULL,'published',0,NULL,0,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(18,'Running Shoes',16,NULL,'published',1,'fashion/product-categories/3.jpg',1,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL),(19,'Outerwear',0,NULL,'published',5,'fashion/product-categories/5.jpg',1,'2024-04-26 03:15:44','2024-04-26 03:15:44',NULL,NULL);
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
INSERT INTO `ec_product_category_product` VALUES (1,1),(1,9),(1,12),(1,17),(1,23),(1,27),(1,29),(1,34),(1,37),(1,41),(2,2),(2,3),(2,23),(2,25),(2,34),(2,43),(3,1),(3,3),(3,4),(3,7),(3,12),(3,14),(3,31),(3,35),(3,39),(3,43),(4,8),(4,9),(4,13),(4,20),(4,23),(4,33),(4,38),(4,39),(4,43),(5,3),(5,5),(5,12),(5,13),(5,15),(5,18),(5,23),(5,25),(5,31),(5,32),(5,33),(5,35),(5,37),(5,38),(6,2),(6,7),(6,8),(6,10),(6,16),(6,17),(6,29),(6,39),(6,40),(7,4),(7,15),(7,19),(7,24),(7,28),(7,30),(7,33),(8,5),(8,10),(8,17),(8,19),(8,20),(8,21),(8,26),(8,27),(8,28),(8,39),(8,42),(9,3),(9,5),(9,9),(9,11),(9,19),(9,22),(9,24),(9,28),(9,38),(10,4),(10,14),(10,15),(10,22),(10,28),(10,30),(10,31),(10,35),(10,41),(10,42),(11,8),(11,9),(11,12),(11,17),(11,18),(11,20),(11,21),(11,32),(12,10),(12,13),(12,14),(12,20),(12,25),(12,27),(12,29),(12,31),(12,37),(13,2),(13,6),(13,10),(13,16),(13,18),(13,22),(13,24),(13,26),(13,33),(13,34),(13,41),(14,1),(14,16),(14,19),(14,26),(14,30),(14,35),(14,36),(14,40),(14,41),(14,42),(15,1),(15,8),(15,22),(15,25),(15,36),(15,40),(16,6),(16,11),(16,21),(16,24),(16,27),(16,36),(16,38),(17,6),(17,11),(17,13),(17,15),(17,21),(17,26),(17,32),(17,34),(17,40),(18,2),(18,5),(18,7),(18,11),(18,14),(18,16),(18,32),(18,43),(19,4),(19,6),(19,7),(19,18),(19,29),(19,30),(19,36),(19,37),(19,42);
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
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,9),(1,12),(1,13),(1,15),(1,17),(1,19),(1,23),(1,28),(1,29),(1,34),(1,36),(1,40),(2,3),(2,4),(2,18),(2,21),(2,22),(2,24),(2,26),(2,32),(2,35),(2,42),(3,1),(3,6),(3,7),(3,10),(3,30),(3,33),(3,41),(4,5),(4,8),(4,11),(4,14),(4,16),(4,20),(4,25),(4,27),(4,31),(4,37),(4,38),(4,39),(4,43);
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
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2024-04-26 03:15:45','2024-04-26 03:15:45',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2024-04-26 03:15:45','2024-04-26 03:15:45',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2024-04-26 03:15:45','2024-04-26 03:15:45',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2024-04-26 03:15:45','2024-04-26 03:15:45',0);
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,13,0,0.00,'fixed',1),(1,18,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,28,0,0.00,'fixed',1),(1,41,0,0.00,'fixed',1),(1,42,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(2,22,0,0.00,'fixed',1),(2,36,0,0.00,'fixed',1),(2,41,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,24,0,0.00,'fixed',1),(3,33,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(3,39,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,25,0,0.00,'fixed',1),(4,33,0,0.00,'fixed',1),(4,35,0,0.00,'fixed',1),(4,39,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,29,0,0.00,'fixed',1),(5,42,0,0.00,'fixed',1),(5,43,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,36,0,0.00,'fixed',1),(6,40,0,0.00,'fixed',1),(6,41,0,0.00,'fixed',1),(6,42,0,0.00,'fixed',1),(6,43,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(7,27,0,0.00,'fixed',1),(7,32,0,0.00,'fixed',1),(7,35,0,0.00,'fixed',1),(7,42,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(8,21,0,0.00,'fixed',1),(8,23,0,0.00,'fixed',1),(8,27,0,0.00,'fixed',1),(8,42,0,0.00,'fixed',1),(9,5,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,26,0,0.00,'fixed',1),(9,27,0,0.00,'fixed',1),(9,31,0,0.00,'fixed',1),(9,40,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,24,0,0.00,'fixed',1),(10,32,0,0.00,'fixed',1),(10,35,0,0.00,'fixed',1),(10,36,0,0.00,'fixed',1),(10,38,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,24,0,0.00,'fixed',1),(11,34,0,0.00,'fixed',1),(11,36,0,0.00,'fixed',1),(11,37,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,9,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,27,0,0.00,'fixed',1),(12,31,0,0.00,'fixed',1),(12,34,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,7,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,29,0,0.00,'fixed',1),(13,38,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,12,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(14,28,0,0.00,'fixed',1),(14,35,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,21,0,0.00,'fixed',1),(15,36,0,0.00,'fixed',1),(15,39,0,0.00,'fixed',1),(15,43,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,28,0,0.00,'fixed',1),(16,29,0,0.00,'fixed',1),(16,43,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(17,29,0,0.00,'fixed',1),(17,30,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,14,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,23,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(18,31,0,0.00,'fixed',1),(18,34,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,22,0,0.00,'fixed',1),(19,28,0,0.00,'fixed',1),(19,32,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,27,0,0.00,'fixed',1),(20,38,0,0.00,'fixed',1),(20,39,0,0.00,'fixed',1),(20,40,0,0.00,'fixed',1),(20,43,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,22,0,0.00,'fixed',1),(21,28,0,0.00,'fixed',1),(21,39,0,0.00,'fixed',1),(21,40,0,0.00,'fixed',1),(21,42,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,33,0,0.00,'fixed',1),(22,35,0,0.00,'fixed',1),(22,36,0,0.00,'fixed',1),(22,38,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,2,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,36,0,0.00,'fixed',1),(23,38,0,0.00,'fixed',1),(23,41,0,0.00,'fixed',1),(23,43,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1),(24,20,0,0.00,'fixed',1),(24,21,0,0.00,'fixed',1),(24,29,0,0.00,'fixed',1),(24,35,0,0.00,'fixed',1),(24,38,0,0.00,'fixed',1),(25,8,0,0.00,'fixed',1),(25,18,0,0.00,'fixed',1),(25,22,0,0.00,'fixed',1),(25,34,0,0.00,'fixed',1),(25,42,0,0.00,'fixed',1),(25,43,0,0.00,'fixed',1),(26,6,0,0.00,'fixed',1),(26,7,0,0.00,'fixed',1),(26,16,0,0.00,'fixed',1),(26,27,0,0.00,'fixed',1),(26,30,0,0.00,'fixed',1),(26,33,0,0.00,'fixed',1),(26,40,0,0.00,'fixed',1),(27,3,0,0.00,'fixed',1),(27,15,0,0.00,'fixed',1),(27,20,0,0.00,'fixed',1),(27,32,0,0.00,'fixed',1),(27,33,0,0.00,'fixed',1),(27,34,0,0.00,'fixed',1),(27,41,0,0.00,'fixed',1),(28,6,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,25,0,0.00,'fixed',1),(28,26,0,0.00,'fixed',1),(28,34,0,0.00,'fixed',1),(28,36,0,0.00,'fixed',1),(29,6,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,17,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,36,0,0.00,'fixed',1),(29,41,0,0.00,'fixed',1),(29,43,0,0.00,'fixed',1),(30,2,0,0.00,'fixed',1),(30,14,0,0.00,'fixed',1),(30,28,0,0.00,'fixed',1),(30,29,0,0.00,'fixed',1),(30,40,0,0.00,'fixed',1),(30,43,0,0.00,'fixed',1),(31,5,0,0.00,'fixed',1),(31,7,0,0.00,'fixed',1),(31,9,0,0.00,'fixed',1),(31,20,0,0.00,'fixed',1),(31,28,0,0.00,'fixed',1),(31,41,0,0.00,'fixed',1),(31,43,0,0.00,'fixed',1),(32,1,0,0.00,'fixed',1),(32,9,0,0.00,'fixed',1),(32,26,0,0.00,'fixed',1),(32,33,0,0.00,'fixed',1),(32,34,0,0.00,'fixed',1),(32,40,0,0.00,'fixed',1),(32,41,0,0.00,'fixed',1),(33,6,0,0.00,'fixed',1),(33,8,0,0.00,'fixed',1),(33,23,0,0.00,'fixed',1),(33,24,0,0.00,'fixed',1),(33,36,0,0.00,'fixed',1),(33,38,0,0.00,'fixed',1),(33,42,0,0.00,'fixed',1),(34,5,0,0.00,'fixed',1),(34,11,0,0.00,'fixed',1),(34,24,0,0.00,'fixed',1),(34,27,0,0.00,'fixed',1),(34,29,0,0.00,'fixed',1),(34,35,0,0.00,'fixed',1),(34,41,0,0.00,'fixed',1),(35,4,0,0.00,'fixed',1),(35,6,0,0.00,'fixed',1),(35,15,0,0.00,'fixed',1),(35,16,0,0.00,'fixed',1),(35,21,0,0.00,'fixed',1),(35,25,0,0.00,'fixed',1),(36,13,0,0.00,'fixed',1),(36,17,0,0.00,'fixed',1),(36,27,0,0.00,'fixed',1),(36,35,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,39,0,0.00,'fixed',1),(37,8,0,0.00,'fixed',1),(37,11,0,0.00,'fixed',1),(37,12,0,0.00,'fixed',1),(37,17,0,0.00,'fixed',1),(37,25,0,0.00,'fixed',1),(37,35,0,0.00,'fixed',1),(37,40,0,0.00,'fixed',1),(38,10,0,0.00,'fixed',1),(38,20,0,0.00,'fixed',1),(38,26,0,0.00,'fixed',1),(38,28,0,0.00,'fixed',1),(38,29,0,0.00,'fixed',1),(38,34,0,0.00,'fixed',1),(38,35,0,0.00,'fixed',1),(39,7,0,0.00,'fixed',1),(39,12,0,0.00,'fixed',1),(39,16,0,0.00,'fixed',1),(39,20,0,0.00,'fixed',1),(39,27,0,0.00,'fixed',1),(39,35,0,0.00,'fixed',1),(39,37,0,0.00,'fixed',1),(40,9,0,0.00,'fixed',1),(40,10,0,0.00,'fixed',1),(40,21,0,0.00,'fixed',1),(40,23,0,0.00,'fixed',1),(40,26,0,0.00,'fixed',1),(40,30,0,0.00,'fixed',1),(40,41,0,0.00,'fixed',1),(41,17,0,0.00,'fixed',1),(41,23,0,0.00,'fixed',1),(41,27,0,0.00,'fixed',1),(41,28,0,0.00,'fixed',1),(41,29,0,0.00,'fixed',1),(41,42,0,0.00,'fixed',1),(42,2,0,0.00,'fixed',1),(42,5,0,0.00,'fixed',1),(42,16,0,0.00,'fixed',1),(42,22,0,0.00,'fixed',1),(42,27,0,0.00,'fixed',1),(42,34,0,0.00,'fixed',1),(43,8,0,0.00,'fixed',1),(43,24,0,0.00,'fixed',1),(43,26,0,0.00,'fixed',1),(43,30,0,0.00,'fixed',1),(43,31,0,0.00,'fixed',1),(43,32,0,0.00,'fixed',1),(43,36,0,0.00,'fixed',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(2,4,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(3,8,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(4,8,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(5,12,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(6,12,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(7,16,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(8,16,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(9,20,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(10,20,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(11,24,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(12,24,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(13,28,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(14,28,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(15,32,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(16,32,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(17,36,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(18,36,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(19,40,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(20,40,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(21,48,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(22,49,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:51\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-26 03:15:51','2024-04-26 03:15:51'),(23,53,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(24,54,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(25,57,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(26,58,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(27,59,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(28,60,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(29,61,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(30,65,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(31,66,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(32,67,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(33,68,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(34,79,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(35,80,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(36,81,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(37,83,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(38,84,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(39,85,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(40,90,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(41,94,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(42,95,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(43,96,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(44,97,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(45,111,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52'),(46,112,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:15:52\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:15:52','2024-04-26 03:15:52');
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
INSERT INTO `ec_product_label_products` VALUES (1,9),(1,12),(1,27),(1,30),(1,36),(2,3),(2,24),(2,42),(3,6),(3,15),(3,18),(3,21),(3,33),(3,39);
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(2,'New','#006554','published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(3,'Sale','#9A3B00','published','2024-04-26 03:15:33','2024-04-26 03:15:33');
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
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,4),(1,5),(2,1),(2,2),(2,6),(3,2),(3,3),(3,4),(4,1),(4,3),(4,4),(5,3),(5,5),(5,6),(6,2),(6,3),(6,5),(7,1),(7,3),(7,4),(8,1),(8,3),(8,6),(9,1),(9,4),(9,5),(10,1),(10,5),(10,6),(11,3),(11,5),(11,6),(12,3),(12,4),(12,5),(13,4),(13,5),(13,6),(14,3),(14,4),(14,6),(15,1),(15,3),(15,4),(16,3),(16,4),(16,6),(17,1),(17,3),(17,5),(18,1),(18,5),(18,6),(19,1),(19,5),(19,6),(20,2),(20,5),(20,6),(21,2),(21,4),(21,5),(22,2),(22,3),(22,5),(23,1),(23,4),(23,6),(24,1),(24,4),(24,6),(25,2),(25,5),(25,6),(26,1),(26,3),(26,5),(27,2),(27,4),(27,5),(28,1),(28,5),(28,6),(29,1),(29,3),(29,4),(30,1),(30,3),(30,5),(31,1),(31,2),(31,3),(32,1),(32,2),(32,3),(33,2),(33,4),(33,6),(34,2),(34,5),(34,6),(35,2),(35,4),(35,5),(36,2),(36,4),(36,5),(37,1),(37,5),(37,6),(38,2),(38,3),(38,4),(39,1),(39,2),(39,6),(40,1),(40,4),(40,5),(41,2),(41,4),(41,6),(42,1),(42,2),(42,3),(43,2),(43,3),(43,4);
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-04-26 03:15:36','2024-04-26 03:15:36'),(2,'Mobile',NULL,'published','2024-04-26 03:15:36','2024-04-26 03:15:36'),(3,'Iphone',NULL,'published','2024-04-26 03:15:36','2024-04-26 03:15:36'),(4,'Printer',NULL,'published','2024-04-26 03:15:37','2024-04-26 03:15:37'),(5,'Office',NULL,'published','2024-04-26 03:15:37','2024-04-26 03:15:37'),(6,'IT',NULL,'published','2024-04-26 03:15:37','2024-04-26 03:15:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(25,1,13),(29,1,15),(33,1,17),(47,1,24),(49,1,25),(51,1,26),(63,1,32),(69,1,35),(71,1,36),(75,1,38),(15,2,8),(19,2,10),(21,2,11),(23,2,12),(35,2,18),(37,2,19),(45,2,23),(55,2,28),(59,2,30),(67,2,34),(73,2,37),(3,3,2),(5,3,3),(9,3,5),(27,3,14),(41,3,21),(53,3,27),(61,3,31),(7,4,4),(17,4,9),(39,4,20),(43,4,22),(57,4,29),(65,4,33),(11,5,6),(13,5,7),(31,5,16),(2,6,1),(16,6,8),(24,6,12),(26,6,13),(30,6,15),(32,6,16),(48,6,24),(58,6,29),(60,6,30),(64,6,32),(12,7,6),(14,7,7),(20,7,10),(56,7,28),(62,7,31),(66,7,33),(68,7,34),(4,8,2),(6,8,3),(8,8,4),(28,8,14),(34,8,17),(36,8,18),(38,8,19),(40,8,20),(72,8,36),(10,9,5),(18,9,9),(22,9,11),(42,9,21),(44,9,22),(46,9,23),(54,9,27),(76,9,38),(50,10,25),(52,10,26),(70,10,35),(74,10,37),(77,11,39),(81,11,41),(91,11,46),(101,11,51),(105,11,53),(115,11,58),(117,11,59),(127,11,64),(137,11,69),(141,11,71),(87,12,44),(89,12,45),(93,12,47),(95,12,48),(99,12,50),(119,12,60),(135,12,68),(79,13,40),(97,13,49),(103,13,52),(123,13,62),(125,13,63),(85,14,43),(113,14,57),(129,14,65),(139,14,70),(83,15,42),(107,15,54),(109,15,55),(111,15,56),(121,15,61),(131,15,66),(133,15,67),(84,16,42),(90,16,45),(92,16,46),(100,16,50),(104,16,52),(120,16,60),(126,16,63),(128,16,64),(138,16,69),(140,16,70),(142,16,71),(78,17,39),(82,17,41),(88,17,44),(96,17,48),(108,17,54),(116,17,58),(118,17,59),(114,18,57),(124,18,62),(134,18,67),(112,19,56),(122,19,61),(130,19,65),(136,19,68),(80,20,40),(86,20,43),(94,20,47),(98,20,49),(102,20,51),(106,20,53),(110,20,55),(132,20,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,1,1),(2,45,1,0),(3,46,2,1),(4,47,2,0),(5,48,4,1),(6,49,4,0),(7,50,5,1),(8,51,7,1),(9,52,7,0),(10,53,8,1),(11,54,8,0),(12,55,9,1),(13,56,10,1),(14,57,12,1),(15,58,12,0),(16,59,12,0),(17,60,12,0),(18,61,12,0),(19,62,13,1),(20,63,13,0),(21,64,13,0),(22,65,16,1),(23,66,16,0),(24,67,16,0),(25,68,16,0),(26,69,17,1),(27,70,17,0),(28,71,18,1),(29,72,18,0),(30,73,18,0),(31,74,18,0),(32,75,18,0),(33,76,19,1),(34,77,19,0),(35,78,19,0),(36,79,20,1),(37,80,20,0),(38,81,20,0),(39,82,21,1),(40,83,24,1),(41,84,24,0),(42,85,24,0),(43,86,25,1),(44,87,25,0),(45,88,25,0),(46,89,25,0),(47,90,28,1),(48,91,30,1),(49,92,30,0),(50,93,30,0),(51,94,32,1),(52,95,32,0),(53,96,32,0),(54,97,32,0),(55,98,33,1),(56,99,33,0),(57,100,33,0),(58,101,34,1),(59,102,34,0),(60,103,34,0),(61,104,35,1),(62,105,35,0),(63,106,35,0),(64,107,37,1),(65,108,37,0),(66,109,38,1),(67,110,38,0),(68,111,40,1),(69,112,40,0),(70,113,43,1),(71,114,43,0);
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(3,21,0),(4,21,0),(3,24,0),(4,24,0),(3,25,0),(4,25,0),(3,28,0),(4,28,0),(3,30,0),(4,30,0),(3,32,0),(4,32,0),(3,33,0),(4,33,0),(3,34,0),(4,34,0),(3,35,0),(4,35,0),(3,37,0),(4,37,0),(3,38,0),(4,38,0),(3,40,0),(4,40,0),(3,43,0),(4,43,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]','8G-175-A1',0,16,0,1,1,3,0,0,1662,NULL,NULL,NULL,11.00,15.00,12.00,761.00,NULL,167124,'2024-04-26 03:15:48','2024-04-26 03:15:49','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Floral Maxi Dress','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]','HS-164-A1',0,13,0,1,0,2,0,0,858,NULL,NULL,NULL,18.00,12.00,11.00,579.00,NULL,24687,'2024-04-26 03:15:48','2024-04-26 03:15:49','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Leather Ankle Boots','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]','MS-191',0,13,0,1,0,2,0,0,1598,1304,NULL,NULL,11.00,19.00,15.00,555.00,NULL,118594,'2024-04-26 03:15:48','2024-04-26 03:15:48','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Knit Turtleneck Sweater (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\"]','UN-155-A1',0,10,0,1,1,4,0,0,1171,948.51,NULL,NULL,11.00,17.00,15.00,826.00,NULL,143154,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Classic Aviator Sunglasses','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]','LD-134-A1',0,12,0,1,1,4,0,0,2062,NULL,NULL,NULL,13.00,15.00,16.00,828.00,NULL,170806,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'Tailored Wool Blazer','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]','0T-104',0,16,0,1,1,5,0,0,2442,209,NULL,NULL,20.00,17.00,18.00,849.00,NULL,5151,'2024-04-26 03:15:48','2024-04-26 03:15:48','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'Bohemian Fringe Handbag','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]','FC-139-A1',0,13,0,1,0,5,0,0,497,NULL,NULL,NULL,16.00,17.00,12.00,838.00,NULL,144161,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Silk Scarf with Geometric Print (Digital)','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]','EA-111-A1',0,14,0,1,1,5,0,0,1289,1069.87,NULL,NULL,17.00,18.00,14.00,566.00,NULL,107576,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'High-Waisted Wide Leg Trousers','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\"]','YQ-166-A1',0,18,0,1,0,2,0,0,2148,NULL,NULL,NULL,11.00,20.00,14.00,688.00,NULL,28701,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Embroidered Boho Blouse','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\"]','9U-131-A1',0,20,0,1,0,4,0,0,2166,NULL,NULL,NULL,19.00,11.00,14.00,713.00,NULL,175043,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Statement Chunky Necklace','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\"]','69-109',0,19,0,1,1,1,0,0,1412,644,NULL,NULL,16.00,12.00,19.00,665.00,NULL,98726,'2024-04-26 03:15:48','2024-04-26 03:15:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Chic Fedora Hat (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\"]','OA-200-A1',0,17,0,1,1,5,0,0,1919,1727.1,NULL,NULL,16.00,13.00,12.00,667.00,NULL,176336,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'Strappy Block Heel Sandals','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]','YO-102-A1',0,15,0,1,1,2,0,0,721,NULL,NULL,NULL,10.00,15.00,11.00,501.00,NULL,55238,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Velvet Evening Gown','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]','LA-165',0,18,0,1,1,5,0,0,2284,2258,NULL,NULL,12.00,10.00,10.00,802.00,NULL,174345,'2024-04-26 03:15:48','2024-04-26 03:15:48','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Quilted Crossbody Bag','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\"]','IZ-154',0,19,0,1,1,1,0,0,2019,523,NULL,NULL,12.00,17.00,11.00,569.00,NULL,121959,'2024-04-26 03:15:48','2024-04-26 03:15:48','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Distressed Skinny Jeans (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-2.png\"]','6L-149-A1',0,11,0,1,1,4,0,0,2145,1522.95,NULL,NULL,11.00,18.00,17.00,800.00,NULL,153528,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Lace-Up Combat Boots','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-2.png\"]','5I-178-A1',0,17,0,1,1,5,0,0,641,NULL,NULL,NULL,16.00,12.00,17.00,751.00,NULL,20379,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Cotton Striped T-Shirt Dress','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]','RZ-179-A1',0,13,0,1,1,1,0,0,999,NULL,NULL,NULL,11.00,14.00,15.00,672.00,NULL,42525,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Printed Palazzo Pants','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-1.png\"]','JR-179-A1',0,15,0,1,0,3,0,0,327,NULL,NULL,NULL,16.00,16.00,16.00,758.00,NULL,112819,'2024-04-26 03:15:48','2024-04-26 03:15:50','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'Structured Satchel Bag (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]','TH-163-A1',0,17,0,1,0,1,0,0,1616,1422.08,NULL,NULL,12.00,17.00,16.00,784.00,NULL,136308,'2024-04-26 03:15:49','2024-04-26 03:15:50','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Off-Shoulder Ruffle Top','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-2.png\"]','FF-103-A1',0,14,0,1,0,4,0,0,263,NULL,NULL,NULL,17.00,17.00,12.00,623.00,NULL,59386,'2024-04-26 03:15:49','2024-04-26 03:15:50','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Suede Pointed-Toe Pumps','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]','JE-174',0,17,0,1,1,4,0,0,1998,405,NULL,NULL,14.00,10.00,13.00,697.00,NULL,196401,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Cropped Cable Knit Sweater','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]','UD-178',0,13,0,1,0,5,0,0,2197,990,NULL,NULL,11.00,15.00,16.00,679.00,NULL,24036,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Athleisure Jogger Pants (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\"]','M9-165-A1',0,11,0,1,0,5,0,0,874,611.8,NULL,NULL,10.00,17.00,12.00,884.00,NULL,197405,'2024-04-26 03:15:49','2024-04-26 03:15:50','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'Leopard Print Midi Skirt','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-3.png\"]','XK-133-A1',0,12,0,1,1,3,0,0,1892,NULL,NULL,NULL,17.00,16.00,20.00,778.00,NULL,30817,'2024-04-26 03:15:49','2024-04-26 03:15:50','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Retro Cat-Eye Sunglasses','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]','23-182',0,15,0,1,0,4,0,0,392,235,NULL,NULL,14.00,20.00,13.00,629.00,NULL,196101,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Faux Fur Trimmed Coat','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\"]','PS-120',0,11,0,1,0,1,0,0,1318,1056,NULL,NULL,10.00,19.00,13.00,595.00,NULL,99984,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'Boho Fringed Kimono (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-1.png\"]','PX-126-A1',0,17,0,1,0,3,0,0,1370,986.4,NULL,NULL,13.00,14.00,12.00,644.00,NULL,30527,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Ruffled Wrap Dress','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]','NL-192',0,20,0,1,0,1,0,0,1042,904,NULL,NULL,10.00,16.00,19.00,644.00,NULL,86440,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Beaded Evening Clutch','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\"]','YV-140-A1',0,18,0,1,0,2,0,0,2141,NULL,NULL,NULL,13.00,12.00,10.00,768.00,NULL,94640,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'Wide Brim Floppy Hat','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-2.png\"]','OK-126',0,16,0,1,1,5,0,0,1761,565,NULL,NULL,10.00,12.00,14.00,770.00,NULL,55750,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(32,'Denim Overall Jumpsuit (Digital)','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]','GZ-143-A1',0,17,0,1,1,2,0,0,877,657.75,NULL,NULL,18.00,17.00,10.00,876.00,NULL,148892,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(33,'Embellished Ballet Flats','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]','NQ-182-A1',0,17,0,1,1,5,0,0,827,NULL,NULL,NULL,11.00,11.00,16.00,865.00,NULL,134194,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(34,'Pleated Midi Skirt','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\"]','WM-100-A1',0,20,0,1,1,5,0,0,1038,NULL,NULL,NULL,15.00,11.00,14.00,561.00,NULL,26960,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'Velour Tracksuit Set','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]','QB-155-A1',0,16,0,1,0,3,0,0,1879,NULL,NULL,NULL,13.00,16.00,11.00,516.00,NULL,83069,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'Geometric Patterned Cardigan (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\"]','CC-118',0,14,0,1,1,5,0,0,1533,573,NULL,NULL,10.00,14.00,16.00,524.00,NULL,7873,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(37,'Buckle Detail Ankle Booties','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]','2I-181-A1',0,20,0,1,0,3,0,0,1313,NULL,NULL,NULL,15.00,20.00,17.00,746.00,NULL,191284,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'Embroidered Bomber Jacket','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]','LK-109-A1',0,19,0,1,0,4,0,0,1740,NULL,NULL,NULL,12.00,11.00,16.00,592.00,NULL,148441,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(39,'Cowl Neck Knit Poncho','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]','WU-118',0,17,0,1,0,5,0,0,912,155,NULL,NULL,17.00,16.00,13.00,733.00,NULL,37344,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Chunky Knit Infinity Scarf (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-3.png\"]','TE-103-A1',0,18,0,1,0,5,0,0,1786,1553.82,NULL,NULL,20.00,17.00,12.00,784.00,NULL,127759,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(41,'Retro High-Top Sneakers','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]','OW-112',0,20,0,1,0,1,0,0,2302,1437,NULL,NULL,20.00,10.00,14.00,579.00,NULL,115912,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(42,'Faux Leather Leggings','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-1.png\"]','FA-165',0,16,0,1,0,2,0,0,1819,1570,NULL,NULL,10.00,15.00,13.00,854.00,NULL,48135,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(43,'Metallic Pleated Maxi Skirt','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]','PY-147-A1',0,14,0,1,0,3,0,0,908,NULL,NULL,NULL,16.00,14.00,19.00,666.00,NULL,195123,'2024-04-26 03:15:49','2024-04-26 03:15:51','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(44,'Vintage Denim Jacket',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','8G-175-A1',0,16,0,1,0,3,1,0,1662,NULL,NULL,NULL,11.00,15.00,12.00,761.00,NULL,0,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(45,'Vintage Denim Jacket',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','8G-175-A1-A2',0,16,0,1,0,3,1,0,1662,NULL,NULL,NULL,11.00,15.00,12.00,761.00,NULL,0,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(46,'Floral Maxi Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','HS-164-A1',0,13,0,1,0,2,1,0,858,NULL,NULL,NULL,18.00,12.00,11.00,579.00,NULL,0,'2024-04-26 03:15:49','2024-04-26 03:15:49','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(47,'Floral Maxi Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','HS-164-A1-A2',0,13,0,1,0,2,1,0,858,NULL,NULL,NULL,18.00,12.00,11.00,579.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(48,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','UN-155-A1',0,10,0,1,0,4,1,0,1171,948.51,NULL,NULL,11.00,17.00,15.00,826.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(49,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','UN-155-A1-A2',0,10,0,1,0,4,1,0,1171,889.96,NULL,NULL,11.00,17.00,15.00,826.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(50,'Classic Aviator Sunglasses',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','LD-134-A1',0,12,0,1,0,4,1,0,2062,NULL,NULL,NULL,13.00,15.00,16.00,828.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(51,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','FC-139-A1',0,13,0,1,0,5,1,0,497,NULL,NULL,NULL,16.00,17.00,12.00,838.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(52,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','FC-139-A1-A2',0,13,0,1,0,5,1,0,497,NULL,NULL,NULL,16.00,17.00,12.00,838.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(53,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','EA-111-A1',0,14,0,1,0,5,1,0,1289,1069.87,NULL,NULL,17.00,18.00,14.00,566.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(54,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','EA-111-A1-A2',0,14,0,1,0,5,1,0,1289,1121.43,NULL,NULL,17.00,18.00,14.00,566.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(55,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','YQ-166-A1',0,18,0,1,0,2,1,0,2148,NULL,NULL,NULL,11.00,20.00,14.00,688.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(56,'Embroidered Boho Blouse',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','9U-131-A1',0,20,0,1,0,4,1,0,2166,NULL,NULL,NULL,19.00,11.00,14.00,713.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(57,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','OA-200-A1',0,17,0,1,0,5,1,0,1919,1727.1,NULL,NULL,16.00,13.00,12.00,667.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(58,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','OA-200-A1-A2',0,17,0,1,0,5,1,0,1919,1458.44,NULL,NULL,16.00,13.00,12.00,667.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(59,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','OA-200-A1-A3',0,17,0,1,0,5,1,0,1919,1669.53,NULL,NULL,16.00,13.00,12.00,667.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(60,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','OA-200-A1-A4',0,17,0,1,0,5,1,0,1919,1554.39,NULL,NULL,16.00,13.00,12.00,667.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(61,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','OA-200-A1-A5',0,17,0,1,0,5,1,0,1919,1496.82,NULL,NULL,16.00,13.00,12.00,667.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(62,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','YO-102-A1',0,15,0,1,0,2,1,0,721,NULL,NULL,NULL,10.00,15.00,11.00,501.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(63,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','YO-102-A1-A2',0,15,0,1,0,2,1,0,721,NULL,NULL,NULL,10.00,15.00,11.00,501.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(64,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','YO-102-A1-A3',0,15,0,1,0,2,1,0,721,NULL,NULL,NULL,10.00,15.00,11.00,501.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(65,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','6L-149-A1',0,11,0,1,0,4,1,0,2145,1522.95,NULL,NULL,11.00,18.00,17.00,800.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(66,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','6L-149-A1-A2',0,11,0,1,0,4,1,0,2145,1909.05,NULL,NULL,11.00,18.00,17.00,800.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(67,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','6L-149-A1-A3',0,11,0,1,0,4,1,0,2145,1673.1,NULL,NULL,11.00,18.00,17.00,800.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(68,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','6L-149-A1-A4',0,11,0,1,0,4,1,0,2145,1522.95,NULL,NULL,11.00,18.00,17.00,800.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(69,'Lace-Up Combat Boots',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','5I-178-A1',0,17,0,1,0,5,1,0,641,NULL,NULL,NULL,16.00,12.00,17.00,751.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(70,'Lace-Up Combat Boots',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','5I-178-A1-A2',0,17,0,1,0,5,1,0,641,NULL,NULL,NULL,16.00,12.00,17.00,751.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(71,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','RZ-179-A1',0,13,0,1,0,1,1,0,999,NULL,NULL,NULL,11.00,14.00,15.00,672.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(72,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','RZ-179-A1-A2',0,13,0,1,0,1,1,0,999,NULL,NULL,NULL,11.00,14.00,15.00,672.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(73,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','RZ-179-A1-A3',0,13,0,1,0,1,1,0,999,NULL,NULL,NULL,11.00,14.00,15.00,672.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(74,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','RZ-179-A1-A4',0,13,0,1,0,1,1,0,999,NULL,NULL,NULL,11.00,14.00,15.00,672.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(75,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','RZ-179-A1-A5',0,13,0,1,0,1,1,0,999,NULL,NULL,NULL,11.00,14.00,15.00,672.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(76,'Printed Palazzo Pants',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','JR-179-A1',0,15,0,1,0,3,1,0,327,NULL,NULL,NULL,16.00,16.00,16.00,758.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(77,'Printed Palazzo Pants',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','JR-179-A1-A2',0,15,0,1,0,3,1,0,327,NULL,NULL,NULL,16.00,16.00,16.00,758.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(78,'Printed Palazzo Pants',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','JR-179-A1-A3',0,15,0,1,0,3,1,0,327,NULL,NULL,NULL,16.00,16.00,16.00,758.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(79,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','TH-163-A1',0,17,0,1,0,1,1,0,1616,1422.08,NULL,NULL,12.00,17.00,16.00,784.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(80,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','TH-163-A1-A2',0,17,0,1,0,1,1,0,1616,1276.64,NULL,NULL,12.00,17.00,16.00,784.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(81,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','TH-163-A1-A3',0,17,0,1,0,1,1,0,1616,1325.12,NULL,NULL,12.00,17.00,16.00,784.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(82,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','FF-103-A1',0,14,0,1,0,4,1,0,263,NULL,NULL,NULL,17.00,17.00,12.00,623.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(83,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','M9-165-A1',0,11,0,1,0,5,1,0,874,611.8,NULL,NULL,10.00,17.00,12.00,884.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(84,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','M9-165-A1-A2',0,11,0,1,0,5,1,0,874,769.12,NULL,NULL,10.00,17.00,12.00,884.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(85,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','M9-165-A1-A3',0,11,0,1,0,5,1,0,874,742.9,NULL,NULL,10.00,17.00,12.00,884.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(86,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','XK-133-A1',0,12,0,1,0,3,1,0,1892,NULL,NULL,NULL,17.00,16.00,20.00,778.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(87,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','XK-133-A1-A2',0,12,0,1,0,3,1,0,1892,NULL,NULL,NULL,17.00,16.00,20.00,778.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(88,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','XK-133-A1-A3',0,12,0,1,0,3,1,0,1892,NULL,NULL,NULL,17.00,16.00,20.00,778.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(89,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','XK-133-A1-A4',0,12,0,1,0,3,1,0,1892,NULL,NULL,NULL,17.00,16.00,20.00,778.00,NULL,0,'2024-04-26 03:15:50','2024-04-26 03:15:50','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(90,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','PX-126-A1',0,17,0,1,0,3,1,0,1370,986.4,NULL,NULL,13.00,14.00,12.00,644.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(91,'Beaded Evening Clutch',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','YV-140-A1',0,18,0,1,0,2,1,0,2141,NULL,NULL,NULL,13.00,12.00,10.00,768.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(92,'Beaded Evening Clutch',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','YV-140-A1-A2',0,18,0,1,0,2,1,0,2141,NULL,NULL,NULL,13.00,12.00,10.00,768.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(93,'Beaded Evening Clutch',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','YV-140-A1-A3',0,18,0,1,0,2,1,0,2141,NULL,NULL,NULL,13.00,12.00,10.00,768.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(94,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','GZ-143-A1',0,17,0,1,0,2,1,0,877,657.75,NULL,NULL,18.00,17.00,10.00,876.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(95,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','GZ-143-A1-A2',0,17,0,1,0,2,1,0,877,780.53,NULL,NULL,18.00,17.00,10.00,876.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(96,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','GZ-143-A1-A3',0,17,0,1,0,2,1,0,877,780.53,NULL,NULL,18.00,17.00,10.00,876.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(97,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','GZ-143-A1-A4',0,17,0,1,0,2,1,0,877,771.76,NULL,NULL,18.00,17.00,10.00,876.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(98,'Embellished Ballet Flats',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','NQ-182-A1',0,17,0,1,0,5,1,0,827,NULL,NULL,NULL,11.00,11.00,16.00,865.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(99,'Embellished Ballet Flats',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','NQ-182-A1-A2',0,17,0,1,0,5,1,0,827,NULL,NULL,NULL,11.00,11.00,16.00,865.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(100,'Embellished Ballet Flats',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','NQ-182-A1-A3',0,17,0,1,0,5,1,0,827,NULL,NULL,NULL,11.00,11.00,16.00,865.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(101,'Pleated Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','WM-100-A1',0,20,0,1,0,5,1,0,1038,NULL,NULL,NULL,15.00,11.00,14.00,561.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(102,'Pleated Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','WM-100-A1-A2',0,20,0,1,0,5,1,0,1038,NULL,NULL,NULL,15.00,11.00,14.00,561.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(103,'Pleated Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','WM-100-A1-A3',0,20,0,1,0,5,1,0,1038,NULL,NULL,NULL,15.00,11.00,14.00,561.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(104,'Velour Tracksuit Set',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','QB-155-A1',0,16,0,1,0,3,1,0,1879,NULL,NULL,NULL,13.00,16.00,11.00,516.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(105,'Velour Tracksuit Set',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','QB-155-A1-A2',0,16,0,1,0,3,1,0,1879,NULL,NULL,NULL,13.00,16.00,11.00,516.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(106,'Velour Tracksuit Set',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','QB-155-A1-A3',0,16,0,1,0,3,1,0,1879,NULL,NULL,NULL,13.00,16.00,11.00,516.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(107,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','2I-181-A1',0,20,0,1,0,3,1,0,1313,NULL,NULL,NULL,15.00,20.00,17.00,746.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(108,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','2I-181-A1-A2',0,20,0,1,0,3,1,0,1313,NULL,NULL,NULL,15.00,20.00,17.00,746.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(109,'Embroidered Bomber Jacket',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','LK-109-A1',0,19,0,1,0,4,1,0,1740,NULL,NULL,NULL,12.00,11.00,16.00,592.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(110,'Embroidered Bomber Jacket',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','LK-109-A1-A2',0,19,0,1,0,4,1,0,1740,NULL,NULL,NULL,12.00,11.00,16.00,592.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(111,'Chunky Knit Infinity Scarf (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','TE-103-A1',0,18,0,1,0,5,1,0,1786,1553.82,NULL,NULL,20.00,17.00,12.00,784.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(112,'Chunky Knit Infinity Scarf (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','TE-103-A1-A2',0,18,0,1,0,5,1,0,1786,1482.38,NULL,NULL,20.00,17.00,12.00,784.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(113,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','PY-147-A1',0,14,0,1,0,3,1,0,908,NULL,NULL,NULL,16.00,14.00,19.00,666.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(114,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','PY-147-A1-A2',0,14,0,1,0,3,1,0,908,NULL,NULL,NULL,16.00,14.00,19.00,666.00,NULL,0,'2024-04-26 03:15:51','2024-04-26 03:15:51','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
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
INSERT INTO `ec_reviews` VALUES (1,10,NULL,NULL,6,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(2,10,NULL,NULL,14,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(3,8,NULL,NULL,31,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(4,5,NULL,NULL,39,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(5,6,NULL,NULL,6,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(6,6,NULL,NULL,14,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(7,3,NULL,NULL,16,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(8,9,NULL,NULL,6,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(9,9,NULL,NULL,8,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(10,3,NULL,NULL,37,4.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(11,4,NULL,NULL,38,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(12,1,NULL,NULL,1,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(13,5,NULL,NULL,25,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(14,3,NULL,NULL,12,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(15,8,NULL,NULL,15,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(16,9,NULL,NULL,4,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(17,8,NULL,NULL,22,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(18,10,NULL,NULL,28,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(19,3,NULL,NULL,19,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(20,3,NULL,NULL,29,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(21,2,NULL,NULL,29,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(22,3,NULL,NULL,27,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(23,5,NULL,NULL,17,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(24,6,NULL,NULL,13,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(25,4,NULL,NULL,28,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(26,4,NULL,NULL,20,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(27,2,NULL,NULL,20,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(28,4,NULL,NULL,26,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(30,7,NULL,NULL,42,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(31,3,NULL,NULL,30,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(32,8,NULL,NULL,9,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(33,10,NULL,NULL,23,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(35,5,NULL,NULL,18,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(36,1,NULL,NULL,35,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(38,4,NULL,NULL,25,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(39,9,NULL,NULL,11,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(40,2,NULL,NULL,41,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(41,6,NULL,NULL,11,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(42,4,NULL,NULL,27,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(43,5,NULL,NULL,10,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(44,3,NULL,NULL,43,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(46,2,NULL,NULL,25,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(47,10,NULL,NULL,39,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(48,10,NULL,NULL,8,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(49,10,NULL,NULL,10,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(50,1,NULL,NULL,16,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(51,3,NULL,NULL,23,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(52,5,NULL,NULL,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(53,3,NULL,NULL,10,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(54,10,NULL,NULL,7,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(56,2,NULL,NULL,14,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(57,1,NULL,NULL,23,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(58,10,NULL,NULL,25,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(59,6,NULL,NULL,10,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(60,10,NULL,NULL,9,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(61,6,NULL,NULL,27,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(62,1,NULL,NULL,32,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(63,10,NULL,NULL,41,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(64,8,NULL,NULL,20,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(65,2,NULL,NULL,38,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(66,8,NULL,NULL,32,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(67,10,NULL,NULL,31,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(68,3,NULL,NULL,26,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(70,10,NULL,NULL,16,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(71,2,NULL,NULL,31,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(73,9,NULL,NULL,28,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(74,8,NULL,NULL,16,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(75,8,NULL,NULL,36,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(76,1,NULL,NULL,15,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(77,3,NULL,NULL,18,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(78,3,NULL,NULL,4,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(79,4,NULL,NULL,32,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(81,5,NULL,NULL,28,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(82,6,NULL,NULL,4,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(83,7,NULL,NULL,2,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(84,3,NULL,NULL,32,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(85,7,NULL,NULL,38,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(86,10,NULL,NULL,20,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(87,5,NULL,NULL,29,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(88,5,NULL,NULL,3,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(89,1,NULL,NULL,27,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(90,2,NULL,NULL,4,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(91,5,NULL,NULL,36,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(92,9,NULL,NULL,9,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(93,7,NULL,NULL,3,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(94,10,NULL,NULL,30,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(95,1,NULL,NULL,13,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(97,6,NULL,NULL,22,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(98,2,NULL,NULL,21,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(99,6,NULL,NULL,8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(100,3,NULL,NULL,33,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(103,10,NULL,NULL,36,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(104,8,NULL,NULL,13,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(105,10,NULL,NULL,4,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(106,6,NULL,NULL,9,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(107,2,NULL,NULL,37,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(108,2,NULL,NULL,13,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(109,8,NULL,NULL,10,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(110,7,NULL,NULL,21,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(111,4,NULL,NULL,24,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(112,4,NULL,NULL,30,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(113,9,NULL,NULL,31,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(114,6,NULL,NULL,34,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(115,3,NULL,NULL,42,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(116,4,NULL,NULL,35,3.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(117,4,NULL,NULL,1,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(119,3,NULL,NULL,39,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(120,5,NULL,NULL,19,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(121,5,NULL,NULL,11,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(122,2,NULL,NULL,11,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(123,8,NULL,NULL,42,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(124,8,NULL,NULL,3,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(125,6,NULL,NULL,25,3.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(127,7,NULL,NULL,40,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(128,7,NULL,NULL,20,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(129,10,NULL,NULL,5,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(130,2,NULL,NULL,9,1.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(131,1,NULL,NULL,41,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(132,4,NULL,NULL,22,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(133,10,NULL,NULL,12,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(137,8,NULL,NULL,34,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(138,5,NULL,NULL,16,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(139,5,NULL,NULL,2,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(141,6,NULL,NULL,39,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(142,2,NULL,NULL,33,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(143,2,NULL,NULL,1,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(144,5,NULL,NULL,41,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(145,8,NULL,NULL,14,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(146,7,NULL,NULL,25,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(148,7,NULL,NULL,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(149,9,NULL,NULL,12,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(151,5,NULL,NULL,23,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(153,1,NULL,NULL,38,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(155,9,NULL,NULL,34,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(156,3,NULL,NULL,28,5.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(157,2,NULL,NULL,32,1.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(158,10,NULL,NULL,15,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(159,1,NULL,NULL,17,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(160,2,NULL,NULL,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(161,8,NULL,NULL,41,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(163,9,NULL,NULL,2,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(165,9,NULL,NULL,42,2.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(167,5,NULL,NULL,12,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(168,7,NULL,NULL,29,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(169,5,NULL,NULL,24,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(172,8,NULL,NULL,23,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(173,2,NULL,NULL,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(174,7,NULL,NULL,26,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(175,3,NULL,NULL,13,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(176,4,NULL,NULL,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(178,7,NULL,NULL,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(179,1,NULL,NULL,42,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(181,7,NULL,NULL,33,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(182,2,NULL,NULL,27,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(183,1,NULL,NULL,37,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(184,7,NULL,NULL,5,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(186,3,NULL,NULL,17,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(188,2,NULL,NULL,12,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(191,10,NULL,NULL,29,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(192,4,NULL,NULL,4,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(194,3,NULL,NULL,41,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(195,1,NULL,NULL,6,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(198,8,NULL,NULL,5,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(199,4,NULL,NULL,41,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(203,8,NULL,NULL,4,5.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(205,9,NULL,NULL,26,2.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(206,7,NULL,NULL,4,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(207,8,NULL,NULL,18,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(209,4,NULL,NULL,42,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(210,4,NULL,NULL,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(212,6,NULL,NULL,21,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(214,7,NULL,NULL,34,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(215,4,NULL,NULL,37,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(216,6,NULL,NULL,15,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(217,1,NULL,NULL,36,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(218,1,NULL,NULL,2,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(220,4,NULL,NULL,33,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(222,7,NULL,NULL,30,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(223,5,NULL,NULL,43,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(224,4,NULL,NULL,15,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(226,3,NULL,NULL,3,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(228,1,NULL,NULL,18,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(229,1,NULL,NULL,28,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(230,6,NULL,NULL,16,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(233,8,NULL,NULL,6,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(235,1,NULL,NULL,24,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(237,4,NULL,NULL,12,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(239,3,NULL,NULL,5,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(242,9,NULL,NULL,20,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(245,5,NULL,NULL,34,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(248,7,NULL,NULL,16,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(249,2,NULL,NULL,18,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(253,4,NULL,NULL,5,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(257,10,NULL,NULL,34,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(258,9,NULL,NULL,32,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(261,3,NULL,NULL,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(263,2,NULL,NULL,6,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(264,7,NULL,NULL,10,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(266,7,NULL,NULL,32,5.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(267,7,NULL,NULL,28,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(268,1,NULL,NULL,12,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(271,2,NULL,NULL,26,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(272,7,NULL,NULL,18,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(273,8,NULL,NULL,26,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(276,4,NULL,NULL,18,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(282,7,NULL,NULL,11,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(284,10,NULL,NULL,18,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(285,9,NULL,NULL,24,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(286,9,NULL,NULL,7,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(288,2,NULL,NULL,39,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(289,7,NULL,NULL,19,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(293,1,NULL,NULL,39,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(295,9,NULL,NULL,22,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(297,5,NULL,NULL,27,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(298,1,NULL,NULL,21,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(302,9,NULL,NULL,25,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(303,4,NULL,NULL,11,1.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(304,4,NULL,NULL,29,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(306,6,NULL,NULL,37,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(307,9,NULL,NULL,19,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(312,3,NULL,NULL,14,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(315,9,NULL,NULL,29,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(318,4,NULL,NULL,43,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(319,7,NULL,NULL,31,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(320,9,NULL,NULL,37,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(323,8,NULL,NULL,29,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(324,8,NULL,NULL,25,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(325,8,NULL,NULL,37,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(326,10,NULL,NULL,2,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(328,7,NULL,NULL,8,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(329,2,NULL,NULL,28,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(330,8,NULL,NULL,21,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(333,9,NULL,NULL,18,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(335,3,NULL,NULL,15,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(336,5,NULL,NULL,32,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(337,2,NULL,NULL,22,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(339,6,NULL,NULL,17,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(341,2,NULL,NULL,35,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(346,5,NULL,NULL,37,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(348,6,NULL,NULL,20,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(351,3,NULL,NULL,7,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(358,9,NULL,NULL,36,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(363,9,NULL,NULL,16,3.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(368,10,NULL,NULL,1,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(369,10,NULL,NULL,43,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(370,8,NULL,NULL,38,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(374,7,NULL,NULL,23,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(377,6,NULL,NULL,5,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(381,2,NULL,NULL,43,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(382,10,NULL,NULL,13,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(384,2,NULL,NULL,23,4.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(389,1,NULL,NULL,25,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(390,1,NULL,NULL,29,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(394,3,NULL,NULL,36,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(396,6,NULL,NULL,28,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(397,7,NULL,NULL,37,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(398,6,NULL,NULL,19,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(403,5,NULL,NULL,8,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(405,9,NULL,NULL,33,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(406,3,NULL,NULL,2,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(407,10,NULL,NULL,26,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(409,7,NULL,NULL,35,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(411,1,NULL,NULL,20,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(412,8,NULL,NULL,11,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(415,5,NULL,NULL,38,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(424,5,NULL,NULL,5,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(426,8,NULL,NULL,39,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(428,4,NULL,NULL,3,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(429,3,NULL,NULL,8,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(431,7,NULL,NULL,39,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(433,1,NULL,NULL,19,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(437,7,NULL,NULL,22,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(438,6,NULL,NULL,36,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(440,4,NULL,NULL,14,5.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(442,1,NULL,NULL,3,5.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(444,10,NULL,NULL,40,4.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(446,9,NULL,NULL,27,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(451,1,NULL,NULL,5,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(457,10,NULL,NULL,27,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(460,6,NULL,NULL,33,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(464,4,NULL,NULL,17,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(465,6,NULL,NULL,32,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(471,1,NULL,NULL,30,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(472,2,NULL,NULL,8,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(475,4,NULL,NULL,9,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(478,4,NULL,NULL,6,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(491,4,NULL,NULL,34,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(499,10,NULL,NULL,38,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(501,1,NULL,NULL,9,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(506,9,NULL,NULL,21,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(507,2,NULL,NULL,15,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(512,7,NULL,NULL,1,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(513,4,NULL,NULL,31,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(515,2,NULL,NULL,30,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(516,3,NULL,NULL,35,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(527,4,NULL,NULL,19,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(529,6,NULL,NULL,3,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(538,2,NULL,NULL,10,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(541,2,NULL,NULL,36,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(546,8,NULL,NULL,8,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(548,3,NULL,NULL,38,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(552,3,NULL,NULL,31,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(555,3,NULL,NULL,22,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(558,4,NULL,NULL,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(566,5,NULL,NULL,22,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(571,9,NULL,NULL,15,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(574,8,NULL,NULL,30,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(577,6,NULL,NULL,42,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(585,2,NULL,NULL,40,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(593,2,NULL,NULL,24,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(594,10,NULL,NULL,42,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(597,6,NULL,NULL,2,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(601,1,NULL,NULL,14,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(609,8,NULL,NULL,2,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(615,2,NULL,NULL,5,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(619,7,NULL,NULL,17,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(620,7,NULL,NULL,6,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(626,5,NULL,NULL,40,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(631,6,NULL,NULL,23,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(632,2,NULL,NULL,16,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(636,9,NULL,NULL,40,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(649,5,NULL,NULL,21,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(654,6,NULL,NULL,7,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(659,10,NULL,NULL,37,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(660,7,NULL,NULL,41,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(667,3,NULL,NULL,9,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(671,4,NULL,NULL,10,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(672,1,NULL,NULL,40,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(674,8,NULL,NULL,1,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(675,4,NULL,NULL,21,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(678,1,NULL,NULL,4,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(679,8,NULL,NULL,17,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(685,5,NULL,NULL,15,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(686,9,NULL,NULL,5,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(687,7,NULL,NULL,43,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(689,10,NULL,NULL,17,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(693,1,NULL,NULL,33,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(699,3,NULL,NULL,34,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(701,6,NULL,NULL,12,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(702,5,NULL,NULL,26,4.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\"]'),(705,4,NULL,NULL,40,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(710,10,NULL,NULL,24,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(711,7,NULL,NULL,15,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(722,1,NULL,NULL,26,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(728,7,NULL,NULL,9,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(736,5,NULL,NULL,33,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(742,5,NULL,NULL,6,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(743,3,NULL,NULL,24,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\"]'),(744,9,NULL,NULL,10,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(750,6,NULL,NULL,18,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(757,5,NULL,NULL,35,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(762,7,NULL,NULL,13,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(771,1,NULL,NULL,7,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(778,1,NULL,NULL,43,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(779,9,NULL,NULL,23,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(780,7,NULL,NULL,27,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(781,10,NULL,NULL,19,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(783,4,NULL,NULL,39,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(786,8,NULL,NULL,40,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(788,4,NULL,NULL,2,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\"]'),(796,6,NULL,NULL,31,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(801,9,NULL,NULL,3,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(802,3,NULL,NULL,1,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(813,10,NULL,NULL,11,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(815,5,NULL,NULL,30,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-7.png\"]'),(852,8,NULL,NULL,28,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(853,6,NULL,NULL,26,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(860,5,NULL,NULL,42,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(866,6,NULL,NULL,35,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(876,6,NULL,NULL,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\"]'),(880,3,NULL,NULL,20,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(896,6,NULL,NULL,40,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-8.png\"]'),(898,7,NULL,NULL,24,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(899,8,NULL,NULL,24,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(903,10,NULL,NULL,33,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-6.png\"]'),(908,5,NULL,NULL,4,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(915,1,NULL,NULL,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(919,2,NULL,NULL,42,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\"]'),(929,6,NULL,NULL,1,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(932,2,NULL,NULL,17,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(941,8,NULL,NULL,35,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(950,5,NULL,NULL,1,4.00,'Clean & perfect source code','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(956,1,NULL,NULL,34,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(980,3,NULL,NULL,6,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:15:54','2024-04-26 03:15:54','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]');
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-04-26 03:15:37','2024-04-26 03:15:37');
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-04-26 03:15:37','2024-04-26 03:15:37');
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
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-04-26 03:15:39','2024-04-26 03:15:39');
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
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,6),(1,9),(1,11),(1,13),(1,15),(1,21),(1,22),(1,25),(1,27),(1,33),(1,34),(1,35),(1,36),(1,40),(1,43),(2,5),(2,7),(2,8),(2,12),(2,16),(2,19),(2,23),(2,24),(2,26),(2,28),(2,31),(2,37),(2,38),(2,39),(2,42),(3,3),(3,4),(3,10),(3,14),(3,17),(3,18),(3,20),(3,29),(3,30),(3,32),(3,41);
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-04-26 03:15:36','2024-04-26 03:15:36'),(2,'None',0.000000,2,'published','2024-04-26 03:15:36','2024-04-26 03:15:36'),(3,'Import Tax',15.000000,3,'published','2024-04-26 03:15:36','2024-04-26 03:15:36');
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
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(2,'PAYMENT',1,'published','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL);
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-04-26 03:15:33','2024-04-26 03:15:33'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-04-26 03:15:33','2024-04-26 03:15:33');
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
INSERT INTO `galleries` VALUES (1,'Perfect','I eat\" is the capital of Paris, and Paris is the same as they all cheered. Alice thought the poor little thing was to twist it up into the air. This time there were no tears. \'If you\'re going to do.',1,0,'fashion/galleries/1.jpg',1,'published','2024-04-26 03:15:53','2024-04-26 03:15:53'),(2,'New Day','Dodo, \'the best way you go,\' said the sage, as he shook both his shoes off. \'Give your evidence,\' the King exclaimed, turning to the rose-tree, she went on saying to herself what such an.',1,0,'fashion/galleries/2.jpg',1,'published','2024-04-26 03:15:53','2024-04-26 03:15:53'),(3,'Happy Day','Rabbit asked. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice very.',1,0,'fashion/galleries/3.jpg',1,'published','2024-04-26 03:15:53','2024-04-26 03:15:53'),(4,'Nature','Rabbit\'s little white kid gloves, and was beating her violently with its legs hanging down, but generally, just as I\'d taken the highest tree in front of the miserable Mock Turtle. \'No, no! The.',1,0,'fashion/galleries/4.jpg',1,'published','2024-04-26 03:15:53','2024-04-26 03:15:53'),(5,'Morning','Cat, \'if you don\'t even know what \"it\" means.\' \'I know SOMETHING interesting is sure to do THAT in a mournful tone, \'he won\'t do a thing before, and he called the Queen, stamping on the trumpet, and.',1,0,'fashion/galleries/5.jpg',1,'published','2024-04-26 03:15:53','2024-04-26 03:15:53');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"She was close behind us, and he\'s treading on her hand, watching the setting sun, and thinking of little Alice herself, and fanned herself with one finger; and the pattern on their throne when they.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Alice thought), and it was the BEST butter, you know.\' \'Not the same as they used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Hatter went on planning to herself what such an extraordinary ways of living would be only rustling in the air. \'--as far out to sea!\\\" But the snail replied \\\"Too far, too far!\\\" and gave a sudden.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"I wish you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Queen, who were giving it something out of a water-well,\' said the King: \'leave out that it was sneezing on the.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:53','2024-04-26 03:15:53'),(2,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"She was close behind us, and he\'s treading on her hand, watching the setting sun, and thinking of little Alice herself, and fanned herself with one finger; and the pattern on their throne when they.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Alice thought), and it was the BEST butter, you know.\' \'Not the same as they used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Hatter went on planning to herself what such an extraordinary ways of living would be only rustling in the air. \'--as far out to sea!\\\" But the snail replied \\\"Too far, too far!\\\" and gave a sudden.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"I wish you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Queen, who were giving it something out of a water-well,\' said the King: \'leave out that it was sneezing on the.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:53','2024-04-26 03:15:53'),(3,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"She was close behind us, and he\'s treading on her hand, watching the setting sun, and thinking of little Alice herself, and fanned herself with one finger; and the pattern on their throne when they.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Alice thought), and it was the BEST butter, you know.\' \'Not the same as they used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Hatter went on planning to herself what such an extraordinary ways of living would be only rustling in the air. \'--as far out to sea!\\\" But the snail replied \\\"Too far, too far!\\\" and gave a sudden.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"I wish you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Queen, who were giving it something out of a water-well,\' said the King: \'leave out that it was sneezing on the.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:53','2024-04-26 03:15:53'),(4,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"She was close behind us, and he\'s treading on her hand, watching the setting sun, and thinking of little Alice herself, and fanned herself with one finger; and the pattern on their throne when they.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Alice thought), and it was the BEST butter, you know.\' \'Not the same as they used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Hatter went on planning to herself what such an extraordinary ways of living would be only rustling in the air. \'--as far out to sea!\\\" But the snail replied \\\"Too far, too far!\\\" and gave a sudden.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"I wish you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Queen, who were giving it something out of a water-well,\' said the King: \'leave out that it was sneezing on the.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:53','2024-04-26 03:15:53'),(5,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"She was close behind us, and he\'s treading on her hand, watching the setting sun, and thinking of little Alice herself, and fanned herself with one finger; and the pattern on their throne when they.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Alice thought), and it was the BEST butter, you know.\' \'Not the same as they used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Hatter went on planning to herself what such an extraordinary ways of living would be only rustling in the air. \'--as far out to sea!\\\" But the snail replied \\\"Too far, too far!\\\" and gave a sudden.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"I wish you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Queen, who were giving it something out of a water-well,\' said the King: \'leave out that it was sneezing on the.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:15:53','2024-04-26 03:15:53');
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
INSERT INTO `language_meta` VALUES (1,'en_US','7bb8b2b08a53f7aa21fb47e20bbeda12',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','f268e5547c08885de62ab7325711bade',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','b33d21a8558af7be461acd475a781fc4',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','3043a10968b61b7c3bbbba216dabaed8',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','173bca13f777b8db98bb6c30578e0275',3,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-04-26 03:15:30','2024-04-26 03:15:30',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(5,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(6,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(7,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(8,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(9,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(10,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(11,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(12,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(13,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(14,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(15,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(16,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(27,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-04-26 03:15:32','2024-04-26 03:15:32',NULL),(28,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-04-26 03:15:32','2024-04-26 03:15:32',NULL),(29,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(30,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(31,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(32,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(33,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(34,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(35,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(36,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(37,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(38,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(39,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(40,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(41,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(42,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(43,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(44,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(45,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(46,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(47,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(48,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(49,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(50,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(51,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(52,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(53,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(54,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(55,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(56,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(57,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(58,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(59,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(60,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(61,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(62,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(63,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(64,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(65,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-04-26 03:15:38','2024-04-26 03:15:38',NULL),(66,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(67,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(68,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(69,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(70,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(71,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(72,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(73,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(74,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(75,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(76,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(77,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(78,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(79,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(80,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(81,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(82,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(83,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(84,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(85,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(86,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(87,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-04-26 03:15:40','2024-04-26 03:15:40',NULL),(88,0,'shape-1','shape-1',9,'image/png',1842,'fashion/sliders/shape-1.png','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(89,0,'shape-2','shape-2',9,'image/png',489,'fashion/sliders/shape-2.png','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(90,0,'shape-3','shape-3',9,'image/png',221,'fashion/sliders/shape-3.png','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(91,0,'slider-1','slider-1',9,'image/png',10444,'fashion/sliders/slider-1.png','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(92,0,'slider-2','slider-2',9,'image/png',9843,'fashion/sliders/slider-2.png','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(93,0,'slider-3','slider-3',9,'image/png',11768,'fashion/sliders/slider-3.png','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(94,0,'1','1',10,'image/jpeg',4294,'fashion/product-categories/1.jpg','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(95,0,'2','2',10,'image/jpeg',4294,'fashion/product-categories/2.jpg','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(96,0,'3','3',10,'image/jpeg',4294,'fashion/product-categories/3.jpg','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(97,0,'4','4',10,'image/jpeg',4294,'fashion/product-categories/4.jpg','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(98,0,'5','5',10,'image/jpeg',4294,'fashion/product-categories/5.jpg','[]','2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(99,0,'6','6',10,'image/jpeg',4294,'fashion/product-categories/6.jpg','[]','2024-04-26 03:15:44','2024-04-26 03:15:44',NULL),(100,0,'product-1','product-1',11,'image/png',9803,'fashion/products/product-1.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(101,0,'product-2','product-2',11,'image/png',9803,'fashion/products/product-2.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(102,0,'product-3','product-3',11,'image/png',9803,'fashion/products/product-3.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(103,0,'product-4','product-4',11,'image/png',9803,'fashion/products/product-4.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(104,0,'product-5','product-5',11,'image/png',9803,'fashion/products/product-5.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(105,0,'product-6','product-6',11,'image/png',9803,'fashion/products/product-6.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(106,0,'product-7','product-7',11,'image/png',9803,'fashion/products/product-7.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(107,0,'product-8','product-8',11,'image/png',9803,'fashion/products/product-8.png','[]','2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(108,0,'1','1',12,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(109,0,'2','2',12,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(110,0,'slider-1','slider-1',12,'image/png',8207,'main/banners/slider-1.png','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(111,0,'slider-2','slider-2',12,'image/png',8497,'main/banners/slider-2.png','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(112,0,'slider-3','slider-3',12,'image/png',6239,'main/banners/slider-3.png','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(113,0,'1','1',13,'image/jpeg',6287,'fashion/banners/1.jpg','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(114,0,'2','2',13,'image/jpeg',5975,'fashion/banners/2.jpg','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(115,0,'3','3',13,'image/jpeg',5975,'fashion/banners/3.jpg','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(116,0,'4','4',13,'image/jpeg',9052,'fashion/banners/4.jpg','[]','2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(117,0,'1','1',14,'image/jpeg',4294,'fashion/galleries/1.jpg','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(118,0,'2','2',14,'image/jpeg',4294,'fashion/galleries/2.jpg','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(119,0,'3','3',14,'image/jpeg',4294,'fashion/galleries/3.jpg','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(120,0,'4','4',14,'image/jpeg',4294,'fashion/galleries/4.jpg','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(121,0,'5','5',14,'image/jpeg',4294,'fashion/galleries/5.jpg','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(122,0,'icon-1','icon-1',15,'image/png',4469,'main/contact/icon-1.png','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(123,0,'icon-2','icon-2',15,'image/png',5977,'main/contact/icon-2.png','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(124,0,'icon-3','icon-3',15,'image/png',6082,'main/contact/icon-3.png','[]','2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(125,0,'line','line',16,'image/png',6152,'main/shapes/line.png','[]','2024-04-26 03:15:54','2024-04-26 03:15:54',NULL),(126,0,'quote','quote',16,'image/png',595,'main/shapes/quote.png','[]','2024-04-26 03:15:54','2024-04-26 03:15:54',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-04-26 03:15:30','2024-04-26 03:15:30',NULL),(2,0,'general',NULL,'general',1,'2024-04-26 03:15:30','2024-04-26 03:15:30',NULL),(3,0,'users',NULL,'users',1,'2024-04-26 03:15:31','2024-04-26 03:15:31',NULL),(4,0,'brands',NULL,'brands',1,'2024-04-26 03:15:32','2024-04-26 03:15:32',NULL),(5,0,'customers',NULL,'customers',1,'2024-04-26 03:15:33','2024-04-26 03:15:33',NULL),(6,0,'blog',NULL,'blog',1,'2024-04-26 03:15:37','2024-04-26 03:15:37',NULL),(7,0,'stores',NULL,'stores',1,'2024-04-26 03:15:39','2024-04-26 03:15:39',NULL),(8,0,'fashion',NULL,'fashion',0,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL),(11,0,'products',NULL,'products',8,'2024-04-26 03:15:45','2024-04-26 03:15:45',NULL),(12,0,'banners',NULL,'banners',1,'2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(13,0,'banners',NULL,'banners',8,'2024-04-26 03:15:52','2024-04-26 03:15:52',NULL),(14,0,'galleries',NULL,'galleries',8,'2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(15,0,'contact',NULL,'contact',1,'2024-04-26 03:15:53','2024-04-26 03:15:53',NULL),(16,0,'shapes',NULL,'shapes',1,'2024-04-26 03:15:54','2024-04-26 03:15:54',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-26 03:15:54','2024-04-26 03:15:54');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(11,1,7,NULL,NULL,'/products/printed-palazzo-pants',NULL,0,'Product Detail',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(23,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(26,1,23,NULL,NULL,'/blog/9-things-i-love-about-shaving-my-head',NULL,0,'Blog Detail',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(27,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(29,2,0,9,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(34,3,0,7,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(35,3,0,8,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(36,3,0,6,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54'),(38,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-04-26 03:15:54','2024-04-26 03:15:54');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(2,'My Account','my-account','published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(3,'Information','information','published','2024-04-26 03:15:54','2024-04-26 03:15:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:43','2024-04-26 03:15:43'),(2,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:43','2024-04-26 03:15:43'),(3,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:15:43','2024-04-26 03:15:43'),(4,'faq_ids','[[1,2,4,5,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(5,'faq_ids','[[4,5,6,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(6,'faq_ids','[[2,3,5,8,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(7,'faq_ids','[[1,2,7,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(8,'faq_ids','[[1,2,6,7,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(9,'faq_ids','[[1,4,6,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(10,'faq_ids','[[3,4,5,6,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(11,'faq_ids','[[2,3,4,5,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(12,'faq_ids','[[1,2,4,7,9]]',9,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(13,'faq_ids','[[1,2,6,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(14,'faq_ids','[[1,3,4,7,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(15,'faq_ids','[[1,3,4,7,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(16,'faq_ids','[[5,6,7,8,9]]',13,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(17,'faq_ids','[[1,4,7,8,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(18,'faq_ids','[[1,4,7,8,9]]',15,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(19,'faq_ids','[[5,6,7,8,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(20,'faq_ids','[[1,2,3,4,7]]',17,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(21,'faq_ids','[[1,4,5,6,8]]',18,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:48','2024-04-26 03:15:48'),(22,'faq_ids','[[1,2,4,5,8]]',19,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(23,'faq_ids','[[1,4,6,8,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(24,'faq_ids','[[3,5,6,7,8]]',21,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(25,'faq_ids','[[3,4,5,7,9]]',22,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(26,'faq_ids','[[1,2,4,5,7]]',23,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(27,'faq_ids','[[1,2,5,8,9]]',24,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(28,'faq_ids','[[2,3,4,7,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(29,'faq_ids','[[3,5,7,8,9]]',26,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(30,'faq_ids','[[2,3,5,8,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(31,'faq_ids','[[1,3,7,9,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(32,'faq_ids','[[1,3,6,8,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(33,'faq_ids','[[2,3,4,9,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(34,'faq_ids','[[1,4,5,7,8]]',31,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(35,'faq_ids','[[2,5,6,8,9]]',32,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(36,'faq_ids','[[1,2,3,5,8]]',33,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(37,'faq_ids','[[1,6,7,8,9]]',34,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(38,'faq_ids','[[2,4,6,7,9]]',35,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(39,'faq_ids','[[1,2,5,7,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(40,'faq_ids','[[4,5,6,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(41,'faq_ids','[[1,4,7,8,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(42,'faq_ids','[[4,5,6,7,9]]',39,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(43,'faq_ids','[[2,4,6,8,10]]',40,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(44,'faq_ids','[[2,3,5,6,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(45,'faq_ids','[[4,6,8,9,10]]',42,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(46,'faq_ids','[[1,2,6,7,9]]',43,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:15:49','2024-04-26 03:15:49'),(47,'title','[\"Smartphone \\\\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(48,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(49,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(50,'title','[\"HyperX Cloud II \\\\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(51,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(52,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(53,'title','[\"T-Shirt Tunic \\n Tops Blouse\"]',3,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(54,'button_label','[\"Shop Now\"]',3,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(55,'title','[\"Satchel Tote \\n Crossbody Bags\"]',4,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(56,'button_label','[\"Shop Now\"]',4,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(57,'title','[\"Men\'s Tennis \\n Walking Shoes\"]',5,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(58,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(59,'title','[\"Short Sleeve Tunic \\n Tops Casual Swing\"]',6,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(60,'button_label','[\"Explore More\"]',6,'Botble\\Ads\\Models\\Ads','2024-04-26 03:15:52','2024-04-26 03:15:52'),(61,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-04-26 03:15:54','2024-04-26 03:15:54'),(62,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-04-26 03:15:54','2024-04-26 03:15:54');
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
INSERT INTO `mp_stores` VALUES (1,'GoPro','gibson.mallory@example.org','+15084249007','65365 Lynch Roads','MA','Colorado','Johnsfort',6,'main/stores/1.png','main/stores/cover-5.png','Omnis nulla inventore amet id. Dignissimos nihil aliquam non et corrupti est dignissimos nihil. Ut ipsa dicta ducimus doloribus. Iusto ipsam provident doloribus fuga est necessitatibus quaerat. Mollitia id in ut provident. Fugiat mollitia aut debitis occaecati beatae eligendi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(2,'Global Office','aufderhar.hollie@example.org','+12194000140','2384 Arden Squares','NU','New York','Bayerfort',5,'main/stores/2.png','main/stores/cover-4.png','Maxime perspiciatis unde rem. Assumenda animi eos consequatur velit a non. Dolorem ad qui non itaque. Expedita perspiciatis quos tenetur dolor laborum sint et. Deleniti autem non nostrum inventore quis non quas. Labore quis asperiores vel iure qui fuga. Voluptas exercitationem nisi officia id omnis ex non nam.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(3,'Young Shop','bokeefe@example.net','+17067295628','26753 Nathanael Loop','MY','Indiana','Lynchport',8,'main/stores/3.png','main/stores/cover-5.png','Provident nobis suscipit reprehenderit sint. Eos sit praesentium alias et fugiat fugiat. Ut accusantium similique maxime ratione. Quod saepe ratione veniam tenetur nihil. Recusandae laboriosam cum adipisci. Voluptas voluptates necessitatibus adipisci. Autem molestiae porro deserunt cum. Velit sed explicabo ab voluptatem. Repellendus ea ea aut maiores molestiae dicta.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(4,'Global Store','kiehn.robin@example.org','+13864693099','393 Auer Shoals Apt. 676','ST','Ohio','Connmouth',6,'main/stores/4.png','main/stores/cover-5.png','Cupiditate aut id quae voluptas est enim aliquid molestias. Consequatur sint voluptatem exercitationem atque eos. Consequatur mollitia facilis et odio modi. Sit quo minima deserunt ad aut laboriosam. Ut illo consequatur voluptate excepturi vitae doloremque nisi ipsum. Qui eveniet dicta illo voluptatum. Quas iusto omnis iusto adipisci dolorum vel atque. Voluptatem aut odio qui illo enim.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(5,'Robert’s Store','mariam.hills@example.org','+13412957418','9173 Carrie Centers Apt. 877','MS','Iowa','Uptonberg',2,'main/stores/5.png','main/stores/cover-3.png','Officiis architecto minima consequatur maxime itaque. Vitae molestias voluptatem nesciunt quisquam repudiandae eveniet ea. Nesciunt ducimus vel quo dolor voluptas illum sit. Nisi vero et voluptatem ullam. At labore eligendi ut dolorum non distinctio qui ducimus. Tempora et placeat voluptatibus aut enim laborum impedit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(6,'Stouffer','kub.domenic@example.org','+15318106820','8340 Edison Greens Apt. 799','SS','Tennessee','Idellburgh',4,'main/stores/6.png','main/stores/cover-1.png','Quo qui consequatur eos ipsam. Iste molestiae at quos nesciunt quia odit porro. Rerum molestiae aliquam accusamus impedit quam. Qui quis laudantium omnis esse. Autem magni alias recusandae. Ratione mollitia et non deleniti. Enim neque reiciendis quod ut. Rerum consequuntur a tempora inventore quia ex.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(7,'StarKist','ekeebler@example.org','+19494869511','3887 Schiller Drive','PE','North Carolina','Rohanland',4,'main/stores/7.png','main/stores/cover-2.png','Placeat ab sit illo sequi. Necessitatibus omnis vitae sed voluptatum pariatur assumenda eos. Ipsam et quos qui. Facere voluptatem sed voluptate alias dolore occaecati nisi. Vitae atque est sed vero inventore. Officiis enim dolorum et expedita eius nisi. Quae autem ducimus laborum temporibus quia repudiandae atque. Qui doloremque voluptas qui esse inventore rerum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL),(8,'Old El Paso','fatima23@example.com','+14195222418','2333 Carolyne Courts','MY','Nevada','Satterfieldview',2,'main/stores/8.png','main/stores/cover-1.png','Illum omnis dolores voluptates deleniti eligendi impedit. Minus exercitationem ullam aut in. Ipsam quas explicabo qui quis atque doloremque asperiores. Numquam quam quidem rem eveniet.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:15:43','2024-04-26 03:15:43',NULL,NULL);
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
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$n.ovMXLIoQQei1/Z4T6p2O2YIPGdiQwJnMfACZswc4iFSCKo.jLI.','{\"name\":\"Dr. Golden Heidenreich IV\",\"number\":\"+14802658016\",\"full_name\":\"Cooper Cole\",\"description\":\"Greta Wyman\"}','2024-04-26 03:15:41','2024-04-26 03:15:41','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$Av3lcZureNOhL4D3TRQAbecXGeG6r4uT/HBO48skqc5IG.OJsp9B.','{\"name\":\"Harmony Wilderman IV\",\"number\":\"+16783337664\",\"full_name\":\"Kaylie Goodwin\",\"description\":\"Asha Tromp\"}','2024-04-26 03:15:41','2024-04-26 03:15:41','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$euPO8fhAShJ6VnT7TrgZyO5R9az5u0TJsolT6O8OuX8.YrqEReueC','{\"name\":\"Cayla Veum\",\"number\":\"+17797164892\",\"full_name\":\"Prof. Scotty Morissette\",\"description\":\"Verda Rippin\"}','2024-04-26 03:15:41','2024-04-26 03:15:41','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$V95zTa7X3VPTz9dQBePPk.v6/jQEgU9wGvYvS5CpqdT8D5xI821A6','{\"name\":\"Flavio Kerluke\",\"number\":\"+12243656594\",\"full_name\":\"Mitchel Schmeler\",\"description\":\"Prof. Dessie Corkery IV\"}','2024-04-26 03:15:42','2024-04-26 03:15:42','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$vikPBw3mOactSxhxLO/uy.ad850ITQ6t59Lysr4cos2iK28Mxkfnq','{\"name\":\"Mr. Herminio Farrell DVM\",\"number\":\"+16178967172\",\"full_name\":\"Miss Jolie Fisher Sr.\",\"description\":\"Dr. Darrion Bruen\"}','2024-04-26 03:15:42','2024-04-26 03:15:42','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$j1XDhBhBFy9pGFY2TSrxDOP0ePLiRiID7nvMLQcSikoX3TQ2dgLzS','{\"name\":\"Carlotta Jaskolski\",\"number\":\"+13259993060\",\"full_name\":\"Keven Grady\",\"description\":\"Guiseppe Schiller\"}','2024-04-26 03:15:42','2024-04-26 03:15:42','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$/BK3e.zHTPiTfoRCROVAR.tWWlutYizL4I6obENcLn3uelSseI0Fe','{\"name\":\"Prof. Penelope Treutel V\",\"number\":\"+12709779273\",\"full_name\":\"Mr. Tevin Parker\",\"description\":\"Dana Kerluke\"}','2024-04-26 03:15:43','2024-04-26 03:15:43','bank_transfer',NULL);
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
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"2\" key=\"home-slider\" shape_1=\"fashion/sliders/shape-1.png\" shape_2=\"fashion/sliders/shape-2.png\" shape_3=\"fashion/sliders/shape-3.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ads style=\"2\" key_1=\"WXAUTIJV1QU0\" key_2=\"7Z5RXBBWV7J2\" key_3=\"JY08TDO8FG1E\" full_width=\"1\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"yes\"][/ecommerce-categories][ecommerce-product-groups title=\"Customer Favorite Style Product\" subtitle=\"All Product Shop\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-products style=\"slider-full-width\" title=\"This Week\'s Featured\" subtitle=\"Shop by Category\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"on\" background_color=\"#EFF1F5\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"Trending Arrivals\" subtitle=\"More to Discover\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"on\" ads_ids=\"6\" style=\"slider\" ads=\"VKJNCBIBQC1O\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"This Week\'s Featured\" subtitle=\"Best Seller This Week\'s\" by=\"specify\" product_ids=\"3,4,5,6\" limit=\"12\" style=\"grid\" button_label=\"Shop All Now\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][testimonials style=\"1\" title=\"The Review Are In\" testimonial_ids=\"2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][blog-posts title=\"Latest News & Articles\" subtitle=\"Our Blog & News\" type=\"recent\" limit=\"3\" button_label=\"Discover More\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(2,'Product Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"yes\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(5,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(7,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(8,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54'),(9,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:15:54','2024-04-26 03:15:54');
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
INSERT INTO `post_categories` VALUES (2,1),(3,1),(3,2),(2,2),(5,3),(1,3),(4,4),(1,4),(4,5),(1,5),(5,6),(2,6),(4,7),(1,7),(2,8),(6,8),(3,9),(1,9),(5,10),(2,10),(4,11),(5,11),(2,12),(4,13),(5,13),(4,14),(6,14),(4,15),(3,15),(1,16),(5,16),(1,17),(2,17),(4,18),(2,18);
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
INSERT INTO `post_tags` VALUES (4,1),(2,1),(3,1),(3,2),(8,2),(6,2),(8,3),(3,3),(6,3),(2,4),(3,4),(6,5),(1,5),(2,5),(7,6),(1,6),(5,6),(3,7),(4,7),(5,8),(7,8),(3,8),(6,9),(5,9),(1,9),(5,10),(7,11),(8,11),(2,12),(5,12),(7,12),(1,13),(2,13),(6,14),(1,14),(4,14),(1,15),(5,15),(3,15),(1,16),(7,16),(3,16),(4,17),(1,17),(8,17),(3,18),(7,18),(6,18);
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Alice gently remarked; \'they\'d have been was not much surprised at this, but at the stick, running a very fine day!\' said a whiting before.\' \'I can tell you his history,\' As they walked off.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1825,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','ARE a simpleton.\' Alice did not get dry again: they had settled down in an offended tone. And she went on so long that they could not help bursting out laughing: and when she had never had to pinch.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',2497,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(3,'The Top 2020 Handbag Trends to Know','Has lasted the rest of the baby?\' said the Duchess; \'and the moral of that is--\"Birds of a treacle-well--eh, stupid?\' \'But they were lying round the refreshments!\' But there seemed to Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',897,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(4,'How to Match the Color of Your Handbag With an Outfit','I can\'t understand it myself to begin again, it was good practice to say to this: so she bore it as to bring tears into her head. \'If I eat one of them.\' In another moment down went Alice after it.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',2363,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(5,'How to Care for Leather Bags','Pigeon. \'I can see you\'re trying to fix on one, the cook was busily stirring the soup, and seemed not to be lost: away went Alice after it, \'Mouse dear! Do come back and see that queer little toss.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',2063,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of his great wig.\' The judge, by the end of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\".','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',508,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(7,'Essential Qualities of Highly Successful Music','Alice; and Alice looked very uncomfortable. The moment Alice appeared, she was near enough to drive one crazy!\' The Footman seemed to Alice again. \'No, I didn\'t,\' said Alice: \'I don\'t think they.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',1061,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(8,'9 Things I Love About Shaving My Head','Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'I wonder what was the matter with it. There could be NO mistake about it: it was her turn or not. \'Oh.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1214,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(9,'Why Teamwork Really Makes The Dream Work','I suppose Dinah\'ll be sending me on messages next!\' And she began again: \'Ou est ma chatte?\' which was a general chorus of voices asked. \'Why, SHE, of course,\' the Dodo said, \'EVERYBODY has won, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',2412,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(10,'The World Caters to Average People','Dormouse shook its head to feel a little three-legged table, all made a dreadfully ugly child: but it makes me grow smaller, I suppose.\' So she went on muttering over the wig, (look at the proposal.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',643,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(11,'The litigants on the screen are not actors','It\'s HIM.\' \'I don\'t know of any use, now,\' thought Alice, \'they\'re sure to make SOME change in my life!\' Just as she could. \'The Dormouse is asleep again,\' said the Mock Turtle recovered his voice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',888,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(12,'Hiring the Right Sales Team at the Right Time','Dormouse, who was beginning to feel which way it was over at last, and managed to swallow a morsel of the court. \'What do you know about it, you may SIT down,\' the King eagerly, and he called the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',2466,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(13,'Fully Embrace the Return of 90s fashion','Will you, won\'t you join the dance?\"\' \'Thank you, it\'s a set of verses.\' \'Are they in the kitchen that did not quite like the right size for going through the wood. \'If it had some kind of thing.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1471,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(14,'Exploring the English Countryside','Ann! Mary Ann!\' said the Pigeon; \'but if they do, why then they\'re a kind of thing never happened, and now here I am to see it again, but it was good manners for her to carry it further. So she sat.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',1997,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(15,'Here’s the First Valentino’s New Makeup Collection','Lory, as soon as she heard something splashing about in the common way. So she went on saying to herself, being rather proud of it: \'No room! No room!\' they cried out when they liked, and left foot.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',2373,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(16,'Follow Your own Design process, whatever gets','But said I didn\'t!\' interrupted Alice. \'You did,\' said the Cat, \'if you only walk long enough.\' Alice felt a very little use without my shoulders. Oh, how I wish I hadn\'t mentioned Dinah!\' she said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',938,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(17,'Freelancer Days 2024, What’s new?','Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not like the look of it in a bit.\' \'Perhaps it doesn\'t matter a bit,\' she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',858,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39'),(18,'Quality Foods Requirments For Every Human Body’s','For really this morning I\'ve nothing to do.\" Said the mouse to the law, And argued each case with MINE,\' said the Cat, and vanished. Alice was soon left alone. \'I wish I hadn\'t mentioned Dinah!\' she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1597,NULL,'2024-04-26 03:15:39','2024-04-26 03:15:39');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-26 03:15:32','2024-04-26 03:15:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','543dc7233d6798bb713ffad702385d03',NULL,'2024-04-26 03:15:54'),(2,'api_enabled','0',NULL,'2024-04-26 03:15:54'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-04-26 03:15:54'),(6,'theme','shofy-fashion',NULL,'2024-04-26 03:15:54'),(7,'show_admin_bar','1',NULL,'2024-04-26 03:15:54'),(8,'payment_cod_status','1',NULL,'2024-04-26 03:15:54'),(9,'payment_bank_transfer_status','1',NULL,'2024-04-26 03:15:54'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-04-26 03:15:54'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-04-26 03:15:54'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-04-26 03:15:54'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-04-26 03:15:54'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-04-26 03:15:54'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-04-26 03:15:54'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-04-26 03:15:54'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-04-26 03:15:54'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-04-26 03:15:54'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-04-26 03:15:54'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-04-26 03:15:54'),(21,'announcement_lazy_loading','1',NULL,'2024-04-26 03:15:54'),(22,'language_hide_default','1',NULL,'2024-04-26 03:15:54'),(23,'language_switcher_display','dropdown',NULL,'2024-04-26 03:15:54'),(24,'language_display','all',NULL,'2024-04-26 03:15:54'),(25,'language_hide_languages','[]',NULL,'2024-04-26 03:15:54'),(26,'ecommerce_store_name','Shofy',NULL,'2024-04-26 03:15:54'),(27,'ecommerce_store_phone','1800979769',NULL,'2024-04-26 03:15:54'),(28,'ecommerce_store_address','502 New Street',NULL,'2024-04-26 03:15:54'),(29,'ecommerce_store_state','Brighton VIC',NULL,'2024-04-26 03:15:54'),(30,'ecommerce_store_city','Brighton VIC',NULL,'2024-04-26 03:15:54'),(31,'ecommerce_store_country','AU',NULL,'2024-04-26 03:15:54'),(32,'announcement_max_width','1390',NULL,'2024-04-26 03:15:54'),(33,'announcement_text_color','#010f1c',NULL,'2024-04-26 03:15:54'),(34,'announcement_background_color','transparent',NULL,'2024-04-26 03:15:54'),(35,'announcement_placement','theme',NULL,'2024-04-26 03:15:54'),(36,'announcement_text_alignment','start',NULL,'2024-04-26 03:15:54'),(37,'announcement_dismissible','0',NULL,'2024-04-26 03:15:54'),(38,'simple_slider_using_assets','0',NULL,'2024-04-26 03:15:54'),(39,'theme-shofy-fashion-site_name','Shofy',NULL,NULL),(40,'theme-shofy-fashion-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(41,'theme-shofy-fashion-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(42,'theme-shofy-fashion-copyright','© %Y All Rights Reserved.',NULL,NULL),(43,'theme-shofy-fashion-tp_primary_font','Jost',NULL,NULL),(44,'theme-shofy-fashion-primary_color','#821F40',NULL,NULL),(45,'theme-shofy-fashion-favicon','main/general/favicon.png',NULL,NULL),(46,'theme-shofy-fashion-logo','main/general/logo.png',NULL,NULL),(47,'theme-shofy-fashion-logo_light','main/general/logo-white.png',NULL,NULL),(48,'theme-shofy-fashion-header_style','2',NULL,NULL),(49,'theme-shofy-fashion-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(50,'theme-shofy-fashion-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(51,'theme-shofy-fashion-hotline','8 800 332 65-66',NULL,NULL),(52,'theme-shofy-fashion-email','contact@fartmart.co',NULL,NULL),(53,'theme-shofy-fashion-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(54,'theme-shofy-fashion-homepage_id','1',NULL,NULL),(55,'theme-shofy-fashion-blog_page_id','4',NULL,NULL),(56,'theme-shofy-fashion-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-shofy-fashion-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(58,'theme-shofy-fashion-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-shofy-fashion-number_of_products_per_page','24',NULL,NULL),(60,'theme-shofy-fashion-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-shofy-fashion-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(62,'theme-shofy-fashion-ecommerce_product_item_style','2',NULL,NULL),(63,'theme-shofy-fashion-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(64,'theme-shofy-fashion-logo_in_invoices','main/general/logo.png',NULL,NULL),(65,'theme-shofy-fashion-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(66,'theme-shofy-fashion-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-fashion-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-fashion-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-fashion-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-fashion-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-fashion-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-fashion-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-fashion-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-fashion-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-fashion-section_title_shape_decorated','style-3',NULL,NULL),(76,'theme-shofy-fashion-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-fashion-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-fashion-header_main_background_color','#fff',NULL,NULL),(79,'theme-shofy-fashion-header_main_text_color','#010f1c',NULL,NULL);
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
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','fashion/sliders/slider-1.png','/products','New Arrivals 2023',0,'2024-04-26 03:15:43','2024-04-26 03:15:43'),(2,1,'The Summer Collection','fashion/sliders/slider-2.png','/products','Best Selling 2023',1,'2024-04-26 03:15:43','2024-04-26 03:15:43'),(3,1,'Amazing New designs','fashion/sliders/slider-3.png','/products','Winter Has Arrived',2,'2024-04-26 03:15:43','2024-04-26 03:15:43');
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-04-26 03:15:43','2024-04-26 03:15:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:33','2024-04-26 03:15:33'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:33','2024-04-26 03:15:33'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:33','2024-04-26 03:15:33'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:33','2024-04-26 03:15:33'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:15:33','2024-04-26 03:15:33'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:36','2024-04-26 03:15:36'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:36','2024-04-26 03:15:36'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:36','2024-04-26 03:15:36'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:37','2024-04-26 03:15:37'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:37','2024-04-26 03:15:37'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:15:37','2024-04-26 03:15:37'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:38','2024-04-26 03:15:38'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:38','2024-04-26 03:15:38'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:38','2024-04-26 03:15:38'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:38','2024-04-26 03:15:38'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:38','2024-04-26 03:15:38'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:15:38','2024-04-26 03:15:38'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:15:39','2024-04-26 03:15:39'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:15:39','2024-04-26 03:15:39'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:15:43','2024-04-26 03:15:43'),(52,'bags',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(62,'footwear',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(64,'hats',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(65,'scarves',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(66,'jewelry',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(68,'activewear',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(69,'running-shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(70,'outerwear',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:15:44','2024-04-26 03:15:44'),(71,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(72,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(73,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(74,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:55'),(75,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(76,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(77,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(78,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:55'),(79,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(80,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(81,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(82,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:55'),(83,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(84,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(85,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(86,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:55'),(87,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(88,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:48','2024-04-26 03:15:48'),(89,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(90,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:55'),(91,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(92,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(93,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(94,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:55'),(95,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(96,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(97,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(98,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:55'),(99,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(100,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(101,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(102,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:55'),(103,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(104,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(105,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(106,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:55'),(107,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(108,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(109,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(110,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:55'),(111,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(112,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(113,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:49','2024-04-26 03:15:49'),(114,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:53','2024-04-26 03:15:53'),(115,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:53','2024-04-26 03:15:53'),(116,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:53','2024-04-26 03:15:53'),(117,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:53','2024-04-26 03:15:53'),(118,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:15:53','2024-04-26 03:15:53'),(119,'home',1,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(120,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(121,'coupons',3,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(122,'blog',4,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(123,'contact',5,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(124,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(125,'our-story',7,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(126,'careers',8,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(127,'shipping',9,'Botble\\Page\\Models\\Page','','2024-04-26 03:15:54','2024-04-26 03:15:54'),(128,'vintage-denim-jacket',44,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(129,'vintage-denim-jacket',45,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(130,'floral-maxi-dress',46,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(131,'floral-maxi-dress',47,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(132,'knit-turtleneck-sweater-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(133,'knit-turtleneck-sweater-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(134,'classic-aviator-sunglasses',50,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(135,'bohemian-fringe-handbag',51,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:55','2024-04-26 03:15:55'),(136,'bohemian-fringe-handbag',52,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(137,'silk-scarf-with-geometric-print-digital',53,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(138,'silk-scarf-with-geometric-print-digital',54,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(139,'high-waisted-wide-leg-trousers',55,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(140,'embroidered-boho-blouse',56,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(141,'chic-fedora-hat-digital',57,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(142,'chic-fedora-hat-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(143,'chic-fedora-hat-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(144,'chic-fedora-hat-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(145,'chic-fedora-hat-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(146,'strappy-block-heel-sandals',62,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(147,'strappy-block-heel-sandals',63,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(148,'strappy-block-heel-sandals',64,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(149,'distressed-skinny-jeans-digital',65,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(150,'distressed-skinny-jeans-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(151,'distressed-skinny-jeans-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(152,'distressed-skinny-jeans-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(153,'lace-up-combat-boots',69,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(154,'lace-up-combat-boots',70,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(155,'cotton-striped-t-shirt-dress',71,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(156,'cotton-striped-t-shirt-dress',72,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(157,'cotton-striped-t-shirt-dress',73,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(158,'cotton-striped-t-shirt-dress',74,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(159,'cotton-striped-t-shirt-dress',75,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(160,'printed-palazzo-pants',76,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(161,'printed-palazzo-pants',77,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(162,'printed-palazzo-pants',78,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(163,'structured-satchel-bag-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(164,'structured-satchel-bag-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(165,'structured-satchel-bag-digital',81,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(166,'off-shoulder-ruffle-top',82,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(167,'athleisure-jogger-pants-digital',83,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(168,'athleisure-jogger-pants-digital',84,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(169,'athleisure-jogger-pants-digital',85,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(170,'leopard-print-midi-skirt',86,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(171,'leopard-print-midi-skirt',87,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(172,'leopard-print-midi-skirt',88,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(173,'leopard-print-midi-skirt',89,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(174,'boho-fringed-kimono-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(175,'beaded-evening-clutch',91,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(176,'beaded-evening-clutch',92,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(177,'beaded-evening-clutch',93,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(178,'denim-overall-jumpsuit-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(179,'denim-overall-jumpsuit-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(180,'denim-overall-jumpsuit-digital',96,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(181,'denim-overall-jumpsuit-digital',97,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(182,'embellished-ballet-flats',98,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(183,'embellished-ballet-flats',99,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(184,'embellished-ballet-flats',100,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(185,'pleated-midi-skirt',101,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(186,'pleated-midi-skirt',102,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(187,'pleated-midi-skirt',103,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(188,'velour-tracksuit-set',104,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(189,'velour-tracksuit-set',105,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(190,'velour-tracksuit-set',106,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(191,'buckle-detail-ankle-booties',107,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(192,'buckle-detail-ankle-booties',108,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(193,'embroidered-bomber-jacket',109,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(194,'embroidered-bomber-jacket',110,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(195,'chunky-knit-infinity-scarf-digital',111,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(196,'chunky-knit-infinity-scarf-digital',112,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(197,'metallic-pleated-maxi-skirt',113,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56'),(198,'metallic-pleated-maxi-skirt',114,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:15:56','2024-04-26 03:15:56');
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
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:15:39','2024-04-26 03:15:39');
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
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/7.jpg','Developer','published','2024-04-26 03:15:43','2024-04-26 03:15:43'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/2.jpg','CO Founder','published','2024-04-26 03:15:43','2024-04-26 03:15:43'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/3.jpg','UI/UX Designer','published','2024-04-26 03:15:43','2024-04-26 03:15:43'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/1.jpg','Bank of America','published','2024-04-26 03:15:43','2024-04-26 03:15:43');
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
INSERT INTO `users` VALUES (1,'brenner@christiansen.com',NULL,'$2y$12$HarfjVKCV9WSNAECnqbwq.02E7Q4eEQhvF/CTzSjZZNkHfwRaXfay',NULL,'2024-04-26 03:15:32','2024-04-26 03:15:32','Fermin','Shields','admin',NULL,1,1,NULL,NULL);
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
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-fashion',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-fashion',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(9,'NewsletterWidget','footer_top_sidebar','shofy-fashion',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-fashion',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-fashion',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(12,'BlogSearchWidget','blog_sidebar','shofy-fashion',1,'{\"id\":\"BlogSearchWidget\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-fashion',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/9.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(14,'BlogPostsWidget','blog_sidebar','shofy-fashion',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-fashion',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(16,'BlogTagsWidget','blog_sidebar','shofy-fashion',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-fashion',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-fashion',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-04-26 03:15:54','2024-04-26 03:15:54'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-fashion',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,18,19],\"style\":\"grid\",\"display_children\":true}','2024-04-26 03:15:54','2024-04-26 03:15:54');
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

-- Dump completed on 2024-04-26 17:15:58
