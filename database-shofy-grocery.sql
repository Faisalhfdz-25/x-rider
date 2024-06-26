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
INSERT INTO `activations` VALUES (1,1,'v43VSceBMsZa8r71Uo81o7bjbdmvxvft',1,'2024-04-26 03:17:00','2024-04-26 03:17:00','2024-04-26 03:17:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-04-26 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-04-26 03:17:17','2024-04-26 03:17:17',1,NULL,NULL,NULL,NULL),(2,'Ads 2','2029-04-26 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-04-26 03:17:17','2024-04-26 03:17:17',1,NULL,NULL,NULL,NULL),(3,'Ads 3','2029-04-26 00:00:00','not_set','L1WDL8YGZUOR','grocery/banners/1.jpg','/products',0,3,'published','2024-04-26 03:17:17','2024-04-26 03:17:17',1,NULL,NULL,NULL,NULL),(4,'Ads 4','2029-04-26 00:00:00','not_set','GA3K1VZWNMPF','grocery/banners/2.png','/products',0,4,'published','2024-04-26 03:17:17','2024-04-26 03:17:17',1,NULL,NULL,NULL,NULL);
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','🍇 Fresh arrivals just in! Shop now for quality groceries and elevate your meals!',0,NULL,NULL,0,1,'2024-04-26 10:17:12',NULL,1,'2024-04-26 03:17:12','2024-04-26 03:17:12'),(2,'Announcement 2','🚀 Explore new flavors hassle-free. Enjoy free delivery on orders over $50!',0,NULL,NULL,0,1,'2024-04-26 10:17:12',NULL,1,'2024-04-26 03:17:12','2024-04-26 03:17:12'),(3,'Announcement 3','🌽 Quality guaranteed! Hassle-free returns within 30 days for your peace of mind.',0,NULL,NULL,0,1,'2024-04-26 10:17:12',NULL,1,'2024-04-26 03:17:12','2024-04-26 03:17:12');
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
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Nisi dicta similique quisquam voluptates nihil doloremque nam porro. Quisquam cupiditate est voluptatem quo deserunt rerum voluptatem id. Numquam aut non possimus laboriosam reiciendis facere minus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(2,'Fashion',0,'Quas omnis aliquam et voluptates et unde explicabo. Quis perspiciatis omnis est nostrum et. Iusto qui sint et quisquam minima quia. Ab quod placeat quia quisquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(3,'Electronic',0,'Sint fugiat voluptatum nostrum nisi est quidem. Dolorem sed cumque aliquid quaerat sit et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(4,'Commercial',0,'Dignissimos atque in fugit et nisi. Non qui ut esse. Aut sapiente placeat a ipsum hic aperiam eius nesciunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(5,'Organic Fruits',0,'Autem qui tempora magni cum itaque nesciunt quia. Omnis quaerat culpa vel nulla temporibus. Quo architecto praesentium voluptatum aut. Nulla rerum occaecati amet architecto minus aut dolore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(6,'Ecological',0,'Et minima sed dolores aut. Magnam iste rerum enim. Aut omnis odio officia eligendi hic quasi. Qui maxime vero et explicabo. Voluptatem qui autem quam facere unde eum iusto tenetur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:17:06','2024-04-26 03:17:06');
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
INSERT INTO `contacts` VALUES (1,'Melody Goodwin','xskiles@example.net','(272) 802-9336','226 Duncan Inlet Suite 528\nMrazside, AK 32312','Ut laborum provident vitae vitae cum.','Veniam voluptatem modi fugit. Et sit delectus officiis. Nostrum adipisci quidem iste ut dolore magnam enim sunt. Velit consequatur eveniet ut aspernatur est quis qui. Sapiente sunt at sed aut sed voluptatem. Aut aut ipsa distinctio et quas qui doloremque laborum. Blanditiis esse laborum aliquam et illo. A et voluptatem quam quisquam voluptate cumque expedita quaerat. Nihil dolor assumenda temporibus. Repudiandae neque delectus cum ab blanditiis aut explicabo.',NULL,'read','2024-04-26 03:17:05','2024-04-26 03:17:05'),(2,'Zoila Bogan','fae.stark@example.net','+15599328126','3739 Kareem Rapids\nLuzbury, PA 82794','Dolor fugit aut mollitia modi.','Sapiente repellendus dolor ipsa temporibus rerum enim. Nostrum et et atque neque magnam harum neque. Tempore corrupti porro veritatis. Nobis recusandae nobis eos deserunt omnis. Consequatur minus illo voluptatem quia cumque. Tempore modi amet ad nihil et veritatis doloremque possimus. Vitae est vel harum iure laborum sed. Et cum nesciunt enim at quam unde voluptatem possimus. Consequatur illum minima a omnis pariatur dolores. Perspiciatis ex alias et perferendis.',NULL,'unread','2024-04-26 03:17:05','2024-04-26 03:17:05'),(3,'Bradford Kozey','juliet.beier@example.org','1-860-758-7216','2593 Harber Roads\nEast Ulises, SD 60525','Nisi sed id unde molestias cum necessitatibus.','Delectus est rerum qui saepe accusamus. Hic iure libero voluptatem iure unde ipsum velit. Sunt eos tenetur fugit dolor temporibus ipsa voluptas veritatis. Odio ab reiciendis veniam blanditiis iste. Et voluptatem tenetur praesentium esse voluptatem explicabo velit. Sed quia voluptas dolore et et omnis similique. Facilis nobis fugit enim hic quam totam. Fugiat dolores blanditiis eligendi asperiores non veritatis. Et quod qui dignissimos ad rerum porro voluptatem.',NULL,'unread','2024-04-26 03:17:05','2024-04-26 03:17:05'),(4,'Ari Rutherford','marcellus27@example.com','+1-484-485-3633','668 Cassin Crossroad Apt. 622\nLake Alysamouth, WY 44367-4626','Eos ea nemo rerum aut quam excepturi.','Veritatis sit consequatur molestias eos nulla. Commodi assumenda quaerat ipsum et dolor tenetur unde. Distinctio modi qui id quibusdam et pariatur distinctio illo. Neque explicabo consequatur consectetur quasi est distinctio enim. Reprehenderit illum magnam et. Rerum perspiciatis voluptatem ut eaque. Quaerat aut harum rerum nulla unde et dignissimos ut.',NULL,'read','2024-04-26 03:17:05','2024-04-26 03:17:05'),(5,'Ms. Demetris Bartoletti III','mckenzie.rene@example.com','+1-214-988-8079','33547 Treutel Road Apt. 988\nFarrellview, NH 09513-7184','Eos laudantium dolore deserunt blanditiis.','Ut occaecati quae perferendis ipsum commodi culpa. Quos atque officiis in possimus velit exercitationem. Quam magni unde qui. Maiores consectetur aut repellendus aspernatur aspernatur. Vero provident mollitia sit non. Quos ex et voluptatem eum sed repellat mollitia. Odit cupiditate neque cupiditate eius. Dolore et tempore explicabo aliquid at autem quos voluptatem.',NULL,'read','2024-04-26 03:17:05','2024-04-26 03:17:05'),(6,'Freida Gorczany','bsmith@example.com','651.259.7546','64479 Orn Streets Apt. 977\nEast Yasmin, MT 56163','Omnis velit molestiae omnis nostrum.','Sed veritatis iste ipsam ullam sint. Id est eius quibusdam nihil voluptatem quia quia ad. Explicabo vel minus dolores quia incidunt quod qui ut. Placeat dicta culpa consequatur dolores sed. Et ut ut quasi in enim laudantium veritatis. Facilis modi quia rerum eius inventore molestiae. Corporis ea voluptatem ut nulla voluptatem. Error voluptate eum dolore voluptatem corrupti id fugiat. Illo adipisci pariatur magnam eum quasi.',NULL,'unread','2024-04-26 03:17:05','2024-04-26 03:17:05'),(7,'Mr. Rosendo Wilderman','jaida.bartoletti@example.com','325-382-3308','196 Fahey Terrace\nLake Dustin, OK 33902','Dignissimos natus numquam iusto sequi.','Tenetur dicta ut unde atque quia rerum veritatis explicabo. Rerum dolores amet adipisci enim alias. Adipisci quo libero est aut. Id eum cumque eos qui molestiae. Optio et maxime sunt in possimus ea dolores. Repellat quisquam animi dolorem sunt. Molestias non nihil voluptates et et. Nulla pariatur ex est mollitia laborum. Odio consequatur accusantium autem veniam quo officia voluptatem qui. Voluptatem in vitae quae earum officia aliquam.',NULL,'unread','2024-04-26 03:17:05','2024-04-26 03:17:05'),(8,'Stella Bednar','winfield78@example.net','+1 (606) 844-7289','717 Kirlin Cliff\nPort Chanelle, NM 89028','Nulla non sed est quod in a.','Minus ut praesentium qui eos placeat aperiam. Enim impedit iusto impedit et. Aliquid perspiciatis libero nihil fugit quibusdam sed sit. Doloribus excepturi dolorem totam officiis voluptas. Soluta distinctio consequatur consectetur ut minus non saepe. Rerum non perferendis rerum ad autem ad.',NULL,'unread','2024-04-26 03:17:05','2024-04-26 03:17:05'),(9,'Laurianne Pagac','jabari98@example.net','1-620-346-9763','5037 Olson Vista Suite 969\nKayafurt, NM 21822-8946','Quisquam commodi dolor architecto quasi animi.','Fuga eveniet dicta fuga non doloremque possimus omnis. Dolores laborum beatae quis est voluptatum impedit. Eum quia consequatur est blanditiis dolorum odit et. Voluptates sed optio rerum labore modi est eum quod. Natus numquam quod at. Voluptates assumenda quae dolore quia culpa reprehenderit accusamus. Facere corporis qui explicabo est deserunt. Nemo aut et libero ex velit quibusdam. Sed ducimus soluta modi quidem deserunt iste totam et. Velit rerum commodi placeat rerum.',NULL,'read','2024-04-26 03:17:05','2024-04-26 03:17:05'),(10,'Felicita Bahringer','qschowalter@example.com','239-233-5941','7183 Deon Orchard\nSouth Anastacio, FL 57188-5679','Sapiente earum dolorem aliquam quos.','Praesentium qui dicta adipisci. Aliquam qui qui beatae ut. Et eos nostrum harum optio perferendis modi. Expedita distinctio est ducimus reprehenderit ea. Tempore ad ratione aut qui consequatur porro et. Sint iste nihil sint explicabo iusto omnis pariatur voluptate. Officiis culpa ut quos. Cupiditate consequatur similique omnis laborum quo. Voluptatem veniam neque est suscipit iure. Magni sed quam et error voluptatum voluptas.',NULL,'unread','2024-04-26 03:17:05','2024-04-26 03:17:05');
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
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-04-26 03:17:01','2024-04-26 03:17:01');
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(2,'EUR','€',0,2,1,0,0.84,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(3,'VND','₫',0,0,2,0,23203,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(4,'NGN','₦',1,2,2,0,895.52,'2024-04-26 03:17:01','2024-04-26 03:17:01');
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Jaydon King','customer@botble.com','+13399890180','ZW','Kentucky','Demariofort','158 Celestino Inlet Apt. 868',1,1,'2024-04-26 03:17:02','2024-04-26 03:17:02','58331'),(2,'Jaydon King','customer@botble.com','+12793220188','MM','Tennessee','Schillerton','663 Mina Union',1,0,'2024-04-26 03:17:02','2024-04-26 03:17:02','95296-5280'),(3,'Mr. Cordell Dickinson','vendor@botble.com','+14783643027','NG','New Mexico','Lake Camylle','784 McGlynn Burgs Apt. 305',2,1,'2024-04-26 03:17:02','2024-04-26 03:17:02','24250'),(4,'Mr. Cordell Dickinson','vendor@botble.com','+16578516288','NO','Minnesota','Bradenberg','2105 Rodolfo Fort',2,0,'2024-04-26 03:17:02','2024-04-26 03:17:02','05956'),(5,'Ray Schuster','ohermiston@example.com','+15613508176','IE','Maine','North Mauricioview','1461 Josefina Plaza Suite 574',3,1,'2024-04-26 03:17:02','2024-04-26 03:17:02','11241-1946'),(6,'Miss Tracy Marvin II','art.halvorson@example.net','+18439316793','GT','Montana','North Scottystad','595 Effertz Common',4,1,'2024-04-26 03:17:03','2024-04-26 03:17:03','73457'),(7,'Estell Schoen','legros.rosie@example.org','+19099128836','GW','South Dakota','Port Donavonstad','25030 Beatty Station Apt. 293',5,1,'2024-04-26 03:17:03','2024-04-26 03:17:03','86937'),(8,'Wendell Koelpin','jesus18@example.org','+14703246209','NO','Georgia','Port Jamison','6184 Simonis Plains Suite 786',6,1,'2024-04-26 03:17:03','2024-04-26 03:17:03','99086'),(9,'Prof. Felton Muller','michael.grimes@example.net','+13092638035','IN','Colorado','Simoneshire','949 Brandyn Flats Suite 064',7,1,'2024-04-26 03:17:04','2024-04-26 03:17:04','69754-1696'),(10,'Andrew Treutel','velma58@example.com','+17705494323','FO','Rhode Island','Lake Delphinetown','7918 Colleen Road',8,1,'2024-04-26 03:17:04','2024-04-26 03:17:04','11343-7011'),(11,'Leonardo Wilkinson','felicity69@example.com','+17639520586','BQ','New Hampshire','Kadinton','26980 Cristobal Highway',9,1,'2024-04-26 03:17:04','2024-04-26 03:17:04','67545-1678'),(12,'Germaine Pollich','alfreda56@example.org','+17749455040','PR','Delaware','Bashirianview','684 Ruecker Extensions',10,1,'2024-04-26 03:17:04','2024-04-26 03:17:04','15614');
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
INSERT INTO `ec_customers` VALUES (1,'Jaydon King','customer@botble.com','$2y$12$W23OZI2hZh/iWTFdVx01CussYVeiX5KC6zwplmmcjViNRTXyLn/DO','main/customers/3.jpg','1985-04-19','+15419191334',NULL,'2024-04-26 03:17:02','2024-04-26 03:17:02','2024-04-26 10:17:01',NULL,0,NULL,'activated',NULL),(2,'Mr. Cordell Dickinson','vendor@botble.com','$2y$12$7woUDAA0cXmkltXr7EW9XeMX58tKmZDhovlAI9HtmXHopvFJ3Vt5m','main/customers/10.jpg','1983-04-23','+15615833164',NULL,'2024-04-26 03:17:02','2024-04-26 03:17:09','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(3,'Ray Schuster','ohermiston@example.com','$2y$12$3DqAkP5fL9isxEk/jmnJZu6hi7BnQ012gj2S0CFwvFaQ9NLx9TkLe','main/customers/1.jpg','1985-04-16','+13213479896',NULL,'2024-04-26 03:17:02','2024-04-26 03:17:10','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(4,'Miss Tracy Marvin II','art.halvorson@example.net','$2y$12$rEhn98PWtAacpcYJ7bAfN.ZHCWTwyFRFL8mABc7RHotBdpVnyUS4y','main/customers/2.jpg','1985-04-25','+17156327368',NULL,'2024-04-26 03:17:03','2024-04-26 03:17:10','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(5,'Estell Schoen','legros.rosie@example.org','$2y$12$GOXN8GkIMGQuB7lRrsJuA.f8qTAxb3s0Pv0iJNN2hL7nuRwXlqPSW','main/customers/3.jpg','1987-04-01','+12256216364',NULL,'2024-04-26 03:17:03','2024-04-26 03:17:10','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(6,'Wendell Koelpin','jesus18@example.org','$2y$12$9htzkUUqUSxsUBZmyo8XaekaPM9btnK0N8cvcTqJ3kcQVW6fBG.Lq','main/customers/4.jpg','1980-04-05','+13852537117',NULL,'2024-04-26 03:17:03','2024-04-26 03:17:11','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(7,'Prof. Felton Muller','michael.grimes@example.net','$2y$12$piFTyWMPl2xdp4zCHT0u9uL56vZSnFzx4Q7BzzFDl9uZ6yXYuiZJm','main/customers/5.jpg','1999-03-29','+14425215583',NULL,'2024-04-26 03:17:04','2024-04-26 03:17:11','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(8,'Andrew Treutel','velma58@example.com','$2y$12$jSc/LL/hI9o13q.hJVSl6.SsW/APS7gE4GtAm1bFtxYimCwmauyXu','main/customers/6.jpg','1981-04-06','+19134692376',NULL,'2024-04-26 03:17:04','2024-04-26 03:17:11','2024-04-26 10:17:01',NULL,1,'2024-04-26 10:17:09','activated',NULL),(9,'Leonardo Wilkinson','felicity69@example.com','$2y$12$ymX.m4gQi1f7mvT3R8Xs2OyLle/OPap9kOGia/vcEVYZSNaX0eCYa','main/customers/7.jpg','1985-04-10','+16895686093',NULL,'2024-04-26 03:17:04','2024-04-26 03:17:11','2024-04-26 10:17:01',NULL,0,NULL,'activated',NULL),(10,'Germaine Pollich','alfreda56@example.org','$2y$12$xvry2wFqeaeFvV.fsRHGBeeUTY1Z54.BtqTOTfMdTK8pCbscpWACO','main/customers/8.jpg','2000-04-17','+18628762267',NULL,'2024-04-26 03:17:04','2024-04-26 03:17:11','2024-04-26 10:17:01',NULL,0,NULL,'activated',NULL);
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
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','QX3VXSOZYKQ9','2024-04-25 10:17:07',NULL,NULL,0,948,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(2,'Discount 2','W2WC9U2H7TAE','2024-04-25 10:17:07',NULL,NULL,0,85,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(3,'Discount 3','HK0UCJEMADPL','2024-04-25 10:17:07',NULL,NULL,0,673,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(4,'Discount 4','ZALNMYT2UQ77','2024-04-25 10:17:07',NULL,NULL,0,76,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(5,'Discount 5','FDBSSBEGFPSN','2024-04-25 10:17:07','2024-05-03 10:17:07',NULL,0,660,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(6,'Discount 6','Z6GJM4OZIC0I','2024-04-25 10:17:07','2024-04-30 10:17:07',NULL,0,22,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(7,'Discount 7','JPVQM8C72MEQ','2024-04-25 10:17:07','2024-05-22 10:17:07',NULL,0,304,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(8,'Discount 8','I0RXDB8QWETJ','2024-04-25 10:17:07',NULL,NULL,0,186,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(9,'Discount 9','LPXIKAPC2EEC','2024-04-25 10:17:07',NULL,NULL,0,71,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL),(10,'Discount 10','OLKOHWPBVAHV','2024-04-25 10:17:07',NULL,NULL,0,76,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:17:07','2024-04-26 03:17:07',NULL,NULL);
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,391.28,9,5),(1,2,847.55,13,5),(1,3,668.22,20,2),(1,4,625.02,8,3),(1,5,920,10,4),(1,6,679.77,7,4),(1,7,312.9,12,2),(1,8,741.6376,16,4),(1,9,1.75,14,4),(1,10,226.44,6,3);
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-05-11 00:00:00','published','2024-04-26 03:17:17','2024-04-26 03:17:17');
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(1,2,'2 Year',10,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(1,3,'3 Year',20,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(2,4,'4GB',0,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(2,5,'8GB',10,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(2,6,'16GB',20,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(3,7,'Core i5',0,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(3,8,'Core i7',10,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(3,9,'Core i9',20,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(4,10,'128GB',0,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(4,11,'256GB',10,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(4,12,'512GB',20,9999,0,'2024-04-26 03:17:08','2024-04-26 03:17:08');
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:17:08','2024-04-26 03:17:08'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-04-26 03:17:08','2024-04-26 03:17:08');
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-04-26 03:17:01','2024-04-26 03:17:01',0),(2,'Size','size','text',1,1,1,'published',1,'2024-04-26 03:17:01','2024-04-26 03:17:01',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-04-26 03:17:01','2024-04-26 03:17:01',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-04-26 03:17:01','2024-04-26 03:17:01',0);
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(6,2,'S','s',NULL,NULL,1,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(7,2,'M','m',NULL,NULL,0,2,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(8,2,'L','l',NULL,NULL,0,3,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-04-26 03:17:01','2024-04-26 03:17:01'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-04-26 03:17:01','2024-04-26 03:17:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Frozen Food',0,NULL,'published',0,'grocery/product-categories/1.jpg',1,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL,NULL),(2,'Baby Food',1,NULL,'published',0,NULL,0,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL,NULL),(3,'Strawberry',1,NULL,'published',1,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(4,'Ice Cream',1,NULL,'published',2,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(5,'Meat & Seafood',0,NULL,'published',1,'grocery/product-categories/2.jpg',1,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(6,'Chicken',5,NULL,'published',0,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(7,'Fish',5,NULL,'published',1,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(8,'Beef',5,NULL,'published',2,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(9,'Milk & Dairy',0,NULL,'published',2,'grocery/product-categories/3.jpg',1,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(10,'Milk',9,NULL,'published',0,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(11,'Cheese',9,NULL,'published',1,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(12,'Yogurt',9,NULL,'published',2,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(13,'Beverages',0,NULL,'published',3,'grocery/product-categories/4.jpg',1,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(14,'Vegetables',0,NULL,'published',4,'grocery/product-categories/5.jpg',1,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(15,'Carrot',14,NULL,'published',0,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(16,'Tomato',14,NULL,'published',1,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(17,'Potato',14,NULL,'published',2,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(18,'Fruits',0,NULL,'published',5,'grocery/product-categories/6.jpg',1,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(19,'Banana',18,NULL,'published',0,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL),(20,'Mango',18,NULL,'published',1,NULL,0,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL,NULL);
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
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,7),(1,9),(2,1),(2,9),(2,16),(2,18),(2,22),(3,8),(3,10),(3,11),(3,26),(3,29),(4,10),(4,13),(4,15),(4,25),(5,12),(5,14),(5,19),(6,13),(6,14),(6,25),(7,2),(7,4),(7,16),(7,23),(7,30),(8,5),(8,11),(8,18),(8,21),(8,23),(8,27),(8,29),(9,3),(9,4),(9,6),(9,8),(9,17),(9,19),(9,22),(9,23),(9,24),(9,25),(9,26),(9,28),(10,1),(10,3),(10,9),(10,11),(10,14),(10,17),(10,20),(10,27),(10,28),(11,8),(11,17),(11,18),(11,22),(11,24),(12,4),(12,5),(12,9),(12,18),(12,19),(12,21),(12,26),(13,2),(13,3),(13,7),(13,10),(13,19),(13,26),(13,30),(14,2),(14,5),(14,6),(14,7),(14,10),(14,16),(14,21),(14,22),(14,28),(15,1),(15,4),(15,13),(15,15),(15,20),(15,25),(16,16),(16,20),(16,24),(16,27),(16,29),(16,30),(17,6),(17,8),(17,11),(17,15),(17,24),(18,5),(18,12),(18,13),(18,15),(18,17),(18,21),(19,1),(19,3),(19,7),(19,12),(19,14),(19,30),(20,6),(20,12),(20,20),(20,23),(20,27),(20,28),(20,29);
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
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,7),(1,15),(1,21),(1,24),(1,26),(1,30),(2,1),(2,2),(2,6),(2,9),(2,12),(2,16),(2,28),(3,5),(3,8),(3,11),(3,13),(3,17),(3,19),(3,20),(3,22),(3,27),(4,4),(4,10),(4,14),(4,18),(4,23),(4,25),(4,29);
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
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-04-26 03:17:13','2024-04-26 03:17:13',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-04-26 03:17:13','2024-04-26 03:17:13',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-04-26 03:17:13','2024-04-26 03:17:13',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-04-26 03:17:13','2024-04-26 03:17:13',0);
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,7,0,0.00,'fixed',1),(1,13,0,0.00,'fixed',1),(1,21,0,0.00,'fixed',1),(1,23,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,28,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(2,25,0,0.00,'fixed',1),(2,28,0,0.00,'fixed',1),(3,4,0,0.00,'fixed',1),(3,12,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,26,0,0.00,'fixed',1),(3,29,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,17,0,0.00,'fixed',1),(4,22,0,0.00,'fixed',1),(4,23,0,0.00,'fixed',1),(4,26,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,19,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(5,24,0,0.00,'fixed',1),(5,30,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,26,0,0.00,'fixed',1),(6,27,0,0.00,'fixed',1),(6,30,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,30,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(9,21,0,0.00,'fixed',1),(9,27,0,0.00,'fixed',1),(9,30,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,15,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(10,24,0,0.00,'fixed',1),(10,30,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,25,0,0.00,'fixed',1),(11,27,0,0.00,'fixed',1),(11,28,0,0.00,'fixed',1),(11,29,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(12,27,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(12,30,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,23,0,0.00,'fixed',1),(13,24,0,0.00,'fixed',1),(13,26,0,0.00,'fixed',1),(13,30,0,0.00,'fixed',1),(14,12,0,0.00,'fixed',1),(14,16,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(14,22,0,0.00,'fixed',1),(14,24,0,0.00,'fixed',1),(14,26,0,0.00,'fixed',1),(14,30,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(15,24,0,0.00,'fixed',1),(15,30,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,5,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,30,0,0.00,'fixed',1),(17,13,0,0.00,'fixed',1),(17,16,0,0.00,'fixed',1),(17,19,0,0.00,'fixed',1),(17,25,0,0.00,'fixed',1),(17,28,0,0.00,'fixed',1),(17,29,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(18,27,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,9,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(19,21,0,0.00,'fixed',1),(19,25,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,14,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,13,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(21,20,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(22,25,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(23,29,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(24,23,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(25,12,0,0.00,'fixed',1),(25,13,0,0.00,'fixed',1),(25,17,0,0.00,'fixed',1),(25,18,0,0.00,'fixed',1),(25,26,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,2,0,0.00,'fixed',1),(26,7,0,0.00,'fixed',1),(26,18,0,0.00,'fixed',1),(26,22,0,0.00,'fixed',1),(26,23,0,0.00,'fixed',1),(26,25,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,12,0,0.00,'fixed',1),(27,16,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(27,25,0,0.00,'fixed',1),(27,30,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,7,0,0.00,'fixed',1),(28,13,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,27,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,8,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,15,0,0.00,'fixed',1),(29,16,0,0.00,'fixed',1),(29,20,0,0.00,'fixed',1),(29,23,0,0.00,'fixed',1),(30,10,0,0.00,'fixed',1),(30,16,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,23,0,0.00,'fixed',1),(30,24,0,0.00,'fixed',1),(30,25,0,0.00,'fixed',1),(30,29,0,0.00,'fixed',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(2,4,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(3,8,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(4,8,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(5,12,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(6,12,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(7,16,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(8,16,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(9,20,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(10,20,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(11,24,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(12,24,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(13,28,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(14,28,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(15,41,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(16,42,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(17,43,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(18,47,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(19,48,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(20,59,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(21,60,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16'),(22,61,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-04-26 10:17:16\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-26 03:17:16','2024-04-26 03:17:16');
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
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,12),(1,15),(1,18),(1,21),(1,30),(2,6),(2,9),(2,24),(3,27);
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(2,'New','#006554','published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(3,'Sale','#9A3B00','published','2024-04-26 03:17:01','2024-04-26 03:17:01');
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
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(1,5),(2,2),(2,3),(2,5),(3,1),(3,2),(3,4),(4,4),(4,5),(4,6),(5,1),(5,3),(5,6),(6,1),(6,2),(6,6),(7,2),(7,5),(7,6),(8,2),(8,3),(8,6),(9,1),(9,4),(9,6),(10,1),(10,5),(10,6),(11,1),(11,2),(11,4),(12,1),(12,2),(12,4),(13,1),(13,4),(13,6),(14,1),(14,2),(14,3),(15,3),(15,5),(15,6),(16,1),(16,4),(16,6),(17,3),(17,4),(17,5),(18,3),(18,4),(18,6),(19,1),(19,4),(19,6),(20,1),(20,2),(20,4),(21,1),(21,3),(21,6),(22,1),(22,2),(22,3),(23,2),(23,4),(23,5),(24,1),(24,2),(24,5),(25,4),(25,5),(25,6),(26,1),(26,2),(26,3),(27,2),(27,3),(27,5),(28,1),(28,3),(28,5),(29,1),(29,2),(29,4),(30,1),(30,2),(30,6);
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(2,'Mobile',NULL,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(3,'Iphone',NULL,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(4,'Printer',NULL,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(5,'Office',NULL,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(6,'IT',NULL,'published','2024-04-26 03:17:05','2024-04-26 03:17:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(11,1,6),(15,1,8),(51,1,26),(1,2,1),(3,2,2),(17,2,9),(19,2,10),(23,2,12),(29,2,15),(31,2,16),(37,2,19),(43,2,22),(45,2,23),(5,3,3),(21,3,11),(25,3,13),(49,3,25),(13,4,7),(33,4,17),(39,4,20),(9,5,5),(27,5,14),(35,5,18),(41,5,21),(47,5,24),(8,6,4),(44,6,22),(30,7,15),(34,7,17),(42,7,21),(2,8,1),(20,8,10),(26,8,13),(28,8,14),(32,8,16),(36,8,18),(46,8,23),(50,8,25),(52,8,26),(6,9,3),(14,9,7),(16,9,8),(18,9,9),(24,9,12),(40,9,20),(48,9,24),(4,10,2),(10,10,5),(12,10,6),(22,10,11),(38,10,19),(53,11,27),(57,11,29),(69,11,35),(71,11,36),(73,11,37),(81,11,41),(67,12,34),(77,12,39),(93,12,47),(59,13,30),(65,13,33),(79,13,40),(87,13,44),(89,13,45),(75,14,38),(85,14,43),(91,14,46),(95,14,48),(55,15,28),(61,15,31),(63,15,32),(83,15,42),(58,16,29),(84,16,42),(94,16,47),(96,16,48),(60,17,30),(64,17,32),(86,17,43),(90,17,45),(92,17,46),(54,18,27),(62,18,31),(68,18,34),(82,18,41),(70,19,35),(74,19,37),(78,19,39),(80,19,40),(56,20,28),(66,20,33),(72,20,36),(76,20,38),(88,20,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,31,1,1),(2,32,1,0),(3,33,2,1),(4,34,2,0),(5,35,2,0),(6,36,2,0),(7,37,2,0),(8,38,3,1),(9,39,3,0),(10,40,3,0),(11,41,4,1),(12,42,4,0),(13,43,4,0),(14,44,6,1),(15,45,6,0),(16,46,6,0),(17,47,8,1),(18,48,8,0),(19,49,10,1),(20,50,10,0),(21,51,10,0),(22,52,11,1),(23,53,11,0),(24,54,13,1),(25,55,13,0),(26,56,14,1),(27,57,15,1),(28,58,15,0),(29,59,16,1),(30,60,16,0),(31,61,16,0),(32,62,17,1),(33,63,21,1),(34,64,21,0),(35,65,22,1),(36,66,22,0),(37,67,22,0),(38,68,25,1),(39,69,25,0),(40,70,26,1),(41,71,27,1),(42,72,27,0),(43,73,27,0),(44,74,29,1),(45,75,30,1),(46,76,30,0),(47,77,30,0),(48,78,30,0);
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(3,15,0),(4,15,0),(3,16,0),(4,16,0),(3,17,0),(4,17,0),(3,21,0),(4,21,0),(3,22,0),(4,22,0),(3,25,0),(4,25,0),(3,26,0),(4,26,0),(3,27,0),(4,27,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Organic Apples','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-2.jpg\"]','OT-161-A1',0,16,0,1,0,4,0,0,536,NULL,NULL,NULL,13.00,10.00,14.00,711.00,NULL,9720,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Whole Grain Bread','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-4.jpg\"]','NN-195-A1',0,16,0,1,1,1,0,0,1541,NULL,NULL,NULL,10.00,17.00,13.00,750.00,NULL,8451,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Free-Range Eggs','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-6.jpg\"]','CF-185-A1',0,10,0,1,1,5,0,0,1591,NULL,NULL,NULL,19.00,15.00,19.00,502.00,NULL,31522,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Fresh Salmon Fillet (Digital)','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-1.jpg\"]','MU-125-A1',0,10,0,1,0,2,0,0,1894,1420.5,NULL,NULL,12.00,11.00,17.00,676.00,NULL,106064,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Organic Spinach','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\"]','EU-100',0,10,0,1,1,3,0,0,2477,2300,NULL,NULL,13.00,12.00,20.00,824.00,NULL,159594,'2024-04-26 03:17:14','2024-04-26 03:17:14','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'Grass-Fed Ground Beef','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]','R0-172-A1',0,11,0,1,0,5,0,0,1079,NULL,NULL,NULL,18.00,13.00,17.00,899.00,NULL,191383,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'Almond Milk','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]','Y0-105',0,17,0,1,1,3,0,0,1774,1043,NULL,NULL,10.00,10.00,18.00,676.00,NULL,8175,'2024-04-26 03:17:14','2024-04-26 03:17:14','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Quinoa (Digital)','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-5.jpg\"]','KM-187-A1',0,10,0,1,1,3,0,0,2374,1685.54,NULL,NULL,16.00,11.00,18.00,513.00,NULL,148269,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'Avocado','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-2.jpg\"]','U9-136',0,11,0,1,0,4,0,0,1095,5,NULL,NULL,11.00,15.00,11.00,758.00,NULL,75634,'2024-04-26 03:17:14','2024-04-26 03:17:14','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Greek Yogurt','Green tea bags for a soothing and antioxidant-rich beverage.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]','3I-132-A1',0,18,0,1,1,2,0,0,629,NULL,NULL,NULL,19.00,16.00,17.00,842.00,NULL,197781,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Sweet Potatoes','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-2.jpg\"]','4W-163-A1',0,10,0,1,0,2,0,0,1504,NULL,NULL,NULL,17.00,20.00,13.00,653.00,NULL,5865,'2024-04-26 03:17:14','2024-04-26 03:17:15','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Organic Cherry Tomatoes (Digital)','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\"]','GU-112',0,12,0,1,0,3,0,0,2330,1470,NULL,NULL,16.00,20.00,20.00,712.00,NULL,195729,'2024-04-26 03:17:14','2024-04-26 03:17:14','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'Honeycrisp Apples','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-3.jpg\"]','VO-139-A1',0,17,0,1,1,4,0,0,2352,NULL,NULL,NULL,18.00,11.00,14.00,802.00,NULL,92584,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Brown Rice','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\"]','GX-198-A1',0,20,0,1,0,3,0,0,393,NULL,NULL,NULL,13.00,19.00,12.00,595.00,NULL,157668,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Organic Chicken Breast','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-2.jpg\"]','TA-132-A1',0,10,0,1,0,1,0,0,1348,NULL,NULL,NULL,16.00,14.00,10.00,685.00,NULL,44322,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Extra Virgin Olive Oil (Digital)','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]','GF-109-A1',0,20,0,1,0,3,0,0,2201,1760.8,NULL,NULL,17.00,20.00,10.00,559.00,NULL,195535,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Cucumber','Organic baby kale, a nutrient-packed green for salads and smoothies.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]','WF-129-A1',0,18,0,1,1,2,0,0,2036,NULL,NULL,NULL,15.00,15.00,12.00,843.00,NULL,173426,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Black Beans','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]','2A-136',0,18,0,1,1,1,0,0,1092,822,NULL,NULL,11.00,20.00,11.00,882.00,NULL,108141,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Chia Seeds','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\"]','PP-100',0,19,0,1,1,4,0,0,1758,1441,NULL,NULL,14.00,16.00,18.00,842.00,NULL,146333,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'Whole Wheat Pasta (Digital)','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-7.jpg\"]','ID-141',0,18,0,1,1,1,0,0,1378,68,NULL,NULL,11.00,14.00,12.00,843.00,NULL,140535,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Mixed Nuts','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-11.jpg\"]','2L-106-A1',0,13,0,1,0,5,0,0,808,NULL,NULL,NULL,13.00,13.00,10.00,558.00,NULL,53495,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Green Tea Bags','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-8.jpg\"]','L8-122-A1',0,14,0,1,0,2,0,0,1033,NULL,NULL,NULL,18.00,14.00,16.00,880.00,NULL,15100,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Organic Strawberries','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]','BA-161',0,16,0,1,0,4,0,0,2294,1781,NULL,NULL,17.00,12.00,10.00,710.00,NULL,43718,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Quinoa Flour (Digital)','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]','GU-136',0,12,0,1,0,5,0,0,1308,199,NULL,NULL,12.00,11.00,15.00,816.00,NULL,37110,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'Organic Baby Kale','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]','QG-166-A1',0,11,0,1,1,5,0,0,2438,NULL,NULL,NULL,15.00,15.00,18.00,639.00,NULL,66175,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Salad Dressing','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]','KG-166-A1',0,16,0,1,0,4,0,0,2327,NULL,NULL,NULL,12.00,15.00,20.00,600.00,NULL,165356,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Sweet Corn','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-1.jpg\"]','AQ-137-A1',0,19,0,1,0,4,0,0,884,NULL,NULL,NULL,13.00,14.00,15.00,890.00,NULL,27786,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'Almond Butter (Digital)','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]','EU-174',0,13,0,1,0,2,0,0,1761,793,NULL,NULL,20.00,10.00,18.00,703.00,NULL,80550,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Whole Pineapple','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-11.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\"]','D3-100-A1',0,18,0,1,0,4,0,0,2354,NULL,NULL,NULL,14.00,16.00,17.00,827.00,NULL,7950,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Cottage Cheese','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]','NU-105-A1',0,13,0,1,1,2,0,0,990,NULL,NULL,NULL,10.00,13.00,16.00,523.00,NULL,18275,'2024-04-26 03:17:15','2024-04-26 03:17:16','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','OT-161-A1',0,16,0,1,0,4,1,0,536,NULL,NULL,NULL,13.00,10.00,14.00,711.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(32,'Organic Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','OT-161-A1-A2',0,16,0,1,0,4,1,0,536,NULL,NULL,NULL,13.00,10.00,14.00,711.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(33,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','NN-195-A1',0,16,0,1,0,1,1,0,1541,NULL,NULL,NULL,10.00,17.00,13.00,750.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(34,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','NN-195-A1-A2',0,16,0,1,0,1,1,0,1541,NULL,NULL,NULL,10.00,17.00,13.00,750.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','NN-195-A1-A3',0,16,0,1,0,1,1,0,1541,NULL,NULL,NULL,10.00,17.00,13.00,750.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','NN-195-A1-A4',0,16,0,1,0,1,1,0,1541,NULL,NULL,NULL,10.00,17.00,13.00,750.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(37,'Whole Grain Bread',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','NN-195-A1-A5',0,16,0,1,0,1,1,0,1541,NULL,NULL,NULL,10.00,17.00,13.00,750.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','CF-185-A1',0,10,0,1,0,5,1,0,1591,NULL,NULL,NULL,19.00,15.00,19.00,502.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(39,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','CF-185-A1-A2',0,10,0,1,0,5,1,0,1591,NULL,NULL,NULL,19.00,15.00,19.00,502.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Free-Range Eggs',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','CF-185-A1-A3',0,10,0,1,0,5,1,0,1591,NULL,NULL,NULL,19.00,15.00,19.00,502.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(41,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','MU-125-A1',0,10,0,1,0,2,1,0,1894,1420.5,NULL,NULL,12.00,11.00,17.00,676.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(42,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','MU-125-A1-A2',0,10,0,1,0,2,1,0,1894,1458.38,NULL,NULL,12.00,11.00,17.00,676.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(43,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','MU-125-A1-A3',0,10,0,1,0,2,1,0,1894,1647.78,NULL,NULL,12.00,11.00,17.00,676.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(44,'Grass-Fed Ground Beef',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','R0-172-A1',0,11,0,1,0,5,1,0,1079,NULL,NULL,NULL,18.00,13.00,17.00,899.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(45,'Grass-Fed Ground Beef',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','R0-172-A1-A2',0,11,0,1,0,5,1,0,1079,NULL,NULL,NULL,18.00,13.00,17.00,899.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(46,'Grass-Fed Ground Beef',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','R0-172-A1-A3',0,11,0,1,0,5,1,0,1079,NULL,NULL,NULL,18.00,13.00,17.00,899.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(47,'Quinoa (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','KM-187-A1',0,10,0,1,0,3,1,0,2374,1685.54,NULL,NULL,16.00,11.00,18.00,513.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(48,'Quinoa (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','KM-187-A1-A2',0,10,0,1,0,3,1,0,2374,1780.5,NULL,NULL,16.00,11.00,18.00,513.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(49,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','3I-132-A1',0,18,0,1,0,2,1,0,629,NULL,NULL,NULL,19.00,16.00,17.00,842.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(50,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','3I-132-A1-A2',0,18,0,1,0,2,1,0,629,NULL,NULL,NULL,19.00,16.00,17.00,842.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(51,'Greek Yogurt',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','3I-132-A1-A3',0,18,0,1,0,2,1,0,629,NULL,NULL,NULL,19.00,16.00,17.00,842.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(52,'Sweet Potatoes',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','4W-163-A1',0,10,0,1,0,2,1,0,1504,NULL,NULL,NULL,17.00,20.00,13.00,653.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(53,'Sweet Potatoes',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','4W-163-A1-A2',0,10,0,1,0,2,1,0,1504,NULL,NULL,NULL,17.00,20.00,13.00,653.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(54,'Honeycrisp Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','VO-139-A1',0,17,0,1,0,4,1,0,2352,NULL,NULL,NULL,18.00,11.00,14.00,802.00,NULL,0,'2024-04-26 03:17:15','2024-04-26 03:17:15','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(55,'Honeycrisp Apples',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','VO-139-A1-A2',0,17,0,1,0,4,1,0,2352,NULL,NULL,NULL,18.00,11.00,14.00,802.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(56,'Brown Rice',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','GX-198-A1',0,20,0,1,0,3,1,0,393,NULL,NULL,NULL,13.00,19.00,12.00,595.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(57,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-10.jpg\"]','TA-132-A1',0,10,0,1,0,1,1,0,1348,NULL,NULL,NULL,16.00,14.00,10.00,685.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(58,'Organic Chicken Breast',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','TA-132-A1-A2',0,10,0,1,0,1,1,0,1348,NULL,NULL,NULL,16.00,14.00,10.00,685.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(59,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','GF-109-A1',0,20,0,1,0,3,1,0,2201,1760.8,NULL,NULL,17.00,20.00,10.00,559.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(60,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','GF-109-A1-A2',0,20,0,1,0,3,1,0,2201,1540.7,NULL,NULL,17.00,20.00,10.00,559.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(61,'Extra Virgin Olive Oil (Digital)',NULL,NULL,'published','[\"grocery\\/products\\/product-11.jpg\"]','GF-109-A1-A3',0,20,0,1,0,3,1,0,2201,1562.71,NULL,NULL,17.00,20.00,10.00,559.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(62,'Cucumber',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','WF-129-A1',0,18,0,1,0,2,1,0,2036,NULL,NULL,NULL,15.00,15.00,12.00,843.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(63,'Mixed Nuts',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','2L-106-A1',0,13,0,1,0,5,1,0,808,NULL,NULL,NULL,13.00,13.00,10.00,558.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(64,'Mixed Nuts',NULL,NULL,'published','[\"grocery\\/products\\/product-1.jpg\"]','2L-106-A1-A2',0,13,0,1,0,5,1,0,808,NULL,NULL,NULL,13.00,13.00,10.00,558.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(65,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','L8-122-A1',0,14,0,1,0,2,1,0,1033,NULL,NULL,NULL,18.00,14.00,16.00,880.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(66,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','L8-122-A1-A2',0,14,0,1,0,2,1,0,1033,NULL,NULL,NULL,18.00,14.00,16.00,880.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(67,'Green Tea Bags',NULL,NULL,'published','[\"grocery\\/products\\/product-4.jpg\"]','L8-122-A1-A3',0,14,0,1,0,2,1,0,1033,NULL,NULL,NULL,18.00,14.00,16.00,880.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(68,'Organic Baby Kale',NULL,NULL,'published','[\"grocery\\/products\\/product-7.jpg\"]','QG-166-A1',0,11,0,1,0,5,1,0,2438,NULL,NULL,NULL,15.00,15.00,18.00,639.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(69,'Organic Baby Kale',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','QG-166-A1-A2',0,11,0,1,0,5,1,0,2438,NULL,NULL,NULL,15.00,15.00,18.00,639.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(70,'Salad Dressing',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','KG-166-A1',0,16,0,1,0,4,1,0,2327,NULL,NULL,NULL,12.00,15.00,20.00,600.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(71,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','AQ-137-A1',0,19,0,1,0,4,1,0,884,NULL,NULL,NULL,13.00,14.00,15.00,890.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(72,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-5.jpg\"]','AQ-137-A1-A2',0,19,0,1,0,4,1,0,884,NULL,NULL,NULL,13.00,14.00,15.00,890.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(73,'Sweet Corn',NULL,NULL,'published','[\"grocery\\/products\\/product-6.jpg\"]','AQ-137-A1-A3',0,19,0,1,0,4,1,0,884,NULL,NULL,NULL,13.00,14.00,15.00,890.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(74,'Whole Pineapple',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','D3-100-A1',0,18,0,1,0,4,1,0,2354,NULL,NULL,NULL,14.00,16.00,17.00,827.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(75,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-2.jpg\"]','NU-105-A1',0,13,0,1,0,2,1,0,990,NULL,NULL,NULL,10.00,13.00,16.00,523.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(76,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-3.jpg\"]','NU-105-A1-A2',0,13,0,1,0,2,1,0,990,NULL,NULL,NULL,10.00,13.00,16.00,523.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(77,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-8.jpg\"]','NU-105-A1-A3',0,13,0,1,0,2,1,0,990,NULL,NULL,NULL,10.00,13.00,16.00,523.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(78,'Cottage Cheese',NULL,NULL,'published','[\"grocery\\/products\\/product-9.jpg\"]','NU-105-A1-A4',0,13,0,1,0,2,1,0,990,NULL,NULL,NULL,10.00,13.00,16.00,523.00,NULL,0,'2024-04-26 03:17:16','2024-04-26 03:17:16','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
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
INSERT INTO `ec_reviews` VALUES (1,9,NULL,NULL,4,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\"]'),(2,3,NULL,NULL,1,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(3,4,NULL,NULL,19,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(4,4,NULL,NULL,24,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(5,9,NULL,NULL,20,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(6,6,NULL,NULL,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\"]'),(7,7,NULL,NULL,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(8,4,NULL,NULL,26,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(9,10,NULL,NULL,8,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(10,8,NULL,NULL,20,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(11,6,NULL,NULL,4,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(12,1,NULL,NULL,6,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(13,9,NULL,NULL,19,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(14,10,NULL,NULL,4,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(15,1,NULL,NULL,2,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(16,8,NULL,NULL,9,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(17,8,NULL,NULL,10,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(18,5,NULL,NULL,8,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-11.jpg\"]'),(19,8,NULL,NULL,4,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(20,1,NULL,NULL,15,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(21,5,NULL,NULL,6,2.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(22,1,NULL,NULL,21,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(23,2,NULL,NULL,12,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(24,5,NULL,NULL,20,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(25,6,NULL,NULL,20,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\"]'),(26,1,NULL,NULL,5,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(28,10,NULL,NULL,19,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(29,9,NULL,NULL,8,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(30,1,NULL,NULL,11,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(31,1,NULL,NULL,8,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(32,4,NULL,NULL,25,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(33,4,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(34,9,NULL,NULL,6,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\"]'),(35,1,NULL,NULL,18,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(36,3,NULL,NULL,16,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(37,8,NULL,NULL,11,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(38,1,NULL,NULL,29,1.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(39,1,NULL,NULL,4,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\"]'),(40,6,NULL,NULL,9,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(42,9,NULL,NULL,1,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-11.jpg\"]'),(43,10,NULL,NULL,26,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(44,5,NULL,NULL,30,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(45,2,NULL,NULL,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(46,1,NULL,NULL,26,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(47,4,NULL,NULL,10,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(48,5,NULL,NULL,24,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(49,5,NULL,NULL,12,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(50,9,NULL,NULL,22,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(51,2,NULL,NULL,10,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(52,2,NULL,NULL,9,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(53,7,NULL,NULL,30,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(54,9,NULL,NULL,30,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(55,4,NULL,NULL,1,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(58,2,NULL,NULL,1,3.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(59,3,NULL,NULL,19,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(60,7,NULL,NULL,17,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(61,7,NULL,NULL,4,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(62,7,NULL,NULL,13,3.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-10.jpg\"]'),(63,6,NULL,NULL,29,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(64,9,NULL,NULL,11,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(65,10,NULL,NULL,16,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(66,10,NULL,NULL,11,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(67,3,NULL,NULL,7,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(68,7,NULL,NULL,23,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(69,8,NULL,NULL,12,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(71,9,NULL,NULL,14,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(72,4,NULL,NULL,29,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(73,5,NULL,NULL,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(74,9,NULL,NULL,24,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(77,1,NULL,NULL,16,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(78,10,NULL,NULL,18,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(80,5,NULL,NULL,15,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(83,2,NULL,NULL,13,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(84,5,NULL,NULL,23,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(85,10,NULL,NULL,10,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(87,4,NULL,NULL,22,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(88,10,NULL,NULL,1,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(89,7,NULL,NULL,10,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(90,1,NULL,NULL,10,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(91,8,NULL,NULL,27,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(92,8,NULL,NULL,17,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-10.jpg\"]'),(93,7,NULL,NULL,15,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(94,3,NULL,NULL,28,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(95,7,NULL,NULL,12,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(96,10,NULL,NULL,15,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(98,4,NULL,NULL,3,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(100,7,NULL,NULL,20,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(101,4,NULL,NULL,28,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(102,8,NULL,NULL,15,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(103,4,NULL,NULL,12,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(104,6,NULL,NULL,2,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(105,2,NULL,NULL,22,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(106,10,NULL,NULL,12,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(107,7,NULL,NULL,26,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(108,2,NULL,NULL,20,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(109,4,NULL,NULL,5,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(110,3,NULL,NULL,26,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(112,5,NULL,NULL,25,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(113,3,NULL,NULL,14,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(114,1,NULL,NULL,9,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(115,8,NULL,NULL,21,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\"]'),(116,2,NULL,NULL,14,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(118,7,NULL,NULL,11,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(120,2,NULL,NULL,3,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(121,2,NULL,NULL,5,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(122,1,NULL,NULL,12,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(123,3,NULL,NULL,10,1.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(124,2,NULL,NULL,4,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(126,8,NULL,NULL,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(127,5,NULL,NULL,2,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\"]'),(129,10,NULL,NULL,23,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(132,4,NULL,NULL,18,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(134,9,NULL,NULL,25,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(135,9,NULL,NULL,27,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(136,9,NULL,NULL,10,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(137,1,NULL,NULL,13,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(140,1,NULL,NULL,17,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(141,10,NULL,NULL,24,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(143,3,NULL,NULL,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(144,1,NULL,NULL,23,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(145,6,NULL,NULL,25,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\"]'),(146,4,NULL,NULL,6,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(155,4,NULL,NULL,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(156,2,NULL,NULL,27,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(157,6,NULL,NULL,14,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(158,7,NULL,NULL,1,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(159,2,NULL,NULL,15,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(160,2,NULL,NULL,2,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(161,10,NULL,NULL,30,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(162,4,NULL,NULL,27,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\"]'),(163,5,NULL,NULL,19,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(165,1,NULL,NULL,20,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(167,6,NULL,NULL,12,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(168,5,NULL,NULL,16,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(169,3,NULL,NULL,21,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(170,9,NULL,NULL,21,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(172,10,NULL,NULL,2,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(174,7,NULL,NULL,14,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(176,7,NULL,NULL,18,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(178,2,NULL,NULL,16,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\"]'),(179,8,NULL,NULL,19,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\"]'),(180,2,NULL,NULL,8,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(183,5,NULL,NULL,9,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(184,6,NULL,NULL,21,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(185,1,NULL,NULL,22,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(186,1,NULL,NULL,27,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(187,7,NULL,NULL,28,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(191,5,NULL,NULL,1,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(194,1,NULL,NULL,19,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(195,3,NULL,NULL,30,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(196,2,NULL,NULL,24,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\"]'),(197,8,NULL,NULL,28,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(198,10,NULL,NULL,29,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(201,6,NULL,NULL,24,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(202,5,NULL,NULL,26,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(206,6,NULL,NULL,30,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(207,5,NULL,NULL,27,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(209,3,NULL,NULL,27,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(214,4,NULL,NULL,4,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(218,6,NULL,NULL,10,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(219,8,NULL,NULL,14,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(221,4,NULL,NULL,9,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(224,7,NULL,NULL,9,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(225,3,NULL,NULL,29,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(227,7,NULL,NULL,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(228,7,NULL,NULL,8,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\"]'),(231,10,NULL,NULL,9,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-10.jpg\"]'),(236,5,NULL,NULL,4,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(237,7,NULL,NULL,19,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(240,6,NULL,NULL,18,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\"]'),(241,6,NULL,NULL,3,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(242,10,NULL,NULL,6,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(243,6,NULL,NULL,8,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(244,3,NULL,NULL,24,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(246,1,NULL,NULL,1,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(248,2,NULL,NULL,18,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\"]'),(249,9,NULL,NULL,18,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(251,4,NULL,NULL,14,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(259,10,NULL,NULL,17,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(260,9,NULL,NULL,5,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(262,4,NULL,NULL,23,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(264,3,NULL,NULL,5,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(266,8,NULL,NULL,13,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(267,5,NULL,NULL,21,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(268,9,NULL,NULL,3,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\"]'),(273,6,NULL,NULL,15,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\"]'),(274,10,NULL,NULL,21,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(275,9,NULL,NULL,28,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(276,5,NULL,NULL,13,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(279,5,NULL,NULL,29,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(284,1,NULL,NULL,25,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(286,6,NULL,NULL,6,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(292,2,NULL,NULL,29,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\"]'),(293,3,NULL,NULL,25,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(294,1,NULL,NULL,28,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(295,3,NULL,NULL,13,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(298,3,NULL,NULL,9,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(301,7,NULL,NULL,22,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\"]'),(306,8,NULL,NULL,26,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(307,6,NULL,NULL,26,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(309,3,NULL,NULL,23,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(313,6,NULL,NULL,11,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(314,7,NULL,NULL,7,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(321,4,NULL,NULL,30,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-9.jpg\"]'),(322,7,NULL,NULL,3,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(323,4,NULL,NULL,8,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(329,5,NULL,NULL,22,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(333,7,NULL,NULL,24,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(335,2,NULL,NULL,28,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\"]'),(336,9,NULL,NULL,29,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(338,7,NULL,NULL,27,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(340,5,NULL,NULL,10,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(341,9,NULL,NULL,23,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\"]'),(345,10,NULL,NULL,22,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(351,8,NULL,NULL,24,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(353,3,NULL,NULL,12,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(359,6,NULL,NULL,28,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(366,8,NULL,NULL,18,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(367,10,NULL,NULL,20,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(378,1,NULL,NULL,7,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(384,10,NULL,NULL,13,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(386,5,NULL,NULL,5,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(392,6,NULL,NULL,16,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(407,10,NULL,NULL,28,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(411,5,NULL,NULL,17,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(413,2,NULL,NULL,21,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(416,2,NULL,NULL,25,3.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(417,8,NULL,NULL,30,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(419,8,NULL,NULL,16,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\"]'),(431,4,NULL,NULL,11,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(433,10,NULL,NULL,25,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(434,7,NULL,NULL,29,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(437,9,NULL,NULL,7,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(439,6,NULL,NULL,23,5.00,'Clean & perfect source code','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(444,3,NULL,NULL,3,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(450,4,NULL,NULL,2,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(452,1,NULL,NULL,14,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(453,6,NULL,NULL,13,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(456,5,NULL,NULL,14,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(457,10,NULL,NULL,5,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(464,3,NULL,NULL,6,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(465,5,NULL,NULL,11,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\"]'),(466,10,NULL,NULL,27,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(467,4,NULL,NULL,7,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(471,10,NULL,NULL,14,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(474,8,NULL,NULL,3,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(479,3,NULL,NULL,17,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-10.jpg\"]'),(480,6,NULL,NULL,22,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(483,8,NULL,NULL,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(490,3,NULL,NULL,18,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(494,2,NULL,NULL,6,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(509,9,NULL,NULL,2,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(532,3,NULL,NULL,8,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(535,5,NULL,NULL,3,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-10.jpg\"]'),(557,7,NULL,NULL,6,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(573,9,NULL,NULL,15,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(574,8,NULL,NULL,23,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(575,6,NULL,NULL,1,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(584,2,NULL,NULL,7,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(591,6,NULL,NULL,7,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(599,2,NULL,NULL,23,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(602,10,NULL,NULL,7,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\"]'),(611,4,NULL,NULL,16,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(613,10,NULL,NULL,3,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(615,8,NULL,NULL,7,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(616,6,NULL,NULL,27,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-11.jpg\"]'),(622,4,NULL,NULL,13,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(630,4,NULL,NULL,20,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(641,2,NULL,NULL,26,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(649,2,NULL,NULL,30,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(659,7,NULL,NULL,16,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(675,8,NULL,NULL,5,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(678,9,NULL,NULL,9,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(680,8,NULL,NULL,2,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(682,7,NULL,NULL,2,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\"]'),(714,9,NULL,NULL,16,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(723,1,NULL,NULL,30,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(727,9,NULL,NULL,26,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(729,9,NULL,NULL,12,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]'),(750,8,NULL,NULL,29,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(760,3,NULL,NULL,4,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-10.jpg\"]'),(764,4,NULL,NULL,21,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(777,3,NULL,NULL,20,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(811,3,NULL,NULL,15,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-8.jpg\"]'),(812,9,NULL,NULL,17,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(903,1,NULL,NULL,3,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(922,8,NULL,NULL,25,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(926,9,NULL,NULL,13,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(943,6,NULL,NULL,19,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(960,7,NULL,NULL,25,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(995,5,NULL,NULL,28,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:17:19','2024-04-26 03:17:19','[\"grocery\\/products\\/product-3.jpg\"]');
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-04-26 03:17:05','2024-04-26 03:17:05');
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-04-26 03:17:05','2024-04-26 03:17:05');
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
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-04-26 03:17:08','2024-04-26 03:17:08');
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
INSERT INTO `ec_tax_products` VALUES (1,2),(1,4),(1,10),(1,11),(1,17),(1,19),(1,25),(1,28),(2,6),(2,7),(2,9),(2,12),(2,14),(2,18),(2,20),(2,21),(2,22),(2,24),(2,29),(3,1),(3,3),(3,5),(3,8),(3,13),(3,15),(3,16),(3,23),(3,26),(3,27),(3,30);
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(2,'None',0.000000,2,'published','2024-04-26 03:17:05','2024-04-26 03:17:05'),(3,'Import Tax',15.000000,3,'published','2024-04-26 03:17:05','2024-04-26 03:17:05');
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
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(2,'PAYMENT',1,'published','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL);
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-04-26 03:17:01','2024-04-26 03:17:01'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-04-26 03:17:01','2024-04-26 03:17:01');
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
INSERT INTO `galleries` VALUES (1,'Perfect','I suppose?\' \'Yes,\' said Alice, rather doubtfully, as she went to school in the way down one side and then the puppy made another rush at the stick, and held out its arms and frowning at the number.',1,0,'main/galleries/1.jpg',1,'published','2024-04-26 03:17:17','2024-04-26 03:17:17'),(2,'New Day','When the procession came opposite to Alice, and she went on to the fifth bend, I think?\' \'I had NOT!\' cried the Mock Turtle. \'Very much indeed,\' said Alice. \'Oh, don\'t bother ME,\' said the Queen.',1,0,'main/galleries/2.jpg',1,'published','2024-04-26 03:17:17','2024-04-26 03:17:17'),(3,'Happy Day','I don\'t know,\' he went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she remembered that she was losing her temper. \'Are you content now?\' said the Gryphon, sighing in.',1,0,'main/galleries/3.jpg',1,'published','2024-04-26 03:17:17','2024-04-26 03:17:17'),(4,'Nature','WAS a narrow escape!\' said Alice, feeling very curious sensation, which puzzled her very much confused, \'I don\'t know what \"it\" means well enough, when I breathe\"!\' \'It IS the fun?\' said Alice.',1,0,'main/galleries/4.jpg',1,'published','2024-04-26 03:17:17','2024-04-26 03:17:17'),(5,'Morning','White Rabbit blew three blasts on the song, \'I\'d have said to herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard the Rabbit came up to her full size by this time). \'Don\'t grunt,\'.',1,0,'main/galleries/5.jpg',1,'published','2024-04-26 03:17:17','2024-04-26 03:17:17');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and a long way back, and barking hoarsely all the while, and fighting for the fan she was nine feet high, and she.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Five! Don\'t go splashing paint over me like that!\' He got behind Alice as he spoke. \'A cat may look at the jury-box, or they would die. \'The trial cannot proceed,\' said the Duchess, \'and that\'s the.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice did not venture to go down the hall. After a while she was looking for it, you may stand down,\' continued the King. The next witness was the BEST butter, you know.\' \'Not the same year for such.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:17:17','2024-04-26 03:17:17'),(2,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and a long way back, and barking hoarsely all the while, and fighting for the fan she was nine feet high, and she.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Five! Don\'t go splashing paint over me like that!\' He got behind Alice as he spoke. \'A cat may look at the jury-box, or they would die. \'The trial cannot proceed,\' said the Duchess, \'and that\'s the.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice did not venture to go down the hall. After a while she was looking for it, you may stand down,\' continued the King. The next witness was the BEST butter, you know.\' \'Not the same year for such.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:17:17','2024-04-26 03:17:17'),(3,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and a long way back, and barking hoarsely all the while, and fighting for the fan she was nine feet high, and she.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Five! Don\'t go splashing paint over me like that!\' He got behind Alice as he spoke. \'A cat may look at the jury-box, or they would die. \'The trial cannot proceed,\' said the Duchess, \'and that\'s the.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice did not venture to go down the hall. After a while she was looking for it, you may stand down,\' continued the King. The next witness was the BEST butter, you know.\' \'Not the same year for such.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:17:17','2024-04-26 03:17:17'),(4,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and a long way back, and barking hoarsely all the while, and fighting for the fan she was nine feet high, and she.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Five! Don\'t go splashing paint over me like that!\' He got behind Alice as he spoke. \'A cat may look at the jury-box, or they would die. \'The trial cannot proceed,\' said the Duchess, \'and that\'s the.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice did not venture to go down the hall. After a while she was looking for it, you may stand down,\' continued the King. The next witness was the BEST butter, you know.\' \'Not the same year for such.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:17:17','2024-04-26 03:17:17'),(5,'[{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and a long way back, and barking hoarsely all the while, and fighting for the fan she was nine feet high, and she.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Five! Don\'t go splashing paint over me like that!\' He got behind Alice as he spoke. \'A cat may look at the jury-box, or they would die. \'The trial cannot proceed,\' said the Duchess, \'and that\'s the.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice did not venture to go down the hall. After a while she was looking for it, you may stand down,\' continued the King. The next witness was the BEST butter, you know.\' \'Not the same year for such.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:17:17','2024-04-26 03:17:17');
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
INSERT INTO `language_meta` VALUES (1,'en_US','36df296c3b83137241c65885f5f68abb',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','135d45f0c7b2d0a81d0716b9cf13d246',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','810a071c238c6394c5bc284a11a36143',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','757c937c46e603a241f9e247ffb90ede',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','8a88c2abbb1315ce34ab3d674634f039',3,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-04-26 03:16:58','2024-04-26 03:16:58',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(5,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(6,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(7,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(8,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(9,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(10,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(11,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(12,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(13,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(14,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(15,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(16,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(27,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(28,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(29,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(30,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(31,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(32,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(33,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(34,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(35,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(36,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(37,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(38,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(39,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(40,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(41,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(42,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(43,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(44,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(45,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(46,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(47,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(48,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(49,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(50,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(51,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(52,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(53,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(54,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(55,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(56,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(57,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(58,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(59,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(60,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(61,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(62,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-04-26 03:17:06','2024-04-26 03:17:06',NULL),(63,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-04-26 03:17:06','2024-04-26 03:17:06',NULL),(64,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-04-26 03:17:06','2024-04-26 03:17:06',NULL),(65,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-04-26 03:17:06','2024-04-26 03:17:06',NULL),(66,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(67,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(68,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(69,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(70,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(71,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(72,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(73,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(74,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(75,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(76,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(77,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(78,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(79,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(80,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(81,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(82,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(83,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(84,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(85,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(86,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(87,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-04-26 03:17:09','2024-04-26 03:17:09',NULL),(88,0,'shape-1','shape-1',9,'image/png',1299,'grocery/sliders/shape-1.png','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(89,0,'shape-2','shape-2',9,'image/png',1379,'grocery/sliders/shape-2.png','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(90,0,'shape-3','shape-3',9,'image/png',1972,'grocery/sliders/shape-3.png','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(91,0,'shape-4','shape-4',9,'image/png',2115,'grocery/sliders/shape-4.png','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(92,0,'slider-1','slider-1',9,'image/png',10852,'grocery/sliders/slider-1.png','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(93,0,'1','1',10,'image/jpeg',4294,'grocery/product-categories/1.jpg','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(94,0,'2','2',10,'image/jpeg',4294,'grocery/product-categories/2.jpg','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(95,0,'3','3',10,'image/jpeg',4294,'grocery/product-categories/3.jpg','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(96,0,'4','4',10,'image/jpeg',4294,'grocery/product-categories/4.jpg','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(97,0,'5','5',10,'image/jpeg',4294,'grocery/product-categories/5.jpg','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(98,0,'6','6',10,'image/jpeg',4294,'grocery/product-categories/6.jpg','[]','2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(99,0,'product-1','product-1',11,'image/jpeg',9803,'grocery/products/product-1.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(100,0,'product-10','product-10',11,'image/jpeg',9803,'grocery/products/product-10.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(101,0,'product-11','product-11',11,'image/jpeg',9803,'grocery/products/product-11.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(102,0,'product-2','product-2',11,'image/jpeg',9803,'grocery/products/product-2.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(103,0,'product-3','product-3',11,'image/jpeg',9803,'grocery/products/product-3.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(104,0,'product-4','product-4',11,'image/jpeg',9803,'grocery/products/product-4.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(105,0,'product-5','product-5',11,'image/jpeg',9803,'grocery/products/product-5.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(106,0,'product-6','product-6',11,'image/jpeg',9803,'grocery/products/product-6.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(107,0,'product-7','product-7',11,'image/jpeg',9803,'grocery/products/product-7.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(108,0,'product-8','product-8',11,'image/jpeg',9803,'grocery/products/product-8.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(109,0,'product-9','product-9',11,'image/jpeg',9803,'grocery/products/product-9.jpg','[]','2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(110,0,'1','1',12,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(111,0,'2','2',12,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(112,0,'slider-1','slider-1',12,'image/png',8207,'main/banners/slider-1.png','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(113,0,'slider-2','slider-2',12,'image/png',8497,'main/banners/slider-2.png','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(114,0,'slider-3','slider-3',12,'image/png',6239,'main/banners/slider-3.png','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(115,0,'1','1',13,'image/jpeg',5896,'grocery/banners/1.jpg','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(116,0,'2','2',13,'image/png',19187,'grocery/banners/2.png','[]','2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(117,0,'3','3',13,'image/png',18807,'grocery/banners/3.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(118,0,'1','1',14,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(119,0,'2','2',14,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(120,0,'3','3',14,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(121,0,'4','4',14,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(122,0,'5','5',14,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(123,0,'icon-1','icon-1',15,'image/png',4469,'main/contact/icon-1.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(124,0,'icon-2','icon-2',15,'image/png',5977,'main/contact/icon-2.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(125,0,'icon-3','icon-3',15,'image/png',6082,'main/contact/icon-3.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(126,0,'deal-shape-1','deal-shape-1',16,'image/png',14480,'grocery/shapes/deal-shape-1.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(127,0,'deal-shape-2','deal-shape-2',16,'image/png',126431,'grocery/shapes/deal-shape-2.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(128,0,'deal-shape-3','deal-shape-3',16,'image/png',16670,'grocery/shapes/deal-shape-3.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(129,0,'deal-shape-4','deal-shape-4',16,'image/png',128346,'grocery/shapes/deal-shape-4.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(130,0,'deal-shape-5','deal-shape-5',16,'image/png',4820,'grocery/shapes/deal-shape-5.png','[]','2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(131,0,'deal-shape-6','deal-shape-6',16,'image/png',23321,'grocery/shapes/deal-shape-6.png','[]','2024-04-26 03:17:18','2024-04-26 03:17:18',NULL),(132,0,'deal-shape-7','deal-shape-7',16,'image/png',8935,'grocery/shapes/deal-shape-7.png','[]','2024-04-26 03:17:18','2024-04-26 03:17:18',NULL),(133,0,'line','line',17,'image/png',6152,'main/shapes/line.png','[]','2024-04-26 03:17:18','2024-04-26 03:17:18',NULL),(134,0,'quote','quote',17,'image/png',595,'main/shapes/quote.png','[]','2024-04-26 03:17:18','2024-04-26 03:17:18',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-04-26 03:16:58','2024-04-26 03:16:58',NULL),(2,0,'general',NULL,'general',1,'2024-04-26 03:16:58','2024-04-26 03:16:58',NULL),(3,0,'users',NULL,'users',1,'2024-04-26 03:16:59','2024-04-26 03:16:59',NULL),(4,0,'brands',NULL,'brands',1,'2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(5,0,'customers',NULL,'customers',1,'2024-04-26 03:17:01','2024-04-26 03:17:01',NULL),(6,0,'blog',NULL,'blog',1,'2024-04-26 03:17:05','2024-04-26 03:17:05',NULL),(7,0,'stores',NULL,'stores',1,'2024-04-26 03:17:08','2024-04-26 03:17:08',NULL),(8,0,'grocery',NULL,'grocery',0,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL),(11,0,'products',NULL,'products',8,'2024-04-26 03:17:13','2024-04-26 03:17:13',NULL),(12,0,'banners',NULL,'banners',1,'2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(13,0,'banners',NULL,'banners',8,'2024-04-26 03:17:16','2024-04-26 03:17:16',NULL),(14,0,'galleries',NULL,'galleries',1,'2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(15,0,'contact',NULL,'contact',1,'2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(16,0,'shapes',NULL,'shapes',8,'2024-04-26 03:17:17','2024-04-26 03:17:17',NULL),(17,0,'shapes',NULL,'shapes',1,'2024-04-26 03:17:18','2024-04-26 03:17:18',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-26 03:17:18','2024-04-26 03:17:18');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(11,1,7,NULL,NULL,'/products/almond-milk',NULL,0,'Product Detail',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(23,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(26,1,23,NULL,NULL,'/blog/fully-embrace-the-return-of-90s-fashion',NULL,0,'Blog Detail',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(27,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(29,2,0,9,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(34,3,0,7,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(35,3,0,8,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(36,3,0,6,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18'),(38,3,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-04-26 03:17:18','2024-04-26 03:17:18');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(2,'My Account','my-account','published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(3,'Information','information','published','2024-04-26 03:17:18','2024-04-26 03:17:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:17:12','2024-04-26 03:17:12'),(2,'faq_ids','[[2,3,7,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(3,'faq_ids','[[1,2,5,6,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(4,'faq_ids','[[2,5,6,7,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(5,'faq_ids','[[2,3,5,6,7]]',4,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(6,'faq_ids','[[1,3,5,8,9]]',5,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(7,'faq_ids','[[1,2,3,6,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(8,'faq_ids','[[2,3,6,7,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(9,'faq_ids','[[1,4,6,7,8]]',8,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(10,'faq_ids','[[1,3,5,7,8]]',9,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(11,'faq_ids','[[2,5,7,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(12,'faq_ids','[[1,2,5,7,8]]',11,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(13,'faq_ids','[[4,5,6,8,9]]',12,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:14','2024-04-26 03:17:14'),(14,'faq_ids','[[2,3,6,9,10]]',13,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(15,'faq_ids','[[2,4,5,6,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(16,'faq_ids','[[1,3,7,8,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(17,'faq_ids','[[2,3,4,6,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(18,'faq_ids','[[4,5,7,8,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(19,'faq_ids','[[1,3,8,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(20,'faq_ids','[[2,5,6,8,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(21,'faq_ids','[[2,3,5,7,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(22,'faq_ids','[[1,2,4,6,8]]',21,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(23,'faq_ids','[[1,4,5,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(24,'faq_ids','[[1,4,5,6,7]]',23,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(25,'faq_ids','[[1,2,4,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(26,'faq_ids','[[3,4,5,7,8]]',25,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(27,'faq_ids','[[3,6,8,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(28,'faq_ids','[[1,2,4,7,8]]',27,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(29,'faq_ids','[[3,4,5,6,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(30,'faq_ids','[[1,2,6,7,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(31,'faq_ids','[[3,5,7,8,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:17:15','2024-04-26 03:17:15'),(32,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:17:17','2024-04-26 03:17:17'),(33,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:17:17','2024-04-26 03:17:17'),(34,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-04-26 03:17:17','2024-04-26 03:17:17'),(35,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:17:17','2024-04-26 03:17:17'),(36,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:17:17','2024-04-26 03:17:17'),(37,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-04-26 03:17:17','2024-04-26 03:17:17'),(38,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-04-26 03:17:18','2024-04-26 03:17:18'),(39,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-04-26 03:17:18','2024-04-26 03:17:18');
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
INSERT INTO `mp_stores` VALUES (1,'GoPro','senger.alberta@example.net','+15856006772','65230 Cremin Passage','BZ','California','Port Mertie',3,'main/stores/1.png','main/stores/cover-2.png','Consequuntur qui laboriosam temporibus facilis. Aut suscipit quod cupiditate sit. Et accusamus pariatur rerum est eos. Voluptatem doloremque exercitationem dolorum est. Culpa at assumenda ducimus dolorum est.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:11','2024-04-26 03:17:11',NULL,NULL),(2,'Global Office','koch.jarret@example.org','+13145880598','57182 Gerhold Way Suite 762','CZ','Oklahoma','New Gastonville',5,'main/stores/2.png','main/stores/cover-3.png','Enim voluptas maxime velit maiores. Esse soluta voluptatem odit voluptatum qui et. Sed quas sed aut hic qui. Sit eos temporibus pariatur. Explicabo et dicta magni. Vel tempore mollitia vel aut saepe animi. Omnis ut eligendi labore dolorem asperiores neque doloremque. Repudiandae non eos corporis et id.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:11','2024-04-26 03:17:11',NULL,NULL),(3,'Young Shop','colten.gibson@example.com','+15104782786','4390 Odell Extension','GW','Arizona','Mantemouth',4,'main/stores/3.png','main/stores/cover-1.png','Alias impedit beatae dolor ratione occaecati magni quibusdam sit. In quam enim nemo cupiditate iure corporis. Tempora id quidem culpa ut voluptas. Sed nemo tempora nihil qui quisquam ipsa. Non molestiae fugit quod dicta ut natus. Voluptas et ut ullam velit dolorum maiores molestiae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:11','2024-04-26 03:17:11',NULL,NULL),(4,'Global Store','bernice.bergnaum@example.org','+12546929622','94851 Hermiston Brooks','ID','Kansas','Johnsonstad',3,'main/stores/4.png','main/stores/cover-5.png','Ut officiis dolore quas quia. Deserunt dolor inventore quae quasi at. Aut enim nesciunt ea totam non non. Officia voluptatem eum reiciendis cupiditate voluptatem. Delectus ratione qui dolores. Consequatur non ut quia similique fugiat adipisci totam. Laboriosam vel quas nostrum hic doloremque.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:11','2024-04-26 03:17:11',NULL,NULL),(5,'Robert’s Store','whitney18@example.com','+12537004467','87295 Kertzmann Neck','CO','Wyoming','South Justiceburgh',2,'main/stores/5.png','main/stores/cover-3.png','Quo eum voluptas ut ea vel saepe. Excepturi quaerat aut eaque repellat labore. Et illo veniam est dolorum consequatur. Dolores fugit iusto odio impedit veritatis commodi possimus exercitationem. Perferendis dolor velit quia et ratione corporis. Omnis nulla error praesentium dolor ea eos ad. Nihil tempore et culpa non sint nam est.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL,NULL),(6,'Stouffer','lindsay54@example.com','+18204701012','2118 Labadie River','SS','Michigan','North Ana',4,'main/stores/6.png','main/stores/cover-5.png','Tenetur nisi corrupti et rerum. Omnis sint aspernatur laudantium aut in eum. Labore alias magnam aspernatur maxime vel dolores. Nihil quis recusandae commodi accusantium consequatur. Possimus qui est qui quam similique earum. Et eius voluptatibus omnis maiores aut officiis.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL,NULL),(7,'StarKist','gulgowski.stuart@example.org','+18209020177','34467 Earnest Rest','IT','Colorado','Alanisstad',8,'main/stores/7.png','main/stores/cover-5.png','Eligendi hic illum nobis voluptas. Accusamus quo blanditiis at perspiciatis ex omnis. Tempora voluptas eveniet ab vel. Sint culpa fugit quas quis rem quo iusto. Magnam est aut et est odio quas officiis. Placeat aut ratione ut corrupti non. Necessitatibus sequi omnis et qui. Quis eaque quia id vel.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL,NULL),(8,'Old El Paso','malika91@example.org','+13605082837','2075 Nicolette Pike Suite 328','IR','Iowa','Port Randalmouth',7,'main/stores/8.png','main/stores/cover-3.png','Sit quo et voluptatem repudiandae aut repudiandae. Itaque at vitae molestiae dolorem voluptas. Vel quisquam unde molestias voluptatem. Vero iste deserunt facilis error placeat quas. Dolorem deserunt qui nostrum rerum voluptatem aut odit. Est et ut ut autem. Sapiente ut dolorem tenetur explicabo nihil. Recusandae omnis blanditiis ad nulla aut est. Id ut sed et rerum et.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:17:12','2024-04-26 03:17:12',NULL,NULL);
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
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$wwXykBxBpzzRvaxhroekQeiuZ7uUBtw24y4slc6TlzIweyUo/3/T.','{\"name\":\"Vita Haley\",\"number\":\"+12569802193\",\"full_name\":\"Prof. Tremaine Grimes\",\"description\":\"Webster Jakubowski\"}','2024-04-26 03:17:10','2024-04-26 03:17:10','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$x8obdoi9Y9Jr0ftwjmjmt.Jy0hh91slsC6M/OLwXI7E8R5VgowxJu','{\"name\":\"Crystel Satterfield\",\"number\":\"+16263107068\",\"full_name\":\"Shaina Mills\",\"description\":\"Miss Susie Pagac\"}','2024-04-26 03:17:10','2024-04-26 03:17:10','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$qVjiDpXd9B1cikTLWgtDx.7VFn0GvM2rs.MKOK6/LrmXi6wGBzc.C','{\"name\":\"Arch Bins\",\"number\":\"+19382253749\",\"full_name\":\"Hadley Herzog\",\"description\":\"Holly Huel\"}','2024-04-26 03:17:10','2024-04-26 03:17:10','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$vbmVLdzI2QB.JHUe1Dc1a.o5a0MJqQ.U55eXonUUls51tufV9yZWi','{\"name\":\"Marcel Zieme\",\"number\":\"+18705953405\",\"full_name\":\"Eleonore Leuschke PhD\",\"description\":\"Jarod Tremblay\"}','2024-04-26 03:17:10','2024-04-26 03:17:10','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$O5Rk7PsEvZ1PIcfAOT0wUu6pMuvJJnExhlsQ/cXtLgsMieH2j53Vu','{\"name\":\"Ms. Rachael Bins\",\"number\":\"+18325689505\",\"full_name\":\"Mckenna Boyer\",\"description\":\"Derek Veum\"}','2024-04-26 03:17:11','2024-04-26 03:17:11','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$H1JsXDV8JxEJ9xGAs02FYOFQ/3cS2uLZoXInanOY82xfA5Y7YE.t2','{\"name\":\"Victoria Koepp\",\"number\":\"+19808593890\",\"full_name\":\"Vinnie Bode\",\"description\":\"Dr. Fletcher Torphy MD\"}','2024-04-26 03:17:11','2024-04-26 03:17:11','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$4ynxqfCUJR9ESKWB9vaRlesJDdqgJyehitFeYHx68EmtN3nJZ2sb2','{\"name\":\"Miss Gwen Auer\",\"number\":\"+13166152324\",\"full_name\":\"Trenton Bogisich\",\"description\":\"Yasmin Littel\"}','2024-04-26 03:17:11','2024-04-26 03:17:11','bank_transfer',NULL);
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
INSERT INTO `pages` VALUES (1,'Home','[simple-slider customize_font_family_of_description=\"1\" font_family_of_description=\"Charm\" style=\"5\" key=\"home-slider\" shape_1=\"grocery/sliders/shape-1.png\" shape_2=\"grocery/sliders/shape-2.png\" shape_3=\"grocery/sliders/shape-3.png\" shape_4=\"grocery/sliders/shape-4.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ecommerce-categories category_ids=\"1,5,9,13,14,18\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" enable_lazy_loading=\"yes\"][/ecommerce-categories][ecommerce-product-groups style=\"tabs\" title=\"Trending Products\" subtitle=\"All Product Shop\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-flash-sale style=\"2\" title=\"Grab the best Offer Of this Week!\" subtitle=\"Best Deals of the week!\" flash_sale_id=\"1\" limit=\"3\" background_image=\"grocery/banners/3.png\" enable_lazy_loading=\"yes\"][/ecommerce-flash-sale]<p> </p>[ecommerce-product-groups style=\"columns\" tabs=\"trending,top-rated\" limit=\"3\" ads=\"GA3K1VZWNMPF\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][testimonials style=\"3\" title=\"Our Happy Customers\" subtitle=\"Customer Reviews\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][ecommerce-products style=\"slider\" title=\"Bestsellers of the week\" subtitle=\" More to Discover\" category_ids=\"5\" limit=\"5\" with_sidebar=\"on\" ads_ids=\"3,4\" enable_lazy_loading=\"yes\"][/ecommerce-products][site-features style=\"4\" quantity=\"4\" title_1=\"Flexible Delivery\" icon_1=\"ti ti-truck-delivery\" title_2=\"100% Money Back\" icon_2=\"ti ti-currency-dollar\" title_3=\"Secure Payment\" icon_3=\"ti ti-credit-card\" title_4=\"24 Hour Support\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][app-downloads title=\"Get the app & get Your Groceries from home\" google_label=\"Google Play\" google_icon=\"ti ti-brand-google-play\" google_url=\"https://play.google.com/\" apple_label=\"Apple Store\" apple_icon=\"ti ti-brand-apple-filled\" apple_url=\"https://apps.apple.com/\" screenshot=\"main/general/cta-thumb-1.jpg\" shape_image_left=\"main/general/cta-shape-1.png\" shape_image_right=\"main/general/cta-shape-2.png\" enable_lazy_loading=\"yes\"][/app-downloads]',1,NULL,'full-width',NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(2,'Product Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories category_ids=\"1,5,9,13,14,18\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(4,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(5,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(7,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(8,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18'),(9,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:17:18','2024-04-26 03:17:18');
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
INSERT INTO `post_categories` VALUES (1,1),(3,1),(6,2),(4,2),(2,3),(6,3),(3,4),(4,4),(6,5),(5,5),(2,6),(5,7),(2,7),(5,8),(3,9),(1,9),(4,10),(1,10),(5,11),(6,11),(5,12),(3,12),(4,13),(3,13),(1,14),(5,14),(1,15),(3,15),(3,16),(5,16),(2,17),(3,17),(4,18),(6,18);
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
INSERT INTO `post_tags` VALUES (6,1),(8,1),(5,1),(5,2),(8,2),(7,2),(2,3),(3,3),(1,3),(8,4),(2,4),(4,5),(7,5),(1,6),(6,6),(1,7),(7,7),(8,7),(5,8),(1,8),(6,9),(7,10),(5,10),(6,10),(1,11),(4,11),(8,11),(8,12),(7,12),(6,12),(6,13),(5,13),(4,13),(1,14),(7,14),(5,14),(6,15),(4,15),(1,15),(7,16),(8,16),(2,16),(1,17),(7,17),(8,17),(5,18),(4,18),(2,18);
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','How are you thinking of?\' \'I beg pardon, your Majesty,\' said the Duchess, who seemed to think that there ought! And when I sleep\" is the capital of Paris, and Paris is the use of repeating all that.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',1921,NULL,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Dinn may be,\' said the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the poor animal\'s feelings. \'I quite forgot how to get in at the other, and growing sometimes taller and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',458,NULL,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(3,'The Top 2020 Handbag Trends to Know','Lory positively refused to tell its age, there was nothing so VERY nearly at the top of her ever getting out of sight before the trial\'s over!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',832,NULL,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(4,'How to Match the Color of Your Handbag With an Outfit','QUITE as much use in saying anything more till the Pigeon in a tone of great relief. \'Call the first question, you know.\' It was, no doubt: only Alice did not at all like the look of things at all.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',1449,NULL,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(5,'How to Care for Leather Bags','And so she went round the hall, but they began solemnly dancing round and look up and went to school in the distance, sitting sad and lonely on a bough of a bottle. They all sat down again into its.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',2399,NULL,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said the Mouse, who seemed ready to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the looking-glass. There was a little.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',1354,NULL,'2024-04-26 03:17:06','2024-04-26 03:17:06'),(7,'Essential Qualities of Highly Successful Music','This seemed to be no use in the beautiful garden, among the trees, a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at each other for some time in.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',2413,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(8,'9 Things I Love About Shaving My Head','I wish you could see it written down: but I grow up, I\'ll write one--but I\'m grown up now,\' she said, as politely as she could do, lying down on one knee. \'I\'m a poor man,\' the Hatter went on, \'you.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',272,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(9,'Why Teamwork Really Makes The Dream Work','I shall be punished for it to half-past one as long as there was no \'One, two, three, and away,\' but they began running about in all their simple sorrows, and find a pleasure in all directions.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',1150,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(10,'The World Caters to Average People','Dormouse; \'VERY ill.\' Alice tried to say anything. \'Why,\' said the Lory, as soon as it can be,\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t remember half of fright and half believed herself in.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-8.jpg',788,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(11,'The litigants on the screen are not actors','A bright idea came into her head. \'If I eat or drink something or other; but the Hatter and the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',748,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(12,'Hiring the Right Sales Team at the Right Time','King. \'Then it ought to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she went down to them, and then quietly marched off after the others. \'We must burn the house down!\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',1582,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(13,'Fully Embrace the Return of 90s fashion','Alice noticed with some curiosity. \'What a curious dream!\' said Alice, a good deal frightened by this time?\' she said this, she noticed a curious plan!\' exclaimed Alice. \'That\'s very curious!\' she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-8.jpg',2183,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(14,'Exploring the English Countryside','In another moment that it led into the court, by the way, was the Cat went on, taking first one side and then turned to the three gardeners, oblong and flat, with their heads!\' and the moment she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',1923,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(15,'Here’s the First Valentino’s New Makeup Collection','The three soldiers wandered about for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up closer to Alice\'s side as she went round the neck of the sea.\' \'I.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',956,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(16,'Follow Your own Design process, whatever gets','WOULD twist itself round and round the thistle again; then the other, and making faces at him as he came, \'Oh! the Duchess, who seemed too much overcome to do it.\' (And, as you go on? It\'s by far.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1424,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(17,'Freelancer Days 2024, What’s new?','Besides, SHE\'S she, and I\'m sure _I_ shan\'t be beheaded!\' said Alice, and sighing. \'It IS a long sleep you\'ve had!\' \'Oh, I\'ve had such a wretched height to rest her chin upon Alice\'s shoulder, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',849,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07'),(18,'Quality Foods Requirments For Every Human Body’s','I will just explain to you to sit down without being seen, when she went out, but it is.\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you couldn\'t cut off a little timidly: \'but.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',448,NULL,'2024-04-26 03:17:07','2024-04-26 03:17:07');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-26 03:17:00','2024-04-26 03:17:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','bacbcc0d347fbc15450863a5a323eb2b',NULL,'2024-04-26 03:17:18'),(2,'api_enabled','0',NULL,'2024-04-26 03:17:18'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-04-26 03:17:18'),(6,'theme','shofy-grocery',NULL,'2024-04-26 03:17:18'),(7,'show_admin_bar','1',NULL,'2024-04-26 03:17:18'),(8,'payment_cod_status','1',NULL,'2024-04-26 03:17:18'),(9,'payment_bank_transfer_status','1',NULL,'2024-04-26 03:17:18'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-04-26 03:17:18'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-04-26 03:17:18'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-04-26 03:17:18'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-04-26 03:17:18'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-04-26 03:17:18'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-04-26 03:17:18'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-04-26 03:17:18'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-04-26 03:17:18'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-04-26 03:17:18'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-04-26 03:17:18'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-04-26 03:17:18'),(21,'announcement_lazy_loading','1',NULL,'2024-04-26 03:17:18'),(22,'language_hide_default','1',NULL,'2024-04-26 03:17:18'),(23,'language_switcher_display','dropdown',NULL,'2024-04-26 03:17:18'),(24,'language_display','all',NULL,'2024-04-26 03:17:18'),(25,'language_hide_languages','[]',NULL,'2024-04-26 03:17:18'),(26,'ecommerce_store_name','Shofy',NULL,'2024-04-26 03:17:18'),(27,'ecommerce_store_phone','1800979769',NULL,'2024-04-26 03:17:18'),(28,'ecommerce_store_address','502 New Street',NULL,'2024-04-26 03:17:18'),(29,'ecommerce_store_state','Brighton VIC',NULL,'2024-04-26 03:17:18'),(30,'ecommerce_store_city','Brighton VIC',NULL,'2024-04-26 03:17:18'),(31,'ecommerce_store_country','AU',NULL,'2024-04-26 03:17:18'),(32,'announcement_max_width',NULL,NULL,'2024-04-26 03:17:18'),(33,'announcement_text_color','#010f1c',NULL,'2024-04-26 03:17:18'),(34,'announcement_background_color','transparent',NULL,'2024-04-26 03:17:18'),(35,'announcement_placement','theme',NULL,'2024-04-26 03:17:18'),(36,'announcement_text_alignment','start',NULL,'2024-04-26 03:17:18'),(37,'announcement_dismissible','0',NULL,'2024-04-26 03:17:18'),(38,'simple_slider_using_assets','0',NULL,'2024-04-26 03:17:18'),(39,'theme-shofy-grocery-site_name','Shofy',NULL,NULL),(40,'theme-shofy-grocery-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(41,'theme-shofy-grocery-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(42,'theme-shofy-grocery-copyright','© %Y All Rights Reserved.',NULL,NULL),(43,'theme-shofy-grocery-tp_primary_font','Jost',NULL,NULL),(44,'theme-shofy-grocery-primary_color','#678E61',NULL,NULL),(45,'theme-shofy-grocery-favicon','main/general/favicon.png',NULL,NULL),(46,'theme-shofy-grocery-logo','main/general/logo.png',NULL,NULL),(47,'theme-shofy-grocery-logo_light','main/general/logo-white.png',NULL,NULL),(48,'theme-shofy-grocery-header_style','5',NULL,NULL),(49,'theme-shofy-grocery-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(50,'theme-shofy-grocery-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(51,'theme-shofy-grocery-hotline','8 800 332 65-66',NULL,NULL),(52,'theme-shofy-grocery-email','contact@fartmart.co',NULL,NULL),(53,'theme-shofy-grocery-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(54,'theme-shofy-grocery-homepage_id','1',NULL,NULL),(55,'theme-shofy-grocery-blog_page_id','4',NULL,NULL),(56,'theme-shofy-grocery-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-shofy-grocery-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(58,'theme-shofy-grocery-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-shofy-grocery-number_of_products_per_page','24',NULL,NULL),(60,'theme-shofy-grocery-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-shofy-grocery-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(62,'theme-shofy-grocery-ecommerce_product_item_style','5',NULL,NULL),(63,'theme-shofy-grocery-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(64,'theme-shofy-grocery-logo_in_invoices','main/general/logo.png',NULL,NULL),(65,'theme-shofy-grocery-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(66,'theme-shofy-grocery-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-grocery-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-grocery-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-grocery-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-grocery-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-grocery-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-grocery-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-grocery-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-grocery-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-grocery-section_title_shape_decorated','style-3',NULL,NULL),(76,'theme-shofy-grocery-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-grocery-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-grocery-header_top_background_color','#fff',NULL,NULL),(79,'theme-shofy-grocery-header_top_text_color','#010f1c',NULL,NULL),(80,'theme-shofy-grocery-header_main_background_color','#678E61',NULL,NULL),(81,'theme-shofy-grocery-header_main_text_color','#fff',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Online <br> Grocery Store','grocery/sliders/slider-1.png','/products',NULL,0,'2024-04-26 03:17:12','2024-04-26 03:17:12');
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-04-26 03:17:12','2024-04-26 03:17:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:17:01','2024-04-26 03:17:01'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:17:01','2024-04-26 03:17:01'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:17:01','2024-04-26 03:17:01'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:17:01','2024-04-26 03:17:01'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:17:01','2024-04-26 03:17:01'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:17:05','2024-04-26 03:17:05'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:17:05','2024-04-26 03:17:05'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:17:05','2024-04-26 03:17:05'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:17:05','2024-04-26 03:17:05'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:17:05','2024-04-26 03:17:05'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:17:05','2024-04-26 03:17:05'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:17:06','2024-04-26 03:17:06'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:06','2024-04-26 03:17:06'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:17:07','2024-04-26 03:17:07'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:11','2024-04-26 03:17:11'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:11','2024-04-26 03:17:11'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:11','2024-04-26 03:17:11'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:12','2024-04-26 03:17:12'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:12','2024-04-26 03:17:12'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:12','2024-04-26 03:17:12'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:12','2024-04-26 03:17:12'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:17:12','2024-04-26 03:17:12'),(52,'frozen-food',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:12','2024-04-26 03:17:12'),(53,'baby-food',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:12','2024-04-26 03:17:12'),(54,'strawberry',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(55,'ice-cream',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(56,'meat-seafood',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(57,'chicken',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(58,'fish',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(59,'beef',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(60,'milk-dairy',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(61,'milk',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(62,'cheese',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(63,'yogurt',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(64,'beverages',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(65,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(66,'carrot',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(67,'tomato',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(68,'potato',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(69,'fruits',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(70,'banana',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(71,'mango',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:17:13','2024-04-26 03:17:13'),(72,'organic-apples',1,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(73,'whole-grain-bread',2,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(74,'free-range-eggs',3,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(75,'fresh-salmon-fillet-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:20'),(76,'organic-spinach',5,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(77,'grass-fed-ground-beef',6,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(78,'almond-milk',7,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(79,'quinoa-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:20'),(80,'avocado',9,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(81,'greek-yogurt',10,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(82,'sweet-potatoes',11,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:14'),(83,'organic-cherry-tomatoes-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:14','2024-04-26 03:17:20'),(84,'honeycrisp-apples',13,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(85,'brown-rice',14,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(86,'organic-chicken-breast',15,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(87,'extra-virgin-olive-oil-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:20'),(88,'cucumber',17,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(89,'black-beans',18,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(90,'chia-seeds',19,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(91,'whole-wheat-pasta-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:20'),(92,'mixed-nuts',21,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(93,'green-tea-bags',22,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(94,'organic-strawberries',23,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(95,'quinoa-flour-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:20'),(96,'organic-baby-kale',25,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(97,'salad-dressing',26,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(98,'sweet-corn',27,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(99,'almond-butter-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:20'),(100,'whole-pineapple',29,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(101,'cottage-cheese',30,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:15','2024-04-26 03:17:15'),(102,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:17:17','2024-04-26 03:17:17'),(103,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:17:17','2024-04-26 03:17:17'),(104,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:17:17','2024-04-26 03:17:17'),(105,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:17:17','2024-04-26 03:17:17'),(106,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:17:17','2024-04-26 03:17:17'),(107,'home',1,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(108,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(109,'coupons',3,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(110,'blog',4,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(111,'contact',5,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(112,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(113,'our-story',7,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(114,'careers',8,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(115,'shipping',9,'Botble\\Page\\Models\\Page','','2024-04-26 03:17:18','2024-04-26 03:17:18'),(116,'organic-apples',31,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(117,'organic-apples',32,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(118,'whole-grain-bread',33,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(119,'whole-grain-bread',34,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(120,'whole-grain-bread',35,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(121,'whole-grain-bread',36,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(122,'whole-grain-bread',37,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(123,'free-range-eggs',38,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(124,'free-range-eggs',39,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(125,'free-range-eggs',40,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(126,'fresh-salmon-fillet-digital',41,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(127,'fresh-salmon-fillet-digital',42,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(128,'fresh-salmon-fillet-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(129,'grass-fed-ground-beef',44,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(130,'grass-fed-ground-beef',45,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(131,'grass-fed-ground-beef',46,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(132,'quinoa-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(133,'quinoa-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(134,'greek-yogurt',49,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(135,'greek-yogurt',50,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(136,'greek-yogurt',51,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(137,'sweet-potatoes',52,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(138,'sweet-potatoes',53,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(139,'honeycrisp-apples',54,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(140,'honeycrisp-apples',55,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(141,'brown-rice',56,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(142,'organic-chicken-breast',57,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(143,'organic-chicken-breast',58,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(144,'extra-virgin-olive-oil-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(145,'extra-virgin-olive-oil-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(146,'extra-virgin-olive-oil-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(147,'cucumber',62,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(148,'mixed-nuts',63,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(149,'mixed-nuts',64,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(150,'green-tea-bags',65,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(151,'green-tea-bags',66,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:20','2024-04-26 03:17:20'),(152,'green-tea-bags',67,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(153,'organic-baby-kale',68,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(154,'organic-baby-kale',69,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(155,'salad-dressing',70,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(156,'sweet-corn',71,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(157,'sweet-corn',72,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(158,'sweet-corn',73,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(159,'whole-pineapple',74,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(160,'cottage-cheese',75,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(161,'cottage-cheese',76,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(162,'cottage-cheese',77,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21'),(163,'cottage-cheese',78,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:17:21','2024-04-26 03:17:21');
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
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:17:06','2024-04-26 03:17:06');
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
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/2.jpg','Developer','published','2024-04-26 03:17:12','2024-04-26 03:17:12'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/3.jpg','CO Founder','published','2024-04-26 03:17:12','2024-04-26 03:17:12'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/4.jpg','UI/UX Designer','published','2024-04-26 03:17:12','2024-04-26 03:17:12'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/8.jpg','Bank of America','published','2024-04-26 03:17:12','2024-04-26 03:17:12');
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
INSERT INTO `users` VALUES (1,'witting.claudia@wiza.net',NULL,'$2y$12$G8fNfWKo5mzYmj/KE5kkOeqGftJr99qbGTszoYwTgo..hRZNLRW.q',NULL,'2024-04-26 03:17:00','2024-04-26 03:17:00','Liliane','Kling','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-grocery',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-grocery',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(8,'NewsletterWidget','footer_top_sidebar','shofy-grocery',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(9,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-grocery',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(10,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-grocery',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-04-26 03:17:18','2024-04-26 03:17:18'),(11,'BlogSearchWidget','blog_sidebar','shofy-grocery',1,'{\"id\":\"BlogSearchWidget\"}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(12,'BlogAboutMeWidget','blog_sidebar','shofy-grocery',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/2.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(13,'BlogPostsWidget','blog_sidebar','shofy-grocery',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(14,'BlogCategoriesWidget','blog_sidebar','shofy-grocery',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(15,'BlogTagsWidget','blog_sidebar','shofy-grocery',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(16,'ProductDetailInfoWidget','product_details_sidebar','shofy-grocery',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(17,'EcommerceBrands','products_listing_top_sidebar','shofy-grocery',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-04-26 03:17:19','2024-04-26 03:17:19'),(18,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-grocery',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,5,9,13,14,18],\"style\":\"grid\",\"display_children\":true}','2024-04-26 03:17:19','2024-04-26 03:17:19');
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

-- Dump completed on 2024-04-26 17:17:23
